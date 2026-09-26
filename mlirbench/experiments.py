"""The MLIRBench 2.0 experiments. Each writes JSON under results/."""
from __future__ import annotations

from typing import Iterable, Optional

from . import counters, roofline
from .asm import analyze_dir
from .autotune import best_tile
from .bench import benchmark, check_correctness, invocation_floor
from .common import RESULTS, host_info, read_json, write_json
from .compiler import LADDER, VARIANTS, compile_variant
from .kernels import ABLATION, ALL, Shape
from .peaks import characterize
from .thermal import ThermalGuard, guard

SWEEP_VARIANTS = ["v1_generic_isa", "vec_heuristic", "packed_late", "vec_autotuned"]


def _merge(path, new_rows: list[dict]) -> list[dict]:
    """Merge into an existing results file so experiments can be run shape by shape."""
    old = (read_json(path) or {}).get("rows", [])
    keys = {(r["shape"], r["variant"]) for r in new_rows}
    return [r for r in old if (r["shape"], r["variant"]) not in keys] + new_rows


def measure(shape: Shape, vname: str, machine: dict, reps: int = 7, min_time: str = "0.1s",
            floor_ms: Optional[float] = None, log=print) -> Optional[dict]:
    v = VARIANTS[vname]
    tile = None
    if v.needs_tuning:
        tile = best_tile(shape)
        if tile is None:
            return None  # not tuned for this shape; skip rather than guess
    res = compile_variant(shape, v, tile=tile)
    row = {"shape": shape.name, "label": shape.label, "variant": vname, "title": v.title,
           "tile": tile.key if tile else (v.tile(shape).key if v.tile else "heuristic"),
           "compile": res.to_dict()}
    if not res.ok:
        row["status"] = "compile_error"
        log(f"  {shape.name:<16} {vname:<22} COMPILE ERROR")
        return row
    corr = check_correctness(res.vmfb, shape)
    row["correctness"] = corr
    b = benchmark(res.vmfb, shape, repetitions=reps, min_time=min_time)
    row["timing"] = b
    row["asm"] = analyze_dir(res.dump_dir)
    if b.get("ok"):
        row["roofline"] = roofline.analyze(shape, b["gflops"], machine, b["median_ms"], floor_ms)
        row["status"] = "ok" if corr["ok"] else "incorrect"
        log(f"  {shape.name:<16} {vname:<22} {b['median_ms']:9.4f} ms  {b['gflops']:7.1f} GF/s  "
            f"{row['roofline']['pct_of_roof']:5.1f}% roof  corr={'ok' if corr['ok'] else 'FAIL'}")
    else:
        row["status"] = "bench_error"
    return row


def _floor() -> Optional[float]:
    f = invocation_floor()
    return f["median_ms"] if f and f.get("ok") else None


def sweep(shapes: Iterable[Shape] = ALL, variants=SWEEP_VARIANTS, log=print) -> dict:
    machine = characterize()
    floor = _floor()
    rows = []
    for s in shapes:
        pre = guard().before(f"sweep {s.name}")
        chunk = [r for r in (measure(s, v, machine, floor_ms=floor, log=log) for v in variants) if r]
        ThermalGuard.tag(chunk, pre, guard().after(f"sweep {s.name}"))
        rows += chunk
    out = {"host": host_info(), "invocation_floor_ms": floor,
           "rows": _merge(RESULTS / "sweep.json", rows)}
    write_json(RESULTS / "sweep.json", out)
    return out


def ablate(shapes: Iterable[Shape] = ABLATION, variants=LADDER, log=print) -> dict:
    machine = characterize()
    floor = _floor()
    rows = []
    for s in shapes:
        pre = guard().before(f"ablate {s.name}")
        chunk = [r for r in (measure(s, v, machine, reps=5, min_time="0.1s", floor_ms=floor, log=log)
                             for v in variants) if r]
        ThermalGuard.tag(chunk, pre, guard().after(f"ablate {s.name}"))
        rows += chunk
    out = {"host": host_info(), "invocation_floor_ms": floor,
           "rows": _merge(RESULTS / "ablation.json", rows)}
    write_json(RESULTS / "ablation.json", out)
    return out


def counters_exp(shapes: Iterable[Shape], variants=LADDER, backend: str = "auto",
                 log=print) -> dict:
    name, st = counters.choose_backend(backend)
    log(f"  counter backend: {name or 'none'}")
    for b, v in st.items():
        log(f"    {b:<8} {'available' if v.get('available') else 'unavailable: ' + str(v.get('reason'))}")
    rows = []
    for s in shapes:
        pre = guard().before(f"counters {s.name}")
        chunk = []
        for vname in variants:
            v = VARIANTS[vname]
            tile = best_tile(s) if v.needs_tuning else None
            if v.needs_tuning and tile is None:
                continue
            res = compile_variant(s, v, tile=tile)
            if not res.ok:
                continue
            try:
                c = counters.collect(res.vmfb, s, backend=backend)
            except Exception as e:  # noqa: BLE001 - keep going, record why
                c = {"status": "error", "backend": name, "error": repr(e)[:800]}
            chunk.append({"shape": s.name, "variant": vname, "counters": c,
                          "static_asm": analyze_dir(res.dump_dir),
                          "analytic": {"flops": s.flops, "compulsory_bytes": s.compulsory_bytes}})
            d = c.get("derived", {})
            extra = f" ipc={d['ipc']:.2f}" if "ipc" in d else ""
            log(f"  {s.name:<16} {vname:<22} {c.get('backend')}:{c['status']}  "
                f"events={len(c.get('per_invocation', {}))}{extra}")
        ThermalGuard.tag(chunk, pre, guard().after(f"counters {s.name}"))
        rows += chunk
    out = {"host": host_info(), "backend": name, "availability": st,
           "rows": _merge(RESULTS / "counters.json", rows)}
    write_json(RESULTS / "counters.json", out)
    return out


SCHEDULE_COUNTER_STAGES = ("S3_hoist_acc", "S4_fuse_fill", "S5_kblock", "IREE_same_tiles", "IREE_packed_late")


def counters_schedule(backend: str = "auto", log=print) -> dict:
    """Counters for the hand-written schedule's kernels (run `schedule` first on
    the same machine): tests the K-blocking prediction - S5 should show a much
    lower L2 miss rate and L2-stall fraction than S4 at 1024^3."""
    from pathlib import Path
    from .kernels import parse_shape
    sched = read_json(RESULTS / "schedule.json")
    if not sched:
        raise SystemExit("no results/schedule.json on this machine: run `python -m mlirbench schedule` first")
    rows = []
    for x in sched["results"]:
        shape = parse_shape(x["shape"]["name"])
        pre = guard().before(f"counters schedule {shape.name}")
        chunk = []
        for r in x.get("rows", []):
            if r["stage"] not in SCHEDULE_COUNTER_STAGES or r.get("status") != "ok":
                continue
            vmfb = Path(r["compile"]["vmfb"])
            if not vmfb.exists():
                log(f"  {shape.name} {r['stage']}: {vmfb} missing (built on another machine?) - skipped")
                continue
            try:
                c = counters.collect(vmfb, shape, backend=backend)
            except Exception as e:  # noqa: BLE001
                c = {"status": "error", "error": repr(e)[:800]}
            chunk.append({"shape": shape.name, "variant": f"sched_{r['stage']}", "counters": c,
                          "analytic": {"flops": shape.flops, "compulsory_bytes": shape.compulsory_bytes}})
            d = c.get("derived", {})
            log(f"  {shape.name:<16} {r['stage']:<18} {c.get('backend')}:{c['status']} "
                + " ".join(f"{k}={d[k]:.2f}" for k in ("ipc", "l2_miss_rate", "stall_frac_l2_miss") if k in d))
        ThermalGuard.tag(chunk, pre, guard().after(f"counters schedule {shape.name}"))
        rows += chunk
    out = {"host": host_info(), "rows": _merge(RESULTS / "counters.json", rows)}
    prev = read_json(RESULTS / "counters.json") or {}
    out.update({k: prev[k] for k in ("backend", "availability") if k in prev})
    write_json(RESULTS / "counters.json", out)
    return out
