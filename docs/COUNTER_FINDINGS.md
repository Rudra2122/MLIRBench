# What the hardware counters showed

Sections 1–10 cover the x86 hosts; section 11 covers an Apple M3.

**Host:** a Google Cloud `c4-standard-8` VM with the performance-monitoring unit enabled at the "standard" level. The CPU is an Intel Xeon Platinum 8581C (Emerald Rapids), with 2 MiB of L2 per core.

**Method:**
- Linux `perf stat`, 23 events in small non-multiplexed groups.
- Per-invocation counts come from iteration differencing: `(C[n2] − C[n1]) / (n2 − n1)`, with iteration counts scaled to kernel latency.
- Single thread (`local-sync`), pinned with `taskset -c 3`.

**Data:** `results_c4/counters.json`.
- The 128³ rows come from the first counter run, which collected cycles, instructions, L1 and FP events.
- The 512³ and 1024³ rows come from a second run that added L2, stall-cycle and load-level events. Where both runs measured the same quantity, they agree closely (e.g. heuristic 1024³ IPC 0.49 in both).
- Derived metrics are computed from the raw counts, never re-measured.

**How the method was checked.** The counter-derived per-call CPU time matches the benchmark: 18.56 ms vs 18.89 ms for autotuned 1024³, and 14.48 ms vs 15.07 ms for packed.

**How to read the metrics.** *FLOP/cycle* is clock-independent. The core retires 2 AVX-512 FMAs per cycle, i.e. 2 × 16 lanes × 2 FLOP = **64 FLOP/cycle** peak, consistent with the measured 240 GFLOP/s FMA microbenchmark (about 3.75 GHz × 64).

**Event names:**
- `stalls_l2_miss` is `cycle_activity.stalls_l2_miss`: cycles in which execution stalled with an outstanding L2 miss.
- "Loads missing L2" is `mem_load_retired.l2_miss`: retired demand loads whose data was not in L2.

---

## 1. The analytic FLOP model is exact, and the ISA claims are verified

Intel's `fp_arith_inst_retired.*` events count retired FP instructions by vector width.

- **All 24 configurations** (8 variants × 128³ / 512³ / 1024³) **measure exactly 2·M·N·K FLOPs** (ratio 1.00000). There is no redundant FP work; packing and unpacking add none.
- **Vector width is measured, not inferred.** Vectorized variants retire 100% 512-bit packed FP instructions; the v1 generic build and both scalar variants retire 100% scalar.

## 2. v1's "memory-bound" diagnosis is refuted

| v1 build (generic ISA) | 128³ | 512³ | 1024³ |
|---|---|---|---|
| L1D load miss rate | 0.23% | 0.17% | 1.16% |
| cycles stalled on L2 misses | — | 0% | 0% |
| FP instruction mix | 100% scalar | 100% scalar | 100% scalar |
| FLOP/cycle (of 64) | 1.42 | 1.11 | 1.04 |
| IPC | 4.37 | 3.34 | 3.13 |

The v1 build barely misses cache and never stalls on memory, while running at very high IPC. It is instruction-bound: every FLOP is its own scalar instruction.

**IPC is not performance.** v1 has the highest IPC in the study, yet its FLOP/cycle beats only the two scalar variants.

## 3. The scalar kernel: why cache tiling does nothing, and where its limit moves

| Scalar (untiled / tiled) | 128³ | 512³ | 1024³ |
|---|---|---|---|
| L1 miss rate | 45.5% / 45.6% | 46.7% / 44.3% | 35.6% / 35.6% |
| cycles stalled on L1 misses | — | 34% / 34% | 76% / 76% |
| cycles stalled on L2 misses | — | 0% / 0% | **69% / 69%** |
| FLOP/cycle | 0.66 / 0.66 | 0.53 / 0.52 | 0.16 / 0.16 |

**Why tiling doesn't help.** The 64×64 tile is on M and N, but the inner loop runs over K, where each access to B moves one full row, i.e. to a new cache line. Tiling M and N doesn't change that stride, so miss counts and stall profiles are identical with or without the tile.

**Where the limit moves:**
- **Up to 512³:** the kernel runs near the ceiling of one dependent FMA chain (2 FLOP per ~4-cycle latency). Nearly half its loads miss L1, but they hit L2, and no cycles stall on L2 misses.
- **At 1024³:** B's columns no longer stay in L2. 69% of all cycles stall on L2 misses, and the L2 fill traffic reaches 5,400× the compulsory bytes. The limit has become memory latency.

**The x86-sandbox anomaly did not reproduce.** The sandbox showed tiled slower than untiled at 1024³ (4.6 s vs 3.7 s). On C4 the benchmarked times are 3451.9 vs 3452.0 ms, and the counters are the same. It was noise from the shared sandbox VM.

## 4. What happens at 1024³, measured

| Variant | FLOP/cycle 512³ → 1024³ | L2 miss rate | cycles stalled on L2 misses | loads missing L2 (per call, 1024³) | 1024³ time |
|---|---|---|---|---|---|
| IREE heuristic tiles | 37.7 → **13.5** | 6.3% → **75.4%** | 1% → **59%** | 7.14 M | 41.5 ms |
| autotuned tiles | 59.1 → 31.4 | 4.1% → 33.3% | 2% → 22% | 1.13 M | 18.9 ms |
| packed (late materialization) | 42.0 → **40.3** | 12.7% → 31.0% | 5% → **4%** | 0.28 M | **15.0 ms** |

**Confirmed: the heuristic's 1024³ collapse is L2 misses.** Its L2 miss rate goes from 6% to 75%, and 59% of all cycles are spent stalled with an L2 miss outstanding. At 512³ that was 1%. This replaces the earlier inference (same L1 misses, but each 3.4× more expensive) with a direct measurement.

**Revised: why the autotuned tiles hold up better.** My earlier guess was that the bigger register tile keeps more independent accumulators in flight, so it *overlaps* the same misses better. The counters say that is at most part of the story. The autotuned kernel has **6.3× fewer demand loads missing L2** than the heuristic (1.13 M vs 7.14 M), yet only 1.9× fewer L2 misses in total. Fewer of its loads have to wait on L2 at all, so its stall fraction is 22% instead of 59%.

**Measured: why packing wins at 1024³.** The packed kernel moves about as much data through L2 as the autotuned one: 25× vs 23× the compulsory bytes, with similar L2 miss rates (31% vs 33%). But it stalls on L2 misses in only **4%** of cycles versus 22%, and 25× fewer of its loads miss L2 than the heuristic's.

- Packing copies A and B into tile-contiguous panels, so the inner kernel reads memory in long unit-stride streams.
- The consistent reading of these counters is that those streams arrive before the loads need them. It is the same traffic, just no longer on the critical path.
- That is why packing's efficiency barely moves (42.0 → 40.3 FLOP/cycle) while every unpacked variant degrades.

This is the counter-level mechanism behind the timing crossover:

| Size | Winner | Times |
|---|---|---|
| 512³ | tuned direct code | 1.28 ms tuned vs 1.76 ms packed |
| 1024³ | packing | 15.0 ms packed vs 18.9 ms tuned |

## 5. Measured traffic vs the compulsory minimum

These are the "theoretical minimum bytes vs measured memory behavior" numbers. Bytes filled into L2 (`l2_lines_in.all` × 64) divided by the compulsory bytes (read A and B once, write C once):

| Variant | 512³ | 1024³ |
|---|---|---|
| autotuned | **1.04×** | 22.9× |
| IREE heuristic | 2.16× | 44.2× |
| packed (late) | 3.17× | 24.5× |
| scalar | 1.16× | 5,444× |

- **At 512³ the autotuned kernel moves essentially the compulsory minimum into L2 (1.04×).** Every byte comes in about once.
- **Packing pays 3.2× at 512³:** the packed copies are extra traffic that small sizes can't amortize. At 1024³ it pays about the same traffic as tuned code but converts it into stall-free streams (section 4).
- **The heuristic moves twice what the tuned code does at both sizes.** At 1024³ that is 44× the minimum.

**How much of the 44× a capacity model explains.** The heuristic's workgroups are 64×64 blocks of C.
- **At 512³,** B is 1 MiB and can stay L2-resident while the workgroups sweep it: measured 2.16×.
- **At 1024³,** B is 4 MiB, twice the L2, so each of the 16 rows of workgroups re-streams all of B from L3. That is 16 × 4 MiB of B, plus A and C once, ≈ 72 MiB ≈ **6× compulsory**.
- **The measured 44× is about 7× more than that.** The capacity model explains why misses appear at 1024³, but not their magnitude.
- **The remainder is measured to be L2 set conflicts from B's 4096-byte row stride** (section 12). The same kernel at 960³ and 1088³, whose rows are not a power of two, fills L2 with **6.6× and 7.4×** the compulsory bytes, exactly what the capacity model predicts. At 1024³ it fills **44×**. So the 44× decomposes into about 6–7× capacity and about 6× set conflicts.

## 6. DRAM is not involved in these shapes on this host

`mem_load_retired.l3_miss` is **0** and `cycle_activity.stalls_l3_miss` is **0%** for every variant at 512³ and 1024³. No load in these runs missed L3; everything beyond L2 was served from L3. So the 1024³ slowdowns are L2-miss, L3-latency effects, not DRAM bandwidth.

This also settles the DRAM question for these shapes without the "enhanced" PMU. These core-side events report whether loads reached DRAM; the enhanced level would only add *how many bytes* crossed the memory controller.

The GEMV shapes (64 MB of weights) were not counter-profiled, so this statement does not cover them.

## 7. How close the best kernel gets

At 512³ the autotuned kernel sustains **59.1 of 64 FLOP/cycle (92%)**, with the L2 traffic at the compulsory minimum and 2% of cycles stalled on L2. The first counter run measured 59.6 on the same configuration. At 128³ it reaches 52.0 FLOP/cycle, with a 1.7 µs fixed invocation cost weighing on a 22 µs kernel.

## 8. Reproducibility across hosts

The C4 tuning of 512³ and 1024³ was repeated with `--counters`, which replaced those result files; both runs are shown. The 512³ winner changed (`d32x128_v8x32x8` → `d16x256_v4x64x8`, within about 1% of each other); the 1024³ winner did not.

| Shape | Speedup vs IREE heuristic, sandbox VM | Speedup vs IREE heuristic, GCE C4 |
|---|---|---|
| 128³ | 1.29× | 1.27× |
| 512³ | 1.64× | 1.68× (1.60× in the first tune) |
| 1024³ | 2.10× | 2.23× (2.19× in the first tune) |
| 128×768×3072 | 1.88× | 1.97× |
| 32×4096×4096 | 2.11× | 2.25× |
| 1×4096×4096 | 3.54× | 3.55× |

- **Small square shapes (128³, 512³):** the winning register tiles hold 16 zmm accumulators on both hosts, versus the heuristic's 8.
- **Larger shapes:** the best tiles grow, to 32 accumulators at 1024³ and on the FFN shape.
- **One inconsistency, the batch-32 decode shape.** The sandbox picked a 32-accumulator tile. C4 picked a 64-accumulator one, which exceeds the 32 architectural registers and must spill, yet measured fastest. "Fewer spills is always better" does not hold for every shape.

## 9. What the autotuner is optimizing, per config

`tune --counters` recorded lean counters (IPC, L2 misses per kFLOP, fraction of cycles stalled on L2 misses) for every configuration: 85 of 89 at 512³, 90 of 94 at 1024³. The rest failed to compile. Correlation of GFLOP/s with each counter across all configs:

| | 512³ | 1024³ |
|---|---|---|
| IPC | +0.75 | +0.89 |
| L2 misses per kFLOP | −0.06 | −0.87 |
| cycles stalled on L2 misses | +0.09 | **−0.96** |
| L2 misses per kFLOP, best vs worst config | 0.19 vs 0.22 | 2.1 vs 31.6 |

**At 512³, L2 behaviour is flat across the whole search space**, so it doesn't explain which tile wins. The ranking is decided by register-level compute efficiency: IPC ranges 0.6–2.9.

**At 1024³, the fraction of cycles stalled on L2 misses alone explains the ranking** (r = −0.96). The worst tiles, with one accumulator row, stall 71–81% of the time, against 27–28% for the best.

The same tuner is therefore solving two different problems at the two sizes. That is the regime change sections 4–5 found with the fixed ladder, now visible across the whole search space.

The L1-miss-per-kFLOP column is missing from this run because of a bug, now fixed: the lean event set collected L1 misses without L1 loads, and the derived-metric code required both.

## 10. The hand-written schedule's K blocking, measured

See [`TRANSFORM_SCHEDULE.md`](TRANSFORM_SCHEDULE.md). At 1024³, K blocking cuts the hand-written kernel's L2 miss rate from 32.6% to 13.2%, L2 fill traffic from 23× to 10× the compulsory bytes, and L2-stall cycles from 37% to 12%. That is 1.53× in FLOP/cycle. The effect is measured. The working-set argument the transformation was designed from does *not* explain it on this host, because C4's 64×64 tiles already fit L2 per workgroup; see `TRANSFORM_SCHEDULE.md` for what is and isn't established.

## 10b. Transformer and decode shapes (C4)

| Shape, variant | FLOP/cycle | L2 miss rate | bytes into L2 ÷ compulsory | cycles stalled on L2 misses | time (ablation) |
|---|---|---|---|---|---|
| 128×768×3072 (FFN up), heuristic | 13.6 | 67% | 12.6× | 57% | 11.26 ms |
| same, autotuned | 26.9 | 77% | 12.2× | 34% | 5.77 ms |
| same, packed (late) | **35.4** | 28% | **6.4×** | **6%** | **4.92 ms** |
| 32×4096×4096 (decode, batch 32), heuristic | 9.0 | 45% | 4.1× | 53% | — |
| same, autotuned | **22.1** | 31% | **2.1×** | 26% | — |
| same, packed (late) | 9.7 | 36% | 4.3× | 15% | — |
| 1×4096×4096 (decode GEMV), heuristic | 1.11 | 60% | **1.02×** | 93% | 7.94 ms |
| same, autotuned | **3.90** | 75% | **1.02×** | 82% | **2.26 ms** |
| same, packed (late) | 0.40 | 49% | **3.35×** | 20% | 25.12 ms |

L3 misses are **0** for every row, including the GEMV with its 64 MiB of weights. This VM reports a very large L3, so even the "memory-bound" decode shapes are served from L3 here, not DRAM.

**The GEMV is a pure streaming kernel, and the tuned tile wins on the same traffic.**
- Heuristic and autotuned tiles both fill L2 with exactly 1.02× the compulsory bytes: every weight byte is read once.
- The tuned tile is 3.5× faster anyway: 8.5 → 29.7 GB/s effective, 77% of the measured 38.4 GB/s L3 read bandwidth.
- It stalls somewhat less (82% vs 93% of cycles) while issuing wider loads (a 1×64 tile, 4 zmm per step, against 1×16).
- The consistent reading is more memory-level parallelism: more loads in flight per stall. That is an inference; no event here counts outstanding misses directly.

**Packing's cost for GEMV is measured.** Its packed variant moves 3.35× the compulsory bytes, which matches the predicted pattern: read B, write the packed copy, read the copy (≈ 3×). That is why it is 11× slower than the tuned direct kernel.

**FFN up (128×768×3072): packing wins by fixing traffic *and* stalls.** It halves the bytes into L2 relative to tuned direct code (6.4× vs 12.2×) and cuts L2-stall cycles from 34% to 6%. That fits the rule the square shapes suggested: packing pays when there is enough reuse to amortize the copy.

**Decode, batch 32:** there is too little reuse (M = 32) to amortize packing. The autotuned direct kernel halves the traffic of both alternatives (2.1× vs 4.1–4.3×) and is 2.3–2.4× more efficient per cycle.

## 11. A third host: Apple M3 (ARM, NEON), via kperf

Measured on a MacBook Air M3 performance core with the macOS kperf backend (`results_m3/`).

**Ceilings:** 120.8 GFLOP/s FP32 FMA peak (128-bit NEON, 16 accumulators); read bandwidth L1 174, L2 108, DRAM 65 GB/s; L1D 128 KiB and L2 16 MiB for the performance cluster.

Two measurement bugs surfaced on this machine and were fixed before these numbers:
- **The FMA peak.** The benchmark's first form (`r = r·m + a`) forced a register copy before every AArch64 `fmla`, which overwrites its addend. The peak read 54.5 GFLOP/s instead of 120.8.
- **The bandwidth sweep.** Apple clang hoisted the read loop out of its repetitions, reporting impossible bandwidth.

**What Apple's counters can and cannot say.** There are no L2/DRAM miss events.
- The first run got no L1-miss events either: the PMU refused them because the SIMD events had already taken the counters they need.
- `counters.py` now collects Apple events in three passes, constrained events first. The second run got all 10 events for every row.
- One pass (v1, 128³) returned readings that went backwards, giving about 9×10¹⁵ misses per call and a negative TLB count. `counters.py` now rejects physically impossible values (negative, or more than 64 events per cycle) and retries the pass. The stored row has those three events removed and listed under `invalid_events`.

| M3, FLOP/cycle (IPC) | 128³ | 1024³ |
|---|---|---|
| v1 generic-ISA build | 19.6 (5.0) | **29.4** (5.5) |
| scalar, untiled / tiled | 0.89 / 0.89 | 0.54 / 0.54 |
| IREE heuristic tiles | 26.2 (6.1) | 25.6 (5.9) |
| autotuned tiles | 27.3 (5.8) | 26.7 (5.5) |
| packed (mmt4d / ukernel / late) | 18.7 / 19.6 / 19.1 | 27.6 / 29.5 / **29.6** |

**1. The v1 "generic ISA" problem is x86-specific.** On AArch64, the baseline ISA includes 128-bit NEON. So the same v1 build flags produce vectorized code here: SIMD ALU instructions = FLOPs/8 to within 0.1%. At 1024³ that build runs at 29.4 FLOP/cycle, level with the best packed variants. On x86, the same flags gave scalar code at 1.0–1.4 FLOP/cycle.

**2. The FP instruction count is exact on Apple too.** `INST_SIMD_ALU` equals exactly FLOPs/8 for every vectorized variant at 1024³ (ratio 1.001; 1.008 at 128³, where fill and setup instructions are a larger share). For the scalar variants it equals exactly FLOPs/2 (ratio 4.000), so Apple counts scalar FP instructions in the same event. Given the lane width, this is as exact a FLOP check as Intel's `fp_arith` events, not just an upper bound.

**3. IPC does not compare across ISAs.** On the vectorized kernels the M3 retires 5–6 instructions per cycle against 1.4–3.1 on Emerald Rapids, yet does fewer FLOPs per cycle: at most 29.6 here versus up to 59.1 on C4, because a NEON instruction carries 4 fp32 lanes against AVX-512's 16. FLOP/cycle and FLOP/s are the comparable metrics.

**4. The best M3 kernels are near the measured peak.** Packed-late 1024³ runs 18.93 ms = 113 GFLOP/s, **94% of the 120.8 GFLOP/s** FMA microbenchmark.

**5. No L2 cliff at 1024³.** A 1024³ fp32 matmul touches 12 MiB, which fits the M3's 16 MiB performance-cluster L2. On C4 the same working set overflows a 2 MiB L2. Consistent with that:
- efficiency is flat from 128³ to 1024³ for the tiled variants;
- the hand-written schedule's K blocking gains nothing here ([`TRANSFORM_SCHEDULE.md`](TRANSFORM_SCHEDULE.md)).

**6. Why the autotuner gains little on the M3** (1.04× / 1.06× / 1.10× at 128³ / 512³ / 1024³, versus 1.27–2.23× on C4). IREE's AArch64 heuristic register tile is 8×8 on 4-lane NEON, i.e. 8 rows × 2 registers = **16 accumulators**, already the count that won on x86. On x86 the heuristic's 8×16 tile holds only 8 of the 32 zmm registers. The M3 winners (4×16) also hold 16 accumulators. This is the register-pressure explanation from section 8, confirmed from the other side.

**7. L1 refill traffic explains why packing wins at 1024³ on the M3 too.** L1D misses × 128-byte lines, over the compulsory bytes:

| M3 variant | 128³ | 1024³ | FLOP/cycle at 1024³ |
|---|---|---|---|
| IREE heuristic | **6.0×** | 300× | 25.5 |
| autotuned | 10.9× | 507× | 26.6 |
| packed (mmt4d / ukernel / late) | 21.9× / 22.5× / 21.2× | **55.7× / 54.8× / 51.5×** | 27.5 / 29.4 / **29.6** |
| v1 generic build | invalid readings, dropped | 54.3× | 28.8 |

The pattern mirrors the C4 result one cache level closer:
- **At 128³** the direct kernels refill L1 least; packing's copies cost extra traffic, and packing loses.
- **At 1024³** the direct kernels refill L1 5–10× more than the packed ones, and packing wins, even though the M3's 16 MiB L2 absorbs those misses without a C4-style L2 cliff.

**8. The ablation ladder on the M3 (timings).**
- The v1 generic build reaches 112.3 GFLOP/s at 1024³, level with the best variants. On x86 the same flags give 3 GFLOP/s.
- Packed-late is fastest at 1024³: 18.98 ms, 113.1 GFLOP/s.
- Scalar tiled and untiled are identical again (1039.8 vs 1041.6 ms at 1024³).
- **The decode GEMV (1×4096×4096) is the M3's weakest shape.** Before tuning, the best variant (packed-late) did 9.26 ms, about 7 GB/s against 65 GB/s of measured DRAM read bandwidth. Autotuning it on the M3 found `d1x256_v1x16x8`: 1.93× over IREE's heuristic in the confirmation run (9.42 → 4.87 ms), and 4.86 ms in the ablation, about 13.8 GB/s. Still only about 21% of the DRAM roof.
- The GEMV winner sat on the edge of the search space (vn = 4 vectors = 16 floats on NEON). The x86 GEMV winners (`v1x64`, also 4 vectors) did too. The tuner now expands the register tile past the boundary while that keeps helping. On the x86 sandbox the next width (8 vectors) was slower, 2.97 vs 2.88 ms, which confirms the x86 optimum. On the M3 this has not been rerun yet.

**9. The thermal flags are the burst → sustained clock step, not heat soak.**
- The guard's baseline (129.7 GFLOP/s) was calibrated on the cold burst clock.
- Every ablation, sweep and counter chunk ended at 93.2% of it, with a spread of only 0.39 percentage points, while probes after each 30 s cool-down recovered to about 100%.
- That is not progressive heating. The M3 settles to a sustained clock within seconds of load; `peaks` (120.8 GFLOP/s) measures that sustained value too.
- The guard now calibrates on the settled clock, so this pattern no longer triggers false flags or 30 s cool-downs, while a real drop below the sustained clock still does.
- **Validated on the M3:** the new calibration settled at 120.9 GFLOP/s sustained (cold burst 123.4, noise 0.1%). The subsequent tune and ablate chunks ran with no flags and no cool-down waits (probe ratios 0.996–1.007).
- These rows are consistent with each other. Per-cycle counter metrics are unaffected by the clock, and timings reflect sustained rather than burst clocks.
- `pmset -g therm` reported no thermal or performance warning at any flagged probe, consistent with a normal clock-management step rather than thermal distress.

## 12. Padded-width experiment: capacity or power-of-two conflicts?

`python -m mlirbench padding` (data: `results/padding.json` for the sandbox; `results_c4/padding.json` once run on C4). It brackets 1024³ (4096-byte rows) with 960³ (3840 B) and 1088³ (4352 B). It also varies one operand's row stride at a time: 1024×1024×1088 changes only B's stride, 1024×1088×1024 only A's. Tiles are **fixed** across shapes (IREE `d64x64_v8x16x16`, the schedule `d64x64_v16x32x4`, K blocking TK = 64), so IREE's heuristics cannot choose differently per shape.

**Timing, x86 sandbox (same Emerald Rapids family, no counters):**

| GFLOP/s | 960³ | **1024³** | 1088³ | only B's stride → 1088 | only A's stride → 1088 |
|---|---|---|---|---|---|
| IREE, fixed tiles | 83.6 | **41.5** | 89.2 | 90.6 | 42.5 |
| schedule S4 (no K blocking) | 142.5 | **78.0** | 139.8 | 125.0 | 86.0 |
| schedule S5 (K blocking, TK = 64) | 127.2 | 115.7 | 132.6 | 123.1 | 128.3 |

**1. Capacity is not the main cause.** 1088³ is the larger problem, yet both unblocked kernels run about 2× faster on it than on 1024³ (IREE at 0.50×, S4 at 0.56× of the slower neighbour). A capacity limit can only get worse as the problem grows; a dip at the middle size needs a power-of-two effect.

**2. B's row stride is the culprit.** Changing only B's stride to 1088 floats restores full speed (IREE 2.19×, S4 1.60×). Changing only A's stride does not (1.02×, 1.10×). That matches the access pattern: the inner K loop walks *down a column of B*, one 4096-byte row at a time.

**3. K blocking mainly removes this pathology.** With K blocking, 1024³ is no longer a dip (115.7 GFLOP/s, 0.91× its neighbour). At 960³ and 1088³, where there is no pathology, K blocking is slightly *slower* than S4 (127.2 vs 142.5; 132.6 vs 139.8). So on C4-class hardware, K blocking's 1024³ win is mostly a fix for the power-of-two stride, not a general gain.

**Counters on C4 (same fixed tiles), which level conflicts:**

| C4 | 960³ | **1024³** | 1088³ | only B's stride → 1088 | only A's stride → 1088 |
|---|---|---|---|---|---|
| IREE fixed: GFLOP/s | 100.2 | **49.7** | 99.4 | 98.1 | 49.3 |
| IREE fixed: L2 misses / kFLOP | 0.65 | **4.04** | 0.63 | 0.64 | 4.07 |
| IREE fixed: L2 miss rate | 8% | **75%** | 8% | 8% | 76% |
| IREE fixed: cycles stalled on L2 misses | 13% | **57%** | 13% | 12% | 57% |
| IREE fixed: L1 misses / kFLOP | 3.81 | 3.27 | 3.59 | 3.96 | 3.12 |
| IREE fixed: bytes into L2 ÷ compulsory | 6.6× | **44.1×** | 7.4× | 7.2× | 45.3× |
| S4: GFLOP/s | 159.7 | **99.1** | 152.3 | 137.3 | 99.6 |
| S4: L1 misses / kFLOP | 0.46 | **4.02** | 0.41 | 4.13 | 0.60 |
| S4: L2 misses / kFLOP | 0.60 | **2.10** | 0.59 | 0.59 | 2.11 |
| S5 (K blocking, TK = 64): GFLOP/s | 143.5 | 130.8 | 151.0 | 140.2 | 145.6 |
| S5: L2 misses / kFLOP | 0.60 | 2.38 | 0.58 | 0.62 | 1.69 |
| S5: cycles stalled on L2 misses | 13% | **9%** | 7% | 7% | 9% |

**Conclusions:**

1. **It is L2 set conflicts, caused by B's row stride.**
   - IREE's L2 misses per FLOP spike 6.2× at 1024³ against both neighbours, and L2-miss stalls rise from 13% to 57%.
   - Changing only B's row stride to 1088 floats removes the spike completely (0.64). Changing only A's leaves it unchanged (4.07).
   - For IREE's kernel the conflict is purely at L2: its L1 misses do not rise at 1024³.
2. **The hand-written schedule has a second conflict, in L1, caused by A's stride.** S4's L1 misses per FLOP rise about 9× at 1024³ (0.46 → 4.02). The operand-isolation rows separate the two conflicts cleanly:

   | S4 at 1024³ | L1 misses / kFLOP | L2 misses / kFLOP |
   |---|---|---|
   | both strides 4096 B | 4.02 | 2.10 |
   | only B's stride changed | 4.13 (L1 conflict stays) | 0.59 (L2 conflict gone) |
   | only A's stride changed | 0.60 (L1 conflict gone) | 2.11 (L2 conflict stays) |

   So A's power-of-two stride conflicts in **L1** and B's in **L2**.

   The likely mechanism, consistent with the data but inferred:
   - S4's register tile (`v16x32x4`) reads **16 rows of A** at each K step, 4096 bytes apart. With 64 sets × 64 B lines, a 4096-byte stride puts all 16 lines in the *same* L1 set.
   - This core family's 48 KiB L1D is 12-way, so 16 lines evict each other.
   - IREE's tile (`v8x16x16`) reads only **8 rows**, which fit in 12 ways. That is why IREE's L1 misses do not rise at 1024³.
3. **The 44× from section 5 is decomposed.** The neighbours match the capacity model (6.6–7.4×); 1024³'s extra is conflicts.
4. **K blocking works by making the conflict misses cheaper, not rarer** (at TK = 64).
   - At 1024³, S5 has *slightly more* L2 misses than S4 (2.38 vs 2.10 per kFLOP), yet L2-miss stall cycles fall from 34% to 9% and it runs 1.32× faster.
   - At 960³ and 1088³ it gains nothing (0.90×, 0.99×).
   - A likely reason, not measured directly: walking only 64 rows of B per step issues the conflicting misses close together, so they overlap instead of serialising.
   - The earlier `counters --schedule` run, with TK = 128, *did* cut misses 2.2×, so how K blocking helps depends on TK.
5. **4K aliasing is not measured:** `ld_blocks_partial.address_alias` was not available on this VM.
6. Even with K blocking, 1024³ stays somewhat slower than its neighbours (130.8 vs 143.5 and 151.0 GFLOP/s): the pathology is reduced, not removed.

**Originally open, now answered above: which level conflicts.**
- A 4096-byte stride hits the same L1 set on every access: 64 sets × 64 B = 4 KiB per way.
- It also concentrates L2 accesses onto a fraction of its sets.
- It can cause 4K-aliasing stalls in the load/store unit.
- The C4 counter run (`make c4-padding`) records L1 misses, L2 misses, L2-stall cycles and `ld_blocks_partial.address_alias`. Whichever of these spikes at 1024³ locates the conflict.

## Not measured, and caveats

- **Absolute DRAM bytes** need the "enhanced" PMU level, which only large C4 sizes offer (above the free trial's cap). For every profiled shape, including the GEMV, no load reached DRAM on this host (sections 6 and 10b), so DRAM traffic plays no role in these results.
- **How the 1024³ improvements work internally** is inferred from counter patterns. The counters show *that* the packed and autotuned kernels stall far less on L2 misses. Attributing it to hardware prefetch or to reuse would need prefetch-specific events.
- **Thermal guard.** The C4 run's thermal log predates the fix that ties the baseline to the probe binary, so it is not valid as a throttle detector.
  - A post-hoc check: the 101 probes run with the AVX-512 probe span 222–241 GFLOP/s (median 233), and none fell more than 5% below their median.
  - Benchmark CV is ≤3.8% for every ladder row except the packed GEMV variants (4.7–8%).
