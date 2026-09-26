"""Machine ceilings for the roofline: FP32 FMA peak and per-level bandwidth.

v1 used a NumPy matmul as the "peak compute" proxy (which is itself a kernel
that may be multi-threaded and is not a ceiling) and a single large memcpy as
"peak bandwidth" (DRAM only). v2 measures:

* peak_gflops: a C FMA loop with enough independent accumulators to saturate
  every FMA pipe, at each SIMD width the host supports, single core.
* bandwidth per memory level: a read-bandwidth sweep from L1-resident to
  DRAM-resident working sets. Each plateau is one slanted roof.
"""
from __future__ import annotations

import json
import os
import platform

import statistics
from pathlib import Path

from .common import BUILD, ROOT, RESULTS, find_tool, host_info, read_json, run, write_json

MB = ROOT / "microbench"


def _cc() -> str:
    for c in (os.environ.get("CC"), "clang", "gcc", "cc"):
        if c:
            try:
                find_tool(c)
                return c
            except Exception:
                continue
    raise RuntimeError("no C compiler found (set CC)")


def _arch_flags(cc: str) -> list[str]:
    probe = BUILD / "probe.c"
    probe.parent.mkdir(parents=True, exist_ok=True)
    probe.write_text("int main(void){return 0;}\n")
    for f in (["-march=native"], ["-mcpu=native"], []):
        if run([cc, *f, str(probe), "-o", str(BUILD / "probe")]).returncode == 0:
            return f
    return []


def _build(src: str, out: str, defs: list[str]) -> Path | None:
    cc = _cc()
    exe = BUILD / "microbench" / out
    exe.parent.mkdir(parents=True, exist_ok=True)
    cmd = [cc, "-O3", *_arch_flags(cc), "-ffp-contract=fast", *defs, str(MB / src), "-o", str(exe)]
    return exe if run(cmd).returncode == 0 else None


def _darwin_pcore_caches() -> dict:
    """Apple Silicon has P and E cores with different caches; generic queries can
    return E-core sizes. hw.perflevel0.* is the performance-core cluster."""
    out = {}
    for lvl, key in (("L1", "hw.perflevel0.l1dcachesize"), ("L2", "hw.perflevel0.l2cachesize")):
        p = run(["sysctl", "-n", key])
        if p.returncode == 0 and p.stdout.strip().isdigit():
            out[lvl] = int(p.stdout.strip())
    return out


def cache_sizes() -> dict:
    """Cache sizes: MLIRBENCH_CACHES override > macOS P-core sysctl > Google Benchmark."""
    env = os.environ.get("MLIRBENCH_CACHES")  # e.g. "L1=131072,L2=16777216"
    if env:
        return {k.strip(): int(v) for k, v in (kv.split("=") for kv in env.split(","))}
    if platform.system() == "Darwin":
        d = _darwin_pcore_caches()
        if d:
            return d
    try:
        from .bench import invocation_floor
        f = invocation_floor()
        caches = (f or {}).get("context", {}).get("caches") or []
    except Exception:
        caches = []
    out = {}
    for c in caches:
        if c.get("type") in ("Data", "Unified"):
            out[f"L{c['level']}"] = int(c["size"])
    return out


def measure_peak_flops() -> dict:
    trials = []
    for vb in (64, 32, 16):
        for nacc in (8, 12, 16, 24):
            exe = _build("peak_fma.c", f"peak_fma_{vb}_{nacc}", [f"-DVBYTES={vb}", f"-DNACC={nacc}"])
            if not exe:
                continue
            p = run([exe, "40000000", "5"], timeout=120)
            if p.returncode != 0:  # e.g. illegal instruction: width unsupported
                continue
            trials.append(json.loads(p.stdout))
    if not trials:
        raise RuntimeError("peak FMA microbenchmark failed to build/run")
    best = max(trials, key=lambda t: t["peak_gflops"])
    return {"peak_gflops": best["peak_gflops"], "vector_bytes": best["vector_bytes"],
            "accumulators": best["accumulators"], "all_trials": trials}


def measure_bandwidth(max_bytes: int | None = None, vbytes: int = 32) -> list[dict]:
    # use the widest SIMD width the FMA probe found, or L1 bandwidth is under-measured
    exe = _build("bandwidth.c", f"bandwidth_{vbytes}", [f"-DVBYTES={vbytes}"])
    if not exe:
        raise RuntimeError("bandwidth microbenchmark failed to build")
    max_bytes = max_bytes or (1 << 30)
    p = run([exe, "16384", str(max_bytes), "0.15"], timeout=1800)
    if p.returncode != 0:
        raise RuntimeError(p.stderr)
    return json.loads(p.stdout)


def plateaus(sweep: list[dict], caches: dict) -> dict:
    """Assign each sweep point to the level it fits in, take the median per level.

    A point belongs to level Ln if size <= 1/2 capacity(Ln) and > capacity(Ln-1)
    (the half-capacity guard avoids points straddling two levels). DRAM uses
    points >= 2x the last-level cache, when the sweep reaches that far.
    """
    levels = sorted(caches.items(), key=lambda kv: kv[1])
    out, prev = {}, 0
    for name, cap in levels:
        pts = [p["read_gbs"] for p in sweep if prev < p["bytes"] <= cap // 2]
        if pts:
            out[name] = statistics.median(pts)
        prev = cap
    if levels:
        llc = levels[-1][1]
        pts = [p["read_gbs"] for p in sweep if p["bytes"] >= 2 * llc]
        if pts:
            out["DRAM"] = statistics.median(pts)
    if "DRAM" not in out and sweep:
        out["DRAM_lower_bound_note"] = ("sweep did not exceed 2x LLC; largest point used as "
                                        "an upper bound on DRAM bandwidth")
        out["DRAM"] = sweep[-1]["read_gbs"]
    return out


def _same_host(cached: dict) -> bool:
    now = host_info()
    old = cached.get("host", {})
    return all(old.get(k) == now.get(k) for k in ("machine", "system", "cpu_model"))


def quick_peak(iters: int = 60_000_000, trials: int = 3) -> float:
    """~0.5 s clock-bound probe using the best FMA config found by measure_peak_flops.
    Used by thermal.py to detect throttling between chunks."""
    m = read_json(RESULTS / "machine.json") or {}
    d = m.get("peak_detail", {})
    vb, nacc = d.get("vector_bytes", 32), d.get("accumulators", 16)
    exe = BUILD / "microbench" / f"peak_fma_{vb}_{nacc}"
    if not exe.exists():
        exe = _build("peak_fma.c", f"peak_fma_{vb}_{nacc}", [f"-DVBYTES={vb}", f"-DNACC={nacc}"])
    p = run([exe, str(iters), str(trials)], timeout=120)
    if p.returncode != 0:
        raise RuntimeError(p.stderr[-300:])
    return json.loads(p.stdout)["peak_gflops"]


def characterize(force: bool = False, max_bytes: int | None = None) -> dict:
    path = RESULTS / "machine.json"
    cached = read_json(path)
    if cached and not force and _same_host(cached):
        return cached
    if cached and not _same_host(cached):
        print(f"  machine.json was measured on {cached.get('host', {}).get('cpu_model')}; "
              f"re-measuring ceilings for this host")
    caches = cache_sizes()
    flops = measure_peak_flops()
    sweep = measure_bandwidth(max_bytes, flops["vector_bytes"])
    bw = plateaus(sweep, caches)
    m = {
        "host": host_info(), "caches_bytes": caches,
        "peak_gflops": flops["peak_gflops"], "peak_detail": flops,
        "bandwidth_gbs": bw, "bandwidth_sweep": sweep,
        "ridge_points": {lvl: flops["peak_gflops"] / v for lvl, v in bw.items()
                         if isinstance(v, (int, float))},
        "method": ("single core; FMA peak from C microbenchmark (best over SIMD width x "
                   "accumulator count); bandwidth = median read GB/s per cache-level band"),
    }
    write_json(path, m)
    from . import thermal
    thermal._GUARD = None  # next guard() re-reads state and recalibrates if the probe changed
    return m
