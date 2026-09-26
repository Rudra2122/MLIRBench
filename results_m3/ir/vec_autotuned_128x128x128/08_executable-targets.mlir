module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-arm_64", {cpu = "apple-m3", cpu_features = "+v8.6a,+aes,+bf16,+complxnum,+crc,+dotprod,+fp-armv8,+fp16fml,+fpac,+fullfp16,+hcx,+i8mm,+jsconv,+lse,+neon,+pauth,+perfmon,+ras,+rcpc,+rdm,+sha2,+sha3,+ssbs,+reserve-x18", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "arm64-unknown-unknown-eabi-elf"}>]> : !hal.device
  hal.executable private @matmul_dispatch_0 {
    hal.executable.variant public @embedded_elf_arm_64 target(<"llvm-cpu", "embedded-elf-arm_64", {cpu = "apple-m3", cpu_features = "+v8.6a,+aes,+bf16,+complxnum,+crc,+dotprod,+fp-armv8,+fp16fml,+fpac,+fullfp16,+hcx,+i8mm,+jsconv,+lse,+neon,+pauth,+perfmon,+ras,+rcpc,+rdm,+sha2,+sha3,+ssbs,+reserve-x18", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "arm64-unknown-unknown-eabi-elf"}>) {
      hal.executable.export public @matmul_dispatch_0_matmul_128x128x128_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %c8 = arith.constant 8 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c8, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32", llvm.target_triple = "arm64-unknown-unknown-eabi-elf"} {
        llvm.func @matmul_dispatch_0_matmul_128x128x128_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<16xf32>
          %2 = llvm.mlir.constant(64 : index) : i64
          %3 = llvm.mlir.constant(true) : i1
          %4 = llvm.mlir.poison : !llvm.array<4 x vector<16xf32>>
          %5 = llvm.mlir.constant(3 : index) : i64
          %6 = llvm.mlir.constant(1 : index) : i64
          %7 = llvm.mlir.constant(16 : index) : i64
          %8 = llvm.mlir.constant(dense<0.000000e+00> : vector<4x16xf32>) : !llvm.array<4 x vector<16xf32>>
          %9 = llvm.mlir.constant(4 : index) : i64
          %10 = llvm.mlir.constant(2 : index) : i64
          %11 = llvm.mlir.constant(128 : index) : i64
          %12 = llvm.mlir.constant(0 : index) : i64
          %13 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %14 = llvm.extractvalue %13[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %15 = llvm.load %14 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %3 ["align"(%15, %2 : !llvm.ptr, i64)] : i1
          %16 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %17 = llvm.extractvalue %16[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %18 = llvm.getelementptr %17[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %19 = llvm.load %18 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %3 ["align"(%19, %2 : !llvm.ptr, i64)] : i1
          %20 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %21 = llvm.extractvalue %20[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %22 = llvm.getelementptr %21[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %23 = llvm.load %22 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %3 ["align"(%23, %2 : !llvm.ptr, i64)] : i1
          %24 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %25 = llvm.extractvalue %24[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %26 = llvm.zext %25 : i32 to i64
          %27 = llvm.mul %26, %7 overflow<nsw> : i64
          llvm.br ^bb1(%12 : i64)
        ^bb1(%28: i64):  // 2 preds: ^bb0, ^bb4
          %29 = llvm.icmp "slt" %28, %11 : i64
          llvm.cond_br %29, ^bb2(%12, %8 : i64, !llvm.array<4 x vector<16xf32>>), ^bb5
        ^bb2(%30: i64, %31: !llvm.array<4 x vector<16xf32>>):  // 2 preds: ^bb1, ^bb3
          %32 = llvm.icmp "slt" %30, %11 : i64
          llvm.cond_br %32, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %33 = llvm.mul %30, %11 : i64
          %34 = llvm.add %33, %27 : i64
          %35 = llvm.getelementptr %19[%34] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %36 = llvm.load %35 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %37 = llvm.add %30, %6 : i64
          %38 = llvm.mul %37, %11 : i64
          %39 = llvm.add %38, %27 : i64
          %40 = llvm.getelementptr %19[%39] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %41 = llvm.load %40 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %42 = llvm.mul %28, %11 overflow<nsw, nuw> : i64
          %43 = llvm.add %42, %30 overflow<nsw, nuw> : i64
          %44 = llvm.getelementptr inbounds|nuw %15[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %45 = llvm.load %44 : !llvm.ptr -> f32
          %46 = llvm.insertelement %45, %1[%0 : i32] : vector<16xf32>
          %47 = llvm.shufflevector %46, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %48 = llvm.extractvalue %31[0] : !llvm.array<4 x vector<16xf32>> 
          %49 = llvm.intr.fmuladd(%47, %36, %48) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %50 = llvm.add %28, %6 : i64
          %51 = llvm.mul %50, %11 overflow<nsw, nuw> : i64
          %52 = llvm.add %51, %30 overflow<nsw, nuw> : i64
          %53 = llvm.getelementptr inbounds|nuw %15[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %54 = llvm.load %53 : !llvm.ptr -> f32
          %55 = llvm.insertelement %54, %1[%0 : i32] : vector<16xf32>
          %56 = llvm.shufflevector %55, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %57 = llvm.extractvalue %31[1] : !llvm.array<4 x vector<16xf32>> 
          %58 = llvm.intr.fmuladd(%56, %36, %57) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %59 = llvm.add %28, %10 : i64
          %60 = llvm.mul %59, %11 overflow<nsw, nuw> : i64
          %61 = llvm.add %60, %30 overflow<nsw, nuw> : i64
          %62 = llvm.getelementptr inbounds|nuw %15[%61] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %63 = llvm.load %62 : !llvm.ptr -> f32
          %64 = llvm.insertelement %63, %1[%0 : i32] : vector<16xf32>
          %65 = llvm.shufflevector %64, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %66 = llvm.extractvalue %31[2] : !llvm.array<4 x vector<16xf32>> 
          %67 = llvm.intr.fmuladd(%65, %36, %66) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %68 = llvm.add %28, %5 : i64
          %69 = llvm.mul %68, %11 overflow<nsw, nuw> : i64
          %70 = llvm.add %69, %30 overflow<nsw, nuw> : i64
          %71 = llvm.getelementptr inbounds|nuw %15[%70] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %72 = llvm.load %71 : !llvm.ptr -> f32
          %73 = llvm.insertelement %72, %1[%0 : i32] : vector<16xf32>
          %74 = llvm.shufflevector %73, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %75 = llvm.extractvalue %31[3] : !llvm.array<4 x vector<16xf32>> 
          %76 = llvm.intr.fmuladd(%74, %36, %75) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %77 = llvm.add %42, %37 overflow<nsw, nuw> : i64
          %78 = llvm.getelementptr inbounds|nuw %15[%77] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %79 = llvm.load %78 : !llvm.ptr -> f32
          %80 = llvm.insertelement %79, %1[%0 : i32] : vector<16xf32>
          %81 = llvm.shufflevector %80, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %82 = llvm.intr.fmuladd(%81, %41, %49) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %83 = llvm.add %51, %37 overflow<nsw, nuw> : i64
          %84 = llvm.getelementptr inbounds|nuw %15[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %85 = llvm.load %84 : !llvm.ptr -> f32
          %86 = llvm.insertelement %85, %1[%0 : i32] : vector<16xf32>
          %87 = llvm.shufflevector %86, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %88 = llvm.intr.fmuladd(%87, %41, %58) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %89 = llvm.add %60, %37 overflow<nsw, nuw> : i64
          %90 = llvm.getelementptr inbounds|nuw %15[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %91 = llvm.load %90 : !llvm.ptr -> f32
          %92 = llvm.insertelement %91, %1[%0 : i32] : vector<16xf32>
          %93 = llvm.shufflevector %92, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %94 = llvm.intr.fmuladd(%93, %41, %67) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %95 = llvm.add %69, %37 overflow<nsw, nuw> : i64
          %96 = llvm.getelementptr inbounds|nuw %15[%95] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %97 = llvm.load %96 : !llvm.ptr -> f32
          %98 = llvm.insertelement %97, %1[%0 : i32] : vector<16xf32>
          %99 = llvm.shufflevector %98, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %100 = llvm.intr.fmuladd(%99, %41, %76) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %101 = llvm.insertvalue %82, %4[0] : !llvm.array<4 x vector<16xf32>> 
          %102 = llvm.insertvalue %88, %101[1] : !llvm.array<4 x vector<16xf32>> 
          %103 = llvm.insertvalue %94, %102[2] : !llvm.array<4 x vector<16xf32>> 
          %104 = llvm.insertvalue %100, %103[3] : !llvm.array<4 x vector<16xf32>> 
          %105 = llvm.add %30, %10 : i64
          llvm.br ^bb2(%105, %104 : i64, !llvm.array<4 x vector<16xf32>>)
        ^bb4:  // pred: ^bb2
          %106 = llvm.extractvalue %31[0] : !llvm.array<4 x vector<16xf32>> 
          %107 = llvm.mul %28, %11 : i64
          %108 = llvm.add %107, %27 : i64
          %109 = llvm.getelementptr %23[%108] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %106, %109 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %110 = llvm.add %28, %6 : i64
          %111 = llvm.extractvalue %31[1] : !llvm.array<4 x vector<16xf32>> 
          %112 = llvm.mul %110, %11 : i64
          %113 = llvm.add %112, %27 : i64
          %114 = llvm.getelementptr %23[%113] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %111, %114 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %115 = llvm.add %28, %10 : i64
          %116 = llvm.extractvalue %31[2] : !llvm.array<4 x vector<16xf32>> 
          %117 = llvm.mul %115, %11 : i64
          %118 = llvm.add %117, %27 : i64
          %119 = llvm.getelementptr %23[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %116, %119 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %120 = llvm.add %28, %5 : i64
          %121 = llvm.extractvalue %31[3] : !llvm.array<4 x vector<16xf32>> 
          %122 = llvm.mul %120, %11 : i64
          %123 = llvm.add %122, %27 : i64
          %124 = llvm.getelementptr %23[%123] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %121, %124 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %125 = llvm.add %28, %9 : i64
          llvm.br ^bb1(%125 : i64)
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