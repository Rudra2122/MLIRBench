"""Hierarchical roofline model.

Differences from v1's single-roof model:

* One slanted roof per memory level (L1/L2/L3/DRAM), measured, not assumed.
* The *governing* roof for a kernel is the level its working set actually
  lives in. A 128^3 fp32 matmul touches 192 KiB - it never streams from DRAM
  after the first call, so comparing it to a DRAM roof (what v1 did) is the
  wrong model.
* "Memory-bound" is only claimed when OI < ridge of the governing level. A
  kernel far below *both* roofs is neither memory- nor compute-bound; it is
  bound by something the roofline does not model (latency, overhead, poor
  codegen). v2 reports that case explicitly instead of forcing a label.
"""
from __future__ import annotations

from typing import Optional

from .kernels import Shape

LEVEL_ORDER = ["L1", "L2", "L3", "DRAM"]


def governing_level(working_set: int, caches: dict) -> str:
    for lvl in LEVEL_ORDER[:-1]:
        cap = caches.get(lvl)
        if cap and working_set <= cap:
            return lvl
    return "DRAM"


def ceiling(oi: float, peak: float, bw: float) -> float:
    return min(peak, oi * bw)


def analyze(shape: Shape, gflops: float, machine: dict, latency_ms: float,
            floor_ms: Optional[float] = None, measured_bytes: Optional[float] = None) -> dict:
    peak = machine["peak_gflops"]
    bws = {k: v for k, v in machine["bandwidth_gbs"].items() if isinstance(v, (int, float))}
    oi = shape.operational_intensity
    lvl = governing_level(shape.working_set_bytes, machine.get("caches_bytes", {}))
    bw = bws.get(lvl) or bws.get("DRAM")
    roof = ceiling(oi, peak, bw)
    ridge = peak / bw
    pct = 100.0 * gflops / roof
    if oi >= ridge:
        regime = "compute-roof"
    else:
        regime = f"{lvl}-bandwidth-roof"
    # Diagnose rather than label: how close to *which* roof are we?
    roof_name = "compute roof" if oi >= ridge else f"{lvl} bandwidth roof"
    if pct >= 60:
        verdict = f"near the {roof_name}"
    elif floor_ms and latency_ms and floor_ms / latency_ms > 0.3:
        verdict = "overhead-dominated (fixed invocation cost is a large share of latency)"
    elif pct >= 25:
        verdict = f"{pct:.0f}% of the {roof_name}: codegen headroom (tiling / layout)"
    else:
        verdict = f"far below the {roof_name}: codegen-limited, not resource-limited"
    out = {
        "oi_flops_per_byte": oi, "governing_level": lvl, "governing_bw_gbs": bw,
        "ridge_flops_per_byte": ridge, "roof_gflops": roof, "pct_of_roof": pct,
        "roof_regime": regime, "verdict": verdict,
        "dram_roof_gflops": ceiling(oi, peak, bws.get("DRAM", bw)),
        "pct_of_peak": 100.0 * gflops / peak,
    }
    if floor_ms is not None and latency_ms:
        out["invocation_floor_ms"] = floor_ms
        out["floor_share_pct"] = 100.0 * floor_ms / latency_ms
    if measured_bytes:
        mo = shape.flops / measured_bytes
        out["measured_oi_flops_per_byte"] = mo
        out["measured_dram_roof_gflops"] = ceiling(mo, peak, bws.get("DRAM", bw))
    return out
