; ModuleID = 'kernel_linked'
source_filename = "kernel_linked"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-unknown-eabi-elf"

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
@iree_hal_executable_library_query_v0_funcs = private constant [4 x ptr] [ptr @matmul_dispatch_0_pack_f32, ptr @matmul_dispatch_1_pack_f32, ptr @matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32, ptr @matmul_dispatch_3_unpack_f32]
@iree_hal_executable_library_query_v0_attrs = private constant [4 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = private constant [27 x i8] c"matmul_dispatch_0_pack_f32\00", align 1
@2 = private constant [27 x i8] c"matmul_dispatch_1_pack_f32\00", align 1
@3 = private constant [44 x i8] c"matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32\00", align 1
@4 = private constant [29 x i8] c"matmul_dispatch_3_unpack_f32\00", align 1
@iree_hal_executable_library_query_v0_names = private constant [4 x ptr] [ptr @1, ptr @2, ptr @3, ptr @4]
@5 = private constant [123 x i8] c"/home/rudramb122/MLIRBench/build/128x128x128/v1_generic_isa_abcf270174/dispatches/configured_module_matmul_dispatch_0.mlir\00", align 1
@6 = private constant [123 x i8] c"/home/rudramb122/MLIRBench/build/128x128x128/v1_generic_isa_abcf270174/dispatches/configured_module_matmul_dispatch_1.mlir\00", align 1
@7 = private constant [123 x i8] c"/home/rudramb122/MLIRBench/build/128x128x128/v1_generic_isa_abcf270174/dispatches/configured_module_matmul_dispatch_2.mlir\00", align 1
@8 = private constant [123 x i8] c"/home/rudramb122/MLIRBench/build/128x128x128/v1_generic_isa_abcf270174/dispatches/configured_module_matmul_dispatch_3.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [4 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 122, ptr @5 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 122, ptr @6 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 122, ptr @7 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 122, ptr @8 }]
@iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = private constant [4 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_names, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_names, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32_stage_names, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_names, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_source_locations }]
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
  br label %26, !dbg !87

26:                                               ; preds = %29, %3
  %27 = phi i64 [ %93, %29 ], [ 0, %3 ], !dbg !87
  %28 = icmp slt i64 %27, 64, !dbg !87
  br i1 %28, label %29, label %94, !dbg !87

29:                                               ; preds = %26
  %30 = add i64 %27, %25, !dbg !87
  %31 = mul nsw i64 %20, 8, !dbg !87
  %32 = mul i64 %31, 128, !dbg !87
  %33 = add i64 %32, %30, !dbg !87
  %34 = getelementptr float, ptr %6, i64 %33, !dbg !87
  %35 = load <1 x float>, ptr %34, align 4, !dbg !87
  %36 = add i64 %31, 1, !dbg !87
  %37 = mul i64 %36, 128, !dbg !87
  %38 = add i64 %37, %30, !dbg !87
  %39 = getelementptr float, ptr %6, i64 %38, !dbg !87
  %40 = load <1 x float>, ptr %39, align 4, !dbg !87
  %41 = add i64 %31, 2, !dbg !87
  %42 = mul i64 %41, 128, !dbg !87
  %43 = add i64 %42, %30, !dbg !87
  %44 = getelementptr float, ptr %6, i64 %43, !dbg !87
  %45 = load <1 x float>, ptr %44, align 4, !dbg !87
  %46 = add i64 %31, 3, !dbg !87
  %47 = mul i64 %46, 128, !dbg !87
  %48 = add i64 %47, %30, !dbg !87
  %49 = getelementptr float, ptr %6, i64 %48, !dbg !87
  %50 = load <1 x float>, ptr %49, align 4, !dbg !87
  %51 = add i64 %31, 4, !dbg !87
  %52 = mul i64 %51, 128, !dbg !87
  %53 = add i64 %52, %30, !dbg !87
  %54 = getelementptr float, ptr %6, i64 %53, !dbg !87
  %55 = load <1 x float>, ptr %54, align 4, !dbg !87
  %56 = add i64 %31, 5, !dbg !87
  %57 = mul i64 %56, 128, !dbg !87
  %58 = add i64 %57, %30, !dbg !87
  %59 = getelementptr float, ptr %6, i64 %58, !dbg !87
  %60 = load <1 x float>, ptr %59, align 4, !dbg !87
  %61 = add i64 %31, 6, !dbg !87
  %62 = mul i64 %61, 128, !dbg !87
  %63 = add i64 %62, %30, !dbg !87
  %64 = getelementptr float, ptr %6, i64 %63, !dbg !87
  %65 = load <1 x float>, ptr %64, align 4, !dbg !87
  %66 = add i64 %31, 7, !dbg !87
  %67 = mul i64 %66, 128, !dbg !87
  %68 = add i64 %67, %30, !dbg !87
  %69 = getelementptr float, ptr %6, i64 %68, !dbg !87
  %70 = load <1 x float>, ptr %69, align 4, !dbg !87
  %71 = extractelement <1 x float> %35, i64 0, !dbg !87
  %72 = extractelement <1 x float> %40, i64 0, !dbg !87
  %73 = extractelement <1 x float> %45, i64 0, !dbg !87
  %74 = extractelement <1 x float> %50, i64 0, !dbg !87
  %75 = extractelement <1 x float> %55, i64 0, !dbg !87
  %76 = extractelement <1 x float> %60, i64 0, !dbg !87
  %77 = extractelement <1 x float> %65, i64 0, !dbg !87
  %78 = extractelement <1 x float> %70, i64 0, !dbg !87
  %79 = insertelement <8 x float> poison, float %71, i64 0, !dbg !87
  %80 = insertelement <8 x float> %79, float %72, i64 1, !dbg !87
  %81 = insertelement <8 x float> %80, float %73, i64 2, !dbg !87
  %82 = insertelement <8 x float> %81, float %74, i64 3, !dbg !87
  %83 = insertelement <8 x float> %82, float %75, i64 4, !dbg !87
  %84 = insertelement <8 x float> %83, float %76, i64 5, !dbg !87
  %85 = insertelement <8 x float> %84, float %77, i64 6, !dbg !87
  %86 = insertelement <8 x float> %85, float %78, i64 7, !dbg !87
  %87 = mul i64 %20, 1024, !dbg !87
  %88 = mul i64 %30, 8, !dbg !87
  %89 = add i64 %87, %88, !dbg !87
  %90 = add i64 %89, 0, !dbg !87
  %91 = add i64 %90, 0, !dbg !87
  %92 = getelementptr float, ptr %10, i64 %91, !dbg !87
  store <8 x float> %86, ptr %92, align 4, !dbg !87
  %93 = add i64 %27, 1, !dbg !87
  br label %26, !dbg !87

94:                                               ; preds = %26
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
  %15 = sdiv i64 %14, 8, !dbg !92
  %16 = mul i64 %15, 8, !dbg !92
  %17 = icmp ne i64 %14, %16, !dbg !92
  %18 = icmp slt i64 %14, 0, !dbg !92
  %19 = and i1 %17, %18, !dbg !92
  %20 = add i64 %15, -1, !dbg !92
  %21 = select i1 %19, i64 %20, i64 %15, !dbg !92
  %22 = srem i64 %14, 8, !dbg !92
  %23 = icmp slt i64 %22, 0, !dbg !92
  %24 = add nsw i64 %22, 8, !dbg !92
  %25 = select i1 %23, i64 %24, i64 %22, !dbg !92
  %26 = mul nsw i64 %21, 4, !dbg !92
  %27 = mul nsw i64 %25, 16, !dbg !92
  %28 = mul nsw i64 %21, 16, !dbg !92
  br label %29, !dbg !92

29:                                               ; preds = %52, %3
  %30 = phi i64 [ %53, %52 ], [ 0, %3 ], !dbg !92
  %31 = icmp slt i64 %30, 4, !dbg !92
  br i1 %31, label %32, label %54, !dbg !92

32:                                               ; preds = %29
  %33 = mul nsw i64 %30, 4, !dbg !92
  br label %34, !dbg !92

34:                                               ; preds = %37, %32
  %35 = phi i64 [ %51, %37 ], [ 0, %32 ], !dbg !92
  %36 = icmp slt i64 %35, 16, !dbg !92
  br i1 %36, label %37, label %52, !dbg !92

37:                                               ; preds = %34
  %38 = add i64 %35, %27, !dbg !92
  %39 = add i64 %33, %28, !dbg !92
  %40 = mul i64 %38, 128, !dbg !92
  %41 = add i64 %40, %39, !dbg !92
  %42 = getelementptr float, ptr %6, i64 %41, !dbg !92
  %43 = load <4 x float>, ptr %42, align 4, !dbg !92
  %44 = add i64 %26, %30, !dbg !92
  %45 = mul i64 %44, 512, !dbg !92
  %46 = mul i64 %38, 4, !dbg !92
  %47 = add i64 %45, %46, !dbg !92
  %48 = add i64 %47, 0, !dbg !92
  %49 = add i64 %48, 0, !dbg !92
  %50 = getelementptr float, ptr %11, i64 %49, !dbg !92
  store <4 x float> %43, ptr %50, align 4, !dbg !92
  %51 = add i64 %35, 1, !dbg !92
  br label %34, !dbg !92

52:                                               ; preds = %34
  %53 = add i64 %30, 1, !dbg !92
  br label %29, !dbg !92

54:                                               ; preds = %29
  ret i32 0, !dbg !93
}

declare i32 @iree_uk_mmt4d(ptr, i64, i64, ptr, i64, i64, ptr, i64, i64, i64, i64, i64, i32, i32, i32, i32, ptr) #0

define internal i32 @matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !94 {
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
  %14 = icmp slt i64 %13, 32, !dbg !95
  br i1 %14, label %15, label %25, !dbg !95

15:                                               ; preds = %12
  %16 = mul nsw i64 %10, 1024, !dbg !95
  %17 = mul nsw i64 %13, 512, !dbg !95
  %18 = add i64 %17, 16384, !dbg !95
  %19 = mul nsw i64 %13, 32, !dbg !96
  %20 = add i64 %16, %19, !dbg !96
  %21 = add i64 %20, 32768, !dbg !96
  %22 = getelementptr inbounds ptr, ptr %0, i32 4, !dbg !95
  %23 = call i32 @iree_uk_mmt4d(ptr %6, i64 %16, i64 1024, ptr %6, i64 %18, i64 512, ptr %8, i64 %21, i64 1024, i64 1, i64 1, i64 128, i32 8, i32 4, i32 1, i32 1537, ptr %22), !dbg !95
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
  %37 = sdiv i64 %36, 4, !dbg !101
  %38 = sub i64 -1, %37, !dbg !101
  %39 = select i1 %34, i64 %38, i64 %37, !dbg !101
  br label %40, !dbg !101

40:                                               ; preds = %138, %3
  %41 = phi i64 [ %139, %138 ], [ 0, %3 ], !dbg !101
  %42 = icmp slt i64 %41, 16, !dbg !101
  br i1 %42, label %43, label %140, !dbg !101

43:                                               ; preds = %40
  %44 = icmp slt i64 %41, 0, !dbg !101
  %45 = sub i64 -1, %41, !dbg !101
  %46 = select i1 %44, i64 %45, i64 %41, !dbg !101
  %47 = sdiv i64 %46, 8, !dbg !101
  %48 = sub i64 -1, %47, !dbg !101
  %49 = select i1 %44, i64 %48, i64 %47, !dbg !101
  br label %50, !dbg !101

50:                                               ; preds = %53, %43
  %51 = phi i64 [ %137, %53 ], [ 0, %43 ], !dbg !101
  %52 = icmp slt i64 %51, 64, !dbg !101
  br i1 %52, label %53, label %138, !dbg !101

53:                                               ; preds = %50
  %54 = icmp slt i64 %51, 0, !dbg !101
  %55 = sub i64 -1, %51, !dbg !101
  %56 = select i1 %54, i64 %55, i64 %51, !dbg !101
  %57 = sdiv i64 %56, 4, !dbg !101
  %58 = sub i64 -1, %57, !dbg !101
  %59 = select i1 %54, i64 %58, i64 %57, !dbg !101
  %60 = add i64 %49, %33, !dbg !101
  %61 = add i64 %59, %39, !dbg !101
  %62 = mul i64 %60, 1024, !dbg !101
  %63 = mul i64 %61, 32, !dbg !101
  %64 = add i64 %62, %63, !dbg !101
  %65 = add i64 %64, 0, !dbg !101
  %66 = add i64 %65, 0, !dbg !101
  %67 = getelementptr float, ptr %7, i64 %66, !dbg !101
  %68 = load <4 x float>, ptr %67, align 4, !dbg !101
  %69 = add i64 %64, 4, !dbg !101
  %70 = add i64 %69, 0, !dbg !101
  %71 = getelementptr float, ptr %7, i64 %70, !dbg !101
  %72 = load <4 x float>, ptr %71, align 4, !dbg !101
  %73 = add i64 %64, 8, !dbg !101
  %74 = add i64 %73, 0, !dbg !101
  %75 = getelementptr float, ptr %7, i64 %74, !dbg !101
  %76 = load <4 x float>, ptr %75, align 4, !dbg !101
  %77 = add i64 %64, 12, !dbg !101
  %78 = add i64 %77, 0, !dbg !101
  %79 = getelementptr float, ptr %7, i64 %78, !dbg !101
  %80 = load <4 x float>, ptr %79, align 4, !dbg !101
  %81 = add i64 %64, 16, !dbg !101
  %82 = add i64 %81, 0, !dbg !101
  %83 = getelementptr float, ptr %7, i64 %82, !dbg !101
  %84 = load <4 x float>, ptr %83, align 4, !dbg !101
  %85 = add i64 %64, 20, !dbg !101
  %86 = add i64 %85, 0, !dbg !101
  %87 = getelementptr float, ptr %7, i64 %86, !dbg !101
  %88 = load <4 x float>, ptr %87, align 4, !dbg !101
  %89 = add i64 %64, 24, !dbg !101
  %90 = add i64 %89, 0, !dbg !101
  %91 = getelementptr float, ptr %7, i64 %90, !dbg !101
  %92 = load <4 x float>, ptr %91, align 4, !dbg !101
  %93 = add i64 %64, 28, !dbg !101
  %94 = add i64 %93, 0, !dbg !101
  %95 = getelementptr float, ptr %7, i64 %94, !dbg !101
  %96 = load <4 x float>, ptr %95, align 4, !dbg !101
  %97 = add i64 %26, %41, !dbg !101
  %98 = add i64 %27, %51, !dbg !101
  %99 = mul i64 %97, 128, !dbg !101
  %100 = add i64 %99, %98, !dbg !101
  %101 = getelementptr float, ptr %11, i64 %100, !dbg !101
  store <4 x float> %68, ptr %101, align 4, !dbg !101
  %102 = add i64 %41, 1, !dbg !101
  %103 = add i64 %26, %102, !dbg !101
  %104 = mul i64 %103, 128, !dbg !101
  %105 = add i64 %104, %98, !dbg !101
  %106 = getelementptr float, ptr %11, i64 %105, !dbg !101
  store <4 x float> %72, ptr %106, align 4, !dbg !101
  %107 = add i64 %41, 2, !dbg !101
  %108 = add i64 %26, %107, !dbg !101
  %109 = mul i64 %108, 128, !dbg !101
  %110 = add i64 %109, %98, !dbg !101
  %111 = getelementptr float, ptr %11, i64 %110, !dbg !101
  store <4 x float> %76, ptr %111, align 4, !dbg !101
  %112 = add i64 %41, 3, !dbg !101
  %113 = add i64 %26, %112, !dbg !101
  %114 = mul i64 %113, 128, !dbg !101
  %115 = add i64 %114, %98, !dbg !101
  %116 = getelementptr float, ptr %11, i64 %115, !dbg !101
  store <4 x float> %80, ptr %116, align 4, !dbg !101
  %117 = add i64 %41, 4, !dbg !101
  %118 = add i64 %26, %117, !dbg !101
  %119 = mul i64 %118, 128, !dbg !101
  %120 = add i64 %119, %98, !dbg !101
  %121 = getelementptr float, ptr %11, i64 %120, !dbg !101
  store <4 x float> %84, ptr %121, align 4, !dbg !101
  %122 = add i64 %41, 5, !dbg !101
  %123 = add i64 %26, %122, !dbg !101
  %124 = mul i64 %123, 128, !dbg !101
  %125 = add i64 %124, %98, !dbg !101
  %126 = getelementptr float, ptr %11, i64 %125, !dbg !101
  store <4 x float> %88, ptr %126, align 4, !dbg !101
  %127 = add i64 %41, 6, !dbg !101
  %128 = add i64 %26, %127, !dbg !101
  %129 = mul i64 %128, 128, !dbg !101
  %130 = add i64 %129, %98, !dbg !101
  %131 = getelementptr float, ptr %11, i64 %130, !dbg !101
  store <4 x float> %92, ptr %131, align 4, !dbg !101
  %132 = add i64 %41, 7, !dbg !101
  %133 = add i64 %26, %132, !dbg !101
  %134 = mul i64 %133, 128, !dbg !101
  %135 = add i64 %134, %98, !dbg !101
  %136 = getelementptr float, ptr %11, i64 %135, !dbg !101
  store <4 x float> %96, ptr %136, align 4, !dbg !101
  %137 = add i64 %51, 4, !dbg !101
  br label %50, !dbg !101

138:                                              ; preds = %50
  %139 = add i64 %41, 8, !dbg !101
  br label %40, !dbg !101

140:                                              ; preds = %40
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
!1 = !DIFile(filename: "configured_module_matmul_dispatch_0.mlir", directory: "/home/rudramb122/MLIRBench/build/128x128x128/v1_generic_isa_abcf270174/dispatches")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !3, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "configured_module_matmul_dispatch_1.mlir", directory: "/home/rudramb122/MLIRBench/build/128x128x128/v1_generic_isa_abcf270174/dispatches")
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !5, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "configured_module_matmul_dispatch_2.mlir", directory: "/home/rudramb122/MLIRBench/build/128x128x128/v1_generic_isa_abcf270174/dispatches")
!6 = distinct !DICompileUnit(language: DW_LANG_C17, file: !7, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "configured_module_matmul_dispatch_3.mlir", directory: "/home/rudramb122/MLIRBench/build/128x128x128/v1_generic_isa_abcf270174/dispatches")
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
!94 = distinct !DISubprogram(name: "matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32", linkageName: "matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32", scope: !5, file: !5, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!95 = !DILocation(line: 20, column: 8, scope: !94)
!96 = !DILocation(line: 19, column: 8, scope: !94)
!97 = !DILocation(line: 22, column: 8, scope: !94)
!98 = distinct !DISubprogram(name: "matmul_dispatch_3_unpack_f32", linkageName: "matmul_dispatch_3_unpack_f32", scope: !7, file: !7, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!99 = !DILocation(line: 11, column: 8, scope: !98)
!100 = !DILocation(line: 12, column: 8, scope: !98)
!101 = !DILocation(line: 15, column: 8, scope: !98)
!102 = !DILocation(line: 17, column: 8, scope: !98)
