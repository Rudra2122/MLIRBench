"""In-process kernel invocation, for counters that are scoped to one thread.

With the `local-sync` HAL device IREE executes every dispatch synchronously on
the calling thread. So if a counter backend can read *this thread's* PMU
counters (macOS kperf can: kpc_get_thread_counters), wrapping a loop of calls
in two reads measures exactly the kernel plus the per-call runtime/Python cost,
and nothing from other processes or threads.

Inputs are uploaded to device buffers once, outside the measured region, so
host->device copies are not counted.
"""
from __future__ import annotations

import time
from pathlib import Path
from typing import Callable

import numpy as np

from .bench import input_files
from .kernels import Shape


class Kernel:
    def __init__(self, vmfb: Path, shape: Shape, device: str = "local-sync"):
        import iree.runtime as rt
        self.shape = shape
        self._cfg = rt.Config(device)
        self._ctx = rt.SystemContext(config=self._cfg)
        self._ctx.add_vm_module(rt.VmModule.mmap(self._cfg.vm_instance, str(vmfb)))
        self._fn = self._ctx.modules.module["matmul"]
        a_path, b_path = input_files(shape)
        self._a = rt.asdevicearray(self._cfg.device, np.load(a_path))
        self._b = rt.asdevicearray(self._cfg.device, np.load(b_path))

    def __call__(self) -> None:
        self._fn(self._a, self._b)

    def run(self, n: int) -> None:
        fn, a, b = self._fn, self._a, self._b
        for _ in range(n):
            fn(a, b)

    def latency_ms(self, reps: int = 3) -> float:
        self.run(1)  # warm: first call maps the executable, allocates pools
        t0 = time.perf_counter()
        self.run(reps)
        return (time.perf_counter() - t0) / reps * 1e3


def plan_iterations(latency_ms: float, target_s: float = 1.5, min_delta: int = 3,
                    max_delta: int = 2000) -> tuple[int, int]:
    """Pick (n1, n2) for iteration differencing so the measured difference
    covers ~target_s of kernel time: long enough to swamp read overhead, short
    enough that a 3.7 s scalar kernel doesn't take ten minutes."""
    delta = int(target_s * 1e3 / max(latency_ms, 1e-3))
    delta = max(min_delta, min(max_delta, delta))
    n1 = max(1, delta // 5)
    return n1, n1 + delta


def differenced(read: Callable[[], dict], kernel: Kernel, n1: int, n2: int) -> dict:
    """Per-invocation counts = (C[n2] - C[n1]) / (n2 - n1).

    The fixed cost of reading counters and entering the loop appears in both
    runs and cancels; what is left is per-call.
    """
    kernel.run(2)  # warm
    c0 = read(); kernel.run(n1); c1 = read()
    c2 = read(); kernel.run(n2); c3 = read()
    out = {}
    for k in c0:
        d1 = c1[k] - c0[k]
        d2 = c3[k] - c2[k]
        out[k] = (d2 - d1) / (n2 - n1)
    return out
