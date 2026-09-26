module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "emeraldrapids", cpu_features = "+64bit,+adx,+aes,-amx-avx512,+amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,+amx-int8,-amx-movrs,-amx-tf32,+amx-tile,+avx,-avx10.1,-avx10.2,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,-avx512vp2intersect,+avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,+cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,-hreset,+invpcid,-kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,-pconfig,-pku,+popcnt,-ppx,-prefetchi,+prfchw,-ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,+rtm,+sahf,+serialize,-sgx,+sha,-sha512,-shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,+tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,-waitpkg,+wbnoinvd,-widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf", ukernels = "none"}>]> : !hal.device
  hal.executable private @matmul_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(<"llvm-cpu", "embedded-elf-x86_64", {cpu = "emeraldrapids", cpu_features = "+64bit,+adx,+aes,-amx-avx512,+amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,+amx-int8,-amx-movrs,-amx-tf32,+amx-tile,+avx,-avx10.1,-avx10.2,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,-avx512vp2intersect,+avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,+cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,-hreset,+invpcid,-kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,-pconfig,-pku,+popcnt,-ppx,-prefetchi,+prfchw,-ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,+rtm,+sahf,+serialize,-sgx,+sha,-sha512,-shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,+tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,-waitpkg,+wbnoinvd,-widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf", ukernels = "none"}>) {
      hal.executable.export public @matmul_dispatch_0_pack_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %c16 = arith.constant 16 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c16, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @matmul_dispatch_0_pack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(2048 : index) : i64
          %2 = llvm.mlir.constant(true) : i1
          %3 = llvm.mlir.constant(128 : index) : i64
          %4 = llvm.mlir.constant(-1 : index) : i64
          %5 = llvm.mlir.constant(15 : index) : i64
          %6 = llvm.mlir.constant(14 : index) : i64
          %7 = llvm.mlir.constant(13 : index) : i64
          %8 = llvm.mlir.constant(12 : index) : i64
          %9 = llvm.mlir.constant(11 : index) : i64
          %10 = llvm.mlir.constant(10 : index) : i64
          %11 = llvm.mlir.constant(9 : index) : i64
          %12 = llvm.mlir.constant(8 : index) : i64
          %13 = llvm.mlir.constant(7 : index) : i64
          %14 = llvm.mlir.constant(6 : index) : i64
          %15 = llvm.mlir.constant(5 : index) : i64
          %16 = llvm.mlir.constant(4 : index) : i64
          %17 = llvm.mlir.constant(3 : index) : i64
          %18 = llvm.mlir.constant(1 : index) : i64
          %19 = llvm.mlir.constant(2 : index) : i64
          %20 = llvm.mlir.constant(16 : index) : i64
          %21 = llvm.mlir.constant(64 : index) : i64
          %22 = llvm.mlir.constant(0 : index) : i64
          %23 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %24 = llvm.extractvalue %23[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %25 = llvm.load %24 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %2 ["align"(%25, %21 : !llvm.ptr, i64)] : i1
          %26 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %27 = llvm.extractvalue %26[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %28 = llvm.getelementptr %27[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %29 = llvm.load %28 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %2 ["align"(%29, %21 : !llvm.ptr, i64)] : i1
          %30 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %31 = llvm.extractvalue %30[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %32 = llvm.zext %31 : i32 to i64
          %33 = llvm.sdiv %32, %19 : i64
          %34 = llvm.mul %33, %19 : i64
          %35 = llvm.icmp "ne" %32, %34 : i64
          %36 = llvm.icmp "slt" %32, %22 : i64
          %37 = llvm.and %35, %36 : i1
          %38 = llvm.add %33, %4 : i64
          %39 = llvm.select %37, %38, %33 : i1, i64
          %40 = llvm.srem %32, %19 : i64
          %41 = llvm.icmp "slt" %40, %22 : i64
          %42 = llvm.add %40, %19 overflow<nsw> : i64
          %43 = llvm.select %41, %42, %40 : i1, i64
          %44 = llvm.mul %43, %21 overflow<nsw> : i64
          llvm.br ^bb1(%22 : i64)
        ^bb1(%45: i64):  // 2 preds: ^bb0, ^bb2
          %46 = llvm.icmp "slt" %45, %21 : i64
          llvm.cond_br %46, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %47 = llvm.add %45, %44 : i64
          %48 = llvm.mul %39, %20 overflow<nsw> : i64
          %49 = llvm.mul %48, %3 : i64
          %50 = llvm.add %49, %47 : i64
          %51 = llvm.getelementptr %25[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %52 = llvm.load %51 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %53 = llvm.add %48, %18 : i64
          %54 = llvm.mul %53, %3 : i64
          %55 = llvm.add %54, %47 : i64
          %56 = llvm.getelementptr %25[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %57 = llvm.load %56 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %58 = llvm.add %48, %19 : i64
          %59 = llvm.mul %58, %3 : i64
          %60 = llvm.add %59, %47 : i64
          %61 = llvm.getelementptr %25[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %62 = llvm.load %61 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %63 = llvm.add %48, %17 : i64
          %64 = llvm.mul %63, %3 : i64
          %65 = llvm.add %64, %47 : i64
          %66 = llvm.getelementptr %25[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %67 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %68 = llvm.add %48, %16 : i64
          %69 = llvm.mul %68, %3 : i64
          %70 = llvm.add %69, %47 : i64
          %71 = llvm.getelementptr %25[%70] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %72 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %73 = llvm.add %48, %15 : i64
          %74 = llvm.mul %73, %3 : i64
          %75 = llvm.add %74, %47 : i64
          %76 = llvm.getelementptr %25[%75] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %77 = llvm.load %76 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %78 = llvm.add %48, %14 : i64
          %79 = llvm.mul %78, %3 : i64
          %80 = llvm.add %79, %47 : i64
          %81 = llvm.getelementptr %25[%80] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %82 = llvm.load %81 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %83 = llvm.add %48, %13 : i64
          %84 = llvm.mul %83, %3 : i64
          %85 = llvm.add %84, %47 : i64
          %86 = llvm.getelementptr %25[%85] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %87 = llvm.load %86 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %88 = llvm.add %48, %12 : i64
          %89 = llvm.mul %88, %3 : i64
          %90 = llvm.add %89, %47 : i64
          %91 = llvm.getelementptr %25[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %92 = llvm.load %91 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %93 = llvm.add %48, %11 : i64
          %94 = llvm.mul %93, %3 : i64
          %95 = llvm.add %94, %47 : i64
          %96 = llvm.getelementptr %25[%95] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %97 = llvm.load %96 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %98 = llvm.add %48, %10 : i64
          %99 = llvm.mul %98, %3 : i64
          %100 = llvm.add %99, %47 : i64
          %101 = llvm.getelementptr %25[%100] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %102 = llvm.load %101 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %103 = llvm.add %48, %9 : i64
          %104 = llvm.mul %103, %3 : i64
          %105 = llvm.add %104, %47 : i64
          %106 = llvm.getelementptr %25[%105] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %107 = llvm.load %106 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %108 = llvm.add %48, %8 : i64
          %109 = llvm.mul %108, %3 : i64
          %110 = llvm.add %109, %47 : i64
          %111 = llvm.getelementptr %25[%110] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %112 = llvm.load %111 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %113 = llvm.add %48, %7 : i64
          %114 = llvm.mul %113, %3 : i64
          %115 = llvm.add %114, %47 : i64
          %116 = llvm.getelementptr %25[%115] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %117 = llvm.load %116 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %118 = llvm.add %48, %6 : i64
          %119 = llvm.mul %118, %3 : i64
          %120 = llvm.add %119, %47 : i64
          %121 = llvm.getelementptr %25[%120] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %122 = llvm.load %121 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %123 = llvm.add %48, %5 : i64
          %124 = llvm.mul %123, %3 : i64
          %125 = llvm.add %124, %47 : i64
          %126 = llvm.getelementptr %25[%125] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %127 = llvm.load %126 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %128 = llvm.shufflevector %52, %57 [0, 16, 1, 17, 4, 20, 5, 21, 8, 24, 9, 25, 12, 28, 13, 29] : vector<16xf32> 
          %129 = llvm.shufflevector %52, %57 [2, 18, 3, 19, 6, 22, 7, 23, 10, 26, 11, 27, 14, 30, 15, 31] : vector<16xf32> 
          %130 = llvm.shufflevector %62, %67 [0, 16, 1, 17, 4, 20, 5, 21, 8, 24, 9, 25, 12, 28, 13, 29] : vector<16xf32> 
          %131 = llvm.shufflevector %62, %67 [2, 18, 3, 19, 6, 22, 7, 23, 10, 26, 11, 27, 14, 30, 15, 31] : vector<16xf32> 
          %132 = llvm.shufflevector %72, %77 [0, 16, 1, 17, 4, 20, 5, 21, 8, 24, 9, 25, 12, 28, 13, 29] : vector<16xf32> 
          %133 = llvm.shufflevector %72, %77 [2, 18, 3, 19, 6, 22, 7, 23, 10, 26, 11, 27, 14, 30, 15, 31] : vector<16xf32> 
          %134 = llvm.shufflevector %82, %87 [0, 16, 1, 17, 4, 20, 5, 21, 8, 24, 9, 25, 12, 28, 13, 29] : vector<16xf32> 
          %135 = llvm.shufflevector %82, %87 [2, 18, 3, 19, 6, 22, 7, 23, 10, 26, 11, 27, 14, 30, 15, 31] : vector<16xf32> 
          %136 = llvm.shufflevector %92, %97 [0, 16, 1, 17, 4, 20, 5, 21, 8, 24, 9, 25, 12, 28, 13, 29] : vector<16xf32> 
          %137 = llvm.shufflevector %92, %97 [2, 18, 3, 19, 6, 22, 7, 23, 10, 26, 11, 27, 14, 30, 15, 31] : vector<16xf32> 
          %138 = llvm.shufflevector %102, %107 [0, 16, 1, 17, 4, 20, 5, 21, 8, 24, 9, 25, 12, 28, 13, 29] : vector<16xf32> 
          %139 = llvm.shufflevector %102, %107 [2, 18, 3, 19, 6, 22, 7, 23, 10, 26, 11, 27, 14, 30, 15, 31] : vector<16xf32> 
          %140 = llvm.shufflevector %112, %117 [0, 16, 1, 17, 4, 20, 5, 21, 8, 24, 9, 25, 12, 28, 13, 29] : vector<16xf32> 
          %141 = llvm.shufflevector %112, %117 [2, 18, 3, 19, 6, 22, 7, 23, 10, 26, 11, 27, 14, 30, 15, 31] : vector<16xf32> 
          %142 = llvm.shufflevector %122, %127 [0, 16, 1, 17, 4, 20, 5, 21, 8, 24, 9, 25, 12, 28, 13, 29] : vector<16xf32> 
          %143 = llvm.shufflevector %122, %127 [2, 18, 3, 19, 6, 22, 7, 23, 10, 26, 11, 27, 14, 30, 15, 31] : vector<16xf32> 
          %144 = llvm.shufflevector %128, %130 [0, 1, 16, 17, 4, 5, 20, 21, 8, 9, 24, 25, 12, 13, 28, 29] : vector<16xf32> 
          %145 = llvm.shufflevector %128, %130 [2, 3, 18, 19, 6, 7, 22, 23, 10, 11, 26, 27, 14, 15, 30, 31] : vector<16xf32> 
          %146 = llvm.shufflevector %129, %131 [0, 1, 16, 17, 4, 5, 20, 21, 8, 9, 24, 25, 12, 13, 28, 29] : vector<16xf32> 
          %147 = llvm.shufflevector %129, %131 [2, 3, 18, 19, 6, 7, 22, 23, 10, 11, 26, 27, 14, 15, 30, 31] : vector<16xf32> 
          %148 = llvm.shufflevector %132, %134 [0, 1, 16, 17, 4, 5, 20, 21, 8, 9, 24, 25, 12, 13, 28, 29] : vector<16xf32> 
          %149 = llvm.shufflevector %132, %134 [2, 3, 18, 19, 6, 7, 22, 23, 10, 11, 26, 27, 14, 15, 30, 31] : vector<16xf32> 
          %150 = llvm.shufflevector %133, %135 [0, 1, 16, 17, 4, 5, 20, 21, 8, 9, 24, 25, 12, 13, 28, 29] : vector<16xf32> 
          %151 = llvm.shufflevector %133, %135 [2, 3, 18, 19, 6, 7, 22, 23, 10, 11, 26, 27, 14, 15, 30, 31] : vector<16xf32> 
          %152 = llvm.shufflevector %136, %138 [0, 1, 16, 17, 4, 5, 20, 21, 8, 9, 24, 25, 12, 13, 28, 29] : vector<16xf32> 
          %153 = llvm.shufflevector %136, %138 [2, 3, 18, 19, 6, 7, 22, 23, 10, 11, 26, 27, 14, 15, 30, 31] : vector<16xf32> 
          %154 = llvm.shufflevector %137, %139 [0, 1, 16, 17, 4, 5, 20, 21, 8, 9, 24, 25, 12, 13, 28, 29] : vector<16xf32> 
          %155 = llvm.shufflevector %137, %139 [2, 3, 18, 19, 6, 7, 22, 23, 10, 11, 26, 27, 14, 15, 30, 31] : vector<16xf32> 
          %156 = llvm.shufflevector %140, %142 [0, 1, 16, 17, 4, 5, 20, 21, 8, 9, 24, 25, 12, 13, 28, 29] : vector<16xf32> 
          %157 = llvm.shufflevector %140, %142 [2, 3, 18, 19, 6, 7, 22, 23, 10, 11, 26, 27, 14, 15, 30, 31] : vector<16xf32> 
          %158 = llvm.shufflevector %141, %143 [0, 1, 16, 17, 4, 5, 20, 21, 8, 9, 24, 25, 12, 13, 28, 29] : vector<16xf32> 
          %159 = llvm.shufflevector %141, %143 [2, 3, 18, 19, 6, 7, 22, 23, 10, 11, 26, 27, 14, 15, 30, 31] : vector<16xf32> 
          %160 = llvm.shufflevector %144, %148 [0, 1, 2, 3, 8, 9, 10, 11, 16, 17, 18, 19, 24, 25, 26, 27] : vector<16xf32> 
          %161 = llvm.shufflevector %145, %149 [0, 1, 2, 3, 8, 9, 10, 11, 16, 17, 18, 19, 24, 25, 26, 27] : vector<16xf32> 
          %162 = llvm.shufflevector %146, %150 [0, 1, 2, 3, 8, 9, 10, 11, 16, 17, 18, 19, 24, 25, 26, 27] : vector<16xf32> 
          %163 = llvm.shufflevector %147, %151 [0, 1, 2, 3, 8, 9, 10, 11, 16, 17, 18, 19, 24, 25, 26, 27] : vector<16xf32> 
          %164 = llvm.shufflevector %144, %148 [4, 5, 6, 7, 12, 13, 14, 15, 20, 21, 22, 23, 28, 29, 30, 31] : vector<16xf32> 
          %165 = llvm.shufflevector %145, %149 [4, 5, 6, 7, 12, 13, 14, 15, 20, 21, 22, 23, 28, 29, 30, 31] : vector<16xf32> 
          %166 = llvm.shufflevector %146, %150 [4, 5, 6, 7, 12, 13, 14, 15, 20, 21, 22, 23, 28, 29, 30, 31] : vector<16xf32> 
          %167 = llvm.shufflevector %147, %151 [4, 5, 6, 7, 12, 13, 14, 15, 20, 21, 22, 23, 28, 29, 30, 31] : vector<16xf32> 
          %168 = llvm.shufflevector %152, %156 [0, 1, 2, 3, 8, 9, 10, 11, 16, 17, 18, 19, 24, 25, 26, 27] : vector<16xf32> 
          %169 = llvm.shufflevector %153, %157 [0, 1, 2, 3, 8, 9, 10, 11, 16, 17, 18, 19, 24, 25, 26, 27] : vector<16xf32> 
          %170 = llvm.shufflevector %154, %158 [0, 1, 2, 3, 8, 9, 10, 11, 16, 17, 18, 19, 24, 25, 26, 27] : vector<16xf32> 
          %171 = llvm.shufflevector %155, %159 [0, 1, 2, 3, 8, 9, 10, 11, 16, 17, 18, 19, 24, 25, 26, 27] : vector<16xf32> 
          %172 = llvm.shufflevector %152, %156 [4, 5, 6, 7, 12, 13, 14, 15, 20, 21, 22, 23, 28, 29, 30, 31] : vector<16xf32> 
          %173 = llvm.shufflevector %153, %157 [4, 5, 6, 7, 12, 13, 14, 15, 20, 21, 22, 23, 28, 29, 30, 31] : vector<16xf32> 
          %174 = llvm.shufflevector %154, %158 [4, 5, 6, 7, 12, 13, 14, 15, 20, 21, 22, 23, 28, 29, 30, 31] : vector<16xf32> 
          %175 = llvm.shufflevector %155, %159 [4, 5, 6, 7, 12, 13, 14, 15, 20, 21, 22, 23, 28, 29, 30, 31] : vector<16xf32> 
          %176 = llvm.shufflevector %160, %168 [0, 1, 2, 3, 8, 9, 10, 11, 16, 17, 18, 19, 24, 25, 26, 27] : vector<16xf32> 
          %177 = llvm.shufflevector %161, %169 [0, 1, 2, 3, 8, 9, 10, 11, 16, 17, 18, 19, 24, 25, 26, 27] : vector<16xf32> 
          %178 = llvm.shufflevector %162, %170 [0, 1, 2, 3, 8, 9, 10, 11, 16, 17, 18, 19, 24, 25, 26, 27] : vector<16xf32> 
          %179 = llvm.shufflevector %163, %171 [0, 1, 2, 3, 8, 9, 10, 11, 16, 17, 18, 19, 24, 25, 26, 27] : vector<16xf32> 
          %180 = llvm.shufflevector %164, %172 [0, 1, 2, 3, 8, 9, 10, 11, 16, 17, 18, 19, 24, 25, 26, 27] : vector<16xf32> 
          %181 = llvm.shufflevector %165, %173 [0, 1, 2, 3, 8, 9, 10, 11, 16, 17, 18, 19, 24, 25, 26, 27] : vector<16xf32> 
          %182 = llvm.shufflevector %166, %174 [0, 1, 2, 3, 8, 9, 10, 11, 16, 17, 18, 19, 24, 25, 26, 27] : vector<16xf32> 
          %183 = llvm.shufflevector %167, %175 [0, 1, 2, 3, 8, 9, 10, 11, 16, 17, 18, 19, 24, 25, 26, 27] : vector<16xf32> 
          %184 = llvm.shufflevector %160, %168 [4, 5, 6, 7, 12, 13, 14, 15, 20, 21, 22, 23, 28, 29, 30, 31] : vector<16xf32> 
          %185 = llvm.shufflevector %161, %169 [4, 5, 6, 7, 12, 13, 14, 15, 20, 21, 22, 23, 28, 29, 30, 31] : vector<16xf32> 
          %186 = llvm.shufflevector %162, %170 [4, 5, 6, 7, 12, 13, 14, 15, 20, 21, 22, 23, 28, 29, 30, 31] : vector<16xf32> 
          %187 = llvm.shufflevector %163, %171 [4, 5, 6, 7, 12, 13, 14, 15, 20, 21, 22, 23, 28, 29, 30, 31] : vector<16xf32> 
          %188 = llvm.shufflevector %164, %172 [4, 5, 6, 7, 12, 13, 14, 15, 20, 21, 22, 23, 28, 29, 30, 31] : vector<16xf32> 
          %189 = llvm.shufflevector %165, %173 [4, 5, 6, 7, 12, 13, 14, 15, 20, 21, 22, 23, 28, 29, 30, 31] : vector<16xf32> 
          %190 = llvm.shufflevector %166, %174 [4, 5, 6, 7, 12, 13, 14, 15, 20, 21, 22, 23, 28, 29, 30, 31] : vector<16xf32> 
          %191 = llvm.shufflevector %167, %175 [4, 5, 6, 7, 12, 13, 14, 15, 20, 21, 22, 23, 28, 29, 30, 31] : vector<16xf32> 
          %192 = llvm.mul %39, %1 : i64
          %193 = llvm.mul %47, %20 : i64
          %194 = llvm.add %192, %193 : i64
          %195 = llvm.add %194, %22 : i64
          %196 = llvm.add %195, %22 : i64
          %197 = llvm.getelementptr %29[%196] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %176, %197 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %198 = llvm.add %45, %18 : i64
          %199 = llvm.add %44, %198 : i64
          %200 = llvm.mul %199, %20 : i64
          %201 = llvm.add %192, %200 : i64
          %202 = llvm.add %201, %22 : i64
          %203 = llvm.add %202, %22 : i64
          %204 = llvm.getelementptr %29[%203] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %177, %204 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %205 = llvm.add %45, %19 : i64
          %206 = llvm.add %44, %205 : i64
          %207 = llvm.mul %206, %20 : i64
          %208 = llvm.add %192, %207 : i64
          %209 = llvm.add %208, %22 : i64
          %210 = llvm.add %209, %22 : i64
          %211 = llvm.getelementptr %29[%210] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %178, %211 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %212 = llvm.add %45, %17 : i64
          %213 = llvm.add %44, %212 : i64
          %214 = llvm.mul %213, %20 : i64
          %215 = llvm.add %192, %214 : i64
          %216 = llvm.add %215, %22 : i64
          %217 = llvm.add %216, %22 : i64
          %218 = llvm.getelementptr %29[%217] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %179, %218 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %219 = llvm.add %45, %16 : i64
          %220 = llvm.add %44, %219 : i64
          %221 = llvm.mul %220, %20 : i64
          %222 = llvm.add %192, %221 : i64
          %223 = llvm.add %222, %22 : i64
          %224 = llvm.add %223, %22 : i64
          %225 = llvm.getelementptr %29[%224] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %180, %225 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %226 = llvm.add %45, %15 : i64
          %227 = llvm.add %44, %226 : i64
          %228 = llvm.mul %227, %20 : i64
          %229 = llvm.add %192, %228 : i64
          %230 = llvm.add %229, %22 : i64
          %231 = llvm.add %230, %22 : i64
          %232 = llvm.getelementptr %29[%231] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %181, %232 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %233 = llvm.add %45, %14 : i64
          %234 = llvm.add %44, %233 : i64
          %235 = llvm.mul %234, %20 : i64
          %236 = llvm.add %192, %235 : i64
          %237 = llvm.add %236, %22 : i64
          %238 = llvm.add %237, %22 : i64
          %239 = llvm.getelementptr %29[%238] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %182, %239 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %240 = llvm.add %45, %13 : i64
          %241 = llvm.add %44, %240 : i64
          %242 = llvm.mul %241, %20 : i64
          %243 = llvm.add %192, %242 : i64
          %244 = llvm.add %243, %22 : i64
          %245 = llvm.add %244, %22 : i64
          %246 = llvm.getelementptr %29[%245] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %183, %246 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %247 = llvm.add %45, %12 : i64
          %248 = llvm.add %44, %247 : i64
          %249 = llvm.mul %248, %20 : i64
          %250 = llvm.add %192, %249 : i64
          %251 = llvm.add %250, %22 : i64
          %252 = llvm.add %251, %22 : i64
          %253 = llvm.getelementptr %29[%252] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %184, %253 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %254 = llvm.add %45, %11 : i64
          %255 = llvm.add %44, %254 : i64
          %256 = llvm.mul %255, %20 : i64
          %257 = llvm.add %192, %256 : i64
          %258 = llvm.add %257, %22 : i64
          %259 = llvm.add %258, %22 : i64
          %260 = llvm.getelementptr %29[%259] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %185, %260 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %261 = llvm.add %45, %10 : i64
          %262 = llvm.add %44, %261 : i64
          %263 = llvm.mul %262, %20 : i64
          %264 = llvm.add %192, %263 : i64
          %265 = llvm.add %264, %22 : i64
          %266 = llvm.add %265, %22 : i64
          %267 = llvm.getelementptr %29[%266] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %186, %267 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %268 = llvm.add %45, %9 : i64
          %269 = llvm.add %44, %268 : i64
          %270 = llvm.mul %269, %20 : i64
          %271 = llvm.add %192, %270 : i64
          %272 = llvm.add %271, %22 : i64
          %273 = llvm.add %272, %22 : i64
          %274 = llvm.getelementptr %29[%273] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %187, %274 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %275 = llvm.add %45, %8 : i64
          %276 = llvm.add %44, %275 : i64
          %277 = llvm.mul %276, %20 : i64
          %278 = llvm.add %192, %277 : i64
          %279 = llvm.add %278, %22 : i64
          %280 = llvm.add %279, %22 : i64
          %281 = llvm.getelementptr %29[%280] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %188, %281 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %282 = llvm.add %45, %7 : i64
          %283 = llvm.add %44, %282 : i64
          %284 = llvm.mul %283, %20 : i64
          %285 = llvm.add %192, %284 : i64
          %286 = llvm.add %285, %22 : i64
          %287 = llvm.add %286, %22 : i64
          %288 = llvm.getelementptr %29[%287] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %189, %288 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %289 = llvm.add %45, %6 : i64
          %290 = llvm.add %44, %289 : i64
          %291 = llvm.mul %290, %20 : i64
          %292 = llvm.add %192, %291 : i64
          %293 = llvm.add %292, %22 : i64
          %294 = llvm.add %293, %22 : i64
          %295 = llvm.getelementptr %29[%294] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %190, %295 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %296 = llvm.add %45, %5 : i64
          %297 = llvm.add %44, %296 : i64
          %298 = llvm.mul %297, %20 : i64
          %299 = llvm.add %192, %298 : i64
          %300 = llvm.add %299, %22 : i64
          %301 = llvm.add %300, %22 : i64
          %302 = llvm.getelementptr %29[%301] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %191, %302 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %303 = llvm.add %45, %20 : i64
          llvm.br ^bb1(%303 : i64)
        ^bb3:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  hal.executable private @matmul_dispatch_1 {
    hal.executable.variant public @embedded_elf_x86_64 target(<"llvm-cpu", "embedded-elf-x86_64", {cpu = "emeraldrapids", cpu_features = "+64bit,+adx,+aes,-amx-avx512,+amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,+amx-int8,-amx-movrs,-amx-tf32,+amx-tile,+avx,-avx10.1,-avx10.2,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,-avx512vp2intersect,+avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,+cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,-hreset,+invpcid,-kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,-pconfig,-pku,+popcnt,-ppx,-prefetchi,+prfchw,-ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,+rtm,+sahf,+serialize,-sgx,+sha,-sha512,-shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,+tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,-waitpkg,+wbnoinvd,-widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf", ukernels = "none"}>) {
      hal.executable.export public @matmul_dispatch_1_pack_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %c256 = arith.constant 256 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c256, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @matmul_dispatch_1_pack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(2048 : index) : i64
          %2 = llvm.mlir.constant(8 : i64) : i64
          %3 = llvm.mlir.constant(32 : i64) : i64
          %4 = llvm.mlir.constant(64 : index) : i64
          %5 = llvm.mlir.constant(true) : i1
          %6 = llvm.mlir.constant(128 : index) : i64
          %7 = llvm.mlir.constant(-1 : index) : i64
          %8 = llvm.mlir.constant(16 : index) : i64
          %9 = llvm.mlir.constant(32 : index) : i64
          %10 = llvm.mlir.constant(4 : index) : i64
          %11 = llvm.mlir.constant(1 : index) : i64
          %12 = llvm.mlir.constant(0 : index) : i64
          %13 = llvm.mlir.constant(65536 : index) : i64
          %14 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %15 = llvm.extractvalue %14[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %16 = llvm.load %15 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %5 ["align"(%16, %4 : !llvm.ptr, i64)] : i1
          %17 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %18 = llvm.extractvalue %17[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %19 = llvm.getelementptr %18[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %20 = llvm.load %19 : !llvm.ptr -> !llvm.ptr
          %21 = llvm.mul %13, %2 : i64
          %22 = llvm.udiv %21, %3 : i64
          %23 = llvm.getelementptr %20[%22] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%23, %4 : !llvm.ptr, i64)] : i1
          %24 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %25 = llvm.extractvalue %24[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %26 = llvm.zext %25 : i32 to i64
          %27 = llvm.sdiv %26, %9 : i64
          %28 = llvm.mul %27, %9 : i64
          %29 = llvm.icmp "ne" %26, %28 : i64
          %30 = llvm.icmp "slt" %26, %12 : i64
          %31 = llvm.and %29, %30 : i1
          %32 = llvm.add %27, %7 : i64
          %33 = llvm.select %31, %32, %27 : i1, i64
          %34 = llvm.srem %26, %9 : i64
          %35 = llvm.icmp "slt" %34, %12 : i64
          %36 = llvm.add %34, %9 overflow<nsw> : i64
          %37 = llvm.select %35, %36, %34 : i1, i64
          %38 = llvm.mul %37, %10 overflow<nsw> : i64
          %39 = llvm.mul %33, %8 overflow<nsw> : i64
          llvm.br ^bb1(%12 : i64)
        ^bb1(%40: i64):  // 2 preds: ^bb0, ^bb2
          %41 = llvm.icmp "slt" %40, %10 : i64
          llvm.cond_br %41, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %42 = llvm.add %40, %38 : i64
          %43 = llvm.mul %42, %6 : i64
          %44 = llvm.add %43, %39 : i64
          %45 = llvm.getelementptr %16[%44] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %46 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %47 = llvm.mul %33, %1 : i64
          %48 = llvm.mul %42, %8 : i64
          %49 = llvm.add %47, %48 : i64
          %50 = llvm.add %49, %12 : i64
          %51 = llvm.add %50, %12 : i64
          %52 = llvm.getelementptr %23[%51] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %46, %52 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %53 = llvm.add %40, %11 : i64
          llvm.br ^bb1(%53 : i64)
        ^bb3:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  hal.executable private @matmul_dispatch_2 {
    hal.executable.variant public @embedded_elf_x86_64 target(<"llvm-cpu", "embedded-elf-x86_64", {cpu = "emeraldrapids", cpu_features = "+64bit,+adx,+aes,-amx-avx512,+amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,+amx-int8,-amx-movrs,-amx-tf32,+amx-tile,+avx,-avx10.1,-avx10.2,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,-avx512vp2intersect,+avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,+cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,-hreset,+invpcid,-kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,-pconfig,-pku,+popcnt,-ppx,-prefetchi,+prfchw,-ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,+rtm,+sahf,+serialize,-sgx,+sha,-sha512,-shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,+tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,-waitpkg,+wbnoinvd,-widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf", ukernels = "none"}>) {
      hal.executable.export public @matmul_dispatch_2_mmt4d_8x8x128x16x16x1_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        %c1_1 = arith.constant 1 : index
        hal.return %c1, %c1_0, %c1_1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @matmul_dispatch_2_mmt4d_8x8x128x16x16x1_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<16xf32>
          %2 = llvm.mlir.constant(256 : index) : i64
          %3 = llvm.mlir.constant(8 : i64) : i64
          %4 = llvm.mlir.constant(32 : i64) : i64
          %5 = llvm.mlir.constant(64 : index) : i64
          %6 = llvm.mlir.constant(true) : i1
          %7 = llvm.mlir.constant(16 : index) : i64
          %8 = llvm.mlir.constant(2048 : index) : i64
          %9 = llvm.mlir.poison : !llvm.array<16 x vector<16xf32>>
          %10 = llvm.mlir.constant(15 : index) : i64
          %11 = llvm.mlir.constant(14 : index) : i64
          %12 = llvm.mlir.constant(13 : index) : i64
          %13 = llvm.mlir.constant(12 : index) : i64
          %14 = llvm.mlir.constant(11 : index) : i64
          %15 = llvm.mlir.constant(10 : index) : i64
          %16 = llvm.mlir.constant(9 : index) : i64
          %17 = llvm.mlir.constant(7 : index) : i64
          %18 = llvm.mlir.constant(6 : index) : i64
          %19 = llvm.mlir.constant(5 : index) : i64
          %20 = llvm.mlir.constant(4 : index) : i64
          %21 = llvm.mlir.constant(3 : index) : i64
          %22 = llvm.mlir.constant(2 : index) : i64
          %23 = llvm.mlir.constant(dense<0.000000e+00> : vector<16x16xf32>) : !llvm.array<16 x vector<16xf32>>
          %24 = llvm.mlir.constant(8 : index) : i64
          %25 = llvm.mlir.constant(1 : index) : i64
          %26 = llvm.mlir.constant(128 : index) : i64
          %27 = llvm.mlir.constant(0 : index) : i64
          %28 = llvm.mlir.constant(65536 : index) : i64
          %29 = llvm.mlir.constant(131072 : index) : i64
          %30 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %31 = llvm.extractvalue %30[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %32 = llvm.load %31 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
          %33 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %34 = llvm.extractvalue %33[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %35 = llvm.load %34 : !llvm.ptr -> !llvm.ptr
          %36 = llvm.mul %28, %3 : i64
          %37 = llvm.udiv %36, %4 : i64
          %38 = llvm.getelementptr %35[%37] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
          %39 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %40 = llvm.extractvalue %39[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %41 = llvm.getelementptr %40[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %42 = llvm.load %41 : !llvm.ptr -> !llvm.ptr
          %43 = llvm.mul %29, %3 : i64
          %44 = llvm.udiv %43, %4 : i64
          %45 = llvm.getelementptr %42[%44] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%45, %5 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%27 : i64)
        ^bb1(%46: i64):  // 2 preds: ^bb0, ^bb6
          %47 = llvm.icmp "slt" %46, %24 : i64
          llvm.cond_br %47, ^bb2(%27 : i64), ^bb7
        ^bb2(%48: i64):  // 2 preds: ^bb1, ^bb5
          %49 = llvm.icmp "slt" %48, %24 : i64
          llvm.cond_br %49, ^bb3(%27, %23 : i64, !llvm.array<16 x vector<16xf32>>), ^bb6
        ^bb3(%50: i64, %51: !llvm.array<16 x vector<16xf32>>):  // 2 preds: ^bb2, ^bb4
          %52 = llvm.icmp "slt" %50, %26 : i64
          llvm.cond_br %52, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %53 = llvm.mul %48, %8 : i64
          %54 = llvm.mul %50, %7 : i64
          %55 = llvm.add %53, %54 : i64
          %56 = llvm.add %55, %27 : i64
          %57 = llvm.add %56, %27 : i64
          %58 = llvm.getelementptr %38[%57] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %59 = llvm.load %58 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %60 = llvm.mul %46, %8 overflow<nsw, nuw> : i64
          %61 = llvm.mul %50, %7 overflow<nsw, nuw> : i64
          %62 = llvm.add %60, %61 overflow<nsw, nuw> : i64
          %63 = llvm.add %62, %27 overflow<nsw, nuw> : i64
          %64 = llvm.add %63, %27 overflow<nsw, nuw> : i64
          %65 = llvm.getelementptr inbounds|nuw %32[%64] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %66 = llvm.load %65 : !llvm.ptr -> f32
          %67 = llvm.insertelement %66, %1[%0 : i32] : vector<16xf32>
          %68 = llvm.shufflevector %67, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %69 = llvm.extractvalue %51[0] : !llvm.array<16 x vector<16xf32>> 
          %70 = llvm.intr.fmuladd(%68, %59, %69) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %71 = llvm.add %62, %25 overflow<nsw, nuw> : i64
          %72 = llvm.add %71, %27 overflow<nsw, nuw> : i64
          %73 = llvm.getelementptr inbounds|nuw %32[%72] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %74 = llvm.load %73 : !llvm.ptr -> f32
          %75 = llvm.insertelement %74, %1[%0 : i32] : vector<16xf32>
          %76 = llvm.shufflevector %75, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %77 = llvm.extractvalue %51[1] : !llvm.array<16 x vector<16xf32>> 
          %78 = llvm.intr.fmuladd(%76, %59, %77) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %79 = llvm.add %62, %22 overflow<nsw, nuw> : i64
          %80 = llvm.add %79, %27 overflow<nsw, nuw> : i64
          %81 = llvm.getelementptr inbounds|nuw %32[%80] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %82 = llvm.load %81 : !llvm.ptr -> f32
          %83 = llvm.insertelement %82, %1[%0 : i32] : vector<16xf32>
          %84 = llvm.shufflevector %83, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %85 = llvm.extractvalue %51[2] : !llvm.array<16 x vector<16xf32>> 
          %86 = llvm.intr.fmuladd(%84, %59, %85) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %87 = llvm.add %62, %21 overflow<nsw, nuw> : i64
          %88 = llvm.add %87, %27 overflow<nsw, nuw> : i64
          %89 = llvm.getelementptr inbounds|nuw %32[%88] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %90 = llvm.load %89 : !llvm.ptr -> f32
          %91 = llvm.insertelement %90, %1[%0 : i32] : vector<16xf32>
          %92 = llvm.shufflevector %91, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %93 = llvm.extractvalue %51[3] : !llvm.array<16 x vector<16xf32>> 
          %94 = llvm.intr.fmuladd(%92, %59, %93) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %95 = llvm.add %62, %20 overflow<nsw, nuw> : i64
          %96 = llvm.add %95, %27 overflow<nsw, nuw> : i64
          %97 = llvm.getelementptr inbounds|nuw %32[%96] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %98 = llvm.load %97 : !llvm.ptr -> f32
          %99 = llvm.insertelement %98, %1[%0 : i32] : vector<16xf32>
          %100 = llvm.shufflevector %99, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %101 = llvm.extractvalue %51[4] : !llvm.array<16 x vector<16xf32>> 
          %102 = llvm.intr.fmuladd(%100, %59, %101) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %103 = llvm.add %62, %19 overflow<nsw, nuw> : i64
          %104 = llvm.add %103, %27 overflow<nsw, nuw> : i64
          %105 = llvm.getelementptr inbounds|nuw %32[%104] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %106 = llvm.load %105 : !llvm.ptr -> f32
          %107 = llvm.insertelement %106, %1[%0 : i32] : vector<16xf32>
          %108 = llvm.shufflevector %107, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %109 = llvm.extractvalue %51[5] : !llvm.array<16 x vector<16xf32>> 
          %110 = llvm.intr.fmuladd(%108, %59, %109) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %111 = llvm.add %62, %18 overflow<nsw, nuw> : i64
          %112 = llvm.add %111, %27 overflow<nsw, nuw> : i64
          %113 = llvm.getelementptr inbounds|nuw %32[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %114 = llvm.load %113 : !llvm.ptr -> f32
          %115 = llvm.insertelement %114, %1[%0 : i32] : vector<16xf32>
          %116 = llvm.shufflevector %115, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %117 = llvm.extractvalue %51[6] : !llvm.array<16 x vector<16xf32>> 
          %118 = llvm.intr.fmuladd(%116, %59, %117) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %119 = llvm.add %62, %17 overflow<nsw, nuw> : i64
          %120 = llvm.add %119, %27 overflow<nsw, nuw> : i64
          %121 = llvm.getelementptr inbounds|nuw %32[%120] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %122 = llvm.load %121 : !llvm.ptr -> f32
          %123 = llvm.insertelement %122, %1[%0 : i32] : vector<16xf32>
          %124 = llvm.shufflevector %123, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %125 = llvm.extractvalue %51[7] : !llvm.array<16 x vector<16xf32>> 
          %126 = llvm.intr.fmuladd(%124, %59, %125) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %127 = llvm.add %62, %24 overflow<nsw, nuw> : i64
          %128 = llvm.add %127, %27 overflow<nsw, nuw> : i64
          %129 = llvm.getelementptr inbounds|nuw %32[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %130 = llvm.load %129 : !llvm.ptr -> f32
          %131 = llvm.insertelement %130, %1[%0 : i32] : vector<16xf32>
          %132 = llvm.shufflevector %131, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %133 = llvm.extractvalue %51[8] : !llvm.array<16 x vector<16xf32>> 
          %134 = llvm.intr.fmuladd(%132, %59, %133) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %135 = llvm.add %62, %16 overflow<nsw, nuw> : i64
          %136 = llvm.add %135, %27 overflow<nsw, nuw> : i64
          %137 = llvm.getelementptr inbounds|nuw %32[%136] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %138 = llvm.load %137 : !llvm.ptr -> f32
          %139 = llvm.insertelement %138, %1[%0 : i32] : vector<16xf32>
          %140 = llvm.shufflevector %139, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %141 = llvm.extractvalue %51[9] : !llvm.array<16 x vector<16xf32>> 
          %142 = llvm.intr.fmuladd(%140, %59, %141) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %143 = llvm.add %62, %15 overflow<nsw, nuw> : i64
          %144 = llvm.add %143, %27 overflow<nsw, nuw> : i64
          %145 = llvm.getelementptr inbounds|nuw %32[%144] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %146 = llvm.load %145 : !llvm.ptr -> f32
          %147 = llvm.insertelement %146, %1[%0 : i32] : vector<16xf32>
          %148 = llvm.shufflevector %147, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %149 = llvm.extractvalue %51[10] : !llvm.array<16 x vector<16xf32>> 
          %150 = llvm.intr.fmuladd(%148, %59, %149) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %151 = llvm.add %62, %14 overflow<nsw, nuw> : i64
          %152 = llvm.add %151, %27 overflow<nsw, nuw> : i64
          %153 = llvm.getelementptr inbounds|nuw %32[%152] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %154 = llvm.load %153 : !llvm.ptr -> f32
          %155 = llvm.insertelement %154, %1[%0 : i32] : vector<16xf32>
          %156 = llvm.shufflevector %155, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %157 = llvm.extractvalue %51[11] : !llvm.array<16 x vector<16xf32>> 
          %158 = llvm.intr.fmuladd(%156, %59, %157) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %159 = llvm.add %62, %13 overflow<nsw, nuw> : i64
          %160 = llvm.add %159, %27 overflow<nsw, nuw> : i64
          %161 = llvm.getelementptr inbounds|nuw %32[%160] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %162 = llvm.load %161 : !llvm.ptr -> f32
          %163 = llvm.insertelement %162, %1[%0 : i32] : vector<16xf32>
          %164 = llvm.shufflevector %163, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %165 = llvm.extractvalue %51[12] : !llvm.array<16 x vector<16xf32>> 
          %166 = llvm.intr.fmuladd(%164, %59, %165) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %167 = llvm.add %62, %12 overflow<nsw, nuw> : i64
          %168 = llvm.add %167, %27 overflow<nsw, nuw> : i64
          %169 = llvm.getelementptr inbounds|nuw %32[%168] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %170 = llvm.load %169 : !llvm.ptr -> f32
          %171 = llvm.insertelement %170, %1[%0 : i32] : vector<16xf32>
          %172 = llvm.shufflevector %171, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %173 = llvm.extractvalue %51[13] : !llvm.array<16 x vector<16xf32>> 
          %174 = llvm.intr.fmuladd(%172, %59, %173) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %175 = llvm.add %62, %11 overflow<nsw, nuw> : i64
          %176 = llvm.add %175, %27 overflow<nsw, nuw> : i64
          %177 = llvm.getelementptr inbounds|nuw %32[%176] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %178 = llvm.load %177 : !llvm.ptr -> f32
          %179 = llvm.insertelement %178, %1[%0 : i32] : vector<16xf32>
          %180 = llvm.shufflevector %179, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %181 = llvm.extractvalue %51[14] : !llvm.array<16 x vector<16xf32>> 
          %182 = llvm.intr.fmuladd(%180, %59, %181) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %183 = llvm.add %62, %10 overflow<nsw, nuw> : i64
          %184 = llvm.add %183, %27 overflow<nsw, nuw> : i64
          %185 = llvm.getelementptr inbounds|nuw %32[%184] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %186 = llvm.load %185 : !llvm.ptr -> f32
          %187 = llvm.insertelement %186, %1[%0 : i32] : vector<16xf32>
          %188 = llvm.shufflevector %187, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %189 = llvm.extractvalue %51[15] : !llvm.array<16 x vector<16xf32>> 
          %190 = llvm.intr.fmuladd(%188, %59, %189) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %191 = llvm.insertvalue %70, %9[0] : !llvm.array<16 x vector<16xf32>> 
          %192 = llvm.insertvalue %78, %191[1] : !llvm.array<16 x vector<16xf32>> 
          %193 = llvm.insertvalue %86, %192[2] : !llvm.array<16 x vector<16xf32>> 
          %194 = llvm.insertvalue %94, %193[3] : !llvm.array<16 x vector<16xf32>> 
          %195 = llvm.insertvalue %102, %194[4] : !llvm.array<16 x vector<16xf32>> 
          %196 = llvm.insertvalue %110, %195[5] : !llvm.array<16 x vector<16xf32>> 
          %197 = llvm.insertvalue %118, %196[6] : !llvm.array<16 x vector<16xf32>> 
          %198 = llvm.insertvalue %126, %197[7] : !llvm.array<16 x vector<16xf32>> 
          %199 = llvm.insertvalue %134, %198[8] : !llvm.array<16 x vector<16xf32>> 
          %200 = llvm.insertvalue %142, %199[9] : !llvm.array<16 x vector<16xf32>> 
          %201 = llvm.insertvalue %150, %200[10] : !llvm.array<16 x vector<16xf32>> 
          %202 = llvm.insertvalue %158, %201[11] : !llvm.array<16 x vector<16xf32>> 
          %203 = llvm.insertvalue %166, %202[12] : !llvm.array<16 x vector<16xf32>> 
          %204 = llvm.insertvalue %174, %203[13] : !llvm.array<16 x vector<16xf32>> 
          %205 = llvm.insertvalue %182, %204[14] : !llvm.array<16 x vector<16xf32>> 
          %206 = llvm.insertvalue %190, %205[15] : !llvm.array<16 x vector<16xf32>> 
          %207 = llvm.add %50, %25 : i64
          llvm.br ^bb3(%207, %206 : i64, !llvm.array<16 x vector<16xf32>>)
        ^bb5:  // pred: ^bb3
          %208 = llvm.extractvalue %51[0] : !llvm.array<16 x vector<16xf32>> 
          %209 = llvm.mul %46, %8 : i64
          %210 = llvm.mul %48, %2 : i64
          %211 = llvm.add %209, %210 : i64
          %212 = llvm.mul %27, %7 : i64
          %213 = llvm.add %211, %212 : i64
          %214 = llvm.add %213, %27 : i64
          %215 = llvm.getelementptr %45[%214] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %208, %215 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %216 = llvm.extractvalue %51[1] : !llvm.array<16 x vector<16xf32>> 
          %217 = llvm.mul %25, %7 : i64
          %218 = llvm.add %211, %217 : i64
          %219 = llvm.add %218, %27 : i64
          %220 = llvm.getelementptr %45[%219] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %216, %220 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %221 = llvm.extractvalue %51[2] : !llvm.array<16 x vector<16xf32>> 
          %222 = llvm.mul %22, %7 : i64
          %223 = llvm.add %211, %222 : i64
          %224 = llvm.add %223, %27 : i64
          %225 = llvm.getelementptr %45[%224] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %221, %225 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %226 = llvm.extractvalue %51[3] : !llvm.array<16 x vector<16xf32>> 
          %227 = llvm.mul %21, %7 : i64
          %228 = llvm.add %211, %227 : i64
          %229 = llvm.add %228, %27 : i64
          %230 = llvm.getelementptr %45[%229] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %226, %230 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %231 = llvm.extractvalue %51[4] : !llvm.array<16 x vector<16xf32>> 
          %232 = llvm.mul %20, %7 : i64
          %233 = llvm.add %211, %232 : i64
          %234 = llvm.add %233, %27 : i64
          %235 = llvm.getelementptr %45[%234] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %231, %235 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %236 = llvm.extractvalue %51[5] : !llvm.array<16 x vector<16xf32>> 
          %237 = llvm.mul %19, %7 : i64
          %238 = llvm.add %211, %237 : i64
          %239 = llvm.add %238, %27 : i64
          %240 = llvm.getelementptr %45[%239] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %236, %240 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %241 = llvm.extractvalue %51[6] : !llvm.array<16 x vector<16xf32>> 
          %242 = llvm.mul %18, %7 : i64
          %243 = llvm.add %211, %242 : i64
          %244 = llvm.add %243, %27 : i64
          %245 = llvm.getelementptr %45[%244] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %241, %245 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %246 = llvm.extractvalue %51[7] : !llvm.array<16 x vector<16xf32>> 
          %247 = llvm.mul %17, %7 : i64
          %248 = llvm.add %211, %247 : i64
          %249 = llvm.add %248, %27 : i64
          %250 = llvm.getelementptr %45[%249] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %246, %250 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %251 = llvm.extractvalue %51[8] : !llvm.array<16 x vector<16xf32>> 
          %252 = llvm.mul %24, %7 : i64
          %253 = llvm.add %211, %252 : i64
          %254 = llvm.add %253, %27 : i64
          %255 = llvm.getelementptr %45[%254] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %251, %255 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %256 = llvm.extractvalue %51[9] : !llvm.array<16 x vector<16xf32>> 
          %257 = llvm.mul %16, %7 : i64
          %258 = llvm.add %211, %257 : i64
          %259 = llvm.add %258, %27 : i64
          %260 = llvm.getelementptr %45[%259] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %256, %260 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %261 = llvm.extractvalue %51[10] : !llvm.array<16 x vector<16xf32>> 
          %262 = llvm.mul %15, %7 : i64
          %263 = llvm.add %211, %262 : i64
          %264 = llvm.add %263, %27 : i64
          %265 = llvm.getelementptr %45[%264] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %261, %265 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %266 = llvm.extractvalue %51[11] : !llvm.array<16 x vector<16xf32>> 
          %267 = llvm.mul %14, %7 : i64
          %268 = llvm.add %211, %267 : i64
          %269 = llvm.add %268, %27 : i64
          %270 = llvm.getelementptr %45[%269] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %266, %270 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %271 = llvm.extractvalue %51[12] : !llvm.array<16 x vector<16xf32>> 
          %272 = llvm.mul %13, %7 : i64
          %273 = llvm.add %211, %272 : i64
          %274 = llvm.add %273, %27 : i64
          %275 = llvm.getelementptr %45[%274] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %271, %275 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %276 = llvm.extractvalue %51[13] : !llvm.array<16 x vector<16xf32>> 
          %277 = llvm.mul %12, %7 : i64
          %278 = llvm.add %211, %277 : i64
          %279 = llvm.add %278, %27 : i64
          %280 = llvm.getelementptr %45[%279] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %276, %280 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %281 = llvm.extractvalue %51[14] : !llvm.array<16 x vector<16xf32>> 
          %282 = llvm.mul %11, %7 : i64
          %283 = llvm.add %211, %282 : i64
          %284 = llvm.add %283, %27 : i64
          %285 = llvm.getelementptr %45[%284] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %281, %285 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %286 = llvm.extractvalue %51[15] : !llvm.array<16 x vector<16xf32>> 
          %287 = llvm.mul %10, %7 : i64
          %288 = llvm.add %211, %287 : i64
          %289 = llvm.add %288, %27 : i64
          %290 = llvm.getelementptr %45[%289] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %286, %290 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %291 = llvm.add %48, %25 : i64
          llvm.br ^bb2(%291 : i64)
        ^bb6:  // pred: ^bb2
          %292 = llvm.add %46, %25 : i64
          llvm.br ^bb1(%292 : i64)
        ^bb7:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  hal.executable private @matmul_dispatch_3 {
    hal.executable.variant public @embedded_elf_x86_64 target(<"llvm-cpu", "embedded-elf-x86_64", {cpu = "emeraldrapids", cpu_features = "+64bit,+adx,+aes,-amx-avx512,+amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,+amx-int8,-amx-movrs,-amx-tf32,+amx-tile,+avx,-avx10.1,-avx10.2,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,-avx512vp2intersect,+avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,+cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,-hreset,+invpcid,-kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,-pconfig,-pku,+popcnt,-ppx,-prefetchi,+prfchw,-ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,+rtm,+sahf,+serialize,-sgx,+sha,-sha512,-shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,+tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,-waitpkg,+wbnoinvd,-widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf", ukernels = "none"}>) {
      hal.executable.export public @matmul_dispatch_3_unpack_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %c16 = arith.constant 16 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c16, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @matmul_dispatch_3_unpack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(128 : index) : i64
          %2 = llvm.mlir.constant(true) : i1
          %3 = llvm.mlir.constant(2048 : index) : i64
          %4 = llvm.mlir.constant(256 : index) : i64
          %5 = llvm.mlir.constant(8 : i64) : i64
          %6 = llvm.mlir.constant(32 : i64) : i64
          %7 = llvm.mlir.constant(-1 : index) : i64
          %8 = llvm.mlir.constant(15 : index) : i64
          %9 = llvm.mlir.constant(14 : index) : i64
          %10 = llvm.mlir.constant(13 : index) : i64
          %11 = llvm.mlir.constant(12 : index) : i64
          %12 = llvm.mlir.constant(11 : index) : i64
          %13 = llvm.mlir.constant(10 : index) : i64
          %14 = llvm.mlir.constant(9 : index) : i64
          %15 = llvm.mlir.constant(8 : index) : i64
          %16 = llvm.mlir.constant(7 : index) : i64
          %17 = llvm.mlir.constant(6 : index) : i64
          %18 = llvm.mlir.constant(5 : index) : i64
          %19 = llvm.mlir.constant(4 : index) : i64
          %20 = llvm.mlir.constant(3 : index) : i64
          %21 = llvm.mlir.constant(2 : index) : i64
          %22 = llvm.mlir.constant(1 : index) : i64
          %23 = llvm.mlir.constant(64 : index) : i64
          %24 = llvm.mlir.constant(16 : index) : i64
          %25 = llvm.mlir.constant(131072 : index) : i64
          %26 = llvm.mlir.constant(0 : index) : i64
          %27 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %28 = llvm.extractvalue %27[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %29 = llvm.load %28 : !llvm.ptr -> !llvm.ptr
          %30 = llvm.mul %25, %5 : i64
          %31 = llvm.udiv %30, %6 : i64
          %32 = llvm.getelementptr %29[%31] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %2 ["align"(%32, %23 : !llvm.ptr, i64)] : i1
          %33 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %34 = llvm.extractvalue %33[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %35 = llvm.getelementptr %34[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %36 = llvm.load %35 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %2 ["align"(%36, %23 : !llvm.ptr, i64)] : i1
          %37 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %38 = llvm.extractvalue %37[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %39 = llvm.zext %38 : i32 to i64
          %40 = llvm.sdiv %39, %21 : i64
          %41 = llvm.mul %40, %21 : i64
          %42 = llvm.icmp "ne" %39, %41 : i64
          %43 = llvm.icmp "slt" %39, %26 : i64
          %44 = llvm.and %42, %43 : i1
          %45 = llvm.add %40, %7 : i64
          %46 = llvm.select %44, %45, %40 : i1, i64
          %47 = llvm.srem %39, %21 : i64
          %48 = llvm.icmp "slt" %47, %26 : i64
          %49 = llvm.add %47, %21 overflow<nsw> : i64
          %50 = llvm.select %48, %49, %47 : i1, i64
          %51 = llvm.mul %46, %24 overflow<nsw> : i64
          %52 = llvm.mul %50, %23 overflow<nsw> : i64
          %53 = llvm.icmp "slt" %51, %26 : i64
          %54 = llvm.sub %7, %51 : i64
          %55 = llvm.select %53, %54, %51 : i1, i64
          %56 = llvm.sdiv %55, %24 : i64
          %57 = llvm.sub %7, %56 : i64
          %58 = llvm.select %53, %57, %56 : i1, i64
          %59 = llvm.icmp "slt" %52, %26 : i64
          %60 = llvm.sub %7, %52 : i64
          %61 = llvm.select %59, %60, %52 : i1, i64
          %62 = llvm.sdiv %61, %24 : i64
          %63 = llvm.sub %7, %62 : i64
          %64 = llvm.select %59, %63, %62 : i1, i64
          llvm.br ^bb1(%26 : i64)
        ^bb1(%65: i64):  // 2 preds: ^bb0, ^bb2
          %66 = llvm.icmp "slt" %65, %23 : i64
          llvm.cond_br %66, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %67 = llvm.icmp "slt" %65, %26 : i64
          %68 = llvm.sub %7, %65 : i64
          %69 = llvm.select %67, %68, %65 : i1, i64
          %70 = llvm.sdiv %69, %24 : i64
          %71 = llvm.sub %7, %70 : i64
          %72 = llvm.select %67, %71, %70 : i1, i64
          %73 = llvm.add %72, %64 : i64
          %74 = llvm.mul %58, %3 : i64
          %75 = llvm.mul %73, %4 : i64
          %76 = llvm.add %74, %75 : i64
          %77 = llvm.mul %26, %24 : i64
          %78 = llvm.add %76, %77 : i64
          %79 = llvm.add %78, %26 : i64
          %80 = llvm.getelementptr %32[%79] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %81 = llvm.load %80 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %82 = llvm.mul %22, %24 : i64
          %83 = llvm.add %76, %82 : i64
          %84 = llvm.add %83, %26 : i64
          %85 = llvm.getelementptr %32[%84] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %86 = llvm.load %85 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %87 = llvm.mul %21, %24 : i64
          %88 = llvm.add %76, %87 : i64
          %89 = llvm.add %88, %26 : i64
          %90 = llvm.getelementptr %32[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %91 = llvm.load %90 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %92 = llvm.mul %20, %24 : i64
          %93 = llvm.add %76, %92 : i64
          %94 = llvm.add %93, %26 : i64
          %95 = llvm.getelementptr %32[%94] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %96 = llvm.load %95 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %97 = llvm.mul %19, %24 : i64
          %98 = llvm.add %76, %97 : i64
          %99 = llvm.add %98, %26 : i64
          %100 = llvm.getelementptr %32[%99] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %101 = llvm.load %100 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %102 = llvm.mul %18, %24 : i64
          %103 = llvm.add %76, %102 : i64
          %104 = llvm.add %103, %26 : i64
          %105 = llvm.getelementptr %32[%104] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %106 = llvm.load %105 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %107 = llvm.mul %17, %24 : i64
          %108 = llvm.add %76, %107 : i64
          %109 = llvm.add %108, %26 : i64
          %110 = llvm.getelementptr %32[%109] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %111 = llvm.load %110 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %112 = llvm.mul %16, %24 : i64
          %113 = llvm.add %76, %112 : i64
          %114 = llvm.add %113, %26 : i64
          %115 = llvm.getelementptr %32[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %116 = llvm.load %115 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %117 = llvm.mul %15, %24 : i64
          %118 = llvm.add %76, %117 : i64
          %119 = llvm.add %118, %26 : i64
          %120 = llvm.getelementptr %32[%119] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %121 = llvm.load %120 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %122 = llvm.mul %14, %24 : i64
          %123 = llvm.add %76, %122 : i64
          %124 = llvm.add %123, %26 : i64
          %125 = llvm.getelementptr %32[%124] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %126 = llvm.load %125 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %127 = llvm.mul %13, %24 : i64
          %128 = llvm.add %76, %127 : i64
          %129 = llvm.add %128, %26 : i64
          %130 = llvm.getelementptr %32[%129] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %131 = llvm.load %130 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %132 = llvm.mul %12, %24 : i64
          %133 = llvm.add %76, %132 : i64
          %134 = llvm.add %133, %26 : i64
          %135 = llvm.getelementptr %32[%134] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %136 = llvm.load %135 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %137 = llvm.mul %11, %24 : i64
          %138 = llvm.add %76, %137 : i64
          %139 = llvm.add %138, %26 : i64
          %140 = llvm.getelementptr %32[%139] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %141 = llvm.load %140 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %142 = llvm.mul %10, %24 : i64
          %143 = llvm.add %76, %142 : i64
          %144 = llvm.add %143, %26 : i64
          %145 = llvm.getelementptr %32[%144] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %146 = llvm.load %145 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %147 = llvm.mul %9, %24 : i64
          %148 = llvm.add %76, %147 : i64
          %149 = llvm.add %148, %26 : i64
          %150 = llvm.getelementptr %32[%149] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %151 = llvm.load %150 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %152 = llvm.mul %8, %24 : i64
          %153 = llvm.add %76, %152 : i64
          %154 = llvm.add %153, %26 : i64
          %155 = llvm.getelementptr %32[%154] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %156 = llvm.load %155 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %157 = llvm.add %52, %65 : i64
          %158 = llvm.mul %51, %1 : i64
          %159 = llvm.add %158, %157 : i64
          %160 = llvm.getelementptr %36[%159] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %81, %160 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %161 = llvm.add %51, %22 : i64
          %162 = llvm.mul %161, %1 : i64
          %163 = llvm.add %162, %157 : i64
          %164 = llvm.getelementptr %36[%163] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %86, %164 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %165 = llvm.add %51, %21 : i64
          %166 = llvm.mul %165, %1 : i64
          %167 = llvm.add %166, %157 : i64
          %168 = llvm.getelementptr %36[%167] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %91, %168 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %169 = llvm.add %51, %20 : i64
          %170 = llvm.mul %169, %1 : i64
          %171 = llvm.add %170, %157 : i64
          %172 = llvm.getelementptr %36[%171] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %96, %172 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %173 = llvm.add %51, %19 : i64
          %174 = llvm.mul %173, %1 : i64
          %175 = llvm.add %174, %157 : i64
          %176 = llvm.getelementptr %36[%175] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %101, %176 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %177 = llvm.add %51, %18 : i64
          %178 = llvm.mul %177, %1 : i64
          %179 = llvm.add %178, %157 : i64
          %180 = llvm.getelementptr %36[%179] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %106, %180 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %181 = llvm.add %51, %17 : i64
          %182 = llvm.mul %181, %1 : i64
          %183 = llvm.add %182, %157 : i64
          %184 = llvm.getelementptr %36[%183] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %111, %184 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %185 = llvm.add %51, %16 : i64
          %186 = llvm.mul %185, %1 : i64
          %187 = llvm.add %186, %157 : i64
          %188 = llvm.getelementptr %36[%187] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %116, %188 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %189 = llvm.add %51, %15 : i64
          %190 = llvm.mul %189, %1 : i64
          %191 = llvm.add %190, %157 : i64
          %192 = llvm.getelementptr %36[%191] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %121, %192 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %193 = llvm.add %51, %14 : i64
          %194 = llvm.mul %193, %1 : i64
          %195 = llvm.add %194, %157 : i64
          %196 = llvm.getelementptr %36[%195] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %126, %196 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %197 = llvm.add %51, %13 : i64
          %198 = llvm.mul %197, %1 : i64
          %199 = llvm.add %198, %157 : i64
          %200 = llvm.getelementptr %36[%199] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %131, %200 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %201 = llvm.add %51, %12 : i64
          %202 = llvm.mul %201, %1 : i64
          %203 = llvm.add %202, %157 : i64
          %204 = llvm.getelementptr %36[%203] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %136, %204 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %205 = llvm.add %51, %11 : i64
          %206 = llvm.mul %205, %1 : i64
          %207 = llvm.add %206, %157 : i64
          %208 = llvm.getelementptr %36[%207] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %141, %208 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %209 = llvm.add %51, %10 : i64
          %210 = llvm.mul %209, %1 : i64
          %211 = llvm.add %210, %157 : i64
          %212 = llvm.getelementptr %36[%211] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %146, %212 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %213 = llvm.add %51, %9 : i64
          %214 = llvm.mul %213, %1 : i64
          %215 = llvm.add %214, %157 : i64
          %216 = llvm.getelementptr %36[%215] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %151, %216 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %217 = llvm.add %51, %8 : i64
          %218 = llvm.mul %217, %1 : i64
          %219 = llvm.add %218, %157 : i64
          %220 = llvm.getelementptr %36[%219] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %156, %220 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %221 = llvm.add %65, %24 : i64
          llvm.br ^bb1(%221 : i64)
        ^bb3:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<128x128xf32>, %input1: tensor<128x128xf32>) -> (%output0: tensor<128x128xf32>)"}} {
    %c196608 = arith.constant 196608 : index
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
    %result_0, %result_timepoint_1 = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<transient>{%c196608} => !stream.timepoint
    %2 = stream.timepoint.join max(%result_timepoint, %result_timepoint_1) => !stream.timepoint
    %3 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%2) => with(%0 as %arg2: !stream.resource<external>{%c65536}, %1 as %arg3: !stream.resource<external>{%c65536}, %result as %arg4: !stream.resource<external>{%c65536}, %result_0 as %arg5: !stream.resource<transient>{%c196608}) {
      stream.cmd.concurrent {
        stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_pack_f32 {
          ro %arg2[%c0 for %c65536] : !stream.resource<external>{%c65536},
          wo %arg5[%c0 for %c196608] : !stream.resource<transient>{%c196608}
        }
        stream.cmd.dispatch @matmul_dispatch_1::@embedded_elf_x86_64::@matmul_dispatch_1_pack_f32 {
          ro %arg3[%c0 for %c65536] : !stream.resource<external>{%c65536},
          wo %arg5[%c0 for %c196608] : !stream.resource<transient>{%c196608}
        }
      }
      stream.cmd.dispatch @matmul_dispatch_2::@embedded_elf_x86_64::@matmul_dispatch_2_mmt4d_8x8x128x16x16x1_f32 {
        ro %arg5[%c0 for %c196608] : !stream.resource<transient>{%c196608},
        wo %arg5[%c0 for %c196608] : !stream.resource<transient>{%c196608}
      }
      stream.cmd.dispatch @matmul_dispatch_3::@embedded_elf_x86_64::@matmul_dispatch_3_unpack_f32 {
        ro %arg5[%c0 for %c196608] : !stream.resource<transient>{%c196608},
        wo %arg4[%c0 for %c65536] : !stream.resource<external>{%c65536}
      }
    } => !stream.timepoint
    %4 = stream.resource.dealloca on(#hal.device.affinity<@__device_0>) await(%3) => %result_0 : !stream.resource<transient>{%c196608} => !stream.timepoint
    %5 = stream.timepoint.await %4 => %result : !stream.resource<external>{%c65536}
    %6 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %5 : tensor<128x128xf32> in !stream.resource<external>{%c65536} -> !hal.buffer_view
    util.return %6 : !hal.buffer_view
  }
}