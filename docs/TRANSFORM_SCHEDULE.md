# A hand-written matmul schedule in the MLIR transform dialect

Everywhere else in MLIRBench, IREE's own codegen pipeline (`CPUDoubleTilingExpert`) turns the matmul into machine code, and MLIRBench only chooses its knobs: tile sizes, data tiling, microkernels. This part replaces that pipeline.

[`schedules/matmul.mlir.in`](../schedules/matmul.mlir.in) is a transform-dialect script that IREE runs *instead of* its codegen for the matmul dispatch. It receives the dispatch function on tensors, right after dispatch formation, and must hand back a function that is:

- tiled,
- vectorized,
- bufferized onto the HAL bindings,
- mapped to workgroups,
- vector-lowered.

After that, IREE only converts to LLVM. Every optimization in the resulting kernel is one written in this file.

```bash
python -m mlirbench schedule --shape 1024x1024x1024
```

**What that command does:**
- renders the schedule for the shape's autotuned tile sizes;
- builds each optimization stage, checks it against NumPy, and benchmarks it;
- compares against IREE's pipeline with the *same* tiles, which isolates the schedule from the tile choice;
- compares against IREE's packed layout, its best option at large sizes;
- writes the results to `results/schedule.json`;
- writes the fully rendered schedules to `results/schedule_<shape>*.mlir`.

**Plumbing:**
- The matmul carries `translation_info<pipeline = TransformDialectCodegen codegen_spec = @mlirbench_matmul>`, and the library is passed with `--iree-codegen-transform-dialect-library`.
- The library must also define an (empty) `@__kernel_config`.
- The schedule ends by annotating the function with `translation_info<pipeline = None>`, IREE's signal that codegen is complete.

## What the schedule does

| Step | Transform ops | Effect |
|---|---|---|
| Cache tile | `tile_using_forall [TM, TN]` mapped to `#gpu.block<y/x>`, `fuse_into_containing_op` (fill), `populate_workgroup_count_region_using_num_threads_slice` | One workgroup per TM×TN block of C, with its zero-fill fused in |
| K blocking (S5) | `tile_using_for [0, 0, TK]` | TK-deep slices of A and B stay cache-resident; C is carried across K blocks |
| Register tile | `tile_using_for [VM, VN, VK]` or, for S4, `structured.fuse [VM, VN, 0]` then `tile_using_for [0, 0, VK]` | Each VM×VN block of C becomes one `vector.contract` per K step |
| Vectorize | `vectorize_children_and_apply_patterns`, `fold_tensor_subset_ops_into_vector_transfers` | Tensor tiles → `vector.transfer_read` / `vector.contract` / `vector.transfer_write` |
| Hoist (S3) | `loop.hoist_loop_invariant_subsets` on every `scf.for`, *before* bufferization | The C tile is read once, carried through K as a vector `iter_arg`, and written once |
| Bufferize | `iree.eliminate_empty_tensors`, `iree.bufferize`, `iree-codegen-cleanup-buffer-alloc-view` | Tensors → memrefs on the HAL interface bindings |
| Workgroups | `iree.forall_to_workgroup` | `scf.forall` → workgroup ids |
| Lower (S2) | `lower_contraction "outerproduct"`, then `lower_outerproduct`, then `lower_transfer` / `transfer_permutation_patterns`, as **separate** pattern applications | `vector.contract` → broadcast-A × row-of-B `vector.fma` → AVX-512 `vfmadd231ps` |

## The stage ladder

Results from the x86 sandbox VM (AVX-512, single core); timings are median ms. Tiles are the autotuner's picks:

| Shape | Tiles |
|---|---|
| 128³ | `d16x64_v4x64x16` |
| 512³ | `d16x128_v8x32x4` |
| 1024³ | `d256x256_v16x32x4` |

**How the numbers were taken:**
- Stages S3–S5 and both IREE references were then re-measured in 3 interleaved rounds. Where marked, the table reports the minimum across rounds: noise on a shared host only ever adds time, and one single 512³ sample in this work was 23% off.
- Every row passes the NumPy check (max relative error ≤ 1.3e-6).

| Stage | 128³ | 512³ | 1024³ | 512-bit FMAs in asm |
|---|---|---|---|---|
| S1 tile + vectorize (IREE's default `vector.contract` lowering) | 1.134 | 49.95 | 407.9 | **0** |
| S2 + contract → outer-product FMAs | 0.0367 | 2.518 | 54.53 | 256 / 64 / 128 |
| S3 + C accumulator hoisted out of the K loop | 0.0320 * | 1.774 * | 29.32 * | same |
| S4 + zero-fill fused into the register tile | **0.0315** * | **1.723** * | 27.72 * | same |
| S5 + K blocking (TK searched: 64 / 128 / 256) | 0.0327 * | 1.826 * | **18.11** * | same |
| IREE `CPUDoubleTilingExpert`, same tiles | 0.0307 * | 1.759 * | 25.69 * | same |
| IREE packed layout (late materialization) | 0.0677 * | 2.414 * | 21.05 * | 16 |

\* minimum over 3 interleaved confirmation rounds.

**Read against IREE:**

| Comparison | 128³ | 512³ | 1024³ |
|---|---|---|---|
| S4 (full schedule without K blocking) vs IREE, same tiles | 97.5% | 102% | 92.7% |
| Best of mine vs best of IREE | 97.5% | 102% | **116%** |
| S5 vs IREE, same tiles | 94% | 96% | **142%** |

## What each stage taught

**S1 → S2: how `vector.contract` is lowered decides everything (7.5–31×).** Tiled and vectorized, but with the contraction left for IREE's final LLVM conversion, the kernel contains **zero** 512-bit FMA instructions. Lowering it explicitly to outer products gives one broadcast-A × row-of-B FMA per accumulator row, all packed.

One practical detail: applied as a single combined set, these pattern groups rewrite each other in a loop, hanging or crashing the compiler. Applied as separate ordered stages, they work. That is why the schedule has four `apply_patterns` blocks where one would look natural.

**S2 → S3: keep the accumulator in registers (1.1–1.9×).** After S2, the IR still loaded and stored the whole C tile on *every* K iteration. `hoist_redundant_vector_transfers` on the bufferized IR silently did nothing. Hoisting on tensors *before* bufferization, with `hoist_loop_invariant_subsets`, turns the C tile into a vector `iter_arg`: read once, carried through K, written once.

**S3 → S4: the fill belongs in registers too (small gain).** Fusing the zero-fill into the register tile means the accumulator starts as a constant zero vector instead of zeros stored to memory and read back. It makes a measurable difference only at 128³, where C traffic is a larger share of the work.

**S4 vs IREE: parity at 128³ and 512³, a gap at 1024³.** With identical tiles, the hand-written schedule is within noise of IREE's pipeline at 128³ and 512³. At 1024³ it is about 8% slower, a stable gap (IREE 25.7–28.1 ms, S4 27.7–28.9 ms across rounds). I have not diagnosed it. Candidates are differences in loop order or peeling inside IREE's pipeline.

**S5: K blocking, the transformation IREE's configuration can't express.**
- IREE 3.11's `CPUDoubleTilingExpert` accepts a `cache_reduction` tile level in the lowering config, but every value I tried fails to compile ("large vector sizes").
- Owning the schedule makes it a single `tile_using_for [0, 0, TK]`.
- At 1024³ it cuts the hand-written kernel from 27.7 to **18.1 ms**, and beats both IREE's same-tile pipeline (1.42×) and, on this sandbox host, IREE's best configuration, the packed layout (1.16×). On the C4 host the packed layout comparison is a tie (see below).

TK matters:

| TK | 64 | 128 | 256 | 512 |
|---|---|---|---|---|
| 1024³ search time | 20.96 ms | 18.97 ms | **17.91 ms** | 24.63 ms |

At 128³ and 512³ K blocking costs a few percent, since K is already short.

**Why K blocking helps at 1024³: the capacity argument, and where it stops applying.** The argument below holds for the sandbox's 256×256 tiles; the C4 section later shows it does *not* hold for C4's 64×64 tiles, even though K blocking helps there too.
- **Without K blocking:** each 256×256 workgroup sweeps all of K. That touches a 1 MiB slice of A, a 1 MiB slice of B and a 256 KiB block of C, about 2.25 MiB, over the 2 MiB L2 of this core family. On the C4 host, hardware counters showed exactly this regime for IREE's tiles at 1024³: L2 miss rate 75%, 59% of cycles stalled on L2 misses ([`COUNTER_FINDINGS.md`](COUNTER_FINDINGS.md)).
- **With TK = 256:** each K block touches 256 + 256 + 256 KiB, comfortably inside L2.
- **At TK = 512** (about 1.25 MiB) the benefit mostly disappears. That is consistent with the explanation, but consistency is not proof.
- **Checked on C4:** `python -m mlirbench counters --schedule`. The L2 miss rate and L2-stall fraction drop sharply against S4, but C4 used different tiles (next section).

## Reproduced on Intel Emerald Rapids (GCE C4), with counters

The same ladder on the C4 host (`results_c4/schedule.json`), using the tiles the autotuner chose on that host:

| Shape | Tiles |
|---|---|
| 128³ | `d16x32_v8x32x4` |
| 512³ | `d32x128_v8x32x8` |
| 1024³ | `d64x64_v16x32x4` |

`*` = minimum over 3 interleaved rounds:

| Stage (ms) | 128³ | 512³ | 1024³ |
|---|---|---|---|
| S1 tile + vectorize | 0.555 | 36.82 | 281.5 |
| S2 + outer-product FMAs | 0.0291 | 1.527 | 39.22 |
| S3 + accumulator hoisted | 0.0219 * | 1.234 * | 21.99 * |
| S4 + fill fused | **0.0212** * | **1.208** * | 20.51 * |
| S5 + K blocking (best TK: 64 / 256 / 128) | 0.0221 * | 1.248 * | **14.18** * |
| IREE, same tiles | 0.0211 * | 1.203 * | 18.56 * |
| IREE packed (late) | 0.0464 * | 1.691 * | 14.29 * |

**What reproduced:**
- **Parity** at 128³ and 512³: S4 at 99.8% and 99.5% of IREE with the same tiles.
- **The undiagnosed 1024³ gap:** S4 at 90.5% of IREE, versus 92.7% on the sandbox.
- **K blocking's win over IREE's same-tile pipeline** at 1024³: 1.31× (1.42× on the sandbox).

**What did not reproduce: "beats IREE's best".** On C4, S5 and IREE's packed layout **tie** at 1024³: 14.18 vs 14.29 ms, a 0.8% difference that is within noise. The sandbox's 1.16× margin over packed is host-specific. Across both hosts, the accurate claim is that the hand-written K-blocked schedule *matches or beats* IREE's best configuration at 1024³.

**The K-blocking prediction, tested with counters (1024³).** Counters for the schedule's kernels (`counters --schedule`, rows `sched_*` in `results_c4/counters.json`):

| 1024³ | S4 (no K blocking) | S5 (TK = 128) | IREE packed |
|---|---|---|---|
| L2 miss rate | 32.6% | **13.2%** | 31.0% |
| bytes filled into L2 ÷ compulsory bytes | 23.0× | **10.3×** | 24.4× |
| cycles stalled on L2 misses | 37% | **12%** | 4% |
| demand loads missing L2 (per call) | 1.92 M | **0.38 M** | 0.22 M |
| L3 misses | 0 | 0 | 0 |
| FLOP/cycle (of 64) | 27.0 | **41.3** | 39.8 |

**The effect is confirmed. The explanation is not.** K blocking cuts L2 misses 2.5×, halves the traffic into L2, and removes two-thirds of the L2-miss stall cycles, worth 1.53× in FLOP/cycle. But C4's autotuner chose **64×64** workgroup tiles, not the sandbox's 256×256. Each workgroup then touches A 64×1024 (256 KiB) + B 1024×64 (256 KiB) + C 64×64 (16 KiB) ≈ 528 KiB, which already fits the 2 MiB L2. So "the working set overflows L2 and K blocking brings it back in" cannot be the mechanism here.

What is and isn't established on C4:

| | Status |
|---|---|
| K blocking removes most L2 misses and L2 stalls | measured |
| Per-workgroup capacity overflow causes those misses | ruled out for these tiles (528 KiB < 2 MiB) |
| A power-of-two effect on B's row stride (4096 bytes) is the main cause, and K blocking mainly removes it | **supported by timing** (padded-width experiment, sandbox): 1024³ runs at about half the speed of both 960³ and 1088³ without K blocking; changing only B's stride removes the dip; with K blocking the dip is gone |
| Which level conflicts | **measured on C4:** L2 sets for IREE's kernel (L2 misses 6.2× its neighbours, L1 flat); L1 *and* L2 for the hand-written schedule; 4K aliasing unmeasured (event unavailable) |
| How K blocking helps at 1024³ | **measured, and TK-dependent:** at TK = 64 it does not reduce L2 misses (2.10 → 2.38 per kFLOP) but cuts L2-miss stall cycles from 34% to 9% (1.32× faster); at TK = 128 (earlier run) it cut L2 misses 2.2×. No gain at 960³ / 1088³ |

The table also shows that **S5 and packing reach the same speed by different routes:**
- **K blocking reduces the traffic itself** (10.3× the compulsory bytes, versus packing's 24.4×) but still stalls in 12% of cycles.
- **Packing moves more data but almost never waits for it** (4% stalls).

Both land at about 40 FLOP/cycle. An obvious next experiment is to combine them: K-block a packed layout.

## On ARM: Apple M3 (NEON), same schedule file

The unmodified schedule runs on the M3 and emits NEON `fmla` instead of AVX-512 `vfmadd231ps`. All stages are correct (max relative error ≤ 1.3e-6). Data is in `results_m3/schedule.json`. Tiles are the M3 autotuner's picks:

| Shape | Tiles |
|---|---|
| 128³ | `d128x16_v4x16x2` |
| 512³ | `d256x256_v4x16x1` |
| 1024³ | `d16x256_v4x16x2` |

`*` = minimum over 3 interleaved rounds:

| Stage (ms) | 128³ | 512³ | 1024³ |
|---|---|---|---|
| S1 tile + vectorize | 0.404 | 30.38 | 213.7 |
| S2 + outer-product FMAs | 0.0569 | 7.882 | 46.95 |
| S3 + accumulator hoisted | 0.0396 * | 2.476 * | 19.77 * |
| S4 + fill fused | **0.0379** * | **2.445** * | **19.60** * |
| S5 + K blocking (best TK: 64 / 256 / 512) | 0.0396 * | 2.556 * | 19.73 * |
| IREE, same tiles | 0.0388 * | 2.440 * | 20.39 * |
| IREE packed (late) | 0.0538 * | 2.491 * | 18.93 * |

**Parity on a second ISA.** S4 runs at 102.4% / 99.8% / 104.0% of IREE with the same tiles. At 1024³, IREE's packed layout is still 3.4% faster than S4.

**Hoisting matters more here:** 3.2× at 512³ (7.88 → 2.48 ms), against 1.4× on x86.

**K blocking does nothing on the M3.** The whole 1024³ problem (12 MiB) fits the M3 performance cluster's 16 MiB L2, so whatever produces the L2 misses on C4 has little room to act here: there is no L2-miss problem for K blocking to fix. The best TK at 1024³ was the largest tried (512), and S5 is within noise of S4 (19.73 vs 19.60 ms).

This is consistent with K blocking acting on L2 behaviour, but it cannot discriminate between capacity and conflict explanations, since both vanish when everything fits a 16 MiB L2. The padding test above is what would.

## Scope and limits

- **Shapes:** only static shapes whose dimensions divide the tiles. `schedule.py` refuses other shapes and says why, rather than producing a wrong kernel. Partial tiles would need masking or peeling.
- **Machine:** single thread (`local-sync`), measured on three hosts: the x86 sandbox VM (no counters), GCE C4 (Intel, counters), and an Apple M3 (ARM).
- **Transform ops used:** the IREE ones are `transform.iree.*`, plus the `#gpu.block` mapping required by `forall_to_workgroup`. They are internal APIs that change between IREE releases, and this file targets IREE 3.11.
