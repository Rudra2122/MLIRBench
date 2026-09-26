module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-arm_64", {cpu = "apple-m3", cpu_features = "+v8.6a,+aes,+bf16,+complxnum,+crc,+dotprod,+fp-armv8,+fp16fml,+fpac,+fullfp16,+hcx,+i8mm,+jsconv,+lse,+neon,+pauth,+perfmon,+ras,+rcpc,+rdm,+sha2,+sha3,+ssbs,+reserve-x18", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "arm64-unknown-unknown-eabi-elf", ukernels = "none"}>]> : !hal.device
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<128x128xf32>, %input1: tensor<128x128xf32>) -> (%output0: tensor<128x128xf32>)"}} {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<128x128xf32>
    %1 = iree_tensor_ext.compute_barrier.start %0 : tensor<128x128xf32> -> tensor<128x128xf32>
    %2 = hal.tensor.import %arg1 "input1" : !hal.buffer_view -> tensor<128x128xf32>
    %3 = iree_tensor_ext.compute_barrier.start %2 : tensor<128x128xf32> -> tensor<128x128xf32>
    %4 = tensor.empty() : tensor<16x128x8x1xf32>
    %pack = linalg.pack %1 outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [8, 1] into %4 : tensor<128x128xf32> -> tensor<16x128x8x1xf32>
    %pack_0 = linalg.pack %3 outer_dims_perm = [1, 0] inner_dims_pos = [1, 0] inner_tiles = [8, 1] into %4 : tensor<128x128xf32> -> tensor<16x128x8x1xf32>
    %5 = tensor.empty() : tensor<16x16x8x8xf32>
    %6 = linalg.fill ins(%cst : f32) outs(%5 : tensor<16x16x8x8xf32>) -> tensor<16x16x8x8xf32>
    %7 = linalg.mmt4d ins(%pack, %pack_0 : tensor<16x128x8x1xf32>, tensor<16x128x8x1xf32>) outs(%6 : tensor<16x16x8x8xf32>) -> tensor<16x16x8x8xf32>
    %8 = tensor.empty() : tensor<128x128xf32>
    %unpack = linalg.unpack %7 outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [8, 8] into %8 : tensor<16x16x8x8xf32> -> tensor<128x128xf32>
    %9 = iree_tensor_ext.compute_barrier.end %unpack : tensor<128x128xf32> -> tensor<128x128xf32>
    %10 = hal.tensor.export %9 "output0" : tensor<128x128xf32> -> !hal.buffer_view
    util.return %10 : !hal.buffer_view
  }
}