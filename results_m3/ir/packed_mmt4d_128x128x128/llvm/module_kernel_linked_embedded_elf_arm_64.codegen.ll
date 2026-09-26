; ModuleID = 'kernel_linked'
source_filename = "kernel_linked"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-unknown-unknown-eabi-elf"

%iree_hal_executable_library_header_t = type { i32, ptr, i32, i32 }
%iree_hal_executable_dispatch_attrs_v0_t = type { i64, i16, i8, i8, i32, i32, i16, i16, i64, i64, i64, i64, i64 }
%iree_hal_executable_source_location_v0_t = type { i32, i32, ptr }
%iree_hal_executable_stage_location_table_v0_t = type { i32, ptr, ptr }
%iree_hal_executable_library_v0_t = type { ptr, %iree_hal_executable_import_table_v0_t, %iree_hal_executable_export_table_v0_t, %iree_hal_executable_constant_table_v0_t, %iree_hal_executable_source_file_table_v0_t }
%iree_hal_executable_import_table_v0_t = type { i32, ptr }
%iree_hal_executable_export_table_v0_t = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%iree_hal_executable_constant_table_v0_t = type { i32 }
%iree_hal_executable_source_file_table_v0_t = type { i32, ptr }
%iree_hal_executable_dispatch_state_v0_t = type { i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr }
%iree_hal_executable_workgroup_state_v0_t = type { i32, i32, i16, i16, i32, ptr, i32 }

@0 = private constant [14 x i8] c"kernel_linked\00", align 1
@iree_hal_executable_library_query_v0_header = private constant %iree_hal_executable_library_header_t { i32 6, ptr @0, i32 0, i32 0 }
@iree_hal_executable_library_query_v0_funcs = private constant [4 x ptr] [ptr @matmul_dispatch_0_pack_f32, ptr @matmul_dispatch_1_pack_f32, ptr @matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32, ptr @matmul_dispatch_3_unpack_f32]
@iree_hal_executable_library_query_v0_attrs = private constant [4 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = private constant [27 x i8] c"matmul_dispatch_0_pack_f32\00", align 1
@2 = private constant [27 x i8] c"matmul_dispatch_1_pack_f32\00", align 1
@3 = private constant [44 x i8] c"matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32\00", align 1
@4 = private constant [29 x i8] c"matmul_dispatch_3_unpack_f32\00", align 1
@iree_hal_executable_library_query_v0_names = private constant [4 x ptr] [ptr @1, ptr @2, ptr @3, ptr @4]
@5 = private constant [137 x i8] c"/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/packed_mmt4d_3345cda3ca/dispatches/configured_module_matmul_dispatch_0.mlir\00", align 1
@6 = private constant [137 x i8] c"/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/packed_mmt4d_3345cda3ca/dispatches/configured_module_matmul_dispatch_1.mlir\00", align 1
@7 = private constant [137 x i8] c"/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/packed_mmt4d_3345cda3ca/dispatches/configured_module_matmul_dispatch_2.mlir\00", align 1
@8 = private constant [137 x i8] c"/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/packed_mmt4d_3345cda3ca/dispatches/configured_module_matmul_dispatch_3.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [4 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 136, ptr @5 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 136, ptr @6 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 136, ptr @7 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 136, ptr @8 }]
@iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = private constant [4 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_names, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_names, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32_stage_names, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_names, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_source_locations }]
@iree_hal_executable_library_query_v0 = private constant %iree_hal_executable_library_v0_t { ptr @iree_hal_executable_library_query_v0_header, %iree_hal_executable_import_table_v0_t zeroinitializer, %iree_hal_executable_export_table_v0_t { i32 4, ptr @iree_hal_executable_library_query_v0_funcs, ptr @iree_hal_executable_library_query_v0_attrs, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_names, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_source_locations, ptr @iree_hal_executable_library_query_v0_stage_location_tables }, %iree_hal_executable_constant_table_v0_t zeroinitializer, %iree_hal_executable_source_file_table_v0_t zeroinitializer }

define internal i32 @matmul_dispatch_0_pack_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !9 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !85
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !85
  %6 = load ptr, ptr %5, align 8, !dbg !85
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !85
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !86
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !86
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !86
  %10 = load ptr, ptr %9, align 8, !dbg !86
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !86
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !87
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !87
  %13 = zext i32 %12 to i64, !dbg !87
  %14 = sdiv i64 %13, 2, !dbg !87
  %15 = mul i64 %14, 2, !dbg !87
  %16 = icmp ne i64 %13, %15, !dbg !87
  %17 = icmp slt i64 %13, 0, !dbg !87
  %18 = and i1 %16, %17, !dbg !87
  %19 = add i64 %14, -1, !dbg !87
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !87
  %21 = srem i64 %13, 2, !dbg !87
  %22 = icmp slt i64 %21, 0, !dbg !87
  %23 = add nsw i64 %21, 2, !dbg !87
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !87
  %25 = mul nsw i64 %24, 64, !dbg !87
  %26 = mul nsw i64 %20, 8, !dbg !87
  br label %27, !dbg !87

27:                                               ; preds = %47, %3
  %28 = phi i64 [ %48, %47 ], [ 0, %3 ], !dbg !87
  %29 = icmp slt i64 %28, 64, !dbg !87
  br i1 %29, label %30, label %49, !dbg !87

30:                                               ; preds = %33, %27
  %31 = phi i64 [ %46, %33 ], [ 0, %27 ], !dbg !87
  %32 = icmp slt i64 %31, 8, !dbg !87
  br i1 %32, label %33, label %47, !dbg !87

33:                                               ; preds = %30
  %34 = add i64 %26, %31, !dbg !87
  %35 = add i64 %25, %28, !dbg !87
  %36 = mul nuw nsw i64 %34, 128, !dbg !87
  %37 = add nuw nsw i64 %36, %35, !dbg !87
  %38 = getelementptr inbounds nuw float, ptr %6, i64 %37, !dbg !87
  %39 = load float, ptr %38, align 4, !dbg !87
  %40 = mul nuw nsw i64 %20, 1024, !dbg !87
  %41 = mul nuw nsw i64 %35, 8, !dbg !87
  %42 = add nuw nsw i64 %40, %41, !dbg !87
  %43 = add nuw nsw i64 %42, %31, !dbg !87
  %44 = add nuw nsw i64 %43, 0, !dbg !87
  %45 = getelementptr inbounds nuw float, ptr %10, i64 %44, !dbg !87
  store float %39, ptr %45, align 4, !dbg !87
  %46 = add i64 %31, 1, !dbg !87
  br label %30, !dbg !87

47:                                               ; preds = %30
  %48 = add i64 %28, 1, !dbg !87
  br label %27, !dbg !87

49:                                               ; preds = %27
  ret i32 0, !dbg !88
}

define internal i32 @matmul_dispatch_1_pack_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !89 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !90
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !90
  %6 = load ptr, ptr %5, align 8, !dbg !90
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !90
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !91
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !91
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !91
  %10 = load ptr, ptr %9, align 8, !dbg !91
  %11 = getelementptr float, ptr %10, i64 16384, !dbg !91
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !91
  %12 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !92
  %13 = extractvalue %iree_hal_executable_workgroup_state_v0_t %12, 0, !dbg !92
  %14 = zext i32 %13 to i64, !dbg !92
  %15 = sdiv i64 %14, 16, !dbg !92
  %16 = mul i64 %15, 16, !dbg !92
  %17 = icmp ne i64 %14, %16, !dbg !92
  %18 = icmp slt i64 %14, 0, !dbg !92
  %19 = and i1 %17, %18, !dbg !92
  %20 = add i64 %15, -1, !dbg !92
  %21 = select i1 %19, i64 %20, i64 %15, !dbg !92
  %22 = srem i64 %14, 16, !dbg !92
  %23 = icmp slt i64 %22, 0, !dbg !92
  %24 = add nsw i64 %22, 16, !dbg !92
  %25 = select i1 %23, i64 %24, i64 %22, !dbg !92
  %26 = mul nsw i64 %21, 2, !dbg !92
  %27 = mul nsw i64 %25, 8, !dbg !92
  %28 = mul nsw i64 %21, 16, !dbg !92
  br label %29, !dbg !92

29:                                               ; preds = %52, %3
  %30 = phi i64 [ %53, %52 ], [ 0, %3 ], !dbg !92
  %31 = icmp slt i64 %30, 2, !dbg !92
  br i1 %31, label %32, label %54, !dbg !92

32:                                               ; preds = %29
  %33 = mul nsw i64 %30, 8, !dbg !92
  br label %34, !dbg !92

34:                                               ; preds = %37, %32
  %35 = phi i64 [ %51, %37 ], [ 0, %32 ], !dbg !92
  %36 = icmp slt i64 %35, 8, !dbg !92
  br i1 %36, label %37, label %52, !dbg !92

37:                                               ; preds = %34
  %38 = add i64 %35, %27, !dbg !92
  %39 = add i64 %33, %28, !dbg !92
  %40 = mul i64 %38, 128, !dbg !92
  %41 = add i64 %40, %39, !dbg !92
  %42 = getelementptr float, ptr %6, i64 %41, !dbg !92
  %43 = load <8 x float>, ptr %42, align 4, !dbg !92
  %44 = add i64 %26, %30, !dbg !92
  %45 = mul i64 %44, 1024, !dbg !92
  %46 = mul i64 %38, 8, !dbg !92
  %47 = add i64 %45, %46, !dbg !92
  %48 = add i64 %47, 0, !dbg !92
  %49 = add i64 %48, 0, !dbg !92
  %50 = getelementptr float, ptr %11, i64 %49, !dbg !92
  store <8 x float> %43, ptr %50, align 4, !dbg !92
  %51 = add i64 %35, 1, !dbg !92
  br label %34, !dbg !92

52:                                               ; preds = %34
  %53 = add i64 %30, 1, !dbg !92
  br label %29, !dbg !92

54:                                               ; preds = %29
  ret i32 0, !dbg !93
}

define internal i32 @matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !94 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !95
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !95
  %6 = load ptr, ptr %5, align 8, !dbg !95
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !95
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !96
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !96
  %9 = load ptr, ptr %8, align 8, !dbg !96
  %10 = getelementptr float, ptr %9, i64 16384, !dbg !96
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !96
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !97
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !97
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !97
  %14 = load ptr, ptr %13, align 8, !dbg !97
  %15 = getelementptr float, ptr %14, i64 32768, !dbg !97
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !97
  br label %16, !dbg !98

16:                                               ; preds = %147, %3
  %17 = phi i64 [ %148, %147 ], [ 0, %3 ], !dbg !98
  %18 = icmp slt i64 %17, 16, !dbg !98
  br i1 %18, label %19, label %149, !dbg !98

19:                                               ; preds = %110, %16
  %20 = phi i64 [ %146, %110 ], [ 0, %16 ], !dbg !98
  %21 = icmp slt i64 %20, 16, !dbg !98
  br i1 %21, label %22, label %147, !dbg !98

22:                                               ; preds = %26, %19
  %23 = phi i64 [ %109, %26 ], [ 0, %19 ], !dbg !98
  %24 = phi [8 x <8 x float>] [ %108, %26 ], [ zeroinitializer, %19 ], !dbg !98
  %25 = icmp slt i64 %23, 128, !dbg !98
  br i1 %25, label %26, label %110, !dbg !98

26:                                               ; preds = %22
  %27 = mul i64 %20, 1024, !dbg !98
  %28 = mul i64 %23, 8, !dbg !98
  %29 = add i64 %27, %28, !dbg !98
  %30 = add i64 %29, 0, !dbg !98
  %31 = add i64 %30, 0, !dbg !98
  %32 = getelementptr float, ptr %10, i64 %31, !dbg !98
  %33 = load <8 x float>, ptr %32, align 4, !dbg !98
  %34 = mul nuw nsw i64 %17, 1024
  %35 = mul nuw nsw i64 %23, 8
  %36 = add nuw nsw i64 %34, %35
  %37 = add nuw nsw i64 %36, 0
  %38 = add nuw nsw i64 %37, 0
  %39 = getelementptr inbounds nuw float, ptr %6, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = insertelement <8 x float> poison, float %40, i32 0
  %42 = shufflevector <8 x float> %41, <8 x float> poison, <8 x i32> zeroinitializer
  %43 = extractvalue [8 x <8 x float>] %24, 0
  %44 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %42, <8 x float> %33, <8 x float> %43)
  %45 = add nuw nsw i64 %36, 1
  %46 = add nuw nsw i64 %45, 0
  %47 = getelementptr inbounds nuw float, ptr %6, i64 %46
  %48 = load float, ptr %47, align 4
  %49 = insertelement <8 x float> poison, float %48, i32 0
  %50 = shufflevector <8 x float> %49, <8 x float> poison, <8 x i32> zeroinitializer
  %51 = extractvalue [8 x <8 x float>] %24, 1
  %52 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %50, <8 x float> %33, <8 x float> %51)
  %53 = add nuw nsw i64 %36, 2
  %54 = add nuw nsw i64 %53, 0
  %55 = getelementptr inbounds nuw float, ptr %6, i64 %54
  %56 = load float, ptr %55, align 4
  %57 = insertelement <8 x float> poison, float %56, i32 0
  %58 = shufflevector <8 x float> %57, <8 x float> poison, <8 x i32> zeroinitializer
  %59 = extractvalue [8 x <8 x float>] %24, 2
  %60 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %58, <8 x float> %33, <8 x float> %59)
  %61 = add nuw nsw i64 %36, 3
  %62 = add nuw nsw i64 %61, 0
  %63 = getelementptr inbounds nuw float, ptr %6, i64 %62
  %64 = load float, ptr %63, align 4
  %65 = insertelement <8 x float> poison, float %64, i32 0
  %66 = shufflevector <8 x float> %65, <8 x float> poison, <8 x i32> zeroinitializer
  %67 = extractvalue [8 x <8 x float>] %24, 3
  %68 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %66, <8 x float> %33, <8 x float> %67)
  %69 = add nuw nsw i64 %36, 4
  %70 = add nuw nsw i64 %69, 0
  %71 = getelementptr inbounds nuw float, ptr %6, i64 %70
  %72 = load float, ptr %71, align 4
  %73 = insertelement <8 x float> poison, float %72, i32 0
  %74 = shufflevector <8 x float> %73, <8 x float> poison, <8 x i32> zeroinitializer
  %75 = extractvalue [8 x <8 x float>] %24, 4
  %76 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %74, <8 x float> %33, <8 x float> %75)
  %77 = add nuw nsw i64 %36, 5
  %78 = add nuw nsw i64 %77, 0
  %79 = getelementptr inbounds nuw float, ptr %6, i64 %78
  %80 = load float, ptr %79, align 4
  %81 = insertelement <8 x float> poison, float %80, i32 0
  %82 = shufflevector <8 x float> %81, <8 x float> poison, <8 x i32> zeroinitializer
  %83 = extractvalue [8 x <8 x float>] %24, 5
  %84 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %82, <8 x float> %33, <8 x float> %83)
  %85 = add nuw nsw i64 %36, 6
  %86 = add nuw nsw i64 %85, 0
  %87 = getelementptr inbounds nuw float, ptr %6, i64 %86
  %88 = load float, ptr %87, align 4
  %89 = insertelement <8 x float> poison, float %88, i32 0
  %90 = shufflevector <8 x float> %89, <8 x float> poison, <8 x i32> zeroinitializer
  %91 = extractvalue [8 x <8 x float>] %24, 6
  %92 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %90, <8 x float> %33, <8 x float> %91)
  %93 = add nuw nsw i64 %36, 7
  %94 = add nuw nsw i64 %93, 0
  %95 = getelementptr inbounds nuw float, ptr %6, i64 %94
  %96 = load float, ptr %95, align 4
  %97 = insertelement <8 x float> poison, float %96, i32 0
  %98 = shufflevector <8 x float> %97, <8 x float> poison, <8 x i32> zeroinitializer
  %99 = extractvalue [8 x <8 x float>] %24, 7
  %100 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %98, <8 x float> %33, <8 x float> %99)
  %101 = insertvalue [8 x <8 x float>] poison, <8 x float> %44, 0
  %102 = insertvalue [8 x <8 x float>] %101, <8 x float> %52, 1
  %103 = insertvalue [8 x <8 x float>] %102, <8 x float> %60, 2
  %104 = insertvalue [8 x <8 x float>] %103, <8 x float> %68, 3
  %105 = insertvalue [8 x <8 x float>] %104, <8 x float> %76, 4
  %106 = insertvalue [8 x <8 x float>] %105, <8 x float> %84, 5
  %107 = insertvalue [8 x <8 x float>] %106, <8 x float> %92, 6
  %108 = insertvalue [8 x <8 x float>] %107, <8 x float> %100, 7
  %109 = add i64 %23, 1, !dbg !98
  br label %22, !dbg !98

110:                                              ; preds = %22
  %111 = extractvalue [8 x <8 x float>] %24, 0, !dbg !98
  %112 = mul i64 %17, 1024, !dbg !98
  %113 = mul i64 %20, 64, !dbg !98
  %114 = add i64 %112, %113, !dbg !98
  %115 = add i64 %114, 0, !dbg !98
  %116 = add i64 %115, 0, !dbg !98
  %117 = getelementptr float, ptr %15, i64 %116, !dbg !98
  store <8 x float> %111, ptr %117, align 4, !dbg !98
  %118 = extractvalue [8 x <8 x float>] %24, 1, !dbg !98
  %119 = add i64 %114, 8, !dbg !98
  %120 = add i64 %119, 0, !dbg !98
  %121 = getelementptr float, ptr %15, i64 %120, !dbg !98
  store <8 x float> %118, ptr %121, align 4, !dbg !98
  %122 = extractvalue [8 x <8 x float>] %24, 2, !dbg !98
  %123 = add i64 %114, 16, !dbg !98
  %124 = add i64 %123, 0, !dbg !98
  %125 = getelementptr float, ptr %15, i64 %124, !dbg !98
  store <8 x float> %122, ptr %125, align 4, !dbg !98
  %126 = extractvalue [8 x <8 x float>] %24, 3, !dbg !98
  %127 = add i64 %114, 24, !dbg !98
  %128 = add i64 %127, 0, !dbg !98
  %129 = getelementptr float, ptr %15, i64 %128, !dbg !98
  store <8 x float> %126, ptr %129, align 4, !dbg !98
  %130 = extractvalue [8 x <8 x float>] %24, 4, !dbg !98
  %131 = add i64 %114, 32, !dbg !98
  %132 = add i64 %131, 0, !dbg !98
  %133 = getelementptr float, ptr %15, i64 %132, !dbg !98
  store <8 x float> %130, ptr %133, align 4, !dbg !98
  %134 = extractvalue [8 x <8 x float>] %24, 5, !dbg !98
  %135 = add i64 %114, 40, !dbg !98
  %136 = add i64 %135, 0, !dbg !98
  %137 = getelementptr float, ptr %15, i64 %136, !dbg !98
  store <8 x float> %134, ptr %137, align 4, !dbg !98
  %138 = extractvalue [8 x <8 x float>] %24, 6, !dbg !98
  %139 = add i64 %114, 48, !dbg !98
  %140 = add i64 %139, 0, !dbg !98
  %141 = getelementptr float, ptr %15, i64 %140, !dbg !98
  store <8 x float> %138, ptr %141, align 4, !dbg !98
  %142 = extractvalue [8 x <8 x float>] %24, 7, !dbg !98
  %143 = add i64 %114, 56, !dbg !98
  %144 = add i64 %143, 0, !dbg !98
  %145 = getelementptr float, ptr %15, i64 %144, !dbg !98
  store <8 x float> %142, ptr %145, align 4, !dbg !98
  %146 = add i64 %20, 1, !dbg !98
  br label %19, !dbg !98

147:                                              ; preds = %19
  %148 = add i64 %17, 1, !dbg !98
  br label %16, !dbg !98

149:                                              ; preds = %16
  ret i32 0, !dbg !99
}

define internal i32 @matmul_dispatch_3_unpack_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !100 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !101
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !101
  %6 = load ptr, ptr %5, align 8, !dbg !101
  %7 = getelementptr float, ptr %6, i64 32768, !dbg !101
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !101
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !102
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !102
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !102
  %11 = load ptr, ptr %10, align 8, !dbg !102
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !102
  %12 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !103
  %13 = extractvalue %iree_hal_executable_workgroup_state_v0_t %12, 0, !dbg !103
  %14 = zext i32 %13 to i64, !dbg !103
  %15 = sdiv i64 %14, 2, !dbg !103
  %16 = mul i64 %15, 2, !dbg !103
  %17 = icmp ne i64 %14, %16, !dbg !103
  %18 = icmp slt i64 %14, 0, !dbg !103
  %19 = and i1 %17, %18, !dbg !103
  %20 = add i64 %15, -1, !dbg !103
  %21 = select i1 %19, i64 %20, i64 %15, !dbg !103
  %22 = srem i64 %14, 2, !dbg !103
  %23 = icmp slt i64 %22, 0, !dbg !103
  %24 = add nsw i64 %22, 2, !dbg !103
  %25 = select i1 %23, i64 %24, i64 %22, !dbg !103
  %26 = mul nsw i64 %21, 16, !dbg !103
  %27 = mul nsw i64 %25, 64, !dbg !103
  %28 = icmp slt i64 %26, 0, !dbg !103
  %29 = sub i64 -1, %26, !dbg !103
  %30 = select i1 %28, i64 %29, i64 %26, !dbg !103
  %31 = sdiv i64 %30, 8, !dbg !103
  %32 = sub i64 -1, %31, !dbg !103
  %33 = select i1 %28, i64 %32, i64 %31, !dbg !103
  %34 = icmp slt i64 %27, 0, !dbg !103
  %35 = sub i64 -1, %27, !dbg !103
  %36 = select i1 %34, i64 %35, i64 %27, !dbg !103
  %37 = sdiv i64 %36, 8, !dbg !103
  %38 = sub i64 -1, %37, !dbg !103
  %39 = select i1 %34, i64 %38, i64 %37, !dbg !103
  br label %40, !dbg !103

40:                                               ; preds = %89, %3
  %41 = phi i64 [ %90, %89 ], [ 0, %3 ], !dbg !103
  %42 = icmp slt i64 %41, 16, !dbg !103
  br i1 %42, label %43, label %91, !dbg !103

43:                                               ; preds = %40
  %44 = icmp slt i64 %41, 0, !dbg !103
  %45 = sub i64 -1, %41, !dbg !103
  %46 = select i1 %44, i64 %45, i64 %41, !dbg !103
  %47 = sdiv i64 %46, 8, !dbg !103
  %48 = sub i64 -1, %47, !dbg !103
  %49 = select i1 %44, i64 %48, i64 %47, !dbg !103
  br label %50, !dbg !103

50:                                               ; preds = %87, %43
  %51 = phi i64 [ %88, %87 ], [ 0, %43 ], !dbg !103
  %52 = icmp slt i64 %51, 64, !dbg !103
  br i1 %52, label %53, label %89, !dbg !103

53:                                               ; preds = %50
  %54 = icmp slt i64 %51, 0, !dbg !103
  %55 = sub i64 -1, %51, !dbg !103
  %56 = select i1 %54, i64 %55, i64 %51, !dbg !103
  %57 = sdiv i64 %56, 8, !dbg !103
  %58 = sub i64 -1, %57, !dbg !103
  %59 = select i1 %54, i64 %58, i64 %57, !dbg !103
  br label %60, !dbg !103

60:                                               ; preds = %85, %53
  %61 = phi i64 [ %86, %85 ], [ 0, %53 ], !dbg !103
  %62 = icmp slt i64 %61, 8, !dbg !103
  br i1 %62, label %63, label %87, !dbg !103

63:                                               ; preds = %66, %60
  %64 = phi i64 [ %84, %66 ], [ 0, %60 ], !dbg !103
  %65 = icmp slt i64 %64, 8, !dbg !103
  br i1 %65, label %66, label %85, !dbg !103

66:                                               ; preds = %63
  %67 = add i64 %33, %49, !dbg !103
  %68 = add i64 %39, %59, !dbg !103
  %69 = mul nuw nsw i64 %67, 1024, !dbg !103
  %70 = mul nuw nsw i64 %68, 64, !dbg !103
  %71 = add nuw nsw i64 %69, %70, !dbg !103
  %72 = mul nuw nsw i64 %61, 8, !dbg !103
  %73 = add nuw nsw i64 %71, %72, !dbg !103
  %74 = add nuw nsw i64 %73, %64, !dbg !103
  %75 = getelementptr inbounds nuw float, ptr %7, i64 %74, !dbg !103
  %76 = load float, ptr %75, align 4, !dbg !103
  %77 = add i64 %26, %41, !dbg !103
  %78 = add i64 %77, %61, !dbg !103
  %79 = add i64 %27, %51, !dbg !103
  %80 = add i64 %79, %64, !dbg !103
  %81 = mul nuw nsw i64 %78, 128, !dbg !103
  %82 = add nuw nsw i64 %81, %80, !dbg !103
  %83 = getelementptr inbounds nuw float, ptr %11, i64 %82, !dbg !103
  store float %76, ptr %83, align 4, !dbg !103
  %84 = add i64 %64, 1, !dbg !103
  br label %63, !dbg !103

85:                                               ; preds = %63
  %86 = add i64 %61, 1, !dbg !103
  br label %60, !dbg !103

87:                                               ; preds = %60
  %88 = add i64 %51, 8, !dbg !103
  br label %50, !dbg !103

89:                                               ; preds = %50
  %90 = add i64 %41, 8, !dbg !103
  br label %40, !dbg !103

91:                                               ; preds = %40
  ret i32 0, !dbg !104
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #2

; Function Attrs: uwtable
define dso_local dllexport ptr @iree_hal_executable_library_query(i32 %0, ptr %1) #3 {
entry:
  %2 = icmp eq i32 %0, 6
  %3 = select i1 %2, ptr @iree_hal_executable_library_query_v0, ptr null
  ret ptr %3
}

attributes #0 = { "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #3 = { uwtable "nonlazybind" }

!llvm.dbg.cu = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "configured_module_matmul_dispatch_0.mlir", directory: "/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/packed_mmt4d_3345cda3ca/dispatches")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !3, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "configured_module_matmul_dispatch_1.mlir", directory: "/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/packed_mmt4d_3345cda3ca/dispatches")
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !5, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "configured_module_matmul_dispatch_2.mlir", directory: "/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/packed_mmt4d_3345cda3ca/dispatches")
!6 = distinct !DICompileUnit(language: DW_LANG_C17, file: !7, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "configured_module_matmul_dispatch_3.mlir", directory: "/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/packed_mmt4d_3345cda3ca/dispatches")
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = distinct !DISubprogram(name: "matmul_dispatch_0_pack_f32", linkageName: "matmul_dispatch_0_pack_f32", scope: !1, file: !1, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!10 = !DISubroutineType(cc: DW_CC_normal, types: !11)
!11 = !{!12, !13, !44, !73}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_environment_v0_t", baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_environment_v0_t", scope: !17, file: !17, line: 246, size: 768, elements: !18)
!17 = !DIFile(filename: "runtime/src/iree/hal/local/executable_library.h", directory: ".")
!18 = !{!19, !27, !30, !33, !35}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, scope: !17, file: !17, line: 227, baseType: !23, size: 2048, elements: !25)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", baseType: !24)
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !{!26}
!26 = !DISubrange(count: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "import_thunk", baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "void", encoding: DW_ATE_address)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "import_funcs", baseType: !31, size: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "import_contexts", baseType: !34, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "processor", baseType: !36, offset: 256)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_processor_v0_t", scope: !17, file: !17, line: 227, size: 512, elements: !37)
!37 = !{!38}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !39)
!39 = !DICompositeType(tag: DW_TAG_array_type, scope: !17, file: !17, line: 227, baseType: !40, size: 512, elements: !42)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", baseType: !41)
!41 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!42 = !{!43}
!43 = !DISubrange(count: 8)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_dispatch_state_v0_t", baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_dispatch_state_v0_t", scope: !17, file: !17, line: 275, size: 384, elements: !48)
!48 = !{!49, !50, !51, !54, !55, !56, !57, !58, !61, !62, !63, !68}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_x", baseType: !23, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_y", baseType: !23, size: 32, offset: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_z", baseType: !52, size: 16, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", baseType: !53)
!53 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "constant_count", baseType: !52, size: 16, offset: 80)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_x", baseType: !23, size: 32, offset: 96)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_y", baseType: !23, size: 32, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_z", baseType: !52, size: 16, offset: 160)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "max_concurrency", baseType: !59, size: 8, offset: 176)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", baseType: !60)
!60 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "binding_count", baseType: !59, size: 8, offset: 184)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !20, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "binding_ptrs", baseType: !64, size: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, scope: !17, file: !17, line: 227, baseType: !67, size: 4096, elements: !25)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "binding_lengths", baseType: !69, size: 64, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DICompositeType(tag: DW_TAG_array_type, scope: !17, file: !17, line: 227, baseType: !72, size: 4096, elements: !25)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", baseType: !40)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_workgroup_state_v0_t", baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_workgroup_state_v0_t", scope: !17, file: !17, line: 321, size: 256, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !84}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_x", baseType: !23, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_y", baseType: !23, size: 32, offset: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_z", baseType: !52, size: 16, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", baseType: !52, size: 16, offset: 80)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", baseType: !23, size: 32, offset: 96)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory", baseType: !28, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory_size", baseType: !23, size: 32, offset: 192)
!85 = !DILocation(line: 10, column: 8, scope: !9)
!86 = !DILocation(line: 11, column: 8, scope: !9)
!87 = !DILocation(line: 14, column: 8, scope: !9)
!88 = !DILocation(line: 16, column: 8, scope: !9)
!89 = distinct !DISubprogram(name: "matmul_dispatch_1_pack_f32", linkageName: "matmul_dispatch_1_pack_f32", scope: !3, file: !3, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!90 = !DILocation(line: 11, column: 8, scope: !89)
!91 = !DILocation(line: 12, column: 8, scope: !89)
!92 = !DILocation(line: 15, column: 8, scope: !89)
!93 = !DILocation(line: 17, column: 8, scope: !89)
!94 = distinct !DISubprogram(name: "matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32", linkageName: "matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32", scope: !5, file: !5, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!95 = !DILocation(line: 13, column: 8, scope: !94)
!96 = !DILocation(line: 14, column: 8, scope: !94)
!97 = !DILocation(line: 15, column: 8, scope: !94)
!98 = !DILocation(line: 20, column: 8, scope: !94)
!99 = !DILocation(line: 22, column: 8, scope: !94)
!100 = distinct !DISubprogram(name: "matmul_dispatch_3_unpack_f32", linkageName: "matmul_dispatch_3_unpack_f32", scope: !7, file: !7, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!101 = !DILocation(line: 11, column: 8, scope: !100)
!102 = !DILocation(line: 12, column: 8, scope: !100)
!103 = !DILocation(line: 15, column: 8, scope: !100)
!104 = !DILocation(line: 17, column: 8, scope: !100)
