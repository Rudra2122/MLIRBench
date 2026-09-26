hal.executable public @matmul_dispatch_0 {
  hal.executable.variant public @embedded_elf_arm_64 target(<"llvm-cpu", "embedded-elf-arm_64", {cpu = "generic", cpu_features = "+reserve-x18", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "arm64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @matmul_dispatch_0_pack_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @matmul_dispatch_0_pack_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDataTiling, {enable_decomposition}>} {
        %c0 = arith.constant 0 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x128xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c0) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x128x8x1xf32>>
        %2 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0], sizes = [128, 128], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x128xf32>> -> tensor<128x128xf32>
        %3 = tensor.empty() : tensor<16x128x8x1xf32>
        %pack = linalg.pack %2 outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [8, 1] into %3 {lowering_config = #iree_cpu.lowering_config<distribution = [1, 64], vector_common_parallel = [1, 1]>} : tensor<128x128xf32> -> tensor<16x128x8x1xf32>
        iree_tensor_ext.dispatch.tensor.store %pack, %1, offsets = [0, 0, 0, 0], sizes = [16, 128, 8, 1], strides = [1, 1, 1, 1] : tensor<16x128x8x1xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x128x8x1xf32>>
        return
      }
    }
  }
}
