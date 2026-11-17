"""MLIRBench 2.0 command line.

  python -m mlirbench peaks                 # machine ceilings (FMA peak, per-level bandwidth)
  python -m mlirbench tune [--shape 512x512x512] [--strategy staged|grid]
  python -m mlirbench sweep                 # roofline curve across shapes
  python -m mlirbench ablate                # optimization ladder
  python -m mlirbench counters [--counter-backend auto|perf|kperf|xctrace]
  python -m mlirbench counters --selftest   # check the counter backend before trusting it
  python -m mlirbench counters --list-events
  python -m mlirbench thermal [--recalibrate]
  python -m mlirbench schedule [--shape ..]  # hand-written transform-dialect schedule ladder
  python -m mlirbench padding              # 960/1024/1088 bracket: capacity vs set conflicts
  python -m mlirbench ir [--shape ..] [--variant ..]
  python -m mlirbench riscv                 # RVV cross-compile + QEMU execution (Linux)
  python -m mlirbench elf [--target host|x86_64|aarch64|riscv64]
                                            # ELF sections, symbol tables, objdump vs asm.py, DWARF lines
  python -m mlirbench report                # plots + results/REPORT.md
  python -m mlirbench all

Thermal guard (--thermal): before every shape (and every 10 autotune configs)
a ~0.5 s FMA probe is compared with a calibrated baseline. "wait" cools down
until it recovers, "warn" only records, "off" disables. Default: wait on
macOS, warn elsewhere. Rows measured while throttled get thermal_suspect=true.
"""
from __future__ import annotations

import argparse
import json
import sys

from . import experiments, kernels


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(prog="mlirbench", description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("cmd", choices=["peaks", "tune", "sweep", "ablate", "counters", "thermal",
                                    "schedule", "padding", "ir", "riscv", "elf", "report", "all"])
    ap.add_argument("--shape", action="append", help="MxKxN, repeatable")
    ap.add_argument("--variant", action="append")
    ap.add_argument("--strategy", default="staged", choices=["staged", "grid"])
    ap.add_argument("--force", action="store_true", help="re-measure machine ceilings")
    ap.add_argument("--thermal", default="auto", choices=["auto", "wait", "warn", "off"])
    ap.add_argument("--thermal-threshold", type=float, default=0.05,
                    help="min fractional drop flagged as throttling (raised automatically on noisy hosts)")
    ap.add_argument("--max-cool", type=float, default=600, help="max seconds to wait for recovery")
    ap.add_argument("--recalibrate", action="store_true", help="thermal: new baseline (run when cool)")
    ap.add_argument("--counter-backend", default="auto", choices=["auto", "perf", "kperf", "xctrace"])
    ap.add_argument("--selftest", action="store_true", help="counters: validate backend, no benchmarks")
    ap.add_argument("--list-events", action="store_true", help="counters: list this CPU's PMU events")
    ap.add_argument("--schedule", action="store_true",
                    help="counters: profile the hand-written schedule's kernels (after `schedule`)")
    ap.add_argument("--target", action="append", choices=["host", "x86_64", "aarch64", "riscv64"],
                    help="elf: which ELF targets to inspect (default: host + the other ISAs)")
    ap.add_argument("--counters", action="store_true",
                    help="tune: also collect lean hardware counters for every config (Linux perf / macOS kperf)")
    a = ap.parse_args(argv)
    shapes = [kernels.parse_shape(s) for s in a.shape] if a.shape else None

    from .thermal import configure
    g = configure(a.thermal, a.thermal_threshold, a.max_cool)

    if a.cmd == "thermal":
        if a.recalibrate:
            g.state = {"probes": []}
            g.baseline = None
            g.calibrate()
        ev = g.before("manual check")
        print(json.dumps({k: g.state.get(k) for k in ("baseline_gflops", "probe_noise",
                                                      "effective_threshold")}, indent=1))
        if ev:
            print(f"current probe {ev['peak_gflops']:.1f} GF/s = {100 * ev['ratio']:.1f}% of baseline"
                  f"{'  THROTTLED' if ev['throttled'] else ''}")
        return 0

    if a.cmd in ("peaks", "all"):
        from .peaks import characterize
        m = characterize(force=a.force or a.cmd == "peaks")
        print(f"peak {m['peak_gflops']:.1f} GFLOP/s | bandwidth GB/s "
              f"{ {k: round(v, 1) for k, v in m['bandwidth_gbs'].items() if isinstance(v, float)} }")
    if a.cmd in ("tune", "all"):
        from .autotune import tune
        for s in shapes or kernels.TUNE:
            print(f"autotune {s.display}")
            r = tune(s, strategy=a.strategy, counters=a.counters)
            print(f"  best {r['best']['config']}  {r['speedup_vs_heuristic']:.2f}x vs IREE heuristic "
                  f"({r['evaluated']} configs, rejected {r['rejected']})"
                  f"{'  [THERMAL SUSPECT]' if r['thermal']['suspect'] else ''}")
    if a.cmd in ("sweep", "all"):
        print("roofline sweep")
        experiments.sweep(shapes or kernels.ALL, a.variant or experiments.SWEEP_VARIANTS)
    if a.cmd in ("ablate", "all"):
        print("optimization ladder")
        from .compiler import LADDER
        experiments.ablate(shapes or kernels.ABLATION, a.variant or LADDER)
    if a.cmd in ("schedule", "all"):
        print("hand-written transform-dialect schedule (schedules/matmul.mlir.in)")
        from .schedule import run as run_schedule
        run_schedule(shapes or [kernels.parse_shape(x) for x in ("128x128x128", "512x512x512", "1024x1024x1024")])
    if a.cmd == "padding":
        print("padded-width experiment: capacity vs power-of-two set conflicts")
        from .padding import run as run_padding
        run_padding(backend=a.counter_backend)
        return 0
    if a.cmd in ("counters", "all"):
        if a.list_events:
            from .counters_kperf import list_events_from_plist
            ev = list_events_from_plist()
            print(json.dumps(ev, indent=1) if ev else "no /usr/share/kpep database (not macOS?)")
            return 0
        if a.selftest:
            from . import counters_kperf, counters_xctrace
            b = a.counter_backend
            if b in ("auto", "kperf"):
                print("kperf:", json.dumps(counters_kperf.selftest(), indent=1, default=str))
            if b in ("auto", "xctrace"):
                print("xctrace:", json.dumps(counters_xctrace.selftest(), indent=1, default=str))
            if b == "perf":
                from .counters import availability
                print("perf:", availability())
            return 0
        if a.schedule:
            print("hardware counters: hand-written schedule kernels")
            experiments.counters_schedule(backend=a.counter_backend)
            return 0
        print("hardware counters")
        from .compiler import LADDER
        experiments.counters_exp(shapes or [kernels.ABLATION[0], kernels.ABLATION[2]],
                                 a.variant or LADDER, backend=a.counter_backend)
    if a.cmd in ("ir", "all"):
        from .irstages import capture
        for s in shapes or [kernels.ABLATION[0]]:
            for v in a.variant or ["packed_mmt4d", "vec_heuristic", "vec_autotuned", "v1_generic_isa"]:
                print(f"IR capture {v} {s.name}")
                capture(s, v)
    if a.cmd in ("riscv", "all"):
        from .riscv import run_all
        r = run_all(shapes or [kernels.Shape(128, 128, 128), kernels.Shape(64, 96, 80)])
        for x in r["results"]:
            ex = x.get("execution", {})
            print(f"  {x['target']:<8} {x['shape']:<12} fma_vec={x.get('asm', {}).get('fma_vector_total')} "
                  f"exec={ex.get('status')} " + " ".join(
                      f"[{rr['qemu_cpu']}: {'SIGILL' if rr['signal'] else ('PASS' if rr['result'] and 'PASS' in rr['result'] else 'FAIL')}]"
                      for rr in ex.get("runs", [])))
    if a.cmd in ("elf", "all"):
        from .elfinspect import run_all as run_elf
        r = run_elf(shapes, a.target, a.variant)
        for k in r["kernels"]:
            if "error" in k:
                print(f"  {k['target']:<8} {k['variant']:<22} {k['shape']:<12} ERROR {k['error'][:120]}")
                continue
            for e in k["elves"]:
                for d in e["dispatches"]:
                    hl = d.get("hot_loop") or {}
                    ln = ", ".join(f"L{x['line']} {x['op']} x{x['instructions']}" for x in hl.get("dwarf_lines", [])[:3])
                    print(f"  {e['elf'].get('isa') or '?':<8} {k['variant']:<22} {k['shape']:<12} "
                          f"{d['symbol'][:44]:<44} counts={'MATCH' if d.get('counts_match') else 'DIFF'} "
                          f"size={'MATCH' if d.get('size_checks_pass') else 'DIFF'} "
                          f"loop_fma={hl.get('vector_fma', 0)} -> {ln}")
        sm = r["summary"]
        print(f"elf: {sm['dispatches']} dispatches across {', '.join(sm['isas'])}; asm.py vs objdump counts match "
              f"{sm['counts_match']}/{sm['dispatches']}; .o symbol = DWARF range {sm['size_checks_pass']}/{sm['dispatches']}")
    if a.cmd in ("report", "all"):
        from .report import build_report
        print(f"wrote {build_report()}")
    return 0


if __name__ == "__main__":
    rc = main()
    sys.stdout.flush(); sys.stderr.flush()
    # skip interpreter teardown: iree.runtime's nanobind bindings print spurious
    # "leaked function" warnings at exit
    import os
    os._exit(rc)
