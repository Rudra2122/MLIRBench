module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-arm_64", {cpu = "generic", cpu_features = "+reserve-x18", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "arm64-unknown-unknown-eabi-elf"}>]> : !hal.device
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<128x128xf32>, %input1: tensor<128x128xf32>) -> (%output0: tensor<128x128xf32>)"}} {
    %0 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<128x128xf32>
    %1 = hal.tensor.import %arg1 "input1" : !hal.buffer_view -> tensor<128x128xf32>
    %2 = flow.dispatch.workgroups(%0) : (tensor<128x128xf32>) -> tensor<16x128x8x1xf32> =
        (%arg2: !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x128xf32>>, %arg3: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x128x8x1xf32>>) {
      %7 = iree_tensor_ext.dispatch.tensor.load %arg2, offsets = [0, 0], sizes = [128, 128], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x128xf32>> -> tensor<128x128xf32>
      %8 = tensor.empty() : tensor<16x128x8x1xf32>
      %pack = linalg.pack %7 outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [8, 1] into %8 : tensor<128x128xf32> -> tensor<16x128x8x1xf32>
      iree_tensor_ext.dispatch.tensor.store %pack, %arg3, offsets = [0, 0, 0, 0], sizes = [16, 128, 8, 1], strides = [1, 1, 1, 1] : tensor<16x128x8x1xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x128x8x1xf32>>
      flow.return
    } count() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    %3 = flow.dispatch.workgroups(%1) : (tensor<128x128xf32>) -> tensor<16x128x8x1xf32> =
        (%arg2: !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x128xf32>>, %arg3: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x128x8x1xf32>>) {
      %7 = iree_tensor_ext.dispatch.tensor.load %arg2, offsets = [0, 0], sizes = [128, 128], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x128xf32>> -> tensor<128x128xf32>
      %8 = tensor.empty() : tensor<16x128x8x1xf32>
      %pack = linalg.pack %7 outer_dims_perm = [1, 0] inner_dims_pos = [1, 0] inner_tiles = [8, 1] into %8 : tensor<128x128xf32> -> tensor<16x128x8x1xf32>
      iree_tensor_ext.dispatch.tensor.store %pack, %arg3, offsets = [0, 0, 0, 0], sizes = [16, 128, 8, 1], strides = [1, 1, 1, 1] : tensor<16x128x8x1xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x128x8x1xf32>>
      flow.return
    } count() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    %4 = flow.dispatch.workgroups(%2, %3) : (tensor<16x128x8x1xf32>, tensor<16x128x8x1xf32>) -> tensor<16x16x8x8xf32> =
        (%arg2: !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x128x8x1xf32>>, %arg3: !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x128x8x1xf32>>, %arg4: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x16x8x8xf32>>) {
      %cst = arith.constant 0.000000e+00 : f32
      %7 = iree_tensor_ext.dispatch.tensor.load %arg2, offsets = [0, 0, 0, 0], sizes = [16, 128, 8, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x128x8x1xf32>> -> tensor<16x128x8x1xf32>
      %8 = iree_tensor_ext.dispatch.tensor.load %arg3, offsets = [0, 0, 0, 0], sizes = [16, 128, 8, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x128x8x1xf32>> -> tensor<16x128x8x1xf32>
      %9 = tensor.empty() : tensor<16x16x8x8xf32>
      %10 = linalg.fill ins(%cst : f32) outs(%9 : tensor<16x16x8x8xf32>) -> tensor<16x16x8x8xf32>
      %11 = linalg.mmt4d ins(%7, %8 : tensor<16x128x8x1xf32>, tensor<16x128x8x1xf32>) outs(%10 : tensor<16x16x8x8xf32>) -> tensor<16x16x8x8xf32>
      iree_tensor_ext.dispatch.tensor.store %11, %arg4, offsets = [0, 0, 0, 0], sizes = [16, 16, 8, 8], strides = [1, 1, 1, 1] : tensor<16x16x8x8xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x16x8x8xf32>>
      flow.return
    } count() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    %5 = flow.dispatch.workgroups(%4) : (tensor<16x16x8x8xf32>) -> tensor<128x128xf32> =
        (%arg2: !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x16x8x8xf32>>, %arg3: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<128x128xf32>>) {
      %7 = iree_tensor_ext.dispatch.tensor.load %arg2, offsets = [0, 0, 0, 0], sizes = [16, 16, 8, 8], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x16x8x8xf32>> -> tensor<16x16x8x8xf32>
      %8 = tensor.empty() : tensor<128x128xf32>
      %unpack = linalg.unpack %7 outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [8, 8] into %8 : tensor<16x16x8x8xf32> -> tensor<128x128xf32>
      iree_tensor_ext.dispatch.tensor.store %unpack, %arg3, offsets = [0, 0], sizes = [128, 128], strides = [1, 1] : tensor<128x128xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<128x128xf32>>
      flow.return
    } count() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    %6 = hal.tensor.export %5 "output0" : tensor<128x128xf32> -> !hal.buffer_view
    util.return %6 : !hal.buffer_view
  }
}