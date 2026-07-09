# MLIRBench: MLIR/RISC-V Compiler and Roofline Analysis

## Overview

A matmul kernel written directly in MLIR, compiled through IREE's llvm cpu backend, cross targeted to RISC V64 with the Vector extension, and evaluated against a roofline performance model built from scratch. The goal is direct engineering exposure to an MLIR based compiler pipeline and to the operational intensity methodology used to classify a kernel as compute bound or memory bound.

## Pipeline

The kernel is a single linalg.matmul op over two 128x128 float32 tensors, written directly in MLIR rather than lowered from a framework model, so the input IR is fully known and inspectable at every stage. IREE compiles this through its llvm cpu backend. Intermediate IR was dumped at the flow dialect stage to confirm the transformations applied by the compiler, including tensor packing and dispatch region formation, rather than assuming what the backend does.

The compiled module was executed through iree.runtime, with output checked against a NumPy reference for correctness, and timed over 20 runs after 3 warmup iterations.

A second build targeted riscv64 unknown linux gnu with cpu features +m,+a,+f,+d,+v. This build was verified as a valid compiled RISC V binary but was not executed on hardware or under an emulator, so it should be read as compiler backend targeting only, not deployment validation.

## Roofline Model

roofline.py implements the standard roofline methodology independent of any framework. Given a kernel's FLOP count, bytes moved, and measured runtime, it computes:

- Operational intensity: FLOPs divided by bytes moved
- Ridge point: measured peak GFLOP/s divided by measured peak memory bandwidth
- Classification: compute bound if operational intensity is at or above the ridge point, memory bound otherwise
- Roofline ceiling: the lesser of peak compute and operational intensity times peak bandwidth
- Efficiency: achieved GFLOP/s as a percentage of the roofline ceiling

Peak compute and peak bandwidth are measured locally via NumPy matmul and memory copy microbenchmarks rather than taken from vendor datasheets, since the goal was a self contained measurement rather than a comparison to published hardware specs.

## Results

| Metric | Value |
|---|---|
| Kernel | matmul 128x128x128 |
| Measured latency | 0.2455 ms |
| Achieved throughput | 17.08 GFLOP/s |
| Operational intensity | 21.33 FLOPs/byte |
| Ridge point | 64.15 FLOPs/byte |
| Classification | Memory bound |
| Roofline ceiling at this OI | 269.8 GFLOP/s |
| Efficiency vs ceiling | 6.3% |
| Correctness | Verified against NumPy reference |
| RISC V cross build | 10,617 bytes, compiled, not executed |

The kernel sits well below its roofline ceiling at this operational intensity, and the classification indicates the limiting factor is memory bandwidth rather than compute throughput. This is consistent with an unoptimized single kernel with no tiling or blocking applied.

## Limitations

Single kernel, single input size, no autotuning or tiling sweep applied. RISC V target validated at compile time only. Peak compute and bandwidth are microbenchmark proxies, not datasheet figures. Results are specific to the host CPU used for measurement and are not portable claims about performance on other hardware.

## Next Steps

Sweep kernel sizes to trace a full roofline curve rather than a single point. Apply IREE's autotuning to measure any shift in achieved throughput relative to the ceiling. Execute the RISC V build under QEMU to obtain a real, if slow, execution result rather than a compile time only artifact.
