// MLIRBench hand-written matmul codegen schedule (MLIR transform dialect).
//
// Replaces IREE's CPUDoubleTilingExpert pipeline for one matmul dispatch.
// IREE hands @mlirbench_matmul the dispatch function on tensors (after
// dispatch formation, before bufferization); this schedule must deliver a
// bufferized, workgroup-mapped, vector-lowered function. IREE then only runs
// its final conversion to LLVM.
//
// Parameters (filled in by mlirbench/schedule.py):
//   256 x 256         cache tile   -> one workgroup per block of C
//   16 x 32 x 4 register tile -> one vector.contract, K step
//
// Stages are delimited by "BEGIN:<stage>" / "END:<stage>" comment lines so the
// optimization ladder can switch them on one at a time:
//   ktile                        cache-level K blocking (GEMM "kc" blocking):
//                                256-deep slices of A and B stay cache-resident
//                                while the register tiles sweep over them
//   tile_separate | tile_fused   register tiling, fill separate / fused
//   hoist                        keep the C accumulator in registers across K
//   lower                        vector.contract -> outer products -> FMAs
module attributes { transform.with_named_sequence } {

  // Required entry point when a transform library is supplied. Kernel
  // selection is done per-op via compilation_info, so there is nothing to do.
  transform.named_sequence @__kernel_config(%op: !transform.any_op {transform.readonly}) {
    transform.yield
  }

  transform.named_sequence @mlirbench_matmul(%module: !transform.any_op {transform.readonly}) {
    %func = transform.structured.match ops{["func.func"]} in %module : (!transform.any_op) -> !transform.any_op
    %fill = transform.structured.match ops{["linalg.fill"]} in %func : (!transform.any_op) -> !transform.any_op
    %mm = transform.structured.match ops{["linalg.matmul"]} in %func : (!transform.any_op) -> !transform.any_op

    // ---- Level 1: cache tile. scf.forall over (M, N) blocks of C, one per
    // workgroup; the zero-fill of C is fused into each block.
    %mm_wg, %forall = transform.structured.tile_using_forall %mm tile_sizes [256, 256]
        ( mapping = [#gpu.block<y>, #gpu.block<x>] )
        : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
    transform.structured.fuse_into_containing_op %fill into %forall
        : (!transform.any_op, !transform.any_op) -> (!transform.any_op, !transform.any_op)
    transform.iree.populate_workgroup_count_region_using_num_threads_slice %forall : (!transform.any_op) -> ()

    // ---- Level 1.5: K blocking. Tile the reduction by TK; the C block is
    // carried across K blocks, the fill stays outside (initialize C once).
    %mm_kb, %lkb = transform.structured.tile_using_for %mm_wg tile_sizes [0, 0, 256]
        : (!transform.any_op) -> (!transform.any_op, !transform.any_op)

    // ---- Level 2: register tile (vm x vn) and K step (vk). The fill is tiled
    // on its own, so C is zeroed in memory and re-read by the matmul.
    %mm_l1 = transform.structured.match ops{["linalg.matmul"]} in %func : (!transform.any_op) -> !transform.any_op
    %mm_reg, %l0, %l1, %l2 = transform.structured.tile_using_for %mm_l1 tile_sizes [16, 32, 4]
        : (!transform.any_op) -> (!transform.any_op, !transform.any_op, !transform.any_op, !transform.any_op)
    %fill2 = transform.structured.match ops{["linalg.fill"]} in %func : (!transform.any_op) -> !transform.any_op
    %fill_reg, %f0, %f1 = transform.structured.tile_using_for %fill2 tile_sizes [16, 32]
        : (!transform.any_op) -> (!transform.any_op, !transform.any_op, !transform.any_op)


    // ---- Vectorize: each register tile becomes one vector.contract on
    // vector<VMxVK> x vector<VKxVN> -> vector<VMxVN>.
    %func_v = transform.structured.vectorize_children_and_apply_patterns %func : (!transform.any_op) -> !transform.any_op
    transform.apply_patterns to %func_v {
      transform.apply_patterns.canonicalization
      transform.apply_patterns.tensor.fold_tensor_subset_ops_into_vector_transfers
    } : !transform.any_op
    transform.apply_cse to %func_v : !transform.any_op

    // ---- Keep C in registers across K: while still on tensors, move the
    // loop-invariant read/write of the C tile out of the K loop, so it is
    // carried as a vector iter_arg instead of loaded and stored every step.
    %loops = transform.structured.match ops{["scf.for"]} in %func_v : (!transform.any_op) -> !transform.any_op
    transform.foreach %loops : !transform.any_op {
    ^bb0(%loop: !transform.any_op):
      transform.loop.hoist_loop_invariant_subsets %loop : !transform.any_op
    }
    transform.apply_patterns to %func_v {
      transform.apply_patterns.canonicalization
    } : !transform.any_op

    // ---- Bufferize: IREE-aware one-shot bufferization onto the HAL bindings.
    transform.iree.eliminate_empty_tensors %func_v : (!transform.any_op) -> ()
    %func_buf = transform.iree.bufferize %func_v : (!transform.any_op) -> !transform.any_op
    transform.apply_patterns to %func_buf {
      transform.apply_patterns.canonicalization
    } : !transform.any_op
    %func_clean = transform.apply_registered_pass "iree-codegen-cleanup-buffer-alloc-view" to %func_buf
        : (!transform.any_op) -> !transform.any_op

    // ---- Map the scf.forall onto workgroup ids.
    transform.iree.forall_to_workgroup %func_clean : (!transform.any_op) -> ()

    // ---- Lower vector.contract -> vector.outerproduct -> vector.fma (one
    // broadcast-A x row-of-B FMA per accumulator row), then transfers to
    // plain vector loads/stores. Applied as separate ordered stages: applied
    // as one combined set these pattern groups rewrite each other in a loop.
    transform.apply_patterns to %func_clean {
      transform.apply_patterns.vector.lower_contraction lowering_strategy = "outerproduct"
    } : !transform.any_op
    transform.apply_patterns to %func_clean {
      transform.apply_patterns.vector.lower_outerproduct
    } : !transform.any_op
    transform.apply_patterns to %func_clean {
      transform.apply_patterns.vector.transfer_permutation_patterns
      transform.apply_patterns.vector.lower_transfer max_transfer_rank = 1
    } : !transform.any_op
    transform.apply_patterns to %func_clean {
      transform.apply_patterns.canonicalization
    } : !transform.any_op

    // Tell IREE the function is fully lowered: only LLVM conversion remains.
    %none = transform.param.constant #iree_codegen.translation_info<pipeline = None> -> !transform.any_param
    transform.annotate %func_clean "translation_info" = %none : !transform.any_op, !transform.any_param
    transform.yield
  }
}
