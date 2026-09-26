module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "generic", cpu_features = "", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>]> : !hal.device
  stream.executable private @matmul_dispatch_0 {
    stream.executable.export public @matmul_dispatch_0_pack_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      stream.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @matmul_dispatch_0_pack_f32(%arg0: !stream.binding {stream.alignment = 64 : index}, %arg1: !stream.binding {stream.alignment = 64 : index}) {
        %c0 = arith.constant 0 : index
        %0 = stream.binding.subspan %arg0[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x128xf32>>
        %1 = stream.binding.subspan %arg1[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x128x8x1xf32>>
        %2 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0], sizes = [128, 128], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x128xf32>> -> tensor<128x128xf32>
        %3 = tensor.empty() : tensor<16x128x8x1xf32>
        %pack = linalg.pack %2 outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [8, 1] into %3 : tensor<128x128xf32> -> tensor<16x128x8x1xf32>
        iree_tensor_ext.dispatch.tensor.store %pack, %1, offsets = [0, 0, 0, 0], sizes = [16, 128, 8, 1], strides = [1, 1, 1, 1] : tensor<16x128x8x1xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x128x8x1xf32>>
        return
      }
    }
  }
  stream.executable private @matmul_dispatch_1 {
    stream.executable.export public @matmul_dispatch_1_pack_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      stream.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @matmul_dispatch_1_pack_f32(%arg0: !stream.binding {stream.alignment = 64 : index}, %arg1: !stream.binding {stream.alignment = 64 : index}) {
        %c0 = arith.constant 0 : index
        %c65536 = arith.constant 65536 : index
        %0 = stream.binding.subspan %arg0[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x128xf32>>
        %1 = stream.binding.subspan %arg1[%c65536] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x128x4x1xf32>>
        %2 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0], sizes = [128, 128], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x128xf32>> -> tensor<128x128xf32>
        %3 = tensor.empty() : tensor<32x128x4x1xf32>
        %pack = linalg.pack %2 outer_dims_perm = [1, 0] inner_dims_pos = [1, 0] inner_tiles = [4, 1] into %3 : tensor<128x128xf32> -> tensor<32x128x4x1xf32>
        iree_tensor_ext.dispatch.tensor.store %pack, %1, offsets = [0, 0, 0, 0], sizes = [32, 128, 4, 1], strides = [1, 1, 1, 1] : tensor<32x128x4x1xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x128x4x1xf32>>
        return
      }
    }
  }
  stream.executable private @matmul_dispatch_2 {
    stream.executable.export public @matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      stream.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32(%arg0: !stream.binding {stream.alignment = 64 : index}, %arg1: !stream.binding {stream.alignment = 64 : index}) {
        %cst = arith.constant 0.000000e+00 : f32
        %c0 = arith.constant 0 : index
        %c65536 = arith.constant 65536 : index
        %c131072 = arith.constant 131072 : index
        %0 = stream.binding.subspan %arg0[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x128x8x1xf32>>
        %1 = stream.binding.subspan %arg0[%c65536] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x128x4x1xf32>>
        %2 = stream.binding.subspan %arg1[%c131072] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x32x8x4xf32>>
        %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0, 0], sizes = [16, 128, 8, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x128x8x1xf32>> -> tensor<16x128x8x1xf32>
        %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0, 0, 0], sizes = [32, 128, 4, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x128x4x1xf32>> -> tensor<32x128x4x1xf32>
        %5 = tensor.empty() : tensor<16x32x8x4xf32>
        %6 = linalg.fill ins(%cst : f32) outs(%5 : tensor<16x32x8x4xf32>) -> tensor<16x32x8x4xf32>
        %7 = linalg.mmt4d ins(%3, %4 : tensor<16x128x8x1xf32>, tensor<32x128x4x1xf32>) outs(%6 : tensor<16x32x8x4xf32>) -> tensor<16x32x8x4xf32>
        iree_tensor_ext.dispatch.tensor.store %7, %2, offsets = [0, 0, 0, 0], sizes = [16, 32, 8, 4], strides = [1, 1, 1, 1] : tensor<16x32x8x4xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x32x8x4xf32>>
        return
      }
    }
  }
  stream.executable private @matmul_dispatch_3 {
    stream.executable.export public @matmul_dispatch_3_unpack_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      stream.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @matmul_dispatch_3_unpack_f32(%arg0: !stream.binding {stream.alignment = 64 : index}, %arg1: !stream.binding {stream.alignment = 64 : index}) {
        %c131072 = arith.constant 131072 : index
        %c0 = arith.constant 0 : index
        %0 = stream.binding.subspan %arg0[%c131072] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x32x8x4xf32>>
        %1 = stream.binding.subspan %arg1[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<128x128xf32>>
        %2 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0, 0], sizes = [16, 32, 8, 4], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x32x8x4xf32>> -> tensor<16x32x8x4xf32>
        %3 = tensor.empty() : tensor<128x128xf32>
        %unpack = linalg.unpack %2 outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [8, 4] into %3 : tensor<16x32x8x4xf32> -> tensor<128x128xf32>
        iree_tensor_ext.dispatch.tensor.store %unpack, %1, offsets = [0, 0], sizes = [128, 128], strides = [1, 1] : tensor<128x128xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<128x128xf32>>
        return
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
        stream.cmd.dispatch @matmul_dispatch_0::@matmul_dispatch_0_pack_f32 {
          ro %arg2[%c0 for %c65536] : !stream.resource<external>{%c65536},
          wo %arg5[%c0 for %c196608] : !stream.resource<transient>{%c196608}
        }
        stream.cmd.dispatch @matmul_dispatch_1::@matmul_dispatch_1_pack_f32 {
          ro %arg3[%c0 for %c65536] : !stream.resource<external>{%c65536},
          wo %arg5[%c0 for %c196608] : !stream.resource<transient>{%c196608}
        }
      }
      stream.cmd.dispatch @matmul_dispatch_2::@matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32 {
        ro %arg5[%c0 for %c196608] : !stream.resource<transient>{%c196608},
        wo %arg5[%c0 for %c196608] : !stream.resource<transient>{%c196608}
      }
      stream.cmd.dispatch @matmul_dispatch_3::@matmul_dispatch_3_unpack_f32 {
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