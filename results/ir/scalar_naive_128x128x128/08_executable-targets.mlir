module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "emeraldrapids", cpu_features = "+64bit,+adx,+aes,-amx-avx512,+amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,+amx-int8,-amx-movrs,-amx-tf32,+amx-tile,+avx,-avx10.1,-avx10.2,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,-avx512vp2intersect,+avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,+cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,-hreset,+invpcid,-kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,-pconfig,-pku,+popcnt,-ppx,-prefetchi,+prfchw,-ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,+rtm,+sahf,+serialize,-sgx,+sha,-sha512,-shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,+tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,-waitpkg,+wbnoinvd,-widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>]> : !hal.device
  hal.executable private @matmul_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(<"llvm-cpu", "embedded-elf-x86_64", {cpu = "emeraldrapids", cpu_features = "+64bit,+adx,+aes,-amx-avx512,+amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,+amx-int8,-amx-movrs,-amx-tf32,+amx-tile,+avx,-avx10.1,-avx10.2,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,-avx512vp2intersect,+avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,+cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,-hreset,+invpcid,-kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,-pconfig,-pku,+popcnt,-ppx,-prefetchi,+prfchw,-ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,+rtm,+sahf,+serialize,-sgx,+sha,-sha512,-shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,+tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,-waitpkg,+wbnoinvd,-widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>) {
      hal.executable.export public @matmul_dispatch_0_matmul_128x128x128_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @matmul_dispatch_0_matmul_128x128x128_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(64 : index) : i64
          %2 = llvm.mlir.constant(true) : i1
          %3 = llvm.mlir.constant(1 : index) : i64
          %4 = llvm.mlir.constant(128 : index) : i64
          %5 = llvm.mlir.constant(0.000000e+00 : f32) : f32
          %6 = llvm.mlir.constant(0 : index) : i64
          %7 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %8 = llvm.extractvalue %7[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %9 = llvm.load %8 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %2 ["align"(%9, %1 : !llvm.ptr, i64)] : i1
          %10 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %11 = llvm.extractvalue %10[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %12 = llvm.getelementptr %11[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %13 = llvm.load %12 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %2 ["align"(%13, %1 : !llvm.ptr, i64)] : i1
          %14 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %15 = llvm.extractvalue %14[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %16 = llvm.getelementptr %15[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %17 = llvm.load %16 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %2 ["align"(%17, %1 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%6 : i64)
        ^bb1(%18: i64):  // 2 preds: ^bb0, ^bb4
          %19 = llvm.icmp "slt" %18, %4 : i64
          llvm.cond_br %19, ^bb2(%6 : i64), ^bb5(%6 : i64)
        ^bb2(%20: i64):  // 2 preds: ^bb1, ^bb3
          %21 = llvm.icmp "slt" %20, %4 : i64
          llvm.cond_br %21, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %22 = llvm.mul %18, %4 overflow<nsw, nuw> : i64
          %23 = llvm.add %22, %20 overflow<nsw, nuw> : i64
          %24 = llvm.getelementptr inbounds|nuw %17[%23] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %5, %24 : f32, !llvm.ptr
          %25 = llvm.add %20, %3 : i64
          llvm.br ^bb2(%25 : i64)
        ^bb4:  // pred: ^bb2
          %26 = llvm.add %18, %3 : i64
          llvm.br ^bb1(%26 : i64)
        ^bb5(%27: i64):  // 2 preds: ^bb1, ^bb10
          %28 = llvm.icmp "slt" %27, %4 : i64
          llvm.cond_br %28, ^bb6(%6 : i64), ^bb11
        ^bb6(%29: i64):  // 2 preds: ^bb5, ^bb9
          %30 = llvm.icmp "slt" %29, %4 : i64
          llvm.cond_br %30, ^bb7(%6 : i64), ^bb10
        ^bb7(%31: i64):  // 2 preds: ^bb6, ^bb8
          %32 = llvm.icmp "slt" %31, %4 : i64
          llvm.cond_br %32, ^bb8, ^bb9
        ^bb8:  // pred: ^bb7
          %33 = llvm.mul %27, %4 overflow<nsw, nuw> : i64
          %34 = llvm.add %33, %31 overflow<nsw, nuw> : i64
          %35 = llvm.getelementptr inbounds|nuw %9[%34] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %36 = llvm.load %35 : !llvm.ptr -> f32
          %37 = llvm.mul %31, %4 overflow<nsw, nuw> : i64
          %38 = llvm.add %37, %29 overflow<nsw, nuw> : i64
          %39 = llvm.getelementptr inbounds|nuw %13[%38] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %40 = llvm.load %39 : !llvm.ptr -> f32
          %41 = llvm.add %33, %29 overflow<nsw, nuw> : i64
          %42 = llvm.getelementptr inbounds|nuw %17[%41] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %43 = llvm.load %42 : !llvm.ptr -> f32
          %44 = llvm.fmul %36, %40 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %45 = llvm.fadd %43, %44 {fastmathFlags = #llvm.fastmath<contract>} : f32
          llvm.store %45, %42 : f32, !llvm.ptr
          %46 = llvm.add %31, %3 : i64
          llvm.br ^bb7(%46 : i64)
        ^bb9:  // pred: ^bb7
          %47 = llvm.add %29, %3 : i64
          llvm.br ^bb6(%47 : i64)
        ^bb10:  // pred: ^bb6
          %48 = llvm.add %27, %3 : i64
          llvm.br ^bb5(%48 : i64)
        ^bb11:  // pred: ^bb5
          llvm.return %0 : i32
        }
      }
    }
  }
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<128x128xf32>, %input1: tensor<128x128xf32>) -> (%output0: tensor<128x128xf32>)"}} {
    %c0 = arith.constant 0 : index
    %c65536 = arith.constant 65536 : index
    %c128 = arith.constant 128 : index
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%c128, %c128]) type(%element_type_f32) encoding(%dense_row_major)
    %0 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<128x128xf32> in !stream.resource<external>{%c65536}
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c128, %c128]) type(%element_type_f32) encoding(%dense_row_major)
    %1 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg1 : !hal.buffer_view -> tensor<128x128xf32> in !stream.resource<external>{%c65536}
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%c65536} => !stream.timepoint
    %2 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%result_timepoint) => with(%0 as %arg2: !stream.resource<external>{%c65536}, %1 as %arg3: !stream.resource<external>{%c65536}, %result as %arg4: !stream.resource<external>{%c65536}) {
      stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_matmul_128x128x128_f32 {
        ro %arg2[%c0 for %c65536] : !stream.resource<external>{%c65536},
        ro %arg3[%c0 for %c65536] : !stream.resource<external>{%c65536},
        wo %arg4[%c0 for %c65536] : !stream.resource<external>{%c65536}
      }
    } => !stream.timepoint
    %3 = stream.timepoint.await %2 => %result : !stream.resource<external>{%c65536}
    %4 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %3 : tensor<128x128xf32> in !stream.resource<external>{%c65536} -> !hal.buffer_view
    util.return %4 : !hal.buffer_view
  }
}