module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "emeraldrapids", cpu_features = "+64bit,+adx,+aes,-amx-avx512,+amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,+amx-int8,-amx-movrs,-amx-tf32,+amx-tile,+avx,-avx10.1,-avx10.2,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,-avx512vp2intersect,+avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,+cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,-hreset,+invpcid,-kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,-pconfig,-pku,+popcnt,-ppx,-prefetchi,+prfchw,-ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,+rtm,+sahf,+serialize,-sgx,+sha,-sha512,-shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,+tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,-waitpkg,+wbnoinvd,-widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>]> : !hal.device
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<128x128xf32>, %input1: tensor<128x128xf32>) -> (%output0: tensor<128x128xf32>)"}} {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<128x128xf32>
    %1 = iree_tensor_ext.compute_barrier.start %0 : tensor<128x128xf32> -> tensor<128x128xf32>
    %2 = hal.tensor.import %arg1 "input1" : !hal.buffer_view -> tensor<128x128xf32>
    %3 = iree_tensor_ext.compute_barrier.start %2 : tensor<128x128xf32> -> tensor<128x128xf32>
    %4 = tensor.empty() : tensor<128x128xf32>
    %5 = linalg.fill ins(%cst : f32) outs(%4 : tensor<128x128xf32>) -> tensor<128x128xf32>
    %6 = linalg.matmul {compilation_info = #iree_codegen.compilation_info<lowering_config = #iree_cpu.lowering_config<distribution = [16, 64, 0], vector_common_parallel = [4, 64, 0], vector_reduction = [0, 0, 16]>, translation_info = <pipeline = CPUDoubleTilingExpert>>} ins(%1, %3 : tensor<128x128xf32>, tensor<128x128xf32>) outs(%5 : tensor<128x128xf32>) -> tensor<128x128xf32>
    %7 = iree_tensor_ext.compute_barrier.end %6 : tensor<128x128xf32> -> tensor<128x128xf32>
    %8 = hal.tensor.export %7 "output0" : tensor<128x128xf32> -> !hal.buffer_view
    util.return %8 : !hal.buffer_view
  }
}