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
@5 = private constant [139 x i8] c"/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/v1_generic_isa_a83b1c1da1/dispatches/configured_module_matmul_dispatch_0.mlir\00", align 1
@6 = private constant [139 x i8] c"/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/v1_generic_isa_a83b1c1da1/dispatches/configured_module_matmul_dispatch_1.mlir\00", align 1
@7 = private constant [139 x i8] c"/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/v1_generic_isa_a83b1c1da1/dispatches/configured_module_matmul_dispatch_2.mlir\00", align 1
@8 = private constant [139 x i8] c"/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/v1_generic_isa_a83b1c1da1/dispatches/configured_module_matmul_dispatch_3.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [4 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 138, ptr @5 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 138, ptr @6 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 138, ptr @7 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 138, ptr @8 }]
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

declare i32 @iree_uk_mmt4d(ptr, i64, i64, ptr, i64, i64, ptr, i64, i64, i64, i64, i64, i32, i32, i32, i32, ptr) #0

define internal i32 @matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !94 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !95
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !95
  %6 = load ptr, ptr %5, align 8, !dbg !95
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !96
  %8 = load ptr, ptr %7, align 8, !dbg !96
  br label %9, !dbg !95

9:                                                ; preds = %25, %3
  %10 = phi i64 [ %26, %25 ], [ 0, %3 ], !dbg !95
  %11 = icmp slt i64 %10, 16, !dbg !95
  br i1 %11, label %12, label %27, !dbg !95

12:                                               ; preds = %15, %9
  %13 = phi i64 [ %24, %15 ], [ 0, %9 ], !dbg !95
  %14 = icmp slt i64 %13, 16, !dbg !95
  br i1 %14, label %15, label %25, !dbg !95

15:                                               ; preds = %12
  %16 = mul nsw i64 %10, 1024, !dbg !95
  %17 = mul nsw i64 %13, 1024, !dbg !95
  %18 = add i64 %17, 16384, !dbg !95
  %19 = mul nsw i64 %13, 64, !dbg !96
  %20 = add i64 %16, %19, !dbg !96
  %21 = add i64 %20, 32768, !dbg !96
  %22 = getelementptr inbounds ptr, ptr %0, i32 4, !dbg !95
  %23 = call i32 @iree_uk_mmt4d(ptr %6, i64 %16, i64 1024, ptr %6, i64 %18, i64 1024, ptr %8, i64 %21, i64 1024, i64 1, i64 1, i64 128, i32 8, i32 8, i32 1, i32 1537, ptr %22), !dbg !95
  %24 = add i64 %13, 1, !dbg !95
  br label %12, !dbg !95

25:                                               ; preds = %12
  %26 = add i64 %10, 1, !dbg !95
  br label %9, !dbg !95

27:                                               ; preds = %9
  ret i32 0, !dbg !97
}

define internal i32 @matmul_dispatch_3_unpack_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !98 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !99
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !99
  %6 = load ptr, ptr %5, align 8, !dbg !99
  %7 = getelementptr float, ptr %6, i64 32768, !dbg !99
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !99
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !100
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !100
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !100
  %11 = load ptr, ptr %10, align 8, !dbg !100
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !100
  %12 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !101
  %13 = extractvalue %iree_hal_executable_workgroup_state_v0_t %12, 0, !dbg !101
  %14 = zext i32 %13 to i64, !dbg !101
  %15 = sdiv i64 %14, 2, !dbg !101
  %16 = mul i64 %15, 2, !dbg !101
  %17 = icmp ne i64 %14, %16, !dbg !101
  %18 = icmp slt i64 %14, 0, !dbg !101
  %19 = and i1 %17, %18, !dbg !101
  %20 = add i64 %15, -1, !dbg !101
  %21 = select i1 %19, i64 %20, i64 %15, !dbg !101
  %22 = srem i64 %14, 2, !dbg !101
  %23 = icmp slt i64 %22, 0, !dbg !101
  %24 = add nsw i64 %22, 2, !dbg !101
  %25 = select i1 %23, i64 %24, i64 %22, !dbg !101
  %26 = mul nsw i64 %21, 16, !dbg !101
  %27 = mul nsw i64 %25, 64, !dbg !101
  %28 = icmp slt i64 %26, 0, !dbg !101
  %29 = sub i64 -1, %26, !dbg !101
  %30 = select i1 %28, i64 %29, i64 %26, !dbg !101
  %31 = sdiv i64 %30, 8, !dbg !101
  %32 = sub i64 -1, %31, !dbg !101
  %33 = select i1 %28, i64 %32, i64 %31, !dbg !101
  %34 = icmp slt i64 %27, 0, !dbg !101
  %35 = sub i64 -1, %27, !dbg !101
  %36 = select i1 %34, i64 %35, i64 %27, !dbg !101
  %37 = sdiv i64 %36, 8, !dbg !101
  %38 = sub i64 -1, %37, !dbg !101
  %39 = select i1 %34, i64 %38, i64 %37, !dbg !101
  br label %40, !dbg !101

40:                                               ; preds = %89, %3
  %41 = phi i64 [ %90, %89 ], [ 0, %3 ], !dbg !101
  %42 = icmp slt i64 %41, 16, !dbg !101
  br i1 %42, label %43, label %91, !dbg !101

43:                                               ; preds = %40
  %44 = icmp slt i64 %41, 0, !dbg !101
  %45 = sub i64 -1, %41, !dbg !101
  %46 = select i1 %44, i64 %45, i64 %41, !dbg !101
  %47 = sdiv i64 %46, 8, !dbg !101
  %48 = sub i64 -1, %47, !dbg !101
  %49 = select i1 %44, i64 %48, i64 %47, !dbg !101
  br label %50, !dbg !101

50:                                               ; preds = %87, %43
  %51 = phi i64 [ %88, %87 ], [ 0, %43 ], !dbg !101
  %52 = icmp slt i64 %51, 64, !dbg !101
  br i1 %52, label %53, label %89, !dbg !101

53:                                               ; preds = %50
  %54 = icmp slt i64 %51, 0, !dbg !101
  %55 = sub i64 -1, %51, !dbg !101
  %56 = select i1 %54, i64 %55, i64 %51, !dbg !101
  %57 = sdiv i64 %56, 8, !dbg !101
  %58 = sub i64 -1, %57, !dbg !101
  %59 = select i1 %54, i64 %58, i64 %57, !dbg !101
  br label %60, !dbg !101

60:                                               ; preds = %85, %53
  %61 = phi i64 [ %86, %85 ], [ 0, %53 ], !dbg !101
  %62 = icmp slt i64 %61, 8, !dbg !101
  br i1 %62, label %63, label %87, !dbg !101

63:                                               ; preds = %66, %60
  %64 = phi i64 [ %84, %66 ], [ 0, %60 ], !dbg !101
  %65 = icmp slt i64 %64, 8, !dbg !101
  br i1 %65, label %66, label %85, !dbg !101

66:                                               ; preds = %63
  %67 = add i64 %33, %49, !dbg !101
  %68 = add i64 %39, %59, !dbg !101
  %69 = mul nuw nsw i64 %67, 1024, !dbg !101
  %70 = mul nuw nsw i64 %68, 64, !dbg !101
  %71 = add nuw nsw i64 %69, %70, !dbg !101
  %72 = mul nuw nsw i64 %61, 8, !dbg !101
  %73 = add nuw nsw i64 %71, %72, !dbg !101
  %74 = add nuw nsw i64 %73, %64, !dbg !101
  %75 = getelementptr inbounds nuw float, ptr %7, i64 %74, !dbg !101
  %76 = load float, ptr %75, align 4, !dbg !101
  %77 = add i64 %26, %41, !dbg !101
  %78 = add i64 %77, %61, !dbg !101
  %79 = add i64 %27, %51, !dbg !101
  %80 = add i64 %79, %64, !dbg !101
  %81 = mul nuw nsw i64 %78, 128, !dbg !101
  %82 = add nuw nsw i64 %81, %80, !dbg !101
  %83 = getelementptr inbounds nuw float, ptr %11, i64 %82, !dbg !101
  store float %76, ptr %83, align 4, !dbg !101
  %84 = add i64 %64, 1, !dbg !101
  br label %63, !dbg !101

85:                                               ; preds = %63
  %86 = add i64 %61, 1, !dbg !101
  br label %60, !dbg !101

87:                                               ; preds = %60
  %88 = add i64 %51, 8, !dbg !101
  br label %50, !dbg !101

89:                                               ; preds = %50
  %90 = add i64 %41, 8, !dbg !101
  br label %40, !dbg !101

91:                                               ; preds = %40
  ret i32 0, !dbg !102
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: uwtable
define dso_local dllexport ptr @iree_hal_executable_library_query(i32 %0, ptr %1) #2 {
entry:
  %2 = icmp eq i32 %0, 6
  %3 = select i1 %2, ptr @iree_hal_executable_library_query_v0, ptr null
  ret ptr %3
}

attributes #0 = { "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #2 = { uwtable "nonlazybind" }

!llvm.dbg.cu = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "configured_module_matmul_dispatch_0.mlir", directory: "/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/v1_generic_isa_a83b1c1da1/dispatches")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !3, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "configured_module_matmul_dispatch_1.mlir", directory: "/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/v1_generic_isa_a83b1c1da1/dispatches")
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !5, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "configured_module_matmul_dispatch_2.mlir", directory: "/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/v1_generic_isa_a83b1c1da1/dispatches")
!6 = distinct !DICompileUnit(language: DW_LANG_C17, file: !7, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "configured_module_matmul_dispatch_3.mlir", directory: "/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/v1_generic_isa_a83b1c1da1/dispatches")
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
!95 = !DILocation(line: 20, column: 8, scope: !94)
!96 = !DILocation(line: 19, column: 8, scope: !94)
!97 = !DILocation(line: 22, column: 8, scope: !94)
!98 = distinct !DISubprogram(name: "matmul_dispatch_3_unpack_f32", linkageName: "matmul_dispatch_3_unpack_f32", scope: !7, file: !7, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!99 = !DILocation(line: 11, column: 8, scope: !98)
!100 = !DILocation(line: 12, column: 8, scope: !98)
!101 = !DILocation(line: 15, column: 8, scope: !98)
!102 = !DILocation(line: 17, column: 8, scope: !98)
