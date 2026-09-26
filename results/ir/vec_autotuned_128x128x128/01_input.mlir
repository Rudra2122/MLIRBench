module {
  util.func public @matmul(%arg0: tensor<128x128xf32>, %arg1: tensor<128x128xf32>) -> tensor<128x128xf32> {
    %0 = tensor.empty() : tensor<128x128xf32>
    %cst = arith.constant 0.000000e+00 : f32
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<128x128xf32>) -> tensor<128x128xf32>
    %2 = linalg.matmul {compilation_info = #iree_codegen.compilation_info<lowering_config = #iree_cpu.lowering_config<distribution = [16, 64, 0], vector_common_parallel = [4, 64, 0], vector_reduction = [0, 0, 16]>, translation_info = <pipeline = CPUDoubleTilingExpert>>} ins(%arg0, %arg1 : tensor<128x128xf32>, tensor<128x128xf32>) outs(%1 : tensor<128x128xf32>) -> tensor<128x128xf32>
    util.return %2 : tensor<128x128xf32>
  }
}