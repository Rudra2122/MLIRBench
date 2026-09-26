module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "emeraldrapids", cpu_features = "+64bit,+adx,+aes,-amx-avx512,+amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,+amx-int8,-amx-movrs,-amx-tf32,+amx-tile,+avx,-avx10.1,-avx10.2,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,-avx512vp2intersect,+avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,+cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,-hreset,+invpcid,-kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,-pconfig,-pku,+popcnt,-ppx,-prefetchi,+prfchw,-ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,+rtm,+sahf,+serialize,-sgx,+sha,-sha512,-shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,+tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,-waitpkg,+wbnoinvd,-widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>]> : !hal.device
  hal.executable private @matmul_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(<"llvm-cpu", "embedded-elf-x86_64", {cpu = "emeraldrapids", cpu_features = "+64bit,+adx,+aes,-amx-avx512,+amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,+amx-int8,-amx-movrs,-amx-tf32,+amx-tile,+avx,-avx10.1,-avx10.2,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,-avx512vp2intersect,+avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,+cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,-hreset,+invpcid,-kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,-pconfig,-pku,+popcnt,-ppx,-prefetchi,+prfchw,-ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,+rtm,+sahf,+serialize,-sgx,+sha,-sha512,-shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,+tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,-waitpkg,+wbnoinvd,-widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>) {
      hal.executable.export public @matmul_dispatch_0_matmul_128x128x128_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %c32 = arith.constant 32 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c32, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @matmul_dispatch_0_matmul_128x128x128_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<32xf32>
          %2 = llvm.mlir.constant(64 : index) : i64
          %3 = llvm.mlir.constant(true) : i1
          %4 = llvm.mlir.poison : !llvm.array<8 x vector<32xf32>>
          %5 = llvm.mlir.constant(-1 : index) : i64
          %6 = llvm.mlir.constant(7 : index) : i64
          %7 = llvm.mlir.constant(6 : index) : i64
          %8 = llvm.mlir.constant(5 : index) : i64
          %9 = llvm.mlir.constant(3 : index) : i64
          %10 = llvm.mlir.constant(2 : index) : i64
          %11 = llvm.mlir.constant(1 : index) : i64
          %12 = llvm.mlir.constant(32 : index) : i64
          %13 = llvm.mlir.constant(dense<0.000000e+00> : vector<8x32xf32>) : !llvm.array<8 x vector<32xf32>>
          %14 = llvm.mlir.constant(8 : index) : i64
          %15 = llvm.mlir.constant(16 : index) : i64
          %16 = llvm.mlir.constant(4 : index) : i64
          %17 = llvm.mlir.constant(128 : index) : i64
          %18 = llvm.mlir.constant(0 : index) : i64
          %19 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %20 = llvm.extractvalue %19[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %21 = llvm.load %20 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %3 ["align"(%21, %2 : !llvm.ptr, i64)] : i1
          %22 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %23 = llvm.extractvalue %22[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %24 = llvm.getelementptr %23[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %25 = llvm.load %24 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %3 ["align"(%25, %2 : !llvm.ptr, i64)] : i1
          %26 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %27 = llvm.extractvalue %26[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %28 = llvm.getelementptr %27[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %29 = llvm.load %28 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %3 ["align"(%29, %2 : !llvm.ptr, i64)] : i1
          %30 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %31 = llvm.extractvalue %30[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %32 = llvm.zext %31 : i32 to i64
          %33 = llvm.sdiv %32, %16 : i64
          %34 = llvm.mul %33, %16 : i64
          %35 = llvm.icmp "ne" %32, %34 : i64
          %36 = llvm.icmp "slt" %32, %18 : i64
          %37 = llvm.and %35, %36 : i1
          %38 = llvm.add %33, %5 : i64
          %39 = llvm.select %37, %38, %33 : i1, i64
          %40 = llvm.srem %32, %16 : i64
          %41 = llvm.icmp "slt" %40, %18 : i64
          %42 = llvm.add %40, %16 overflow<nsw> : i64
          %43 = llvm.select %41, %42, %40 : i1, i64
          %44 = llvm.mul %39, %15 overflow<nsw> : i64
          %45 = llvm.mul %43, %12 overflow<nsw> : i64
          llvm.br ^bb1(%18 : i64)
        ^bb1(%46: i64):  // 2 preds: ^bb0, ^bb4
          %47 = llvm.icmp "slt" %46, %15 : i64
          llvm.cond_br %47, ^bb2(%18, %13 : i64, !llvm.array<8 x vector<32xf32>>), ^bb5
        ^bb2(%48: i64, %49: !llvm.array<8 x vector<32xf32>>):  // 2 preds: ^bb1, ^bb3
          %50 = llvm.icmp "slt" %48, %17 : i64
          llvm.cond_br %50, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %51 = llvm.mul %48, %17 : i64
          %52 = llvm.add %51, %45 : i64
          %53 = llvm.getelementptr %25[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %54 = llvm.load %53 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %55 = llvm.add %48, %11 : i64
          %56 = llvm.mul %55, %17 : i64
          %57 = llvm.add %56, %45 : i64
          %58 = llvm.getelementptr %25[%57] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %59 = llvm.load %58 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %60 = llvm.add %48, %10 : i64
          %61 = llvm.mul %60, %17 : i64
          %62 = llvm.add %61, %45 : i64
          %63 = llvm.getelementptr %25[%62] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %64 = llvm.load %63 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %65 = llvm.add %48, %9 : i64
          %66 = llvm.mul %65, %17 : i64
          %67 = llvm.add %66, %45 : i64
          %68 = llvm.getelementptr %25[%67] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %69 = llvm.load %68 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %70 = llvm.add %46, %44 : i64
          %71 = llvm.mul %70, %17 overflow<nsw, nuw> : i64
          %72 = llvm.add %71, %48 overflow<nsw, nuw> : i64
          %73 = llvm.getelementptr inbounds|nuw %21[%72] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %74 = llvm.load %73 : !llvm.ptr -> f32
          %75 = llvm.insertelement %74, %1[%0 : i32] : vector<32xf32>
          %76 = llvm.shufflevector %75, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %77 = llvm.extractvalue %49[0] : !llvm.array<8 x vector<32xf32>> 
          %78 = llvm.intr.fmuladd(%76, %54, %77) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %79 = llvm.add %70, %11 : i64
          %80 = llvm.mul %79, %17 overflow<nsw, nuw> : i64
          %81 = llvm.add %80, %48 overflow<nsw, nuw> : i64
          %82 = llvm.getelementptr inbounds|nuw %21[%81] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %83 = llvm.load %82 : !llvm.ptr -> f32
          %84 = llvm.insertelement %83, %1[%0 : i32] : vector<32xf32>
          %85 = llvm.shufflevector %84, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %86 = llvm.extractvalue %49[1] : !llvm.array<8 x vector<32xf32>> 
          %87 = llvm.intr.fmuladd(%85, %54, %86) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %88 = llvm.add %70, %10 : i64
          %89 = llvm.mul %88, %17 overflow<nsw, nuw> : i64
          %90 = llvm.add %89, %48 overflow<nsw, nuw> : i64
          %91 = llvm.getelementptr inbounds|nuw %21[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %92 = llvm.load %91 : !llvm.ptr -> f32
          %93 = llvm.insertelement %92, %1[%0 : i32] : vector<32xf32>
          %94 = llvm.shufflevector %93, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %95 = llvm.extractvalue %49[2] : !llvm.array<8 x vector<32xf32>> 
          %96 = llvm.intr.fmuladd(%94, %54, %95) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %97 = llvm.add %70, %9 : i64
          %98 = llvm.mul %97, %17 overflow<nsw, nuw> : i64
          %99 = llvm.add %98, %48 overflow<nsw, nuw> : i64
          %100 = llvm.getelementptr inbounds|nuw %21[%99] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %101 = llvm.load %100 : !llvm.ptr -> f32
          %102 = llvm.insertelement %101, %1[%0 : i32] : vector<32xf32>
          %103 = llvm.shufflevector %102, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %104 = llvm.extractvalue %49[3] : !llvm.array<8 x vector<32xf32>> 
          %105 = llvm.intr.fmuladd(%103, %54, %104) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %106 = llvm.add %70, %16 : i64
          %107 = llvm.mul %106, %17 overflow<nsw, nuw> : i64
          %108 = llvm.add %107, %48 overflow<nsw, nuw> : i64
          %109 = llvm.getelementptr inbounds|nuw %21[%108] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %110 = llvm.load %109 : !llvm.ptr -> f32
          %111 = llvm.insertelement %110, %1[%0 : i32] : vector<32xf32>
          %112 = llvm.shufflevector %111, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %113 = llvm.extractvalue %49[4] : !llvm.array<8 x vector<32xf32>> 
          %114 = llvm.intr.fmuladd(%112, %54, %113) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %115 = llvm.add %70, %8 : i64
          %116 = llvm.mul %115, %17 overflow<nsw, nuw> : i64
          %117 = llvm.add %116, %48 overflow<nsw, nuw> : i64
          %118 = llvm.getelementptr inbounds|nuw %21[%117] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %119 = llvm.load %118 : !llvm.ptr -> f32
          %120 = llvm.insertelement %119, %1[%0 : i32] : vector<32xf32>
          %121 = llvm.shufflevector %120, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %122 = llvm.extractvalue %49[5] : !llvm.array<8 x vector<32xf32>> 
          %123 = llvm.intr.fmuladd(%121, %54, %122) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %124 = llvm.add %70, %7 : i64
          %125 = llvm.mul %124, %17 overflow<nsw, nuw> : i64
          %126 = llvm.add %125, %48 overflow<nsw, nuw> : i64
          %127 = llvm.getelementptr inbounds|nuw %21[%126] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %128 = llvm.load %127 : !llvm.ptr -> f32
          %129 = llvm.insertelement %128, %1[%0 : i32] : vector<32xf32>
          %130 = llvm.shufflevector %129, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %131 = llvm.extractvalue %49[6] : !llvm.array<8 x vector<32xf32>> 
          %132 = llvm.intr.fmuladd(%130, %54, %131) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %133 = llvm.add %70, %6 : i64
          %134 = llvm.mul %133, %17 overflow<nsw, nuw> : i64
          %135 = llvm.add %134, %48 overflow<nsw, nuw> : i64
          %136 = llvm.getelementptr inbounds|nuw %21[%135] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %137 = llvm.load %136 : !llvm.ptr -> f32
          %138 = llvm.insertelement %137, %1[%0 : i32] : vector<32xf32>
          %139 = llvm.shufflevector %138, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %140 = llvm.extractvalue %49[7] : !llvm.array<8 x vector<32xf32>> 
          %141 = llvm.intr.fmuladd(%139, %54, %140) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %142 = llvm.add %71, %55 overflow<nsw, nuw> : i64
          %143 = llvm.getelementptr inbounds|nuw %21[%142] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %144 = llvm.load %143 : !llvm.ptr -> f32
          %145 = llvm.insertelement %144, %1[%0 : i32] : vector<32xf32>
          %146 = llvm.shufflevector %145, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %147 = llvm.intr.fmuladd(%146, %59, %78) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %148 = llvm.add %80, %55 overflow<nsw, nuw> : i64
          %149 = llvm.getelementptr inbounds|nuw %21[%148] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %150 = llvm.load %149 : !llvm.ptr -> f32
          %151 = llvm.insertelement %150, %1[%0 : i32] : vector<32xf32>
          %152 = llvm.shufflevector %151, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %153 = llvm.intr.fmuladd(%152, %59, %87) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %154 = llvm.add %89, %55 overflow<nsw, nuw> : i64
          %155 = llvm.getelementptr inbounds|nuw %21[%154] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %156 = llvm.load %155 : !llvm.ptr -> f32
          %157 = llvm.insertelement %156, %1[%0 : i32] : vector<32xf32>
          %158 = llvm.shufflevector %157, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %159 = llvm.intr.fmuladd(%158, %59, %96) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %160 = llvm.add %98, %55 overflow<nsw, nuw> : i64
          %161 = llvm.getelementptr inbounds|nuw %21[%160] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %162 = llvm.load %161 : !llvm.ptr -> f32
          %163 = llvm.insertelement %162, %1[%0 : i32] : vector<32xf32>
          %164 = llvm.shufflevector %163, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %165 = llvm.intr.fmuladd(%164, %59, %105) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %166 = llvm.add %107, %55 overflow<nsw, nuw> : i64
          %167 = llvm.getelementptr inbounds|nuw %21[%166] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %168 = llvm.load %167 : !llvm.ptr -> f32
          %169 = llvm.insertelement %168, %1[%0 : i32] : vector<32xf32>
          %170 = llvm.shufflevector %169, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %171 = llvm.intr.fmuladd(%170, %59, %114) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %172 = llvm.add %116, %55 overflow<nsw, nuw> : i64
          %173 = llvm.getelementptr inbounds|nuw %21[%172] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %174 = llvm.load %173 : !llvm.ptr -> f32
          %175 = llvm.insertelement %174, %1[%0 : i32] : vector<32xf32>
          %176 = llvm.shufflevector %175, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %177 = llvm.intr.fmuladd(%176, %59, %123) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %178 = llvm.add %125, %55 overflow<nsw, nuw> : i64
          %179 = llvm.getelementptr inbounds|nuw %21[%178] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %180 = llvm.load %179 : !llvm.ptr -> f32
          %181 = llvm.insertelement %180, %1[%0 : i32] : vector<32xf32>
          %182 = llvm.shufflevector %181, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %183 = llvm.intr.fmuladd(%182, %59, %132) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %184 = llvm.add %134, %55 overflow<nsw, nuw> : i64
          %185 = llvm.getelementptr inbounds|nuw %21[%184] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %186 = llvm.load %185 : !llvm.ptr -> f32
          %187 = llvm.insertelement %186, %1[%0 : i32] : vector<32xf32>
          %188 = llvm.shufflevector %187, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %189 = llvm.intr.fmuladd(%188, %59, %141) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %190 = llvm.add %71, %60 overflow<nsw, nuw> : i64
          %191 = llvm.getelementptr inbounds|nuw %21[%190] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %192 = llvm.load %191 : !llvm.ptr -> f32
          %193 = llvm.insertelement %192, %1[%0 : i32] : vector<32xf32>
          %194 = llvm.shufflevector %193, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %195 = llvm.intr.fmuladd(%194, %64, %147) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %196 = llvm.add %80, %60 overflow<nsw, nuw> : i64
          %197 = llvm.getelementptr inbounds|nuw %21[%196] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %198 = llvm.load %197 : !llvm.ptr -> f32
          %199 = llvm.insertelement %198, %1[%0 : i32] : vector<32xf32>
          %200 = llvm.shufflevector %199, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %201 = llvm.intr.fmuladd(%200, %64, %153) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %202 = llvm.add %89, %60 overflow<nsw, nuw> : i64
          %203 = llvm.getelementptr inbounds|nuw %21[%202] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %204 = llvm.load %203 : !llvm.ptr -> f32
          %205 = llvm.insertelement %204, %1[%0 : i32] : vector<32xf32>
          %206 = llvm.shufflevector %205, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %207 = llvm.intr.fmuladd(%206, %64, %159) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %208 = llvm.add %98, %60 overflow<nsw, nuw> : i64
          %209 = llvm.getelementptr inbounds|nuw %21[%208] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %210 = llvm.load %209 : !llvm.ptr -> f32
          %211 = llvm.insertelement %210, %1[%0 : i32] : vector<32xf32>
          %212 = llvm.shufflevector %211, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %213 = llvm.intr.fmuladd(%212, %64, %165) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %214 = llvm.add %107, %60 overflow<nsw, nuw> : i64
          %215 = llvm.getelementptr inbounds|nuw %21[%214] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %216 = llvm.load %215 : !llvm.ptr -> f32
          %217 = llvm.insertelement %216, %1[%0 : i32] : vector<32xf32>
          %218 = llvm.shufflevector %217, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %219 = llvm.intr.fmuladd(%218, %64, %171) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %220 = llvm.add %116, %60 overflow<nsw, nuw> : i64
          %221 = llvm.getelementptr inbounds|nuw %21[%220] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %222 = llvm.load %221 : !llvm.ptr -> f32
          %223 = llvm.insertelement %222, %1[%0 : i32] : vector<32xf32>
          %224 = llvm.shufflevector %223, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %225 = llvm.intr.fmuladd(%224, %64, %177) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %226 = llvm.add %125, %60 overflow<nsw, nuw> : i64
          %227 = llvm.getelementptr inbounds|nuw %21[%226] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %228 = llvm.load %227 : !llvm.ptr -> f32
          %229 = llvm.insertelement %228, %1[%0 : i32] : vector<32xf32>
          %230 = llvm.shufflevector %229, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %231 = llvm.intr.fmuladd(%230, %64, %183) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %232 = llvm.add %134, %60 overflow<nsw, nuw> : i64
          %233 = llvm.getelementptr inbounds|nuw %21[%232] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %234 = llvm.load %233 : !llvm.ptr -> f32
          %235 = llvm.insertelement %234, %1[%0 : i32] : vector<32xf32>
          %236 = llvm.shufflevector %235, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %237 = llvm.intr.fmuladd(%236, %64, %189) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %238 = llvm.add %71, %65 overflow<nsw, nuw> : i64
          %239 = llvm.getelementptr inbounds|nuw %21[%238] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %240 = llvm.load %239 : !llvm.ptr -> f32
          %241 = llvm.insertelement %240, %1[%0 : i32] : vector<32xf32>
          %242 = llvm.shufflevector %241, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %243 = llvm.intr.fmuladd(%242, %69, %195) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %244 = llvm.add %80, %65 overflow<nsw, nuw> : i64
          %245 = llvm.getelementptr inbounds|nuw %21[%244] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %246 = llvm.load %245 : !llvm.ptr -> f32
          %247 = llvm.insertelement %246, %1[%0 : i32] : vector<32xf32>
          %248 = llvm.shufflevector %247, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %249 = llvm.intr.fmuladd(%248, %69, %201) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %250 = llvm.add %89, %65 overflow<nsw, nuw> : i64
          %251 = llvm.getelementptr inbounds|nuw %21[%250] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %252 = llvm.load %251 : !llvm.ptr -> f32
          %253 = llvm.insertelement %252, %1[%0 : i32] : vector<32xf32>
          %254 = llvm.shufflevector %253, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %255 = llvm.intr.fmuladd(%254, %69, %207) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %256 = llvm.add %98, %65 overflow<nsw, nuw> : i64
          %257 = llvm.getelementptr inbounds|nuw %21[%256] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %258 = llvm.load %257 : !llvm.ptr -> f32
          %259 = llvm.insertelement %258, %1[%0 : i32] : vector<32xf32>
          %260 = llvm.shufflevector %259, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %261 = llvm.intr.fmuladd(%260, %69, %213) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %262 = llvm.add %107, %65 overflow<nsw, nuw> : i64
          %263 = llvm.getelementptr inbounds|nuw %21[%262] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %264 = llvm.load %263 : !llvm.ptr -> f32
          %265 = llvm.insertelement %264, %1[%0 : i32] : vector<32xf32>
          %266 = llvm.shufflevector %265, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %267 = llvm.intr.fmuladd(%266, %69, %219) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %268 = llvm.add %116, %65 overflow<nsw, nuw> : i64
          %269 = llvm.getelementptr inbounds|nuw %21[%268] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %270 = llvm.load %269 : !llvm.ptr -> f32
          %271 = llvm.insertelement %270, %1[%0 : i32] : vector<32xf32>
          %272 = llvm.shufflevector %271, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %273 = llvm.intr.fmuladd(%272, %69, %225) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %274 = llvm.add %125, %65 overflow<nsw, nuw> : i64
          %275 = llvm.getelementptr inbounds|nuw %21[%274] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %276 = llvm.load %275 : !llvm.ptr -> f32
          %277 = llvm.insertelement %276, %1[%0 : i32] : vector<32xf32>
          %278 = llvm.shufflevector %277, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %279 = llvm.intr.fmuladd(%278, %69, %231) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %280 = llvm.add %134, %65 overflow<nsw, nuw> : i64
          %281 = llvm.getelementptr inbounds|nuw %21[%280] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %282 = llvm.load %281 : !llvm.ptr -> f32
          %283 = llvm.insertelement %282, %1[%0 : i32] : vector<32xf32>
          %284 = llvm.shufflevector %283, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %285 = llvm.intr.fmuladd(%284, %69, %237) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %286 = llvm.insertvalue %243, %4[0] : !llvm.array<8 x vector<32xf32>> 
          %287 = llvm.insertvalue %249, %286[1] : !llvm.array<8 x vector<32xf32>> 
          %288 = llvm.insertvalue %255, %287[2] : !llvm.array<8 x vector<32xf32>> 
          %289 = llvm.insertvalue %261, %288[3] : !llvm.array<8 x vector<32xf32>> 
          %290 = llvm.insertvalue %267, %289[4] : !llvm.array<8 x vector<32xf32>> 
          %291 = llvm.insertvalue %273, %290[5] : !llvm.array<8 x vector<32xf32>> 
          %292 = llvm.insertvalue %279, %291[6] : !llvm.array<8 x vector<32xf32>> 
          %293 = llvm.insertvalue %285, %292[7] : !llvm.array<8 x vector<32xf32>> 
          %294 = llvm.add %48, %16 : i64
          llvm.br ^bb2(%294, %293 : i64, !llvm.array<8 x vector<32xf32>>)
        ^bb4:  // pred: ^bb2
          %295 = llvm.extractvalue %49[0] : !llvm.array<8 x vector<32xf32>> 
          %296 = llvm.add %44, %46 : i64
          %297 = llvm.mul %296, %17 : i64
          %298 = llvm.add %297, %45 : i64
          %299 = llvm.getelementptr %29[%298] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %295, %299 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %300 = llvm.add %46, %11 : i64
          %301 = llvm.extractvalue %49[1] : !llvm.array<8 x vector<32xf32>> 
          %302 = llvm.add %44, %300 : i64
          %303 = llvm.mul %302, %17 : i64
          %304 = llvm.add %303, %45 : i64
          %305 = llvm.getelementptr %29[%304] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %301, %305 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %306 = llvm.add %46, %10 : i64
          %307 = llvm.extractvalue %49[2] : !llvm.array<8 x vector<32xf32>> 
          %308 = llvm.add %44, %306 : i64
          %309 = llvm.mul %308, %17 : i64
          %310 = llvm.add %309, %45 : i64
          %311 = llvm.getelementptr %29[%310] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %307, %311 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %312 = llvm.add %46, %9 : i64
          %313 = llvm.extractvalue %49[3] : !llvm.array<8 x vector<32xf32>> 
          %314 = llvm.add %44, %312 : i64
          %315 = llvm.mul %314, %17 : i64
          %316 = llvm.add %315, %45 : i64
          %317 = llvm.getelementptr %29[%316] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %313, %317 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %318 = llvm.add %46, %16 : i64
          %319 = llvm.extractvalue %49[4] : !llvm.array<8 x vector<32xf32>> 
          %320 = llvm.add %44, %318 : i64
          %321 = llvm.mul %320, %17 : i64
          %322 = llvm.add %321, %45 : i64
          %323 = llvm.getelementptr %29[%322] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %319, %323 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %324 = llvm.add %46, %8 : i64
          %325 = llvm.extractvalue %49[5] : !llvm.array<8 x vector<32xf32>> 
          %326 = llvm.add %44, %324 : i64
          %327 = llvm.mul %326, %17 : i64
          %328 = llvm.add %327, %45 : i64
          %329 = llvm.getelementptr %29[%328] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %325, %329 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %330 = llvm.add %46, %7 : i64
          %331 = llvm.extractvalue %49[6] : !llvm.array<8 x vector<32xf32>> 
          %332 = llvm.add %44, %330 : i64
          %333 = llvm.mul %332, %17 : i64
          %334 = llvm.add %333, %45 : i64
          %335 = llvm.getelementptr %29[%334] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %331, %335 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %336 = llvm.add %46, %6 : i64
          %337 = llvm.extractvalue %49[7] : !llvm.array<8 x vector<32xf32>> 
          %338 = llvm.add %44, %336 : i64
          %339 = llvm.mul %338, %17 : i64
          %340 = llvm.add %339, %45 : i64
          %341 = llvm.getelementptr %29[%340] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %337, %341 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %342 = llvm.add %46, %14 : i64
          llvm.br ^bb1(%342 : i64)
        ^bb5:  // pred: ^bb1
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