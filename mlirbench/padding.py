"""Padded-width experiment: are the 1024^3 L2 misses capacity or set conflicts?

Two open questions (docs/COUNTER_FINDINGS.md s.5, docs/TRANSFORM_SCHEDULE.md):
  * IREE's heuristic tiles fill L2 with 44x the compulsory bytes at 1024^3,
    where a capacity model predicts ~6x.
  * K blocking removes most L2 misses at 1024^3 on C4, although C4's 64x64
    tiles already fit L2 per workgroup, so capacity cannot be the reason.
Leading hypothesis: L2 *set conflicts*. A 1024-float row is exactly 4096 bytes,
so walking down a column maps many lines onto the same few L2 sets.

Design - bracket 1024 with shapes whose row stride is NOT a power of two:
  960^3  (3840-byte rows)   1024^3 (4096)   1088^3 (4352)
  capacity  => per-FLOP L2 misses rise smoothly with size (1024 in between)
  conflicts => 1024 is a spike; both neighbours are much lower
and isolate which operand's stride matters:
  1024x1024x1088 (MxKxN): only B's row stride (N) changes
  1024x1088x1024        : only A's row stride (K) changes
All kernels use FIXED tiles across shapes, so heuristics cannot pick different
tiles per shape and confound the comparison:
  iree_fixed  IREE CPUDoubleTilingExpert with IREE's own 1024^3 heuristic tile
  sched_S4    hand-written schedule, no K blocking   (C4's 1024^3 tile)
  sched_S5    same + K blocking, TK = 64 (divides every K here)

Needs hardware counters for the verdict (Linux perf on a PMU host, e.g. GCE
C4); without them it still records timings, which are suggestive only.
"""
from __future__ import annotations

from typing import Optional

from . import counters
from .bench import benchmark, check_correctness
from .common import RESULTS, host_info, read_json, write_json
from .compiler import HOST, NO_DT, compile_kernel
from .kernels import Shape, TileConfig
from .schedule import compile_schedule, supported
from .thermal import guard

SHAPES = [Shape(960, 960, 960, label="bracket, 3840 B rows"),
          Shape(1024, 1024, 1024, label="power-of-two, 4096 B rows"),
          Shape(1088, 1088, 1088, label="bracket, 4352 B rows"),
          Shape(1024, 1024, 1088, label="only B row stride changed"),
          Shape(1024, 1088, 1024, label="only A row stride changed")]
IREE_TILE = TileConfig(64, 64, 8, 16, 16)    # IREE's own heuristic pick at 1024^3
SCHED_TILE = TileConfig(64, 64, 16, 32, 4)   # C4 autotuned 1024^3 tile
TK = 64

METRICS = ("l2_fill_bytes_vs_compulsory", "l2_miss_per_kflop", "l2_miss_rate",
           "stall_frac_l2_miss", "flops_per_cycle")


def _kernels(shape: Shape):
    yield "iree_fixed", compile_kernel(shape, HOST + NO_DT, tile=IREE_TILE, tag="pad_iree")
    for stage, tk in (("S4_fuse_fill", 0), ("K", TK)):
        why = supported(shape, SCHED_TILE)
        name = "sched_S4" if tk == 0 else "sched_S5"
        if why:
            yield name, None
            continue
        res, _ = compile_schedule(shape, SCHED_TILE, stage, tk)
        yield name, res


def run(shapes=SHAPES, backend: str = "auto", log=print) -> dict:
    av_name, _ = counters.choose_backend(backend)
    log(f"  counter backend: {av_name or 'none (timings only; no verdict)'}")
    rows = []
    for s in shapes:
        pre = guard().before(f"padding {s.name}")
        for name, res in _kernels(s):
            row = {"shape": s.name, "label": s.label, "kernel": name,
                   "row_bytes": {"A": 4 * s.K, "B": 4 * s.N}}
            if res is None or not res.ok:
                row["status"] = "compile_error" if res else "unsupported"
                rows.append(row)
                log(f"  {s.name:<16} {name:<11} {row['status']}")
                continue
            corr = check_correctness(res.vmfb, s)
            t = benchmark(res.vmfb, s, repetitions=5, min_time="0.2s")
            t.pop("samples_ms", None); t.pop("context", None)
            row.update(correctness=corr, timing=t, status="ok" if corr["ok"] else "incorrect")
            if av_name in ("perf", "kperf"):
                try:
                    c = counters.collect(res.vmfb, s, backend=backend)
                    row["counters"] = {"status": c.get("status"), "derived": c.get("derived", {}),
                                       "per_invocation": c.get("per_invocation", {})}
                except Exception as e:  # noqa: BLE001
                    row["counters"] = {"status": "error", "error": repr(e)[:400]}
            d = (row.get("counters") or {}).get("derived", {})
            extra = " ".join(f"{k}={d[k]:.2f}" for k in ("l2_miss_rate", "stall_frac_l2_miss") if k in d)
            log(f"  {s.name:<16} {name:<11} {t['median_ms']:9.3f} ms {t['gflops']:7.1f} GF/s "
                f"corr={'ok' if corr['ok'] else 'FAIL'} {extra}")
            rows.append(row)
        post = guard().after(f"padding {s.name}")
        for r in rows:
            if r["shape"] == s.name:
                r["thermal_suspect"] = bool((pre and pre["throttled"]) or (post and post["throttled"]))
    out = {"host": host_info(), "backend": av_name, "iree_tile": IREE_TILE.key,
           "sched_tile": SCHED_TILE.key, "tk": TK, "rows": rows}
    out["verdict"] = verdict(rows)
    write_json(RESULTS / "padding.json", out)
    for line in out["verdict"]["lines"]:
        log("  " + line)
    return out


def _metric(rows, shape, kernel, key) -> Optional[float]:
    for r in rows:
        if r["shape"] == shape and r["kernel"] == kernel and r.get("status") == "ok":
            return ((r.get("counters") or {}).get("derived") or {}).get(key)
    return None


def _gflops(rows, shape, kernel) -> Optional[float]:
    for r in rows:
        if r["shape"] == shape and r["kernel"] == kernel and r.get("status") == "ok":
            return r["timing"]["gflops"]
    return None


def verdict(rows: list[dict]) -> dict:
    """Mechanical reading of the data. Thresholds are deliberately coarse; the
    numbers are all in the table, and the doc explains how to read them."""
    lines, calls = [], {}
    lo, mid, hi = "960x960x960", "1024x1024x1024", "1088x1088x1088"
    for k in ("iree_fixed", "sched_S4", "sched_S5"):
        a, b, c = (_metric(rows, s, k, "l2_miss_per_kflop") for s in (lo, mid, hi))
        if None in (a, b, c):
            g = [_gflops(rows, s, k) for s in (lo, mid, hi)]
            gB, gA = _gflops(rows, "1024x1024x1088", k), _gflops(rows, "1024x1088x1024", k)
            if None not in g:
                dip = g[1] / min(g[0], g[2])
                calls[k] = {"call": "timing-only", "gflops": g, "dip": dip}
                if dip < 0.75:
                    lines.append(
                        f"{k}: GFLOP/s 960/1024/1088 = {g[0]:.1f}/{g[1]:.1f}/{g[2]:.1f}: 1024 runs at "
                        f"{dip:.2f}x its slower neighbour although 1088 is the larger problem. Pure capacity "
                        f"cannot produce a dip at the middle size, so a power-of-two effect dominates. "
                        f"Counters are needed to say at which level (L1 sets, L2 sets, or 4K aliasing).")
                else:
                    lines.append(f"{k}: GFLOP/s 960/1024/1088 = {g[0]:.1f}/{g[1]:.1f}/{g[2]:.1f}: "
                                 f"no dip at 1024 ({dip:.2f}x); no power-of-two effect visible in timing")
                if gB is not None and gA is not None:
                    lines.append(f"{k}:   change only B's stride -> {gB / g[1]:.2f}x the 1024^3 speed; "
                                 f"only A's stride -> {gA / g[1]:.2f}x (the one that recovers is the "
                                 f"conflicting operand)")
            continue
        neigh = max(a, c)
        spike = b / neigh if neigh > 0 else float("inf")
        if spike >= 2.0:
            call = "conflict"
            txt = (f"1024 is an outlier ({spike:.1f}x the worse neighbour): supports the power-of-two "
                   f"SET-CONFLICT hypothesis")
        elif a <= b <= c or spike < 1.3:
            call = "capacity"
            txt = (f"no spike at 1024 ({spike:.2f}x the worse neighbour): L2 misses track problem size, "
                   f"consistent with CAPACITY; conflicts are not the main effect")
        else:
            call = "inconclusive"
            txt = f"1024 is {spike:.2f}x the worse neighbour: modest; inconclusive"
        calls[k] = {"call": call, "spike": spike, "l2_miss_per_kflop": [a, b, c]}
        lines.append(f"{k}: L2 misses/kFLOP 960/1024/1088 = {a:.2f}/{b:.2f}/{c:.2f} -> {txt}")
        # locate the level: the metric that spikes at 1024 is where the conflict lives
        for key, what in (("l1_miss_per_kflop", "L1 misses/kFLOP"),
                          ("address_alias_per_kflop", "4K-alias blocks/kFLOP"),
                          ("stall_frac_l2_miss", "L2-miss stall fraction")):
            v = [_metric(rows, s, k, key) for s in (lo, mid, hi)]
            if None not in v and max(v[0], v[2]) > 0:
                lines.append(f"{k}:   {what} 960/1024/1088 = {v[0]:.3g}/{v[1]:.3g}/{v[2]:.3g} "
                             f"(1024 = {v[1] / max(v[0], v[2]):.2f}x the worse neighbour)")
        # which operand's stride matters
        bN = _metric(rows, "1024x1024x1088", k, "l2_miss_per_kflop")
        aK = _metric(rows, "1024x1088x1024", k, "l2_miss_per_kflop")
        if bN is not None and aK is not None and b > 0:
            lines.append(f"{k}:   change only B's stride -> {bN / b:.2f}x of 1024^3; "
                         f"only A's stride -> {aK / b:.2f}x (the one that drops is the conflicting operand)")
    # K blocking: where does it pay (timing), and how (misses vs stall cycles)?
    g = {(sh, k): _gflops(rows, sh, k) for sh in (lo, mid, hi) for k in ("sched_S4", "sched_S5")}
    if None not in g.values():
        sp = {sh: g[(sh, "sched_S5")] / g[(sh, "sched_S4")] for sh in (lo, mid, hi)}
        where = ("only at 1024^3 -> K blocking's gain is specific to the power-of-two stride"
                 if sp[mid] > 1.15 and max(sp[lo], sp[hi]) < 1.05 else
                 "also at the non-power-of-two sizes -> K blocking helps beyond the stride effect")
        lines.append(f"K blocking speedup (S5 vs S4) 960/1024/1088 = {sp[lo]:.2f}/{sp[mid]:.2f}/{sp[hi]:.2f}x: gains {where}")
        m4, m5 = _metric(rows, mid, "sched_S4", "l2_miss_per_kflop"), _metric(rows, mid, "sched_S5", "l2_miss_per_kflop")
        t4, t5 = _metric(rows, mid, "sched_S4", "stall_frac_l2_miss"), _metric(rows, mid, "sched_S5", "stall_frac_l2_miss")
        if None not in (m4, m5, t4, t5) and m5 > 0 and t5 > 0:
            how = ("by making the conflict misses cheaper (far fewer stall cycles), NOT by removing them"
                   if m4 / m5 < 1.3 and t4 / t5 > 2 else
                   "by removing misses" if m4 / m5 >= 1.3 else "mechanism unclear from these counters")
            lines.append(f"  at 1024^3: L2 misses/kFLOP S4->S5 {m4:.2f}->{m5:.2f} ({m4 / m5:.2f}x), "
                         f"L2-miss stall fraction {t4:.2f}->{t5:.2f} ({t4 / t5:.2f}x): K blocking works {how}")
    return {"lines": lines, "calls": calls}


def load() -> Optional[dict]:
    return read_json(RESULTS / "padding.json")
