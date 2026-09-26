func.func @matmul(%A: tensor<128x128xf32>, %B: tensor<128x128xf32>) -> tensor<128x128xf32> {
  %init = tensor.empty() : tensor<128x128xf32>
  %cst = arith.constant 0.0 : f32
  %filled = linalg.fill ins(%cst : f32) outs(%init : tensor<128x128xf32>) -> tensor<128x128xf32>
  %r = linalg.matmul ins(%A, %B : tensor<128x128xf32>, tensor<128x128xf32>) outs(%filled : tensor<128x128xf32>) -> tensor<128x128xf32>
  return %r : tensor<128x128xf32>
}
