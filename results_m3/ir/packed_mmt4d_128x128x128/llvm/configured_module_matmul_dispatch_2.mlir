hal.executable public @matmul_dispatch_2 {
  hal.executable.variant public @embedded_elf_arm_64 target(<"llvm-cpu", "embedded-elf-arm_64", {cpu = "apple-m3", cpu_features = "+v8.6a,+aes,+bf16,+complxnum,+crc,+dotprod,+fp-armv8,+fp16fml,+fpac,+fullfp16,+hcx,+i8mm,+jsconv,+lse,+neon,+pauth,+perfmon,+ras,+rcpc,+rdm,+sha2,+sha3,+ssbs,+reserve-x18", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "arm64-unknown-unknown-eabi-elf", ukernels = "none"}>) {
    hal.executable.export public @matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = Mmt4dTilingExpert>} {
        %cst = arith.constant 0.000000e+00 : f32
        %c0 = arith.constant 0 : index
        %c65536 = arith.constant 65536 : index
        %c131072 = arith.constant 131072 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x128x8x1xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c65536) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x128x8x1xf32>>
        %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c131072) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x16x8x8xf32>>
        %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0, 0], sizes = [16, 128, 8, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x128x8x1xf32>> -> tensor<16x128x8x1xf32>
        %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0, 0, 0], sizes = [16, 128, 8, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x128x8x1xf32>> -> tensor<16x128x8x1xf32>
        %5 = tensor.empty() : tensor<16x16x8x8xf32>
        %6 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 8, 8]>} ins(%cst : f32) outs(%5 : tensor<16x16x8x8xf32>) -> tensor<16x16x8x8xf32>
        %7 = linalg.mmt4d {lowering_config = #iree_cpu.lowering_config<distribution = [16, 16, 0, 0, 0, 0], vector_common_parallel = [1, 1, 0, 8, 8, 0], vector_reduction = [0, 0, 1, 0, 0, 1]>} ins(%3, %4 : tensor<16x128x8x1xf32>, tensor<16x128x8x1xf32>) outs(%6 : tensor<16x16x8x8xf32>) -> tensor<16x16x8x8xf32>
        iree_tensor_ext.dispatch.tensor.store %7, %2, offsets = [0, 0, 0, 0], sizes = [16, 16, 8, 8], strides = [1, 1, 1, 1] : tensor<16x16x8x8xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x16x8x8xf32>>
        return
      }
    }
  }
}
