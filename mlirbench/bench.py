"""Timing (iree-benchmark-module) and correctness (iree.runtime vs NumPy).

Timing goes through iree-benchmark-module rather than a Python loop: v1 timed
through `iree.runtime` from Python, which folds interpreter + binding overhead
into every sample. Here each repetition is a Google-Benchmark run of many
back-to-back invocations; we keep every repetition and report median / p95 /
min across repetitions.
"""
from __future__ import annotations

import json
import statistics
from pathlib import Path
from typing import Optional

import numpy as np

from .common import BUILD, find_tool, run
from .kernels import Shape

DEFAULT_DEVICE = "local-sync"  # single-threaded, deterministic: a per-core roofline


def input_files(shape: Shape, seed: int = 0) -> tuple[Path, Path]:
    d = BUILD / "inputs"
    d.mkdir(parents=True, exist_ok=True)
    a, b = d / f"{shape.name}_A.npy", d / f"{shape.name}_B.npy"
    if not a.exists() or not b.exists():
        rng = np.random.default_rng(seed)
        np.save(a, rng.uniform(-1, 1, (shape.M, shape.K)).astype(np.float32))
        np.save(b, rng.uniform(-1, 1, (shape.K, shape.N)).astype(np.float32))
    return a, b


def _percentile(xs: list[float], p: float) -> float:
    xs = sorted(xs)
    if len(xs) == 1:
        return xs[0]
    k = (len(xs) - 1) * p
    lo, hi = int(k), min(int(k) + 1, len(xs) - 1)
    return xs[lo] + (xs[hi] - xs[lo]) * (k - lo)


def benchmark(vmfb: Path, shape: Shape, repetitions: int = 7, min_time: str = "0.1s",
              device: str = DEFAULT_DEVICE, function: str = "matmul") -> dict:
    a, b = input_files(shape)
    cmd = [find_tool("iree-benchmark-module"), f"--module={vmfb}", f"--device={device}",
           f"--function={function}", f"--input=@{a}", f"--input=@{b}",
           f"--benchmark_repetitions={repetitions}", f"--benchmark_min_time={min_time}",
           "--benchmark_format=json", "--benchmark_report_aggregates_only=false"]
    proc = run(cmd, timeout=1800)
    if proc.returncode != 0:
        return {"ok": False, "error": proc.stderr[-1500:]}
    data = json.loads(proc.stdout)
    reps = [r for r in data["benchmarks"] if r.get("run_type") == "iteration"]
    unit = {"ns": 1e-6, "us": 1e-3, "ms": 1.0, "s": 1e3}[reps[0]["time_unit"]]
    ms = [r["real_time"] * unit for r in reps]
    med = statistics.median(ms)
    return {
        "ok": True, "device": device, "repetitions": len(ms),
        "iterations_per_rep": reps[0]["iterations"],
        "median_ms": med, "p95_ms": _percentile(ms, 0.95), "min_ms": min(ms),
        "mean_ms": statistics.fmean(ms), "stdev_ms": statistics.pstdev(ms),
        "cv_pct": 100 * statistics.pstdev(ms) / statistics.fmean(ms),
        "gflops": shape.flops / (med * 1e-3) / 1e9,
        "samples_ms": ms, "context": {k: data["context"].get(k) for k in
                                      ("num_cpus", "mhz_per_cpu", "caches", "cpu_scaling_enabled")},
    }


def check_correctness(vmfb: Path, shape: Shape, device: str = DEFAULT_DEVICE,
                      rtol: float = 1e-4) -> dict:
    """Run once through iree.runtime and compare against a float64 NumPy reference.

    Error is max|C - ref| / max|ref|: fp32 accumulation over K legitimately
    differs from float64, so this is a normalized tolerance, not bit equality.
    """
    import iree.runtime as ireert
    a_path, b_path = input_files(shape)
    a, b = np.load(a_path), np.load(b_path)
    try:
        mod = ireert.load_vm_flatbuffer_file(str(vmfb), driver=device)
        out = np.asarray(mod.matmul(a, b).to_host())
    except Exception as e:  # noqa: BLE001
        return {"ok": False, "error": repr(e)[:800]}
    ref = a.astype(np.float64) @ b.astype(np.float64)
    denom = float(np.max(np.abs(ref))) or 1.0
    rel = float(np.max(np.abs(out - ref))) / denom
    return {"ok": bool(rel < rtol), "max_rel_err": rel, "rtol": rtol}


_floor_cache: dict[str, dict] = {}


def invocation_floor(device: str = DEFAULT_DEVICE) -> Optional[dict]:
    """Latency of a 1x1x1 matmul: the fixed cost of one IREE invocation
    (VM call, buffer views, HAL dispatch) that no amount of kernel tuning removes."""
    if device in _floor_cache:
        return _floor_cache[device]
    from .compiler import compile_kernel, HOST, NO_DT
    tiny = Shape(1, 1, 1, label="invocation floor")
    res = compile_kernel(tiny, HOST + NO_DT, tag="floor", dump=False)
    if not res.ok:
        return None
    r = benchmark(res.vmfb, tiny, repetitions=7, min_time="0.2s", device=device)
    _floor_cache[device] = r
    return r
