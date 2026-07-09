"""
roofline.py — Roofline / operational-intensity model for a compute kernel.

Usage: point this at any kernel you can measure (matmul, conv2d, whatever
TVM/IREE kernel you compiled) and it tells you whether that kernel is
compute-bound or memory-bound on your hardware, and how far it is from peak.

This is intentionally dependency-free so it runs identically regardless
of which TVM/IREE version you end up on.
"""

import argparse
import subprocess
import platform


def measure_peak_gflops(dtype_bytes=4, trials=3):
    """Rough peak compute estimate via a tight numpy matmul loop (proxy for
    hardware peak FLOP/s on this machine). For a real writeup, replace with
    vendor spec sheet peak (e.g. CPU turbo GFLOPS from lscpu / datasheet)."""
    import numpy as np
    import time
    n = 1024
    a = np.random.rand(n, n).astype("float32")
    b = np.random.rand(n, n).astype("float32")
    best = 0.0
    for _ in range(trials):
        t0 = time.perf_counter()
        a @ b
        dt = time.perf_counter() - t0
        flops = 2 * n**3
        best = max(best, flops / dt / 1e9)
    return best


def measure_peak_bandwidth_gbps(trials=3):
    """STREAM-like copy bandwidth proxy in GB/s."""
    import numpy as np
    import time
    n = 64_000_000  # elements
    a = np.random.rand(n).astype("float32")
    best = 0.0
    for _ in range(trials):
        t0 = time.perf_counter()
        b = a.copy()
        dt = time.perf_counter() - t0
        gb = a.nbytes / 1e9
        best = max(best, gb / dt)
    return best


def roofline_point(flops, bytes_moved, achieved_time_s):
    """Given a kernel's FLOP count, bytes moved, and measured runtime,
    return operational intensity (FLOPs/byte) and achieved GFLOP/s."""
    oi = flops / bytes_moved
    achieved_gflops = flops / achieved_time_s / 1e9
    return oi, achieved_gflops


def classify(oi, achieved_gflops, peak_gflops, peak_bw_gbps):
    """Compute-bound vs memory-bound classification, per the standard
    roofline model: ridge point = peak_gflops / peak_bandwidth."""
    ridge_point = peak_gflops / peak_bw_gbps
    bound = "compute-bound" if oi >= ridge_point else "memory-bound"
    roofline_ceiling = min(peak_gflops, oi * peak_bw_gbps)
    efficiency = achieved_gflops / roofline_ceiling * 100
    return {
        "ridge_point_flops_per_byte": ridge_point,
        "bound": bound,
        "roofline_ceiling_gflops": roofline_ceiling,
        "pct_of_ceiling": efficiency,
    }


def matmul_flops_bytes(M, K, N, dtype_bytes=4):
    flops = 2 * M * K * N
    bytes_moved = (M * K + K * N + M * N) * dtype_bytes
    return flops, bytes_moved


if __name__ == "__main__":
    ap = argparse.ArgumentParser()
    ap.add_argument("--M", type=int, default=256)
    ap.add_argument("--K", type=int, default=256)
    ap.add_argument("--N", type=int, default=256)
    ap.add_argument("--measured-time-ms", type=float, required=True,
                     help="Wall time from your TVM/IREE time_evaluator run, in ms")
    args = ap.parse_args()

    print(f"Host: {platform.processor() or platform.machine()}")
    peak_gflops = measure_peak_gflops()
    peak_bw = measure_peak_bandwidth_gbps()
    print(f"Measured peak compute (numpy matmul proxy): {peak_gflops:.1f} GFLOP/s")
    print(f"Measured peak memory bandwidth (copy proxy): {peak_bw:.1f} GB/s")

    flops, bytes_moved = matmul_flops_bytes(args.M, args.K, args.N)
    oi, achieved = roofline_point(flops, bytes_moved, args.measured_time_ms / 1e3)
    result = classify(oi, achieved, peak_gflops, peak_bw)

    print(f"\nKernel: matmul {args.M}x{args.K}x{args.N}")
    print(f"  Operational intensity: {oi:.3f} FLOPs/byte")
    print(f"  Achieved: {achieved:.2f} GFLOP/s")
    print(f"  Ridge point: {result['ridge_point_flops_per_byte']:.3f} FLOPs/byte")
    print(f"  Classification: {result['bound']}")
    print(f"  Roofline ceiling for this OI: {result['roofline_ceiling_gflops']:.2f} GFLOP/s")
    print(f"  Efficiency vs ceiling: {result['pct_of_ceiling']:.1f}%")
