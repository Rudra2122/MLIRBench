"""Tile-size autotuner for IREE's CPUDoubleTilingExpert pipeline.

Search space (two tiling levels, see kernels.TileConfig):
  register tile  vm in {1,2,4,8,16}, vn in {L, 2L, 4L} (L = SIMD lanes), vk in {1,2,4,8,16}
  cache tile     tm, tn in {16, 32, 64, 128, 256}, multiples of (vm, vn), <= (M, N)

Strategy "staged" (default): stage 1 searches the register tile with the cache
tile fixed at IREE's heuristic choice; stage 2 searches the cache tile with the
best register tile. "grid" searches the full cross product (slow).

For every candidate: compile -> correctness vs NumPy (reject on mismatch) ->
benchmark (median/p95 across repetitions) -> static asm analysis (vector
width, FMA count, stack spills) -> binary size. Nothing is assumed optimal.
"""
from __future__ import annotations

import itertools
import re
import time
from pathlib import Path
from typing import Optional

from .asm import analyze_dir
from .bench import benchmark, check_correctness
from .common import RESULTS, read_json, write_json
from .compiler import HOST, NO_DT, compile_kernel
from .kernels import Shape, TileConfig
from .thermal import guard

VM = [1, 2, 4, 8, 16]
VK = [1, 2, 4, 8, 16]
CACHE = [16, 32, 64, 128, 256]


def heuristic_tiles(shape: Shape) -> Optional[dict]:
    """Read the tile sizes IREE's heuristic picks, from the dumped configuration."""
    res = compile_kernel(shape, HOST + NO_DT, tag="vec_heuristic")
    if not res.ok:
        return None
    for f in Path(res.dump_dir).glob("configured_*.mlir"):
        t = f.read_text()
        # The field order and set differ by target (x86: distribution first;
        # aarch64 adds cache_parallel before it), so read each level by name
        # from the matmul's lowering_config instead of matching one layout.
        m = re.search(r"linalg\.matmul \{lowering_config = #iree_cpu\.lowering_config<([^>]*)>", t)
        if not m:
            continue
        cfg = m.group(1)

        def level(name: str) -> Optional[list[int]]:
            lm = re.search(rf"\b{name} = \[([^\]]*)\]", cfg)
            return [int(v) for v in re.findall(r"-?\d+", lm.group(1))] if lm else None

        dist, vpar, vred = level("distribution"), level("vector_common_parallel"), level("vector_reduction")
        if not (dist and vpar and vred):
            continue
        vec = re.search(r"native_vector_size = (\d+)", t)
        return {"tm": dist[0], "tn": dist[1], "vm": vpar[0], "vn": vpar[1], "vk": vred[2],
                "native_vector_bytes": int(vec.group(1)) if vec else None,
                "raw_lowering_config": cfg}
    return None


def evaluate(shape: Shape, cfg: TileConfig, reps: int, min_time: str,
             counters: bool = False) -> dict:
    row = {"config": cfg.key, **{k: getattr(cfg, k) for k in ("tm", "tn", "vm", "vn", "vk")}}
    res = compile_kernel(shape, HOST + NO_DT, tile=cfg, tag="tune")
    row["compile_seconds"] = round(res.seconds, 3)
    if not res.ok:
        row.update(status="compile_error", error=res.error[:300])
        return row
    row["vmfb_bytes"] = res.vmfb_bytes
    corr = check_correctness(res.vmfb, shape)
    row["max_rel_err"] = corr.get("max_rel_err")
    if not corr["ok"]:
        row.update(status="incorrect", error=corr.get("error", ""))
        return row
    b = benchmark(res.vmfb, shape, repetitions=reps, min_time=min_time)
    if not b["ok"]:
        row.update(status="bench_error", error=b.get("error", "")[:300])
        return row
    a = analyze_dir(res.dump_dir)
    row.update(status="ok", median_ms=b["median_ms"], p95_ms=b["p95_ms"], cv_pct=b["cv_pct"],
               gflops=b["gflops"], fma_vector_static=a.get("fma_vector_total"),
               widest_vector_bits=a.get("widest_vector_bits"),
               vec_stack_access=a.get("vec_stack_access", 0), asm_instructions=a.get("instructions"))
    if counters:
        from .counters import collect_quick
        try:
            row["counters"] = collect_quick(res.vmfb, shape)
        except Exception as e:  # noqa: BLE001 - a counter failure must not lose the config
            row["counters"] = {"status": "error", "error": repr(e)[:300]}
    return row


def _register_space(shape: Shape, lanes: int) -> list[tuple[int, int, int]]:
    vns = [v for v in (lanes, 2 * lanes, 4 * lanes) if v <= max(shape.N, lanes)]
    vms = [v for v in VM if v <= shape.M]
    vks = [v for v in VK if v <= shape.K]
    return list(itertools.product(vms, vns, vks))


def _cache_space(shape: Shape, vm: int, vn: int) -> list[tuple[int, int]]:
    tms = sorted({min(t, shape.M) for t in CACHE if min(t, shape.M) % vm == 0})
    tns = sorted({min(t, shape.N) for t in CACHE if min(t, shape.N) % vn == 0})
    return list(itertools.product(tms, tns))


def tune(shape: Shape, strategy: str = "staged", reps: int = 5, min_time: str = "0.05s",
         check_every: int = 10, counters: bool = False, log=print) -> dict:
    t0 = time.time()
    heur = heuristic_tiles(shape)
    if not heur:
        raise RuntimeError("could not read IREE heuristic tiles")
    lanes = (heur["native_vector_bytes"] or 16) // 4
    rows: list[dict] = []

    checks: list = []

    def run_cfg(cfg: TileConfig):
        if any(r["config"] == cfg.key for r in rows):
            return
        if len(rows) % check_every == 0:  # periodic throttle check inside the search
            ev = guard().before(f"tune {shape.name} @{len(rows)}")
            if ev:
                checks.append(ev)
        r = evaluate(shape, cfg, reps, min_time, counters=counters)
        r["stage"] = stage
        r["thermal_ratio"] = guard().last_ratio
        rows.append(r)
        msg = f"{r['median_ms']:.4f} ms  {r['gflops']:.1f} GF/s" if r["status"] == "ok" else r["status"]
        c = r.get("counters") or {}
        if c.get("status") == "ok":
            msg += "  " + " ".join(f"{k}={c[k]:.2f}" for k in ("ipc", "l2_miss_per_kflop", "stall_frac_l2_miss") if k in c)
        log(f"  [{stage}] {cfg.key:<24} {msg}")

    base = TileConfig(heur["tm"], heur["tn"], heur["vm"], heur["vn"], heur["vk"])
    stage = "heuristic"
    run_cfg(base)
    if strategy == "grid":
        stage = "grid"
        for vm, vn, vk in _register_space(shape, lanes):
            for tm, tn in _cache_space(shape, vm, vn):
                run_cfg(TileConfig(tm, tn, vm, vn, vk))
    else:
        stage = "register"
        for vm, vn, vk in _register_space(shape, lanes):
            tm = heur["tm"] if heur["tm"] % vm == 0 else max(vm, heur["tm"] // vm * vm)
            tn = heur["tn"] if heur["tn"] % vn == 0 else max(vn, heur["tn"] // vn * vn)
            run_cfg(TileConfig(tm, tn, vm, vn, vk))
        ok = [r for r in rows if r["status"] == "ok"]
        best = min(ok, key=lambda r: r["median_ms"])
        # Boundary expansion: if the best register tile sits on the edge of the
        # searched vn range, the optimum may lie beyond it (seen for GEMV on x86
        # and M3: winners at vn = 4 vectors). Keep doubling vn while it helps.
        stage = "expand"
        vn_max = max(v for _, v, _ in _register_space(shape, lanes))
        vn = best["vn"]
        while vn == vn_max and 2 * vn <= shape.N and 2 * vn <= 16 * lanes:
            vn *= 2
            vn_max = vn
            tn = heur["tn"] if heur["tn"] % vn == 0 else vn
            run_cfg(TileConfig(heur["tm"] if heur["tm"] % best["vm"] == 0 else best["vm"],
                               max(tn, vn), best["vm"], vn, best["vk"]))
            ok = [r for r in rows if r["status"] == "ok"]
            new_best = min(ok, key=lambda r: r["median_ms"])
            if new_best["vn"] != vn:
                break  # widening stopped helping
            best = new_best
        stage = "cache"
        for tm, tn in _cache_space(shape, best["vm"], best["vn"]):
            run_cfg(TileConfig(tm, tn, best["vm"], best["vn"], best["vk"]))

    ok = sorted([r for r in rows if r["status"] == "ok"], key=lambda r: r["median_ms"])
    best, heur_row = ok[0], next(r for r in rows if r["stage"] == "heuristic")
    # Re-measure the winner and the heuristic back-to-back with more repetitions,
    # so the reported speedup is not a lucky single sample from the search.
    confirm = {}
    pre = guard().before(f"tune {shape.name} confirm")
    for label, r in (("best", best), ("heuristic", heur_row)):
        cfg = TileConfig(r["tm"], r["tn"], r["vm"], r["vn"], r["vk"])
        res = compile_kernel(shape, HOST + NO_DT, tile=cfg, tag="tune")
        confirm[label] = benchmark(res.vmfb, shape, repetitions=11, min_time="0.2s")
        confirm[label].pop("samples_ms", None)
        confirm[label].pop("context", None)
    post = guard().after(f"tune {shape.name}")
    th = [c for c in checks + [pre, post] if c]
    out = {
        "shape": shape.to_dict(), "strategy": strategy, "lanes": lanes,
        "heuristic": heur, "evaluated": len(rows),
        "rejected": {s: sum(r["status"] == s for r in rows) for s in ("compile_error", "incorrect", "bench_error")},
        "best": best, "heuristic_row": heur_row,
        "confirm": confirm,
        "speedup_vs_heuristic": confirm["heuristic"]["median_ms"] / confirm["best"]["median_ms"],
        "rows": rows, "seconds": round(time.time() - t0, 1),
        "thermal": {"checks": th, "suspect": any(c["throttled"] for c in th)},
    }
    write_json(RESULTS / "autotune" / f"{shape.name}.json", out)
    return out


def best_tile(shape: Shape) -> Optional[TileConfig]:
    r = read_json(RESULTS / "autotune" / f"{shape.name}.json")
    if not r:
        return None
    b = r["best"]
    return TileConfig(b["tm"], b["tn"], b["vm"], b["vn"], b["vk"])
