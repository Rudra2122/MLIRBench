module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-arm_64", {cpu = "apple-m3", cpu_features = "+v8.6a,+aes,+bf16,+complxnum,+crc,+dotprod,+fp-armv8,+fp16fml,+fpac,+fullfp16,+hcx,+i8mm,+jsconv,+lse,+neon,+pauth,+perfmon,+ras,+rcpc,+rdm,+sha2,+sha3,+ssbs,+reserve-x18", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "arm64-unknown-unknown-eabi-elf"}>]> : !hal.device
  hal.executable private @matmul_dispatch_0 {
    hal.executable.variant public @embedded_elf_arm_64 target(<"llvm-cpu", "embedded-elf-arm_64", {cpu = "apple-m3", cpu_features = "+v8.6a,+aes,+bf16,+complxnum,+crc,+dotprod,+fp-armv8,+fp16fml,+fpac,+fullfp16,+hcx,+i8mm,+jsconv,+lse,+neon,+pauth,+perfmon,+ras,+rcpc,+rdm,+sha2,+sha3,+ssbs,+reserve-x18", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "arm64-unknown-unknown-eabi-elf"}>) {
      hal.executable.export public @matmul_dispatch_0_matmul_128x128x128_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %c16 = arith.constant 16 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c16, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32", llvm.target_triple = "arm64-unknown-unknown-eabi-elf"} {
        llvm.func @matmul_dispatch_0_matmul_128x128x128_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<8xf32>
          %2 = llvm.mlir.constant(true) : i1
          %3 = llvm.mlir.poison : !llvm.array<8 x vector<8xf32>>
          %4 = llvm.mlir.constant(-1 : index) : i64
          %5 = llvm.mlir.constant(7 : index) : i64
          %6 = llvm.mlir.constant(6 : index) : i64
          %7 = llvm.mlir.constant(5 : index) : i64
          %8 = llvm.mlir.constant(3 : index) : i64
          %9 = llvm.mlir.constant(1 : index) : i64
          %10 = llvm.mlir.constant(2 : index) : i64
          %11 = llvm.mlir.constant(dense<0.000000e+00> : vector<8x8xf32>) : !llvm.array<8 x vector<8xf32>>
          %12 = llvm.mlir.constant(8 : index) : i64
          %13 = llvm.mlir.constant(64 : index) : i64
          %14 = llvm.mlir.constant(16 : index) : i64
          %15 = llvm.mlir.constant(4 : index) : i64
          %16 = llvm.mlir.constant(128 : index) : i64
          %17 = llvm.mlir.constant(0 : index) : i64
          %18 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %19 = llvm.extractvalue %18[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %20 = llvm.load %19 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %2 ["align"(%20, %13 : !llvm.ptr, i64)] : i1
          %21 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %22 = llvm.extractvalue %21[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %23 = llvm.getelementptr %22[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %24 = llvm.load %23 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %2 ["align"(%24, %13 : !llvm.ptr, i64)] : i1
          %25 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %26 = llvm.extractvalue %25[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %27 = llvm.getelementptr %26[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %28 = llvm.load %27 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %2 ["align"(%28, %13 : !llvm.ptr, i64)] : i1
          %29 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %30 = llvm.extractvalue %29[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %31 = llvm.zext %30 : i32 to i64
          %32 = llvm.sdiv %31, %10 : i64
          %33 = llvm.mul %32, %10 : i64
          %34 = llvm.icmp "ne" %31, %33 : i64
          %35 = llvm.icmp "slt" %31, %17 : i64
          %36 = llvm.and %34, %35 : i1
          %37 = llvm.add %32, %4 : i64
          %38 = llvm.select %36, %37, %32 : i1, i64
          %39 = llvm.srem %31, %10 : i64
          %40 = llvm.icmp "slt" %39, %17 : i64
          %41 = llvm.add %39, %10 overflow<nsw> : i64
          %42 = llvm.select %40, %41, %39 : i1, i64
          %43 = llvm.mul %38, %14 overflow<nsw> : i64
          %44 = llvm.mul %42, %13 overflow<nsw> : i64
          llvm.br ^bb1(%17 : i64)
        ^bb1(%45: i64):  // 2 preds: ^bb0, ^bb7
          %46 = llvm.icmp "slt" %45, %14 : i64
          llvm.cond_br %46, ^bb2(%17 : i64), ^bb8
        ^bb2(%47: i64):  // 2 preds: ^bb1, ^bb6
          %48 = llvm.icmp "slt" %47, %13 : i64
          llvm.cond_br %48, ^bb3, ^bb7
        ^bb3:  // pred: ^bb2
          %49 = llvm.add %47, %44 : i64
          llvm.br ^bb4(%17, %11 : i64, !llvm.array<8 x vector<8xf32>>)
        ^bb4(%50: i64, %51: !llvm.array<8 x vector<8xf32>>):  // 2 preds: ^bb3, ^bb5
          %52 = llvm.icmp "slt" %50, %16 : i64
          llvm.cond_br %52, ^bb5, ^bb6
        ^bb5:  // pred: ^bb4
          %53 = llvm.mul %50, %16 : i64
          %54 = llvm.add %53, %49 : i64
          %55 = llvm.getelementptr %24[%54] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %56 = llvm.load %55 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %57 = llvm.add %50, %9 : i64
          %58 = llvm.mul %57, %16 : i64
          %59 = llvm.add %58, %49 : i64
          %60 = llvm.getelementptr %24[%59] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %61 = llvm.load %60 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %62 = llvm.add %50, %10 : i64
          %63 = llvm.mul %62, %16 : i64
          %64 = llvm.add %63, %49 : i64
          %65 = llvm.getelementptr %24[%64] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %66 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %67 = llvm.add %50, %8 : i64
          %68 = llvm.mul %67, %16 : i64
          %69 = llvm.add %68, %49 : i64
          %70 = llvm.getelementptr %24[%69] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %71 = llvm.load %70 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %72 = llvm.add %45, %43 : i64
          %73 = llvm.mul %72, %16 overflow<nsw, nuw> : i64
          %74 = llvm.add %73, %50 overflow<nsw, nuw> : i64
          %75 = llvm.getelementptr inbounds|nuw %20[%74] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %76 = llvm.load %75 : !llvm.ptr -> f32
          %77 = llvm.insertelement %76, %1[%0 : i32] : vector<8xf32>
          %78 = llvm.shufflevector %77, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %79 = llvm.extractvalue %51[0] : !llvm.array<8 x vector<8xf32>> 
          %80 = llvm.intr.fmuladd(%78, %56, %79) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %81 = llvm.add %72, %9 : i64
          %82 = llvm.mul %81, %16 overflow<nsw, nuw> : i64
          %83 = llvm.add %82, %50 overflow<nsw, nuw> : i64
          %84 = llvm.getelementptr inbounds|nuw %20[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %85 = llvm.load %84 : !llvm.ptr -> f32
          %86 = llvm.insertelement %85, %1[%0 : i32] : vector<8xf32>
          %87 = llvm.shufflevector %86, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %88 = llvm.extractvalue %51[1] : !llvm.array<8 x vector<8xf32>> 
          %89 = llvm.intr.fmuladd(%87, %56, %88) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %90 = llvm.add %72, %10 : i64
          %91 = llvm.mul %90, %16 overflow<nsw, nuw> : i64
          %92 = llvm.add %91, %50 overflow<nsw, nuw> : i64
          %93 = llvm.getelementptr inbounds|nuw %20[%92] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %94 = llvm.load %93 : !llvm.ptr -> f32
          %95 = llvm.insertelement %94, %1[%0 : i32] : vector<8xf32>
          %96 = llvm.shufflevector %95, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %97 = llvm.extractvalue %51[2] : !llvm.array<8 x vector<8xf32>> 
          %98 = llvm.intr.fmuladd(%96, %56, %97) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %99 = llvm.add %72, %8 : i64
          %100 = llvm.mul %99, %16 overflow<nsw, nuw> : i64
          %101 = llvm.add %100, %50 overflow<nsw, nuw> : i64
          %102 = llvm.getelementptr inbounds|nuw %20[%101] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %103 = llvm.load %102 : !llvm.ptr -> f32
          %104 = llvm.insertelement %103, %1[%0 : i32] : vector<8xf32>
          %105 = llvm.shufflevector %104, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %106 = llvm.extractvalue %51[3] : !llvm.array<8 x vector<8xf32>> 
          %107 = llvm.intr.fmuladd(%105, %56, %106) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %108 = llvm.add %72, %15 : i64
          %109 = llvm.mul %108, %16 overflow<nsw, nuw> : i64
          %110 = llvm.add %109, %50 overflow<nsw, nuw> : i64
          %111 = llvm.getelementptr inbounds|nuw %20[%110] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %112 = llvm.load %111 : !llvm.ptr -> f32
          %113 = llvm.insertelement %112, %1[%0 : i32] : vector<8xf32>
          %114 = llvm.shufflevector %113, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %115 = llvm.extractvalue %51[4] : !llvm.array<8 x vector<8xf32>> 
          %116 = llvm.intr.fmuladd(%114, %56, %115) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %117 = llvm.add %72, %7 : i64
          %118 = llvm.mul %117, %16 overflow<nsw, nuw> : i64
          %119 = llvm.add %118, %50 overflow<nsw, nuw> : i64
          %120 = llvm.getelementptr inbounds|nuw %20[%119] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %121 = llvm.load %120 : !llvm.ptr -> f32
          %122 = llvm.insertelement %121, %1[%0 : i32] : vector<8xf32>
          %123 = llvm.shufflevector %122, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %124 = llvm.extractvalue %51[5] : !llvm.array<8 x vector<8xf32>> 
          %125 = llvm.intr.fmuladd(%123, %56, %124) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %126 = llvm.add %72, %6 : i64
          %127 = llvm.mul %126, %16 overflow<nsw, nuw> : i64
          %128 = llvm.add %127, %50 overflow<nsw, nuw> : i64
          %129 = llvm.getelementptr inbounds|nuw %20[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %130 = llvm.load %129 : !llvm.ptr -> f32
          %131 = llvm.insertelement %130, %1[%0 : i32] : vector<8xf32>
          %132 = llvm.shufflevector %131, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %133 = llvm.extractvalue %51[6] : !llvm.array<8 x vector<8xf32>> 
          %134 = llvm.intr.fmuladd(%132, %56, %133) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %135 = llvm.add %72, %5 : i64
          %136 = llvm.mul %135, %16 overflow<nsw, nuw> : i64
          %137 = llvm.add %136, %50 overflow<nsw, nuw> : i64
          %138 = llvm.getelementptr inbounds|nuw %20[%137] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %139 = llvm.load %138 : !llvm.ptr -> f32
          %140 = llvm.insertelement %139, %1[%0 : i32] : vector<8xf32>
          %141 = llvm.shufflevector %140, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %142 = llvm.extractvalue %51[7] : !llvm.array<8 x vector<8xf32>> 
          %143 = llvm.intr.fmuladd(%141, %56, %142) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %144 = llvm.add %73, %57 overflow<nsw, nuw> : i64
          %145 = llvm.getelementptr inbounds|nuw %20[%144] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %146 = llvm.load %145 : !llvm.ptr -> f32
          %147 = llvm.insertelement %146, %1[%0 : i32] : vector<8xf32>
          %148 = llvm.shufflevector %147, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %149 = llvm.intr.fmuladd(%148, %61, %80) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %150 = llvm.add %82, %57 overflow<nsw, nuw> : i64
          %151 = llvm.getelementptr inbounds|nuw %20[%150] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %152 = llvm.load %151 : !llvm.ptr -> f32
          %153 = llvm.insertelement %152, %1[%0 : i32] : vector<8xf32>
          %154 = llvm.shufflevector %153, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %155 = llvm.intr.fmuladd(%154, %61, %89) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %156 = llvm.add %91, %57 overflow<nsw, nuw> : i64
          %157 = llvm.getelementptr inbounds|nuw %20[%156] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %158 = llvm.load %157 : !llvm.ptr -> f32
          %159 = llvm.insertelement %158, %1[%0 : i32] : vector<8xf32>
          %160 = llvm.shufflevector %159, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %161 = llvm.intr.fmuladd(%160, %61, %98) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %162 = llvm.add %100, %57 overflow<nsw, nuw> : i64
          %163 = llvm.getelementptr inbounds|nuw %20[%162] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %164 = llvm.load %163 : !llvm.ptr -> f32
          %165 = llvm.insertelement %164, %1[%0 : i32] : vector<8xf32>
          %166 = llvm.shufflevector %165, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %167 = llvm.intr.fmuladd(%166, %61, %107) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %168 = llvm.add %109, %57 overflow<nsw, nuw> : i64
          %169 = llvm.getelementptr inbounds|nuw %20[%168] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %170 = llvm.load %169 : !llvm.ptr -> f32
          %171 = llvm.insertelement %170, %1[%0 : i32] : vector<8xf32>
          %172 = llvm.shufflevector %171, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %173 = llvm.intr.fmuladd(%172, %61, %116) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %174 = llvm.add %118, %57 overflow<nsw, nuw> : i64
          %175 = llvm.getelementptr inbounds|nuw %20[%174] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %176 = llvm.load %175 : !llvm.ptr -> f32
          %177 = llvm.insertelement %176, %1[%0 : i32] : vector<8xf32>
          %178 = llvm.shufflevector %177, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %179 = llvm.intr.fmuladd(%178, %61, %125) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %180 = llvm.add %127, %57 overflow<nsw, nuw> : i64
          %181 = llvm.getelementptr inbounds|nuw %20[%180] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %182 = llvm.load %181 : !llvm.ptr -> f32
          %183 = llvm.insertelement %182, %1[%0 : i32] : vector<8xf32>
          %184 = llvm.shufflevector %183, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %185 = llvm.intr.fmuladd(%184, %61, %134) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %186 = llvm.add %136, %57 overflow<nsw, nuw> : i64
          %187 = llvm.getelementptr inbounds|nuw %20[%186] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %188 = llvm.load %187 : !llvm.ptr -> f32
          %189 = llvm.insertelement %188, %1[%0 : i32] : vector<8xf32>
          %190 = llvm.shufflevector %189, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %191 = llvm.intr.fmuladd(%190, %61, %143) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %192 = llvm.add %73, %62 overflow<nsw, nuw> : i64
          %193 = llvm.getelementptr inbounds|nuw %20[%192] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %194 = llvm.load %193 : !llvm.ptr -> f32
          %195 = llvm.insertelement %194, %1[%0 : i32] : vector<8xf32>
          %196 = llvm.shufflevector %195, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %197 = llvm.intr.fmuladd(%196, %66, %149) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %198 = llvm.add %82, %62 overflow<nsw, nuw> : i64
          %199 = llvm.getelementptr inbounds|nuw %20[%198] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %200 = llvm.load %199 : !llvm.ptr -> f32
          %201 = llvm.insertelement %200, %1[%0 : i32] : vector<8xf32>
          %202 = llvm.shufflevector %201, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %203 = llvm.intr.fmuladd(%202, %66, %155) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %204 = llvm.add %91, %62 overflow<nsw, nuw> : i64
          %205 = llvm.getelementptr inbounds|nuw %20[%204] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %206 = llvm.load %205 : !llvm.ptr -> f32
          %207 = llvm.insertelement %206, %1[%0 : i32] : vector<8xf32>
          %208 = llvm.shufflevector %207, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %209 = llvm.intr.fmuladd(%208, %66, %161) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %210 = llvm.add %100, %62 overflow<nsw, nuw> : i64
          %211 = llvm.getelementptr inbounds|nuw %20[%210] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %212 = llvm.load %211 : !llvm.ptr -> f32
          %213 = llvm.insertelement %212, %1[%0 : i32] : vector<8xf32>
          %214 = llvm.shufflevector %213, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %215 = llvm.intr.fmuladd(%214, %66, %167) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %216 = llvm.add %109, %62 overflow<nsw, nuw> : i64
          %217 = llvm.getelementptr inbounds|nuw %20[%216] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %218 = llvm.load %217 : !llvm.ptr -> f32
          %219 = llvm.insertelement %218, %1[%0 : i32] : vector<8xf32>
          %220 = llvm.shufflevector %219, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %221 = llvm.intr.fmuladd(%220, %66, %173) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %222 = llvm.add %118, %62 overflow<nsw, nuw> : i64
          %223 = llvm.getelementptr inbounds|nuw %20[%222] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %224 = llvm.load %223 : !llvm.ptr -> f32
          %225 = llvm.insertelement %224, %1[%0 : i32] : vector<8xf32>
          %226 = llvm.shufflevector %225, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %227 = llvm.intr.fmuladd(%226, %66, %179) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %228 = llvm.add %127, %62 overflow<nsw, nuw> : i64
          %229 = llvm.getelementptr inbounds|nuw %20[%228] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %230 = llvm.load %229 : !llvm.ptr -> f32
          %231 = llvm.insertelement %230, %1[%0 : i32] : vector<8xf32>
          %232 = llvm.shufflevector %231, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %233 = llvm.intr.fmuladd(%232, %66, %185) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %234 = llvm.add %136, %62 overflow<nsw, nuw> : i64
          %235 = llvm.getelementptr inbounds|nuw %20[%234] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %236 = llvm.load %235 : !llvm.ptr -> f32
          %237 = llvm.insertelement %236, %1[%0 : i32] : vector<8xf32>
          %238 = llvm.shufflevector %237, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %239 = llvm.intr.fmuladd(%238, %66, %191) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %240 = llvm.add %73, %67 overflow<nsw, nuw> : i64
          %241 = llvm.getelementptr inbounds|nuw %20[%240] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %242 = llvm.load %241 : !llvm.ptr -> f32
          %243 = llvm.insertelement %242, %1[%0 : i32] : vector<8xf32>
          %244 = llvm.shufflevector %243, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %245 = llvm.intr.fmuladd(%244, %71, %197) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %246 = llvm.add %82, %67 overflow<nsw, nuw> : i64
          %247 = llvm.getelementptr inbounds|nuw %20[%246] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %248 = llvm.load %247 : !llvm.ptr -> f32
          %249 = llvm.insertelement %248, %1[%0 : i32] : vector<8xf32>
          %250 = llvm.shufflevector %249, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %251 = llvm.intr.fmuladd(%250, %71, %203) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %252 = llvm.add %91, %67 overflow<nsw, nuw> : i64
          %253 = llvm.getelementptr inbounds|nuw %20[%252] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %254 = llvm.load %253 : !llvm.ptr -> f32
          %255 = llvm.insertelement %254, %1[%0 : i32] : vector<8xf32>
          %256 = llvm.shufflevector %255, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %257 = llvm.intr.fmuladd(%256, %71, %209) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %258 = llvm.add %100, %67 overflow<nsw, nuw> : i64
          %259 = llvm.getelementptr inbounds|nuw %20[%258] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %260 = llvm.load %259 : !llvm.ptr -> f32
          %261 = llvm.insertelement %260, %1[%0 : i32] : vector<8xf32>
          %262 = llvm.shufflevector %261, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %263 = llvm.intr.fmuladd(%262, %71, %215) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %264 = llvm.add %109, %67 overflow<nsw, nuw> : i64
          %265 = llvm.getelementptr inbounds|nuw %20[%264] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %266 = llvm.load %265 : !llvm.ptr -> f32
          %267 = llvm.insertelement %266, %1[%0 : i32] : vector<8xf32>
          %268 = llvm.shufflevector %267, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %269 = llvm.intr.fmuladd(%268, %71, %221) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %270 = llvm.add %118, %67 overflow<nsw, nuw> : i64
          %271 = llvm.getelementptr inbounds|nuw %20[%270] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %272 = llvm.load %271 : !llvm.ptr -> f32
          %273 = llvm.insertelement %272, %1[%0 : i32] : vector<8xf32>
          %274 = llvm.shufflevector %273, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %275 = llvm.intr.fmuladd(%274, %71, %227) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %276 = llvm.add %127, %67 overflow<nsw, nuw> : i64
          %277 = llvm.getelementptr inbounds|nuw %20[%276] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %278 = llvm.load %277 : !llvm.ptr -> f32
          %279 = llvm.insertelement %278, %1[%0 : i32] : vector<8xf32>
          %280 = llvm.shufflevector %279, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %281 = llvm.intr.fmuladd(%280, %71, %233) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %282 = llvm.add %136, %67 overflow<nsw, nuw> : i64
          %283 = llvm.getelementptr inbounds|nuw %20[%282] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %284 = llvm.load %283 : !llvm.ptr -> f32
          %285 = llvm.insertelement %284, %1[%0 : i32] : vector<8xf32>
          %286 = llvm.shufflevector %285, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %287 = llvm.intr.fmuladd(%286, %71, %239) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %288 = llvm.insertvalue %245, %3[0] : !llvm.array<8 x vector<8xf32>> 
          %289 = llvm.insertvalue %251, %288[1] : !llvm.array<8 x vector<8xf32>> 
          %290 = llvm.insertvalue %257, %289[2] : !llvm.array<8 x vector<8xf32>> 
          %291 = llvm.insertvalue %263, %290[3] : !llvm.array<8 x vector<8xf32>> 
          %292 = llvm.insertvalue %269, %291[4] : !llvm.array<8 x vector<8xf32>> 
          %293 = llvm.insertvalue %275, %292[5] : !llvm.array<8 x vector<8xf32>> 
          %294 = llvm.insertvalue %281, %293[6] : !llvm.array<8 x vector<8xf32>> 
          %295 = llvm.insertvalue %287, %294[7] : !llvm.array<8 x vector<8xf32>> 
          %296 = llvm.add %50, %15 : i64
          llvm.br ^bb4(%296, %295 : i64, !llvm.array<8 x vector<8xf32>>)
        ^bb6:  // pred: ^bb4
          %297 = llvm.extractvalue %51[0] : !llvm.array<8 x vector<8xf32>> 
          %298 = llvm.add %43, %45 : i64
          %299 = llvm.mul %298, %16 : i64
          %300 = llvm.add %299, %49 : i64
          %301 = llvm.getelementptr %28[%300] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %297, %301 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %302 = llvm.add %45, %9 : i64
          %303 = llvm.extractvalue %51[1] : !llvm.array<8 x vector<8xf32>> 
          %304 = llvm.add %43, %302 : i64
          %305 = llvm.mul %304, %16 : i64
          %306 = llvm.add %305, %49 : i64
          %307 = llvm.getelementptr %28[%306] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %303, %307 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %308 = llvm.add %45, %10 : i64
          %309 = llvm.extractvalue %51[2] : !llvm.array<8 x vector<8xf32>> 
          %310 = llvm.add %43, %308 : i64
          %311 = llvm.mul %310, %16 : i64
          %312 = llvm.add %311, %49 : i64
          %313 = llvm.getelementptr %28[%312] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %309, %313 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %314 = llvm.add %45, %8 : i64
          %315 = llvm.extractvalue %51[3] : !llvm.array<8 x vector<8xf32>> 
          %316 = llvm.add %43, %314 : i64
          %317 = llvm.mul %316, %16 : i64
          %318 = llvm.add %317, %49 : i64
          %319 = llvm.getelementptr %28[%318] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %315, %319 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %320 = llvm.add %45, %15 : i64
          %321 = llvm.extractvalue %51[4] : !llvm.array<8 x vector<8xf32>> 
          %322 = llvm.add %43, %320 : i64
          %323 = llvm.mul %322, %16 : i64
          %324 = llvm.add %323, %49 : i64
          %325 = llvm.getelementptr %28[%324] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %321, %325 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %326 = llvm.add %45, %7 : i64
          %327 = llvm.extractvalue %51[5] : !llvm.array<8 x vector<8xf32>> 
          %328 = llvm.add %43, %326 : i64
          %329 = llvm.mul %328, %16 : i64
          %330 = llvm.add %329, %49 : i64
          %331 = llvm.getelementptr %28[%330] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %327, %331 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %332 = llvm.add %45, %6 : i64
          %333 = llvm.extractvalue %51[6] : !llvm.array<8 x vector<8xf32>> 
          %334 = llvm.add %43, %332 : i64
          %335 = llvm.mul %334, %16 : i64
          %336 = llvm.add %335, %49 : i64
          %337 = llvm.getelementptr %28[%336] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %333, %337 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %338 = llvm.add %45, %5 : i64
          %339 = llvm.extractvalue %51[7] : !llvm.array<8 x vector<8xf32>> 
          %340 = llvm.add %43, %338 : i64
          %341 = llvm.mul %340, %16 : i64
          %342 = llvm.add %341, %49 : i64
          %343 = llvm.getelementptr %28[%342] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %339, %343 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %344 = llvm.add %47, %12 : i64
          llvm.br ^bb2(%344 : i64)
        ^bb7:  // pred: ^bb2
          %345 = llvm.add %45, %12 : i64
          llvm.br ^bb1(%345 : i64)
        ^bb8:  // pred: ^bb1
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
      stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_arm_64::@matmul_dispatch_0_matmul_128x128x128_f32 {
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