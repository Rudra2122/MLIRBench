#config = #iree_cpu.lowering_config<distribution = [16, 64, 0], vector_common_parallel = [4, 64, 0], vector_reduction = [0, 0, 16]>
#translation = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>
#ci = #iree_codegen.compilation_info<lowering_config = #config, translation_info = #translation>
func.func @matmul(%A: tensor<128x128xf32>, %B: tensor<128x128xf32>) -> tensor<128x128xf32> {
  %init = tensor.empty() : tensor<128x128xf32>
  %cst = arith.constant 0.0 : f32
  %filled = linalg.fill ins(%cst : f32) outs(%init : tensor<128x128xf32>) -> tensor<128x128xf32>
  %r = linalg.matmul {compilation_info = #ci} ins(%A, %B : tensor<128x128xf32>, tensor<128x128xf32>) outs(%filled : tensor<128x128xf32>) -> tensor<128x128xf32>
  return %r : tensor<128x128xf32>
}
