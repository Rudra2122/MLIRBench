module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-arm_64", {cpu = "generic", cpu_features = "+reserve-x18", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "arm64-unknown-unknown-eabi-elf"}>]> : !hal.device
  flow.executable private @matmul_dispatch_0 {
    flow.executable.export public @matmul_dispatch_0_pack_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @matmul_dispatch_0_pack_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x128xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x128x8x1xf32>>) {
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0, 0], sizes = [128, 128], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x128xf32>> -> tensor<128x128xf32>
        %1 = tensor.empty() : tensor<16x128x8x1xf32>
        %pack = linalg.pack %0 outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [8, 1] into %1 : tensor<128x128xf32> -> tensor<16x128x8x1xf32>
        iree_tensor_ext.dispatch.tensor.store %pack, %arg1, offsets = [0, 0, 0, 0], sizes = [16, 128, 8, 1], strides = [1, 1, 1, 1] : tensor<16x128x8x1xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x128x8x1xf32>>
        return
      }
    }
  }
  flow.executable private @matmul_dispatch_1 {
    flow.executable.export public @matmul_dispatch_1_pack_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @matmul_dispatch_1_pack_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x128xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x128x8x1xf32>>) {
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0, 0], sizes = [128, 128], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x128xf32>> -> tensor<128x128xf32>
        %1 = tensor.empty() : tensor<16x128x8x1xf32>
        %pack = linalg.pack %0 outer_dims_perm = [1, 0] inner_dims_pos = [1, 0] inner_tiles = [8, 1] into %1 : tensor<128x128xf32> -> tensor<16x128x8x1xf32>
        iree_tensor_ext.dispatch.tensor.store %pack, %arg1, offsets = [0, 0, 0, 0], sizes = [16, 128, 8, 1], strides = [1, 1, 1, 1] : tensor<16x128x8x1xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x128x8x1xf32>>
        return
      }
    }
  }
  flow.executable private @matmul_dispatch_2 {
    flow.executable.export public @matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x128x8x1xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x128x8x1xf32>>, %arg2: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x16x8x8xf32>>) {
        %cst = arith.constant 0.000000e+00 : f32
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0, 0, 0, 0], sizes = [16, 128, 8, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x128x8x1xf32>> -> tensor<16x128x8x1xf32>
        %1 = iree_tensor_ext.dispatch.tensor.load %arg1, offsets = [0, 0, 0, 0], sizes = [16, 128, 8, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x128x8x1xf32>> -> tensor<16x128x8x1xf32>
        %2 = tensor.empty() : tensor<16x16x8x8xf32>
        %3 = linalg.fill ins(%cst : f32) outs(%2 : tensor<16x16x8x8xf32>) -> tensor<16x16x8x8xf32>
        %4 = linalg.mmt4d ins(%0, %1 : tensor<16x128x8x1xf32>, tensor<16x128x8x1xf32>) outs(%3 : tensor<16x16x8x8xf32>) -> tensor<16x16x8x8xf32>
        iree_tensor_ext.dispatch.tensor.store %4, %arg2, offsets = [0, 0, 0, 0], sizes = [16, 16, 8, 8], strides = [1, 1, 1, 1] : tensor<16x16x8x8xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x16x8x8xf32>>
        return
      }
    }
  }
  flow.executable private @matmul_dispatch_3 {
    flow.executable.export public @matmul_dispatch_3_unpack_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @matmul_dispatch_3_unpack_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x16x8x8xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<128x128xf32>>) {
        %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0, 0, 0, 0], sizes = [16, 16, 8, 8], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x16x8x8xf32>> -> tensor<16x16x8x8xf32>
        %1 = tensor.empty() : tensor<128x128xf32>
        %unpack = linalg.unpack %0 outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [8, 8] into %1 : tensor<16x16x8x8xf32> -> tensor<128x128xf32>
        iree_tensor_ext.dispatch.tensor.store %unpack, %arg1, offsets = [0, 0], sizes = [128, 128], strides = [1, 1] : tensor<128x128xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<128x128xf32>>
        return
      }
    }
  }
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<128x128xf32>, %input1: tensor<128x128xf32>) -> (%output0: tensor<128x128xf32>)"}} {
    %0 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<128x128xf32>
    %1 = hal.tensor.import %arg1 "input1" : !hal.buffer_view -> tensor<128x128xf32>
    %2 = flow.dispatch @matmul_dispatch_0::@matmul_dispatch_0_pack_f32(%0) : (tensor<128x128xf32>) -> tensor<16x128x8x1xf32>
    %3 = flow.dispatch @matmul_dispatch_1::@matmul_dispatch_1_pack_f32(%1) : (tensor<128x128xf32>) -> tensor<16x128x8x1xf32>
    %4 = flow.dispatch @matmul_dispatch_2::@matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32(%2, %3) : (tensor<16x128x8x1xf32>, tensor<16x128x8x1xf32>) -> tensor<16x16x8x8xf32>
    %5 = flow.dispatch @matmul_dispatch_3::@matmul_dispatch_3_unpack_f32(%4) : (tensor<16x16x8x8xf32>) -> tensor<128x128xf32>
    %6 = hal.tensor.export %5 "output0" : tensor<128x128xf32> -> !hal.buffer_view
    util.return %6 : !hal.buffer_view
  }
}