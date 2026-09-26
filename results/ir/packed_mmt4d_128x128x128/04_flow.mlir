module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "emeraldrapids", cpu_features = "+64bit,+adx,+aes,-amx-avx512,+amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,+amx-int8,-amx-movrs,-amx-tf32,+amx-tile,+avx,-avx10.1,-avx10.2,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,-avx512vp2intersect,+avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,+cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,-hreset,+invpcid,-kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,-pconfig,-pku,+popcnt,-ppx,-prefetchi,+prfchw,-ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,+rtm,+sahf,+serialize,-sgx,+sha,-sha512,-shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,+tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,-waitpkg,+wbnoinvd,-widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf", ukernels = "none"}>]> : !hal.device
  flow.executable private @matmul_dispatch_0 {
    flow.executable.export public @matmul_dispatch_0_pack_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @matmul_dispatch_0_pack_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x128xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x128x16x1xf32>>) {
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0, 0], sizes = [128, 128], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x128xf32>> -> tensor<128x128xf32>
        %1 = tensor.empty() : tensor<8x128x16x1xf32>
        %pack = linalg.pack %0 outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [16, 1] into %1 : tensor<128x128xf32> -> tensor<8x128x16x1xf32>
        iree_tensor_ext.dispatch.tensor.store %pack, %arg1, offsets = [0, 0, 0, 0], sizes = [8, 128, 16, 1], strides = [1, 1, 1, 1] : tensor<8x128x16x1xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x128x16x1xf32>>
        return
      }
    }
  }
  flow.executable private @matmul_dispatch_1 {
    flow.executable.export public @matmul_dispatch_1_pack_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @matmul_dispatch_1_pack_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x128xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x128x16x1xf32>>) {
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0, 0], sizes = [128, 128], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x128xf32>> -> tensor<128x128xf32>
        %1 = tensor.empty() : tensor<8x128x16x1xf32>
        %pack = linalg.pack %0 outer_dims_perm = [1, 0] inner_dims_pos = [1, 0] inner_tiles = [16, 1] into %1 : tensor<128x128xf32> -> tensor<8x128x16x1xf32>
        iree_tensor_ext.dispatch.tensor.store %pack, %arg1, offsets = [0, 0, 0, 0], sizes = [8, 128, 16, 1], strides = [1, 1, 1, 1] : tensor<8x128x16x1xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x128x16x1xf32>>
        return
      }
    }
  }
  flow.executable private @matmul_dispatch_2 {
    flow.executable.export public @matmul_dispatch_2_mmt4d_8x8x128x16x16x1_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @matmul_dispatch_2_mmt4d_8x8x128x16x16x1_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x128x16x1xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x128x16x1xf32>>, %arg2: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x8x16x16xf32>>) {
        %cst = arith.constant 0.000000e+00 : f32
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0, 0, 0, 0], sizes = [8, 128, 16, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x128x16x1xf32>> -> tensor<8x128x16x1xf32>
        %1 = iree_tensor_ext.dispatch.tensor.load %arg1, offsets = [0, 0, 0, 0], sizes = [8, 128, 16, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x128x16x1xf32>> -> tensor<8x128x16x1xf32>
        %2 = tensor.empty() : tensor<8x8x16x16xf32>
        %3 = linalg.fill ins(%cst : f32) outs(%2 : tensor<8x8x16x16xf32>) -> tensor<8x8x16x16xf32>
        %4 = linalg.mmt4d ins(%0, %1 : tensor<8x128x16x1xf32>, tensor<8x128x16x1xf32>) outs(%3 : tensor<8x8x16x16xf32>) -> tensor<8x8x16x16xf32>
        iree_tensor_ext.dispatch.tensor.store %4, %arg2, offsets = [0, 0, 0, 0], sizes = [8, 8, 16, 16], strides = [1, 1, 1, 1] : tensor<8x8x16x16xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x8x16x16xf32>>
        return
      }
    }
  }
  flow.executable private @matmul_dispatch_3 {
    flow.executable.export public @matmul_dispatch_3_unpack_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @matmul_dispatch_3_unpack_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x8x16x16xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<128x128xf32>>) {
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0, 0, 0, 0], sizes = [8, 8, 16, 16], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x8x16x16xf32>> -> tensor<8x8x16x16xf32>
        %1 = tensor.empty() : tensor<128x128xf32>
        %unpack = linalg.unpack %0 outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [16, 16] into %1 : tensor<8x8x16x16xf32> -> tensor<128x128xf32>
        iree_tensor_ext.dispatch.tensor.store %unpack, %arg1, offsets = [0, 0], sizes = [128, 128], strides = [1, 1] : tensor<128x128xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<128x128xf32>>
        return
      }
    }
  }
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<128x128xf32>, %input1: tensor<128x128xf32>) -> (%output0: tensor<128x128xf32>)"}} {
    %0 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<128x128xf32>
    %1 = hal.tensor.import %arg1 "input1" : !hal.buffer_view -> tensor<128x128xf32>
    %2 = flow.dispatch @matmul_dispatch_0::@matmul_dispatch_0_pack_f32(%0) : (tensor<128x128xf32>) -> tensor<8x128x16x1xf32>
    %3 = flow.dispatch @matmul_dispatch_1::@matmul_dispatch_1_pack_f32(%1) : (tensor<128x128xf32>) -> tensor<8x128x16x1xf32>
    %4 = flow.dispatch @matmul_dispatch_2::@matmul_dispatch_2_mmt4d_8x8x128x16x16x1_f32(%2, %3) : (tensor<8x128x16x1xf32>, tensor<8x128x16x1xf32>) -> tensor<8x8x16x16xf32>
    %5 = flow.dispatch @matmul_dispatch_3::@matmul_dispatch_3_unpack_f32(%4) : (tensor<8x8x16x16xf32>) -> tensor<128x128xf32>
    %6 = hal.tensor.export %5 "output0" : tensor<128x128xf32> -> !hal.buffer_view
    util.return %6 : !hal.buffer_view
  }
}