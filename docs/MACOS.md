# Running MLIRBench on a MacBook (Apple Silicon)

Written for an M3 MacBook Air, but it applies to any Apple Silicon Mac. It covers:

- your own ceilings, ladder, autotuner and roofline (`make mac`),
- hardware counters (`make mac-counters`, needs `sudo`),
- keeping thermal throttling out of the numbers.

Everything writes to `results_m3/`, so the x86 results in `results/` stay intact for comparison.

> Status: kperf counters, the thermal guard and the whole pipeline have now run on an M3 MacBook Air (`results_m3/`). Bugs found there and fixed: the FMA peak benchmark's AArch64 codegen, clang hoisting in the bandwidth sweep, the ARM tile-config parser, kperf detection (frameworks live in the dyld shared cache), and PMU counter conflicts, now handled with multi-pass collection. xctrace remains untested.
>
> Originally: the macOS paths (kperf counters, xctrace counters, `pmset` thermal readout) were written without access to a Mac. Everything platform-independent was tested on Linux: in-process differencing, the xctrace XML parser, the thermal guard, the report. Run the self-tests below first; if something breaks, the error message plus `results_m3/` is enough to debug it.

## 0. Setup

```bash
python3 -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt           # IREE 3.11 wheels exist for macOS arm64
xcode-select --install                    # clang for the ceiling microbenchmarks
python -m mlirbench counters --list-events | head -40   # this CPU's PMU event names
```

## 1. Before you start: throttling on a fanless Air

The Air has no fan. Under sustained single-core load it heat-soaks and lowers clocks, so a configuration measured at minute 60 looks slower than the same one at minute 5.

The thermal guard handles this:

- **Calibration.** On first use it takes 5 short FMA probes (about 0.5 s each). Their median is the *baseline*, and their spread is the host's noise. The flag threshold is max(5%, 1.5 × noise).
- **Before every shape**, and every 10 autotune configs, it probes again. In `wait` mode (the macOS default) it sleeps in 30 s steps until the probe is back within threshold, for up to 10 minutes (`--max-cool`).
- **After every shape** it probes once more. If clocks dropped *during* the chunk, those rows get `thermal_suspect: true`.
- **Records.** Every probe, including `pmset -g therm` output, is appended to `results_m3/thermal.json`. `REPORT.md` lists any suspect results to re-run.

Do this:

- Start from a **cool** machine: lid open, not straight after other heavy work. The baseline is taken at the start, and a hot baseline hides throttling.
- Plugged in, Low Power Mode **off**, on a hard surface (a laptop stand or cooling pad helps a lot), everything else closed.
- If you resume on another day: `make thermal` shows the current probe against the stored baseline. Use `python -m mlirbench thermal --recalibrate` only when the machine is cool.

## 2. Benchmarks

```bash
make mac          # peaks -> recalibrate -> tune (6 shapes) -> ablate -> sweep -> ir -> report
```

Expect roughly 1.5–3 hours including cool-downs. You can also run it in pieces; results merge per shape:

```bash
export MLIRBENCH_RESULTS=$PWD/results_m3
python -m mlirbench peaks
python -m mlirbench tune --shape 512x512x512
python -m mlirbench ablate --shape 1024x1024x1024
python -m mlirbench report
```

RISC-V is skipped on the Mac: `qemu-riscv64` user mode doesn't exist on macOS. The RISC-V results in `results/` are already real.

What to expect differently from the x86 run (predictions, not results):

- **NEON is 128-bit (4 fp32 lanes).** The autotuner searches `vn ∈ {4, 8, 16}`, and the register-tile / spill tradeoff moves accordingly.
- **Almost everything fits in L2.** The M3 P-cluster L2 is far larger than the x86 VM's 2 MB, so the packing crossover seen at 1024³ on x86 may shift or vanish.
- **Only L1 / L2 / DRAM roofs.** Apple doesn't report its system-level cache as an L3, so there will be no L3 roof.
- **macOS can't pin a thread to a performance core.** Check `cv_pct` on each row; high variance means a run landed on an efficiency core or got interrupted.

## 3. Hardware counters

Two backends. Use **kperf**: it's exact and needs no GUI setup.

### kperf (recommended): `sudo`, in-process, thread-exact

This uses the private `kperf` framework that Instruments itself uses:

- The kernel runs **in-process** on IREE's synchronous `local-sync` device, so it executes on the calling thread.
- kperf reads **that thread's** counters before and after N calls.
- Per-call counts are differenced over two iteration counts, which cancels fixed overhead.
- Iteration counts adapt to latency, so a 3.7 s scalar kernel takes seconds, not minutes.

```bash
make mac-selftest      # MUST pass first: counts must double when work doubles
make mac-counters      # 128^3 and 1024^3, all ladder variants, then report
```

Default events come from Apple's event database for your CPU; missing ones are skipped and reported:

| Logical name | Apple event names |
|---|---|
| cycles | `FIXED_CYCLES` |
| instructions | `FIXED_INSTRUCTIONS` |
| SIMD ALU / load / store | `INST_SIMD_ALU` / `INST_SIMD_LD` / `INST_SIMD_ST` |
| L1D load / store misses | `L1D_CACHE_MISS_LD(_NONSPEC)` / `L1D_CACHE_MISS_ST(_NONSPEC)` |
| L1D TLB misses | `L1D_TLB_MISS` |
| branch mispredicts | `BRANCH_MISPRED_NONSPEC` |
| load/store instructions | `INST_LDST` |

Override the set with `MLIRBENCH_KPC_EVENTS="FIXED_CYCLES,FIXED_INSTRUCTIONS,..."`; take names from `--list-events`.

**What Apple does not give you.** There are no L2, SLC or DRAM miss events. So the measured-traffic number is **L1 refill bytes**: (load + store misses) × `hw.cachelinesize` (128 B), i.e. L1↔L2 traffic.

- On the M3 most shapes here are L2-resident, so that is the traffic that matters.
- But it is *not* the same quantity as the Linux LLC-miss estimate. The report labels it as such.
- The SIMD-ALU count gives an **upper bound** on FLOPs (it assumes every SIMD op is a 4-lane FMA), not an exact FLOP count like Intel's `fp_arith_inst_retired`.

This answers the open 1024³ question from the x86 run (tiled scalar slower than untiled): compare `l1d_miss_ld`, `l1d_tlb_miss` and `ipc` for `scalar_naive` against `scalar_tiled`. The x86 numbers came from a different machine, so reproduce the timing gap on the M3 first. If it doesn't reproduce, that is also a finding.

### xctrace (no root, needs full Xcode + a template)

Use this only if you can't or don't want to use `sudo`.

1. Install Xcode (not just Command Line Tools), then run `sudo xcode-select -s /Applications/Xcode.app`.
2. Open Instruments → choose the **CPU Counters** template.
3. In the CPU Counters instrument settings, configure the events you want (names from `--list-events`) and prefer counting over event-triggered sampling if both are offered.
4. **File → Save As Template…** → e.g. `~/MLIRBenchCounters.tracetemplate`.
5. Run:

```bash
export MLIRBENCH_XCTRACE_TEMPLATE=~/MLIRBenchCounters.tracetemplate
export MLIRBENCH_XCTRACE_EVENTS="FIXED_CYCLES,FIXED_INSTRUCTIONS,L1D_CACHE_MISS_LD"   # in the order configured
MLIRBENCH_RESULTS=$PWD/results_m3 python -m mlirbench counters --selftest --counter-backend xctrace
MLIRBENCH_RESULTS=$PWD/results_m3 python -m mlirbench counters --counter-backend xctrace
```

The export format of the CPU Counters instrument isn't documented. The parser handles id/ref de-duplication, per-sample deltas versus cumulative snapshots, and filtering to the benchmark process. It saves raw XML in `results_m3/xctrace_debug/` and records which interpretation it used. The Instruments menu labels above may differ slightly between Xcode versions. If the self-test doesn't show ~2.0× scaling, the XML in `xctrace_debug/` shows what the instrument actually wrote.

## 4. Checking the results are clean

```bash
make thermal                          # current probe vs baseline
grep -A5 "Thermal guard" results_m3/REPORT.md
```

Re-run any shape the report lists as measured while throttled, e.g. `python -m mlirbench ablate --shape 1024x1024x1024`. Results merge per shape.
