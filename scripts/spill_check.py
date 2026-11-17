"""Reproduce the spill-count correction (README section 9) on any machine.

Compiles two 64-accumulator tiles for x86-64 Emerald Rapids (cross-compiled, so it
also runs on Apple Silicon) and prints vector stack accesses three ways:
the whole .s (old number), the dispatch function only, and objdump on the ELF.

    python3 scripts/spill_check.py
"""
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

from mlirbench.asm import analyze_dir  # noqa: E402
from mlirbench.compiler import compile_kernel  # noqa: E402
from mlirbench.elfinspect import CROSS, DEBUG, inspect_dump  # noqa: E402
from mlirbench.kernels import Shape, TileConfig  # noqa: E402

print(f"{'tile':<18}{'whole .s':>10}{'dispatch':>10}{'objdump':>10}")
for t in [TileConfig(16, 64, 16, 64, 1), TileConfig(16, 64, 16, 64, 4), TileConfig(16, 32, 8, 32, 4)]:
    r = compile_kernel(Shape(128, 128, 128), CROSS["x86_64"], tile=t, tag="spill_x86", extra=DEBUG)
    if not r.ok:
        print(f"{t.key:<18} compile failed: {r.error[:200]}")
        continue
    a = analyze_dir(r.dump_dir)
    d = inspect_dump(r.dump_dir)[0]["dispatches"][0]
    print(f"{t.key:<18}{a.get('vec_stack_access', 0):>10}{a['dispatch_only'].get('vec_stack_access', 0):>10}"
          f"{d['binary_counts'].get('vec_stack_access', 0):>10}")
