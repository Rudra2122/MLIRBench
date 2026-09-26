module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-arm_64", {cpu = "generic", cpu_features = "+reserve-x18", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "arm64-unknown-unknown-eabi-elf"}>]> : !hal.device
  hal.executable private @matmul_dispatch_0 {
    hal.executable.variant public @embedded_elf_arm_64 target(<"llvm-cpu", "embedded-elf-arm_64", {cpu = "generic", cpu_features = "+reserve-x18", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "arm64-unknown-unknown-eabi-elf"}>) {
      hal.executable.export public @matmul_dispatch_0_pack_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %c32 = arith.constant 32 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c32, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32", llvm.target_triple = "arm64-unknown-unknown-eabi-elf"} {
        llvm.func @matmul_dispatch_0_pack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(1024 : index) : i64
          %2 = llvm.mlir.constant(true) : i1
          %3 = llvm.mlir.constant(128 : index) : i64
          %4 = llvm.mlir.constant(-1 : index) : i64
          %5 = llvm.mlir.constant(8 : index) : i64
          %6 = llvm.mlir.constant(2 : index) : i64
          %7 = llvm.mlir.constant(64 : index) : i64
          %8 = llvm.mlir.constant(1 : index) : i64
          %9 = llvm.mlir.constant(0 : index) : i64
          %10 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %11 = llvm.extractvalue %10[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %12 = llvm.load %11 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %2 ["align"(%12, %7 : !llvm.ptr, i64)] : i1
          %13 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %14 = llvm.extractvalue %13[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %15 = llvm.getelementptr %14[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %16 = llvm.load %15 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %2 ["align"(%16, %7 : !llvm.ptr, i64)] : i1
          %17 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %18 = llvm.extractvalue %17[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %19 = llvm.zext %18 : i32 to i64
          %20 = llvm.sdiv %19, %6 : i64
          %21 = llvm.mul %20, %6 : i64
          %22 = llvm.icmp "ne" %19, %21 : i64
          %23 = llvm.icmp "slt" %19, %9 : i64
          %24 = llvm.and %22, %23 : i1
          %25 = llvm.add %20, %4 : i64
          %26 = llvm.select %24, %25, %20 : i1, i64
          %27 = llvm.srem %19, %6 : i64
          %28 = llvm.icmp "slt" %27, %9 : i64
          %29 = llvm.add %27, %6 overflow<nsw> : i64
          %30 = llvm.select %28, %29, %27 : i1, i64
          %31 = llvm.mul %30, %7 overflow<nsw> : i64
          %32 = llvm.mul %26, %5 overflow<nsw> : i64
          llvm.br ^bb1(%9 : i64)
        ^bb1(%33: i64):  // 2 preds: ^bb0, ^bb4
          %34 = llvm.icmp "slt" %33, %7 : i64
          llvm.cond_br %34, ^bb2(%9 : i64), ^bb5
        ^bb2(%35: i64):  // 2 preds: ^bb1, ^bb3
          %36 = llvm.icmp "slt" %35, %5 : i64
          llvm.cond_br %36, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %37 = llvm.add %32, %35 : i64
          %38 = llvm.add %31, %33 : i64
          %39 = llvm.mul %37, %3 overflow<nsw, nuw> : i64
          %40 = llvm.add %39, %38 overflow<nsw, nuw> : i64
          %41 = llvm.getelementptr inbounds|nuw %12[%40] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %42 = llvm.load %41 : !llvm.ptr -> f32
          %43 = llvm.mul %26, %1 overflow<nsw, nuw> : i64
          %44 = llvm.mul %38, %5 overflow<nsw, nuw> : i64
          %45 = llvm.add %43, %44 overflow<nsw, nuw> : i64
          %46 = llvm.add %45, %35 overflow<nsw, nuw> : i64
          %47 = llvm.add %46, %9 overflow<nsw, nuw> : i64
          %48 = llvm.getelementptr inbounds|nuw %16[%47] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %42, %48 : f32, !llvm.ptr
          %49 = llvm.add %35, %8 : i64
          llvm.br ^bb2(%49 : i64)
        ^bb4:  // pred: ^bb2
          %50 = llvm.add %33, %8 : i64
          llvm.br ^bb1(%50 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  hal.executable private @matmul_dispatch_1 {
    hal.executable.variant public @embedded_elf_arm_64 target(<"llvm-cpu", "embedded-elf-arm_64", {cpu = "generic", cpu_features = "+reserve-x18", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "arm64-unknown-unknown-eabi-elf"}>) {
      hal.executable.export public @matmul_dispatch_1_pack_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %c128 = arith.constant 128 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c128, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32", llvm.target_triple = "arm64-unknown-unknown-eabi-elf"} {
        llvm.func @matmul_dispatch_1_pack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(1024 : index) : i64
          %2 = llvm.mlir.constant(8 : i64) : i64
          %3 = llvm.mlir.constant(32 : i64) : i64
          %4 = llvm.mlir.constant(64 : index) : i64
          %5 = llvm.mlir.constant(true) : i1
          %6 = llvm.mlir.constant(128 : index) : i64
          %7 = llvm.mlir.constant(-1 : index) : i64
          %8 = llvm.mlir.constant(16 : index) : i64
          %9 = llvm.mlir.constant(1 : index) : i64
          %10 = llvm.mlir.constant(8 : index) : i64
          %11 = llvm.mlir.constant(2 : index) : i64
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
          %40 = llvm.mul %33, %8 overflow<nsw> : i64
          llvm.br ^bb1(%12 : i64)
        ^bb1(%41: i64):  // 2 preds: ^bb0, ^bb5
          %42 = llvm.icmp "slt" %41, %11 : i64
          llvm.cond_br %42, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %43 = llvm.mul %41, %10 overflow<nsw> : i64
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
          %51 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %52 = llvm.add %38, %41 : i64
          %53 = llvm.mul %52, %1 : i64
          %54 = llvm.mul %46, %10 : i64
          %55 = llvm.add %53, %54 : i64
          %56 = llvm.add %55, %12 : i64
          %57 = llvm.add %56, %12 : i64
          %58 = llvm.getelementptr %23[%57] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %51, %58 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
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
    hal.executable.variant public @embedded_elf_arm_64 target(<"llvm-cpu", "embedded-elf-arm_64", {cpu = "generic", cpu_features = "+reserve-x18", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "arm64-unknown-unknown-eabi-elf"}>) {
      hal.executable.export public @matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        %c1_1 = arith.constant 1 : index
        hal.return %c1, %c1_0, %c1_1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32", llvm.target_triple = "arm64-unknown-unknown-eabi-elf"} {
        llvm.func @iree_uk_mmt4d(!llvm.ptr, i64, i64, !llvm.ptr, i64, i64, !llvm.ptr, i64, i64, i64, i64, i64, i32, i32, i32, i32, !llvm.ptr) -> i32 attributes {hal.import.bitcode = true, hal.import.fields = ["processor_data"], llvm.bareptr = true}
        llvm.func @matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(64 : index) : i64
          %2 = llvm.mlir.constant(32768 : index) : i64
          %3 = llvm.mlir.constant(16384 : index) : i64
          %4 = llvm.mlir.constant(1024 : index) : i64
          %5 = llvm.mlir.constant(16 : index) : i64
          %6 = llvm.mlir.constant(1537 : i32) : i32
          %7 = llvm.mlir.constant(1 : i32) : i32
          %8 = llvm.mlir.constant(8 : i32) : i32
          %9 = llvm.mlir.constant(128 : index) : i64
          %10 = llvm.mlir.constant(1 : index) : i64
          %11 = llvm.mlir.constant(0 : index) : i64
          %12 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %13 = llvm.extractvalue %12[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %14 = llvm.load %13 : !llvm.ptr -> !llvm.ptr
          %15 = llvm.getelementptr %13[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %16 = llvm.load %15 : !llvm.ptr -> !llvm.ptr
          llvm.br ^bb1(%11 : i64)
        ^bb1(%17: i64):  // 2 preds: ^bb0, ^bb4
          %18 = llvm.icmp "slt" %17, %5 : i64
          llvm.cond_br %18, ^bb2(%11 : i64), ^bb5
        ^bb2(%19: i64):  // 2 preds: ^bb1, ^bb3
          %20 = llvm.icmp "slt" %19, %5 : i64
          llvm.cond_br %20, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %21 = llvm.mul %17, %4 overflow<nsw> : i64
          %22 = llvm.mul %19, %4 overflow<nsw> : i64
          %23 = llvm.add %22, %3 : i64
          %24 = llvm.mul %19, %1 overflow<nsw> : i64
          %25 = llvm.add %21, %24 : i64
          %26 = llvm.add %25, %2 : i64
          %27 = llvm.getelementptr inbounds %arg0[4] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %28 = llvm.call @iree_uk_mmt4d(%14, %21, %4, %14, %23, %4, %16, %26, %4, %10, %10, %9, %8, %8, %7, %6, %27) : (!llvm.ptr, i64, i64, !llvm.ptr, i64, i64, !llvm.ptr, i64, i64, i64, i64, i64, i32, i32, i32, i32, !llvm.ptr) -> i32
          %29 = llvm.add %19, %10 : i64
          llvm.br ^bb2(%29 : i64)
        ^bb4:  // pred: ^bb2
          %30 = llvm.add %17, %10 : i64
          llvm.br ^bb1(%30 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  hal.executable private @matmul_dispatch_3 {
    hal.executable.variant public @embedded_elf_arm_64 target(<"llvm-cpu", "embedded-elf-arm_64", {cpu = "generic", cpu_features = "+reserve-x18", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "arm64-unknown-unknown-eabi-elf"}>) {
      hal.executable.export public @matmul_dispatch_3_unpack_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %c16 = arith.constant 16 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c16, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32", llvm.target_triple = "arm64-unknown-unknown-eabi-elf"} {
        llvm.func @matmul_dispatch_3_unpack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(128 : index) : i64
          %2 = llvm.mlir.constant(true) : i1
          %3 = llvm.mlir.constant(1024 : index) : i64
          %4 = llvm.mlir.constant(8 : i64) : i64
          %5 = llvm.mlir.constant(32 : i64) : i64
          %6 = llvm.mlir.constant(1 : index) : i64
          %7 = llvm.mlir.constant(-1 : index) : i64
          %8 = llvm.mlir.constant(2 : index) : i64
          %9 = llvm.mlir.constant(8 : index) : i64
          %10 = llvm.mlir.constant(64 : index) : i64
          %11 = llvm.mlir.constant(16 : index) : i64
          %12 = llvm.mlir.constant(131072 : index) : i64
          %13 = llvm.mlir.constant(0 : index) : i64
          %14 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %15 = llvm.extractvalue %14[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %16 = llvm.load %15 : !llvm.ptr -> !llvm.ptr
          %17 = llvm.mul %12, %4 : i64
          %18 = llvm.udiv %17, %5 : i64
          %19 = llvm.getelementptr %16[%18] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %2 ["align"(%19, %10 : !llvm.ptr, i64)] : i1
          %20 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %21 = llvm.extractvalue %20[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %22 = llvm.getelementptr %21[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %23 = llvm.load %22 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %2 ["align"(%23, %10 : !llvm.ptr, i64)] : i1
          %24 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %25 = llvm.extractvalue %24[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %26 = llvm.zext %25 : i32 to i64
          %27 = llvm.sdiv %26, %8 : i64
          %28 = llvm.mul %27, %8 : i64
          %29 = llvm.icmp "ne" %26, %28 : i64
          %30 = llvm.icmp "slt" %26, %13 : i64
          %31 = llvm.and %29, %30 : i1
          %32 = llvm.add %27, %7 : i64
          %33 = llvm.select %31, %32, %27 : i1, i64
          %34 = llvm.srem %26, %8 : i64
          %35 = llvm.icmp "slt" %34, %13 : i64
          %36 = llvm.add %34, %8 overflow<nsw> : i64
          %37 = llvm.select %35, %36, %34 : i1, i64
          %38 = llvm.mul %33, %11 overflow<nsw> : i64
          %39 = llvm.mul %37, %10 overflow<nsw> : i64
          %40 = llvm.icmp "slt" %38, %13 : i64
          %41 = llvm.sub %7, %38 : i64
          %42 = llvm.select %40, %41, %38 : i1, i64
          %43 = llvm.sdiv %42, %9 : i64
          %44 = llvm.sub %7, %43 : i64
          %45 = llvm.select %40, %44, %43 : i1, i64
          %46 = llvm.icmp "slt" %39, %13 : i64
          %47 = llvm.sub %7, %39 : i64
          %48 = llvm.select %46, %47, %39 : i1, i64
          %49 = llvm.sdiv %48, %9 : i64
          %50 = llvm.sub %7, %49 : i64
          %51 = llvm.select %46, %50, %49 : i1, i64
          llvm.br ^bb1(%13 : i64)
        ^bb1(%52: i64):  // 2 preds: ^bb0, ^bb10
          %53 = llvm.icmp "slt" %52, %11 : i64
          llvm.cond_br %53, ^bb2, ^bb11
        ^bb2:  // pred: ^bb1
          %54 = llvm.icmp "slt" %52, %13 : i64
          %55 = llvm.sub %7, %52 : i64
          %56 = llvm.select %54, %55, %52 : i1, i64
          %57 = llvm.sdiv %56, %9 : i64
          %58 = llvm.sub %7, %57 : i64
          %59 = llvm.select %54, %58, %57 : i1, i64
          llvm.br ^bb3(%13 : i64)
        ^bb3(%60: i64):  // 2 preds: ^bb2, ^bb9
          %61 = llvm.icmp "slt" %60, %10 : i64
          llvm.cond_br %61, ^bb4, ^bb10
        ^bb4:  // pred: ^bb3
          %62 = llvm.icmp "slt" %60, %13 : i64
          %63 = llvm.sub %7, %60 : i64
          %64 = llvm.select %62, %63, %60 : i1, i64
          %65 = llvm.sdiv %64, %9 : i64
          %66 = llvm.sub %7, %65 : i64
          %67 = llvm.select %62, %66, %65 : i1, i64
          llvm.br ^bb5(%13 : i64)
        ^bb5(%68: i64):  // 2 preds: ^bb4, ^bb8
          %69 = llvm.icmp "slt" %68, %9 : i64
          llvm.cond_br %69, ^bb6(%13 : i64), ^bb9
        ^bb6(%70: i64):  // 2 preds: ^bb5, ^bb7
          %71 = llvm.icmp "slt" %70, %9 : i64
          llvm.cond_br %71, ^bb7, ^bb8
        ^bb7:  // pred: ^bb6
          %72 = llvm.add %45, %59 : i64
          %73 = llvm.add %51, %67 : i64
          %74 = llvm.mul %72, %3 overflow<nsw, nuw> : i64
          %75 = llvm.mul %73, %10 overflow<nsw, nuw> : i64
          %76 = llvm.add %74, %75 overflow<nsw, nuw> : i64
          %77 = llvm.mul %68, %9 overflow<nsw, nuw> : i64
          %78 = llvm.add %76, %77 overflow<nsw, nuw> : i64
          %79 = llvm.add %78, %70 overflow<nsw, nuw> : i64
          %80 = llvm.getelementptr inbounds|nuw %19[%79] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %81 = llvm.load %80 : !llvm.ptr -> f32
          %82 = llvm.add %38, %52 : i64
          %83 = llvm.add %82, %68 : i64
          %84 = llvm.add %39, %60 : i64
          %85 = llvm.add %84, %70 : i64
          %86 = llvm.mul %83, %1 overflow<nsw, nuw> : i64
          %87 = llvm.add %86, %85 overflow<nsw, nuw> : i64
          %88 = llvm.getelementptr inbounds|nuw %23[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %81, %88 : f32, !llvm.ptr
          %89 = llvm.add %70, %6 : i64
          llvm.br ^bb6(%89 : i64)
        ^bb8:  // pred: ^bb6
          %90 = llvm.add %68, %6 : i64
          llvm.br ^bb5(%90 : i64)
        ^bb9:  // pred: ^bb5
          %91 = llvm.add %60, %9 : i64
          llvm.br ^bb3(%91 : i64)
        ^bb10:  // pred: ^bb3
          %92 = llvm.add %52, %9 : i64
          llvm.br ^bb1(%92 : i64)
        ^bb11:  // pred: ^bb1
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
        stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_arm_64::@matmul_dispatch_0_pack_f32 {
          ro %arg2[%c0 for %c65536] : !stream.resource<external>{%c65536},
          wo %arg5[%c0 for %c196608] : !stream.resource<transient>{%c196608}
        }
        stream.cmd.dispatch @matmul_dispatch_1::@embedded_elf_arm_64::@matmul_dispatch_1_pack_f32 {
          ro %arg3[%c0 for %c65536] : !stream.resource<external>{%c65536},
          wo %arg5[%c0 for %c196608] : !stream.resource<transient>{%c196608}
        }
      }
      stream.cmd.dispatch @matmul_dispatch_2::@embedded_elf_arm_64::@matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32 {
        ro %arg5[%c0 for %c196608] : !stream.resource<transient>{%c196608},
        wo %arg5[%c0 for %c196608] : !stream.resource<transient>{%c196608}
      }
      stream.cmd.dispatch @matmul_dispatch_3::@embedded_elf_arm_64::@matmul_dispatch_3_unpack_f32 {
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