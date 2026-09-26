module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "generic", cpu_features = "", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>]> : !hal.device
  hal.executable private @matmul_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(<"llvm-cpu", "embedded-elf-x86_64", {cpu = "generic", cpu_features = "", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>) {
      hal.executable.export public @matmul_dispatch_0_pack_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %c32 = arith.constant 32 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c32, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @matmul_dispatch_0_pack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(7 : i64) : i64
          %2 = llvm.mlir.constant(6 : i64) : i64
          %3 = llvm.mlir.constant(5 : i64) : i64
          %4 = llvm.mlir.constant(4 : i64) : i64
          %5 = llvm.mlir.constant(3 : i64) : i64
          %6 = llvm.mlir.constant(2 : i64) : i64
          %7 = llvm.mlir.constant(1 : i64) : i64
          %8 = llvm.mlir.poison : vector<8xf32>
          %9 = llvm.mlir.constant(0 : i64) : i64
          %10 = llvm.mlir.constant(1024 : index) : i64
          %11 = llvm.mlir.constant(true) : i1
          %12 = llvm.mlir.constant(128 : index) : i64
          %13 = llvm.mlir.constant(-1 : index) : i64
          %14 = llvm.mlir.constant(7 : index) : i64
          %15 = llvm.mlir.constant(6 : index) : i64
          %16 = llvm.mlir.constant(5 : index) : i64
          %17 = llvm.mlir.constant(4 : index) : i64
          %18 = llvm.mlir.constant(3 : index) : i64
          %19 = llvm.mlir.constant(8 : index) : i64
          %20 = llvm.mlir.constant(2 : index) : i64
          %21 = llvm.mlir.constant(64 : index) : i64
          %22 = llvm.mlir.constant(1 : index) : i64
          %23 = llvm.mlir.constant(0 : index) : i64
          %24 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %25 = llvm.extractvalue %24[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %26 = llvm.load %25 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %11 ["align"(%26, %21 : !llvm.ptr, i64)] : i1
          %27 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %28 = llvm.extractvalue %27[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %29 = llvm.getelementptr %28[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %30 = llvm.load %29 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %11 ["align"(%30, %21 : !llvm.ptr, i64)] : i1
          %31 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %32 = llvm.extractvalue %31[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %33 = llvm.zext %32 : i32 to i64
          %34 = llvm.sdiv %33, %20 : i64
          %35 = llvm.mul %34, %20 : i64
          %36 = llvm.icmp "ne" %33, %35 : i64
          %37 = llvm.icmp "slt" %33, %23 : i64
          %38 = llvm.and %36, %37 : i1
          %39 = llvm.add %34, %13 : i64
          %40 = llvm.select %38, %39, %34 : i1, i64
          %41 = llvm.srem %33, %20 : i64
          %42 = llvm.icmp "slt" %41, %23 : i64
          %43 = llvm.add %41, %20 overflow<nsw> : i64
          %44 = llvm.select %42, %43, %41 : i1, i64
          %45 = llvm.mul %44, %21 overflow<nsw> : i64
          llvm.br ^bb1(%23 : i64)
        ^bb1(%46: i64):  // 2 preds: ^bb0, ^bb2
          %47 = llvm.icmp "slt" %46, %21 : i64
          llvm.cond_br %47, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %48 = llvm.add %46, %45 : i64
          %49 = llvm.mul %40, %19 overflow<nsw> : i64
          %50 = llvm.mul %49, %12 : i64
          %51 = llvm.add %50, %48 : i64
          %52 = llvm.getelementptr %26[%51] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %53 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %54 = llvm.add %49, %22 : i64
          %55 = llvm.mul %54, %12 : i64
          %56 = llvm.add %55, %48 : i64
          %57 = llvm.getelementptr %26[%56] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %58 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %59 = llvm.add %49, %20 : i64
          %60 = llvm.mul %59, %12 : i64
          %61 = llvm.add %60, %48 : i64
          %62 = llvm.getelementptr %26[%61] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %63 = llvm.load %62 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %64 = llvm.add %49, %18 : i64
          %65 = llvm.mul %64, %12 : i64
          %66 = llvm.add %65, %48 : i64
          %67 = llvm.getelementptr %26[%66] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %68 = llvm.load %67 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %69 = llvm.add %49, %17 : i64
          %70 = llvm.mul %69, %12 : i64
          %71 = llvm.add %70, %48 : i64
          %72 = llvm.getelementptr %26[%71] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %73 = llvm.load %72 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %74 = llvm.add %49, %16 : i64
          %75 = llvm.mul %74, %12 : i64
          %76 = llvm.add %75, %48 : i64
          %77 = llvm.getelementptr %26[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %78 = llvm.load %77 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %79 = llvm.add %49, %15 : i64
          %80 = llvm.mul %79, %12 : i64
          %81 = llvm.add %80, %48 : i64
          %82 = llvm.getelementptr %26[%81] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %83 = llvm.load %82 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %84 = llvm.add %49, %14 : i64
          %85 = llvm.mul %84, %12 : i64
          %86 = llvm.add %85, %48 : i64
          %87 = llvm.getelementptr %26[%86] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %88 = llvm.load %87 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %89 = llvm.extractelement %53[%9 : i64] : vector<1xf32>
          %90 = llvm.extractelement %58[%9 : i64] : vector<1xf32>
          %91 = llvm.extractelement %63[%9 : i64] : vector<1xf32>
          %92 = llvm.extractelement %68[%9 : i64] : vector<1xf32>
          %93 = llvm.extractelement %73[%9 : i64] : vector<1xf32>
          %94 = llvm.extractelement %78[%9 : i64] : vector<1xf32>
          %95 = llvm.extractelement %83[%9 : i64] : vector<1xf32>
          %96 = llvm.extractelement %88[%9 : i64] : vector<1xf32>
          %97 = llvm.insertelement %89, %8[%9 : i64] : vector<8xf32>
          %98 = llvm.insertelement %90, %97[%7 : i64] : vector<8xf32>
          %99 = llvm.insertelement %91, %98[%6 : i64] : vector<8xf32>
          %100 = llvm.insertelement %92, %99[%5 : i64] : vector<8xf32>
          %101 = llvm.insertelement %93, %100[%4 : i64] : vector<8xf32>
          %102 = llvm.insertelement %94, %101[%3 : i64] : vector<8xf32>
          %103 = llvm.insertelement %95, %102[%2 : i64] : vector<8xf32>
          %104 = llvm.insertelement %96, %103[%1 : i64] : vector<8xf32>
          %105 = llvm.mul %40, %10 : i64
          %106 = llvm.mul %48, %19 : i64
          %107 = llvm.add %105, %106 : i64
          %108 = llvm.add %107, %23 : i64
          %109 = llvm.add %108, %23 : i64
          %110 = llvm.getelementptr %30[%109] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %104, %110 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %111 = llvm.add %46, %22 : i64
          llvm.br ^bb1(%111 : i64)
        ^bb3:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  hal.executable private @matmul_dispatch_1 {
    hal.executable.variant public @embedded_elf_x86_64 target(<"llvm-cpu", "embedded-elf-x86_64", {cpu = "generic", cpu_features = "", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>) {
      hal.executable.export public @matmul_dispatch_1_pack_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %c64 = arith.constant 64 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c64, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @matmul_dispatch_1_pack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(512 : index) : i64
          %2 = llvm.mlir.constant(8 : i64) : i64
          %3 = llvm.mlir.constant(32 : i64) : i64
          %4 = llvm.mlir.constant(64 : index) : i64
          %5 = llvm.mlir.constant(true) : i1
          %6 = llvm.mlir.constant(128 : index) : i64
          %7 = llvm.mlir.constant(-1 : index) : i64
          %8 = llvm.mlir.constant(8 : index) : i64
          %9 = llvm.mlir.constant(1 : index) : i64
          %10 = llvm.mlir.constant(16 : index) : i64
          %11 = llvm.mlir.constant(4 : index) : i64
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
          %27 = llvm.sdiv %26, %8 : i64
          %28 = llvm.mul %27, %8 : i64
          %29 = llvm.icmp "ne" %26, %28 : i64
          %30 = llvm.icmp "slt" %26, %12 : i64
          %31 = llvm.and %29, %30 : i1
          %32 = llvm.add %27, %7 : i64
          %33 = llvm.select %31, %32, %27 : i1, i64
          %34 = llvm.srem %26, %8 : i64
          %35 = llvm.icmp "slt" %34, %12 : i64
          %36 = llvm.add %34, %8 overflow<nsw> : i64
          %37 = llvm.select %35, %36, %34 : i1, i64
          %38 = llvm.mul %33, %11 overflow<nsw> : i64
          %39 = llvm.mul %37, %10 overflow<nsw> : i64
          %40 = llvm.mul %33, %10 overflow<nsw> : i64
          llvm.br ^bb1(%12 : i64)
        ^bb1(%41: i64):  // 2 preds: ^bb0, ^bb5
          %42 = llvm.icmp "slt" %41, %11 : i64
          llvm.cond_br %42, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %43 = llvm.mul %41, %11 overflow<nsw> : i64
          llvm.br ^bb3(%12 : i64)
        ^bb3(%44: i64):  // 2 preds: ^bb2, ^bb4
          %45 = llvm.icmp "slt" %44, %10 : i64
          llvm.cond_br %45, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %46 = llvm.add %44, %39 : i64
          %47 = llvm.add %43, %40 : i64
          %48 = llvm.mul %46, %6 : i64
          %49 = llvm.add %48, %47 : i64
          %50 = llvm.getelementptr %16[%49] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %51 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> vector<4xf32>
          %52 = llvm.add %38, %41 : i64
          %53 = llvm.mul %52, %1 : i64
          %54 = llvm.mul %46, %11 : i64
          %55 = llvm.add %53, %54 : i64
          %56 = llvm.add %55, %12 : i64
          %57 = llvm.add %56, %12 : i64
          %58 = llvm.getelementptr %23[%57] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %51, %58 {alignment = 4 : i64} : vector<4xf32>, !llvm.ptr
          %59 = llvm.add %44, %9 : i64
          llvm.br ^bb3(%59 : i64)
        ^bb5:  // pred: ^bb3
          %60 = llvm.add %41, %9 : i64
          llvm.br ^bb1(%60 : i64)
        ^bb6:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  hal.executable private @matmul_dispatch_2 {
    hal.executable.variant public @embedded_elf_x86_64 target(<"llvm-cpu", "embedded-elf-x86_64", {cpu = "generic", cpu_features = "", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>) {
      hal.executable.export public @matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        %c1_1 = arith.constant 1 : index
        hal.return %c1, %c1_0, %c1_1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @iree_uk_mmt4d(!llvm.ptr, i64, i64, !llvm.ptr, i64, i64, !llvm.ptr, i64, i64, i64, i64, i64, i32, i32, i32, i32, !llvm.ptr) -> i32 attributes {hal.import.bitcode = true, hal.import.fields = ["processor_data"], llvm.bareptr = true}
        llvm.func @matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(32768 : index) : i64
          %2 = llvm.mlir.constant(16384 : index) : i64
          %3 = llvm.mlir.constant(512 : index) : i64
          %4 = llvm.mlir.constant(1024 : index) : i64
          %5 = llvm.mlir.constant(32 : index) : i64
          %6 = llvm.mlir.constant(16 : index) : i64
          %7 = llvm.mlir.constant(1537 : i32) : i32
          %8 = llvm.mlir.constant(1 : i32) : i32
          %9 = llvm.mlir.constant(4 : i32) : i32
          %10 = llvm.mlir.constant(8 : i32) : i32
          %11 = llvm.mlir.constant(128 : index) : i64
          %12 = llvm.mlir.constant(1 : index) : i64
          %13 = llvm.mlir.constant(0 : index) : i64
          %14 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %15 = llvm.extractvalue %14[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %16 = llvm.load %15 : !llvm.ptr -> !llvm.ptr
          %17 = llvm.getelementptr %15[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %18 = llvm.load %17 : !llvm.ptr -> !llvm.ptr
          llvm.br ^bb1(%13 : i64)
        ^bb1(%19: i64):  // 2 preds: ^bb0, ^bb4
          %20 = llvm.icmp "slt" %19, %6 : i64
          llvm.cond_br %20, ^bb2(%13 : i64), ^bb5
        ^bb2(%21: i64):  // 2 preds: ^bb1, ^bb3
          %22 = llvm.icmp "slt" %21, %5 : i64
          llvm.cond_br %22, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %23 = llvm.mul %19, %4 overflow<nsw> : i64
          %24 = llvm.mul %21, %3 overflow<nsw> : i64
          %25 = llvm.add %24, %2 : i64
          %26 = llvm.mul %21, %5 overflow<nsw> : i64
          %27 = llvm.add %23, %26 : i64
          %28 = llvm.add %27, %1 : i64
          %29 = llvm.getelementptr inbounds %arg0[4] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %30 = llvm.call @iree_uk_mmt4d(%16, %23, %4, %16, %25, %3, %18, %28, %4, %12, %12, %11, %10, %9, %8, %7, %29) : (!llvm.ptr, i64, i64, !llvm.ptr, i64, i64, !llvm.ptr, i64, i64, i64, i64, i64, i32, i32, i32, i32, !llvm.ptr) -> i32
          %31 = llvm.add %21, %12 : i64
          llvm.br ^bb2(%31 : i64)
        ^bb4:  // pred: ^bb2
          %32 = llvm.add %19, %12 : i64
          llvm.br ^bb1(%32 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  hal.executable private @matmul_dispatch_3 {
    hal.executable.variant public @embedded_elf_x86_64 target(<"llvm-cpu", "embedded-elf-x86_64", {cpu = "generic", cpu_features = "", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>) {
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
          %3 = llvm.mlir.constant(1024 : index) : i64
          %4 = llvm.mlir.constant(32 : index) : i64
          %5 = llvm.mlir.constant(8 : i64) : i64
          %6 = llvm.mlir.constant(32 : i64) : i64
          %7 = llvm.mlir.constant(-1 : index) : i64
          %8 = llvm.mlir.constant(7 : index) : i64
          %9 = llvm.mlir.constant(6 : index) : i64
          %10 = llvm.mlir.constant(5 : index) : i64
          %11 = llvm.mlir.constant(3 : index) : i64
          %12 = llvm.mlir.constant(2 : index) : i64
          %13 = llvm.mlir.constant(1 : index) : i64
          %14 = llvm.mlir.constant(4 : index) : i64
          %15 = llvm.mlir.constant(8 : index) : i64
          %16 = llvm.mlir.constant(64 : index) : i64
          %17 = llvm.mlir.constant(16 : index) : i64
          %18 = llvm.mlir.constant(131072 : index) : i64
          %19 = llvm.mlir.constant(0 : index) : i64
          %20 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %21 = llvm.extractvalue %20[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %22 = llvm.load %21 : !llvm.ptr -> !llvm.ptr
          %23 = llvm.mul %18, %5 : i64
          %24 = llvm.udiv %23, %6 : i64
          %25 = llvm.getelementptr %22[%24] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %2 ["align"(%25, %16 : !llvm.ptr, i64)] : i1
          %26 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %27 = llvm.extractvalue %26[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %28 = llvm.getelementptr %27[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %29 = llvm.load %28 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %2 ["align"(%29, %16 : !llvm.ptr, i64)] : i1
          %30 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %31 = llvm.extractvalue %30[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %32 = llvm.zext %31 : i32 to i64
          %33 = llvm.sdiv %32, %12 : i64
          %34 = llvm.mul %33, %12 : i64
          %35 = llvm.icmp "ne" %32, %34 : i64
          %36 = llvm.icmp "slt" %32, %19 : i64
          %37 = llvm.and %35, %36 : i1
          %38 = llvm.add %33, %7 : i64
          %39 = llvm.select %37, %38, %33 : i1, i64
          %40 = llvm.srem %32, %12 : i64
          %41 = llvm.icmp "slt" %40, %19 : i64
          %42 = llvm.add %40, %12 overflow<nsw> : i64
          %43 = llvm.select %41, %42, %40 : i1, i64
          %44 = llvm.mul %39, %17 overflow<nsw> : i64
          %45 = llvm.mul %43, %16 overflow<nsw> : i64
          %46 = llvm.icmp "slt" %44, %19 : i64
          %47 = llvm.sub %7, %44 : i64
          %48 = llvm.select %46, %47, %44 : i1, i64
          %49 = llvm.sdiv %48, %15 : i64
          %50 = llvm.sub %7, %49 : i64
          %51 = llvm.select %46, %50, %49 : i1, i64
          %52 = llvm.icmp "slt" %45, %19 : i64
          %53 = llvm.sub %7, %45 : i64
          %54 = llvm.select %52, %53, %45 : i1, i64
          %55 = llvm.sdiv %54, %14 : i64
          %56 = llvm.sub %7, %55 : i64
          %57 = llvm.select %52, %56, %55 : i1, i64
          llvm.br ^bb1(%19 : i64)
        ^bb1(%58: i64):  // 2 preds: ^bb0, ^bb5
          %59 = llvm.icmp "slt" %58, %17 : i64
          llvm.cond_br %59, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %60 = llvm.icmp "slt" %58, %19 : i64
          %61 = llvm.sub %7, %58 : i64
          %62 = llvm.select %60, %61, %58 : i1, i64
          %63 = llvm.sdiv %62, %15 : i64
          %64 = llvm.sub %7, %63 : i64
          %65 = llvm.select %60, %64, %63 : i1, i64
          llvm.br ^bb3(%19 : i64)
        ^bb3(%66: i64):  // 2 preds: ^bb2, ^bb4
          %67 = llvm.icmp "slt" %66, %16 : i64
          llvm.cond_br %67, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %68 = llvm.icmp "slt" %66, %19 : i64
          %69 = llvm.sub %7, %66 : i64
          %70 = llvm.select %68, %69, %66 : i1, i64
          %71 = llvm.sdiv %70, %14 : i64
          %72 = llvm.sub %7, %71 : i64
          %73 = llvm.select %68, %72, %71 : i1, i64
          %74 = llvm.add %65, %51 : i64
          %75 = llvm.add %73, %57 : i64
          %76 = llvm.mul %74, %3 : i64
          %77 = llvm.mul %75, %4 : i64
          %78 = llvm.add %76, %77 : i64
          %79 = llvm.mul %19, %14 : i64
          %80 = llvm.add %78, %79 : i64
          %81 = llvm.add %80, %19 : i64
          %82 = llvm.getelementptr %25[%81] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %83 = llvm.load %82 {alignment = 4 : i64} : !llvm.ptr -> vector<4xf32>
          %84 = llvm.mul %13, %14 : i64
          %85 = llvm.add %78, %84 : i64
          %86 = llvm.add %85, %19 : i64
          %87 = llvm.getelementptr %25[%86] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %88 = llvm.load %87 {alignment = 4 : i64} : !llvm.ptr -> vector<4xf32>
          %89 = llvm.mul %12, %14 : i64
          %90 = llvm.add %78, %89 : i64
          %91 = llvm.add %90, %19 : i64
          %92 = llvm.getelementptr %25[%91] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %93 = llvm.load %92 {alignment = 4 : i64} : !llvm.ptr -> vector<4xf32>
          %94 = llvm.mul %11, %14 : i64
          %95 = llvm.add %78, %94 : i64
          %96 = llvm.add %95, %19 : i64
          %97 = llvm.getelementptr %25[%96] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %98 = llvm.load %97 {alignment = 4 : i64} : !llvm.ptr -> vector<4xf32>
          %99 = llvm.mul %14, %14 : i64
          %100 = llvm.add %78, %99 : i64
          %101 = llvm.add %100, %19 : i64
          %102 = llvm.getelementptr %25[%101] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %103 = llvm.load %102 {alignment = 4 : i64} : !llvm.ptr -> vector<4xf32>
          %104 = llvm.mul %10, %14 : i64
          %105 = llvm.add %78, %104 : i64
          %106 = llvm.add %105, %19 : i64
          %107 = llvm.getelementptr %25[%106] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %108 = llvm.load %107 {alignment = 4 : i64} : !llvm.ptr -> vector<4xf32>
          %109 = llvm.mul %9, %14 : i64
          %110 = llvm.add %78, %109 : i64
          %111 = llvm.add %110, %19 : i64
          %112 = llvm.getelementptr %25[%111] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %113 = llvm.load %112 {alignment = 4 : i64} : !llvm.ptr -> vector<4xf32>
          %114 = llvm.mul %8, %14 : i64
          %115 = llvm.add %78, %114 : i64
          %116 = llvm.add %115, %19 : i64
          %117 = llvm.getelementptr %25[%116] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %118 = llvm.load %117 {alignment = 4 : i64} : !llvm.ptr -> vector<4xf32>
          %119 = llvm.add %44, %58 : i64
          %120 = llvm.add %45, %66 : i64
          %121 = llvm.mul %119, %1 : i64
          %122 = llvm.add %121, %120 : i64
          %123 = llvm.getelementptr %29[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %83, %123 {alignment = 4 : i64} : vector<4xf32>, !llvm.ptr
          %124 = llvm.add %58, %13 : i64
          %125 = llvm.add %44, %124 : i64
          %126 = llvm.mul %125, %1 : i64
          %127 = llvm.add %126, %120 : i64
          %128 = llvm.getelementptr %29[%127] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %88, %128 {alignment = 4 : i64} : vector<4xf32>, !llvm.ptr
          %129 = llvm.add %58, %12 : i64
          %130 = llvm.add %44, %129 : i64
          %131 = llvm.mul %130, %1 : i64
          %132 = llvm.add %131, %120 : i64
          %133 = llvm.getelementptr %29[%132] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %93, %133 {alignment = 4 : i64} : vector<4xf32>, !llvm.ptr
          %134 = llvm.add %58, %11 : i64
          %135 = llvm.add %44, %134 : i64
          %136 = llvm.mul %135, %1 : i64
          %137 = llvm.add %136, %120 : i64
          %138 = llvm.getelementptr %29[%137] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %98, %138 {alignment = 4 : i64} : vector<4xf32>, !llvm.ptr
          %139 = llvm.add %58, %14 : i64
          %140 = llvm.add %44, %139 : i64
          %141 = llvm.mul %140, %1 : i64
          %142 = llvm.add %141, %120 : i64
          %143 = llvm.getelementptr %29[%142] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %103, %143 {alignment = 4 : i64} : vector<4xf32>, !llvm.ptr
          %144 = llvm.add %58, %10 : i64
          %145 = llvm.add %44, %144 : i64
          %146 = llvm.mul %145, %1 : i64
          %147 = llvm.add %146, %120 : i64
          %148 = llvm.getelementptr %29[%147] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %108, %148 {alignment = 4 : i64} : vector<4xf32>, !llvm.ptr
          %149 = llvm.add %58, %9 : i64
          %150 = llvm.add %44, %149 : i64
          %151 = llvm.mul %150, %1 : i64
          %152 = llvm.add %151, %120 : i64
          %153 = llvm.getelementptr %29[%152] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %113, %153 {alignment = 4 : i64} : vector<4xf32>, !llvm.ptr
          %154 = llvm.add %58, %8 : i64
          %155 = llvm.add %44, %154 : i64
          %156 = llvm.mul %155, %1 : i64
          %157 = llvm.add %156, %120 : i64
          %158 = llvm.getelementptr %29[%157] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %118, %158 {alignment = 4 : i64} : vector<4xf32>, !llvm.ptr
          %159 = llvm.add %66, %14 : i64
          llvm.br ^bb3(%159 : i64)
        ^bb5:  // pred: ^bb3
          %160 = llvm.add %58, %15 : i64
          llvm.br ^bb1(%160 : i64)
        ^bb6:  // pred: ^bb1
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
      stream.cmd.dispatch @matmul_dispatch_2::@embedded_elf_x86_64::@matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32 {
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