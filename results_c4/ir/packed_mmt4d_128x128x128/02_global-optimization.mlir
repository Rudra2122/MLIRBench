module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "emeraldrapids", cpu_features = "+64bit,+adx,+aes,-amx-avx512,+amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,+amx-int8,-amx-movrs,-amx-tf32,+amx-tile,+avx,-avx10.1,-avx10.2,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,-avx512vp2intersect,+avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,+cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,-hreset,+invpcid,-kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,-pconfig,-pku,+popcnt,-ppx,-prefetchi,+prfchw,-ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,+rtm,+sahf,+serialize,-sgx,+sha,-sha512,-shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,+tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,-waitpkg,+wbnoinvd,-widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf", ukernels = "none"}>]> : !hal.device
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<128x128xf32>, %input1: tensor<128x128xf32>) -> (%output0: tensor<128x128xf32>)"}} {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<128x128xf32>
    %1 = iree_tensor_ext.compute_barrier.start %0 : tensor<128x128xf32> -> tensor<128x128xf32>
    %2 = hal.tensor.import %arg1 "input1" : !hal.buffer_view -> tensor<128x128xf32>
    %3 = iree_tensor_ext.compute_barrier.start %2 : tensor<128x128xf32> -> tensor<128x128xf32>
    %4 = tensor.empty() : tensor<8x128x16x1xf32>
    %pack = linalg.pack %1 outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [16, 1] into %4 : tensor<128x128xf32> -> tensor<8x128x16x1xf32>
    %pack_0 = linalg.pack %3 outer_dims_perm = [1, 0] inner_dims_pos = [1, 0] inner_tiles = [16, 1] into %4 : tensor<128x128xf32> -> tensor<8x128x16x1xf32>
    %5 = tensor.empty() : tensor<8x8x16x16xf32>
    %6 = linalg.fill ins(%cst : f32) outs(%5 : tensor<8x8x16x16xf32>) -> tensor<8x8x16x16xf32>
    %7 = linalg.mmt4d ins(%pack, %pack_0 : tensor<8x128x16x1xf32>, tensor<8x128x16x1xf32>) outs(%6 : tensor<8x8x16x16xf32>) -> tensor<8x8x16x16xf32>
    %8 = tensor.empty() : tensor<128x128xf32>
    %unpack = linalg.unpack %7 outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [16, 16] into %8 : tensor<8x8x16x16xf32> -> tensor<128x128xf32>
    %9 = iree_tensor_ext.compute_barrier.end %unpack : tensor<128x128xf32> -> tensor<128x128xf32>
    %10 = hal.tensor.export %9 "output0" : tensor<128x128xf32> -> !hal.buffer_view
    util.return %10 : !hal.buffer_view
  }
}