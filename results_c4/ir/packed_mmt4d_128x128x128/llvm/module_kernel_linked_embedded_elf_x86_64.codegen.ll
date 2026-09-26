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
@iree_hal_executable_library_query_v0_funcs = private constant [4 x ptr] [ptr @matmul_dispatch_0_pack_f32, ptr @matmul_dispatch_1_pack_f32, ptr @matmul_dispatch_2_mmt4d_8x8x128x16x16x1_f32, ptr @matmul_dispatch_3_unpack_f32]
@iree_hal_executable_library_query_v0_attrs = private constant [4 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = private constant [27 x i8] c"matmul_dispatch_0_pack_f32\00", align 1
@2 = private constant [27 x i8] c"matmul_dispatch_1_pack_f32\00", align 1
@3 = private constant [44 x i8] c"matmul_dispatch_2_mmt4d_8x8x128x16x16x1_f32\00", align 1
@4 = private constant [29 x i8] c"matmul_dispatch_3_unpack_f32\00", align 1
@iree_hal_executable_library_query_v0_names = private constant [4 x ptr] [ptr @1, ptr @2, ptr @3, ptr @4]
@5 = private constant [121 x i8] c"/home/rudramb122/MLIRBench/build/128x128x128/packed_mmt4d_6a56a31965/dispatches/configured_module_matmul_dispatch_0.mlir\00", align 1
@6 = private constant [121 x i8] c"/home/rudramb122/MLIRBench/build/128x128x128/packed_mmt4d_6a56a31965/dispatches/configured_module_matmul_dispatch_1.mlir\00", align 1
@7 = private constant [121 x i8] c"/home/rudramb122/MLIRBench/build/128x128x128/packed_mmt4d_6a56a31965/dispatches/configured_module_matmul_dispatch_2.mlir\00", align 1
@8 = private constant [121 x i8] c"/home/rudramb122/MLIRBench/build/128x128x128/packed_mmt4d_6a56a31965/dispatches/configured_module_matmul_dispatch_3.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [4 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 120, ptr @5 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 120, ptr @6 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 120, ptr @7 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 120, ptr @8 }]
@iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_8x8x128x16x16x1_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_8x8x128x16x16x1_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = private constant [4 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_names, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_names, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_8x8x128x16x16x1_f32_stage_names, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_8x8x128x16x16x1_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_names, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_source_locations }]
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
  %27 = phi i64 [ %286, %29 ], [ 0, %3 ], !dbg !87
  %28 = icmp slt i64 %27, 64, !dbg !87
  br i1 %28, label %29, label %287, !dbg !87

29:                                               ; preds = %26
  %30 = add i64 %27, %25, !dbg !87
  %31 = mul nsw i64 %20, 16, !dbg !87
  %32 = mul i64 %31, 128, !dbg !87
  %33 = add i64 %32, %30, !dbg !87
  %34 = getelementptr float, ptr %6, i64 %33, !dbg !87
  %35 = load <16 x float>, ptr %34, align 4, !dbg !87
  %36 = add i64 %31, 1, !dbg !87
  %37 = mul i64 %36, 128, !dbg !87
  %38 = add i64 %37, %30, !dbg !87
  %39 = getelementptr float, ptr %6, i64 %38, !dbg !87
  %40 = load <16 x float>, ptr %39, align 4, !dbg !87
  %41 = add i64 %31, 2, !dbg !87
  %42 = mul i64 %41, 128, !dbg !87
  %43 = add i64 %42, %30, !dbg !87
  %44 = getelementptr float, ptr %6, i64 %43, !dbg !87
  %45 = load <16 x float>, ptr %44, align 4, !dbg !87
  %46 = add i64 %31, 3, !dbg !87
  %47 = mul i64 %46, 128, !dbg !87
  %48 = add i64 %47, %30, !dbg !87
  %49 = getelementptr float, ptr %6, i64 %48, !dbg !87
  %50 = load <16 x float>, ptr %49, align 4, !dbg !87
  %51 = add i64 %31, 4, !dbg !87
  %52 = mul i64 %51, 128, !dbg !87
  %53 = add i64 %52, %30, !dbg !87
  %54 = getelementptr float, ptr %6, i64 %53, !dbg !87
  %55 = load <16 x float>, ptr %54, align 4, !dbg !87
  %56 = add i64 %31, 5, !dbg !87
  %57 = mul i64 %56, 128, !dbg !87
  %58 = add i64 %57, %30, !dbg !87
  %59 = getelementptr float, ptr %6, i64 %58, !dbg !87
  %60 = load <16 x float>, ptr %59, align 4, !dbg !87
  %61 = add i64 %31, 6, !dbg !87
  %62 = mul i64 %61, 128, !dbg !87
  %63 = add i64 %62, %30, !dbg !87
  %64 = getelementptr float, ptr %6, i64 %63, !dbg !87
  %65 = load <16 x float>, ptr %64, align 4, !dbg !87
  %66 = add i64 %31, 7, !dbg !87
  %67 = mul i64 %66, 128, !dbg !87
  %68 = add i64 %67, %30, !dbg !87
  %69 = getelementptr float, ptr %6, i64 %68, !dbg !87
  %70 = load <16 x float>, ptr %69, align 4, !dbg !87
  %71 = add i64 %31, 8, !dbg !87
  %72 = mul i64 %71, 128, !dbg !87
  %73 = add i64 %72, %30, !dbg !87
  %74 = getelementptr float, ptr %6, i64 %73, !dbg !87
  %75 = load <16 x float>, ptr %74, align 4, !dbg !87
  %76 = add i64 %31, 9, !dbg !87
  %77 = mul i64 %76, 128, !dbg !87
  %78 = add i64 %77, %30, !dbg !87
  %79 = getelementptr float, ptr %6, i64 %78, !dbg !87
  %80 = load <16 x float>, ptr %79, align 4, !dbg !87
  %81 = add i64 %31, 10, !dbg !87
  %82 = mul i64 %81, 128, !dbg !87
  %83 = add i64 %82, %30, !dbg !87
  %84 = getelementptr float, ptr %6, i64 %83, !dbg !87
  %85 = load <16 x float>, ptr %84, align 4, !dbg !87
  %86 = add i64 %31, 11, !dbg !87
  %87 = mul i64 %86, 128, !dbg !87
  %88 = add i64 %87, %30, !dbg !87
  %89 = getelementptr float, ptr %6, i64 %88, !dbg !87
  %90 = load <16 x float>, ptr %89, align 4, !dbg !87
  %91 = add i64 %31, 12, !dbg !87
  %92 = mul i64 %91, 128, !dbg !87
  %93 = add i64 %92, %30, !dbg !87
  %94 = getelementptr float, ptr %6, i64 %93, !dbg !87
  %95 = load <16 x float>, ptr %94, align 4, !dbg !87
  %96 = add i64 %31, 13, !dbg !87
  %97 = mul i64 %96, 128, !dbg !87
  %98 = add i64 %97, %30, !dbg !87
  %99 = getelementptr float, ptr %6, i64 %98, !dbg !87
  %100 = load <16 x float>, ptr %99, align 4, !dbg !87
  %101 = add i64 %31, 14, !dbg !87
  %102 = mul i64 %101, 128, !dbg !87
  %103 = add i64 %102, %30, !dbg !87
  %104 = getelementptr float, ptr %6, i64 %103, !dbg !87
  %105 = load <16 x float>, ptr %104, align 4, !dbg !87
  %106 = add i64 %31, 15, !dbg !87
  %107 = mul i64 %106, 128, !dbg !87
  %108 = add i64 %107, %30, !dbg !87
  %109 = getelementptr float, ptr %6, i64 %108, !dbg !87
  %110 = load <16 x float>, ptr %109, align 4, !dbg !87
  %111 = shufflevector <16 x float> %35, <16 x float> %40, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>, !dbg !87
  %112 = shufflevector <16 x float> %35, <16 x float> %40, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>, !dbg !87
  %113 = shufflevector <16 x float> %45, <16 x float> %50, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>, !dbg !87
  %114 = shufflevector <16 x float> %45, <16 x float> %50, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>, !dbg !87
  %115 = shufflevector <16 x float> %55, <16 x float> %60, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>, !dbg !87
  %116 = shufflevector <16 x float> %55, <16 x float> %60, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>, !dbg !87
  %117 = shufflevector <16 x float> %65, <16 x float> %70, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>, !dbg !87
  %118 = shufflevector <16 x float> %65, <16 x float> %70, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>, !dbg !87
  %119 = shufflevector <16 x float> %75, <16 x float> %80, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>, !dbg !87
  %120 = shufflevector <16 x float> %75, <16 x float> %80, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>, !dbg !87
  %121 = shufflevector <16 x float> %85, <16 x float> %90, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>, !dbg !87
  %122 = shufflevector <16 x float> %85, <16 x float> %90, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>, !dbg !87
  %123 = shufflevector <16 x float> %95, <16 x float> %100, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>, !dbg !87
  %124 = shufflevector <16 x float> %95, <16 x float> %100, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>, !dbg !87
  %125 = shufflevector <16 x float> %105, <16 x float> %110, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>, !dbg !87
  %126 = shufflevector <16 x float> %105, <16 x float> %110, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>, !dbg !87
  %127 = shufflevector <16 x float> %111, <16 x float> %113, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>, !dbg !87
  %128 = shufflevector <16 x float> %111, <16 x float> %113, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>, !dbg !87
  %129 = shufflevector <16 x float> %112, <16 x float> %114, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>, !dbg !87
  %130 = shufflevector <16 x float> %112, <16 x float> %114, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>, !dbg !87
  %131 = shufflevector <16 x float> %115, <16 x float> %117, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>, !dbg !87
  %132 = shufflevector <16 x float> %115, <16 x float> %117, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>, !dbg !87
  %133 = shufflevector <16 x float> %116, <16 x float> %118, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>, !dbg !87
  %134 = shufflevector <16 x float> %116, <16 x float> %118, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>, !dbg !87
  %135 = shufflevector <16 x float> %119, <16 x float> %121, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>, !dbg !87
  %136 = shufflevector <16 x float> %119, <16 x float> %121, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>, !dbg !87
  %137 = shufflevector <16 x float> %120, <16 x float> %122, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>, !dbg !87
  %138 = shufflevector <16 x float> %120, <16 x float> %122, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>, !dbg !87
  %139 = shufflevector <16 x float> %123, <16 x float> %125, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>, !dbg !87
  %140 = shufflevector <16 x float> %123, <16 x float> %125, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>, !dbg !87
  %141 = shufflevector <16 x float> %124, <16 x float> %126, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>, !dbg !87
  %142 = shufflevector <16 x float> %124, <16 x float> %126, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>, !dbg !87
  %143 = shufflevector <16 x float> %127, <16 x float> %131, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !87
  %144 = shufflevector <16 x float> %128, <16 x float> %132, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !87
  %145 = shufflevector <16 x float> %129, <16 x float> %133, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !87
  %146 = shufflevector <16 x float> %130, <16 x float> %134, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !87
  %147 = shufflevector <16 x float> %127, <16 x float> %131, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !87
  %148 = shufflevector <16 x float> %128, <16 x float> %132, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !87
  %149 = shufflevector <16 x float> %129, <16 x float> %133, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !87
  %150 = shufflevector <16 x float> %130, <16 x float> %134, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !87
  %151 = shufflevector <16 x float> %135, <16 x float> %139, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !87
  %152 = shufflevector <16 x float> %136, <16 x float> %140, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !87
  %153 = shufflevector <16 x float> %137, <16 x float> %141, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !87
  %154 = shufflevector <16 x float> %138, <16 x float> %142, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !87
  %155 = shufflevector <16 x float> %135, <16 x float> %139, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !87
  %156 = shufflevector <16 x float> %136, <16 x float> %140, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !87
  %157 = shufflevector <16 x float> %137, <16 x float> %141, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !87
  %158 = shufflevector <16 x float> %138, <16 x float> %142, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !87
  %159 = shufflevector <16 x float> %143, <16 x float> %151, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !87
  %160 = shufflevector <16 x float> %144, <16 x float> %152, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !87
  %161 = shufflevector <16 x float> %145, <16 x float> %153, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !87
  %162 = shufflevector <16 x float> %146, <16 x float> %154, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !87
  %163 = shufflevector <16 x float> %147, <16 x float> %155, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !87
  %164 = shufflevector <16 x float> %148, <16 x float> %156, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !87
  %165 = shufflevector <16 x float> %149, <16 x float> %157, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !87
  %166 = shufflevector <16 x float> %150, <16 x float> %158, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !87
  %167 = shufflevector <16 x float> %143, <16 x float> %151, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !87
  %168 = shufflevector <16 x float> %144, <16 x float> %152, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !87
  %169 = shufflevector <16 x float> %145, <16 x float> %153, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !87
  %170 = shufflevector <16 x float> %146, <16 x float> %154, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !87
  %171 = shufflevector <16 x float> %147, <16 x float> %155, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !87
  %172 = shufflevector <16 x float> %148, <16 x float> %156, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !87
  %173 = shufflevector <16 x float> %149, <16 x float> %157, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !87
  %174 = shufflevector <16 x float> %150, <16 x float> %158, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !87
  %175 = mul i64 %20, 2048, !dbg !87
  %176 = mul i64 %30, 16, !dbg !87
  %177 = add i64 %175, %176, !dbg !87
  %178 = add i64 %177, 0, !dbg !87
  %179 = add i64 %178, 0, !dbg !87
  %180 = getelementptr float, ptr %10, i64 %179, !dbg !87
  store <16 x float> %159, ptr %180, align 4, !dbg !87
  %181 = add i64 %27, 1, !dbg !87
  %182 = add i64 %25, %181, !dbg !87
  %183 = mul i64 %182, 16, !dbg !87
  %184 = add i64 %175, %183, !dbg !87
  %185 = add i64 %184, 0, !dbg !87
  %186 = add i64 %185, 0, !dbg !87
  %187 = getelementptr float, ptr %10, i64 %186, !dbg !87
  store <16 x float> %160, ptr %187, align 4, !dbg !87
  %188 = add i64 %27, 2, !dbg !87
  %189 = add i64 %25, %188, !dbg !87
  %190 = mul i64 %189, 16, !dbg !87
  %191 = add i64 %175, %190, !dbg !87
  %192 = add i64 %191, 0, !dbg !87
  %193 = add i64 %192, 0, !dbg !87
  %194 = getelementptr float, ptr %10, i64 %193, !dbg !87
  store <16 x float> %161, ptr %194, align 4, !dbg !87
  %195 = add i64 %27, 3, !dbg !87
  %196 = add i64 %25, %195, !dbg !87
  %197 = mul i64 %196, 16, !dbg !87
  %198 = add i64 %175, %197, !dbg !87
  %199 = add i64 %198, 0, !dbg !87
  %200 = add i64 %199, 0, !dbg !87
  %201 = getelementptr float, ptr %10, i64 %200, !dbg !87
  store <16 x float> %162, ptr %201, align 4, !dbg !87
  %202 = add i64 %27, 4, !dbg !87
  %203 = add i64 %25, %202, !dbg !87
  %204 = mul i64 %203, 16, !dbg !87
  %205 = add i64 %175, %204, !dbg !87
  %206 = add i64 %205, 0, !dbg !87
  %207 = add i64 %206, 0, !dbg !87
  %208 = getelementptr float, ptr %10, i64 %207, !dbg !87
  store <16 x float> %163, ptr %208, align 4, !dbg !87
  %209 = add i64 %27, 5, !dbg !87
  %210 = add i64 %25, %209, !dbg !87
  %211 = mul i64 %210, 16, !dbg !87
  %212 = add i64 %175, %211, !dbg !87
  %213 = add i64 %212, 0, !dbg !87
  %214 = add i64 %213, 0, !dbg !87
  %215 = getelementptr float, ptr %10, i64 %214, !dbg !87
  store <16 x float> %164, ptr %215, align 4, !dbg !87
  %216 = add i64 %27, 6, !dbg !87
  %217 = add i64 %25, %216, !dbg !87
  %218 = mul i64 %217, 16, !dbg !87
  %219 = add i64 %175, %218, !dbg !87
  %220 = add i64 %219, 0, !dbg !87
  %221 = add i64 %220, 0, !dbg !87
  %222 = getelementptr float, ptr %10, i64 %221, !dbg !87
  store <16 x float> %165, ptr %222, align 4, !dbg !87
  %223 = add i64 %27, 7, !dbg !87
  %224 = add i64 %25, %223, !dbg !87
  %225 = mul i64 %224, 16, !dbg !87
  %226 = add i64 %175, %225, !dbg !87
  %227 = add i64 %226, 0, !dbg !87
  %228 = add i64 %227, 0, !dbg !87
  %229 = getelementptr float, ptr %10, i64 %228, !dbg !87
  store <16 x float> %166, ptr %229, align 4, !dbg !87
  %230 = add i64 %27, 8, !dbg !87
  %231 = add i64 %25, %230, !dbg !87
  %232 = mul i64 %231, 16, !dbg !87
  %233 = add i64 %175, %232, !dbg !87
  %234 = add i64 %233, 0, !dbg !87
  %235 = add i64 %234, 0, !dbg !87
  %236 = getelementptr float, ptr %10, i64 %235, !dbg !87
  store <16 x float> %167, ptr %236, align 4, !dbg !87
  %237 = add i64 %27, 9, !dbg !87
  %238 = add i64 %25, %237, !dbg !87
  %239 = mul i64 %238, 16, !dbg !87
  %240 = add i64 %175, %239, !dbg !87
  %241 = add i64 %240, 0, !dbg !87
  %242 = add i64 %241, 0, !dbg !87
  %243 = getelementptr float, ptr %10, i64 %242, !dbg !87
  store <16 x float> %168, ptr %243, align 4, !dbg !87
  %244 = add i64 %27, 10, !dbg !87
  %245 = add i64 %25, %244, !dbg !87
  %246 = mul i64 %245, 16, !dbg !87
  %247 = add i64 %175, %246, !dbg !87
  %248 = add i64 %247, 0, !dbg !87
  %249 = add i64 %248, 0, !dbg !87
  %250 = getelementptr float, ptr %10, i64 %249, !dbg !87
  store <16 x float> %169, ptr %250, align 4, !dbg !87
  %251 = add i64 %27, 11, !dbg !87
  %252 = add i64 %25, %251, !dbg !87
  %253 = mul i64 %252, 16, !dbg !87
  %254 = add i64 %175, %253, !dbg !87
  %255 = add i64 %254, 0, !dbg !87
  %256 = add i64 %255, 0, !dbg !87
  %257 = getelementptr float, ptr %10, i64 %256, !dbg !87
  store <16 x float> %170, ptr %257, align 4, !dbg !87
  %258 = add i64 %27, 12, !dbg !87
  %259 = add i64 %25, %258, !dbg !87
  %260 = mul i64 %259, 16, !dbg !87
  %261 = add i64 %175, %260, !dbg !87
  %262 = add i64 %261, 0, !dbg !87
  %263 = add i64 %262, 0, !dbg !87
  %264 = getelementptr float, ptr %10, i64 %263, !dbg !87
  store <16 x float> %171, ptr %264, align 4, !dbg !87
  %265 = add i64 %27, 13, !dbg !87
  %266 = add i64 %25, %265, !dbg !87
  %267 = mul i64 %266, 16, !dbg !87
  %268 = add i64 %175, %267, !dbg !87
  %269 = add i64 %268, 0, !dbg !87
  %270 = add i64 %269, 0, !dbg !87
  %271 = getelementptr float, ptr %10, i64 %270, !dbg !87
  store <16 x float> %172, ptr %271, align 4, !dbg !87
  %272 = add i64 %27, 14, !dbg !87
  %273 = add i64 %25, %272, !dbg !87
  %274 = mul i64 %273, 16, !dbg !87
  %275 = add i64 %175, %274, !dbg !87
  %276 = add i64 %275, 0, !dbg !87
  %277 = add i64 %276, 0, !dbg !87
  %278 = getelementptr float, ptr %10, i64 %277, !dbg !87
  store <16 x float> %173, ptr %278, align 4, !dbg !87
  %279 = add i64 %27, 15, !dbg !87
  %280 = add i64 %25, %279, !dbg !87
  %281 = mul i64 %280, 16, !dbg !87
  %282 = add i64 %175, %281, !dbg !87
  %283 = add i64 %282, 0, !dbg !87
  %284 = add i64 %283, 0, !dbg !87
  %285 = getelementptr float, ptr %10, i64 %284, !dbg !87
  store <16 x float> %174, ptr %285, align 4, !dbg !87
  %286 = add i64 %27, 16, !dbg !87
  br label %26, !dbg !87

287:                                              ; preds = %26
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
  %15 = sdiv i64 %14, 32, !dbg !92
  %16 = mul i64 %15, 32, !dbg !92
  %17 = icmp ne i64 %14, %16, !dbg !92
  %18 = icmp slt i64 %14, 0, !dbg !92
  %19 = and i1 %17, %18, !dbg !92
  %20 = add i64 %15, -1, !dbg !92
  %21 = select i1 %19, i64 %20, i64 %15, !dbg !92
  %22 = srem i64 %14, 32, !dbg !92
  %23 = icmp slt i64 %22, 0, !dbg !92
  %24 = add nsw i64 %22, 32, !dbg !92
  %25 = select i1 %23, i64 %24, i64 %22, !dbg !92
  %26 = mul nsw i64 %25, 4, !dbg !92
  %27 = mul nsw i64 %21, 16, !dbg !92
  br label %28, !dbg !92

28:                                               ; preds = %31, %3
  %29 = phi i64 [ %43, %31 ], [ 0, %3 ], !dbg !92
  %30 = icmp slt i64 %29, 4, !dbg !92
  br i1 %30, label %31, label %44, !dbg !92

31:                                               ; preds = %28
  %32 = add i64 %29, %26, !dbg !92
  %33 = mul i64 %32, 128, !dbg !92
  %34 = add i64 %33, %27, !dbg !92
  %35 = getelementptr float, ptr %6, i64 %34, !dbg !92
  %36 = load <16 x float>, ptr %35, align 4, !dbg !92
  %37 = mul i64 %21, 2048, !dbg !92
  %38 = mul i64 %32, 16, !dbg !92
  %39 = add i64 %37, %38, !dbg !92
  %40 = add i64 %39, 0, !dbg !92
  %41 = add i64 %40, 0, !dbg !92
  %42 = getelementptr float, ptr %11, i64 %41, !dbg !92
  store <16 x float> %36, ptr %42, align 4, !dbg !92
  %43 = add i64 %29, 1, !dbg !92
  br label %28, !dbg !92

44:                                               ; preds = %28
  ret i32 0, !dbg !93
}

define internal i32 @matmul_dispatch_2_mmt4d_8x8x128x16x16x1_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !94 {
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

16:                                               ; preds = %251, %3
  %17 = phi i64 [ %252, %251 ], [ 0, %3 ], !dbg !98
  %18 = icmp slt i64 %17, 8, !dbg !98
  br i1 %18, label %19, label %253, !dbg !98

19:                                               ; preds = %182, %16
  %20 = phi i64 [ %250, %182 ], [ 0, %16 ], !dbg !98
  %21 = icmp slt i64 %20, 8, !dbg !98
  br i1 %21, label %22, label %251, !dbg !98

22:                                               ; preds = %26, %19
  %23 = phi i64 [ %181, %26 ], [ 0, %19 ], !dbg !98
  %24 = phi [16 x <16 x float>] [ %180, %26 ], [ zeroinitializer, %19 ], !dbg !98
  %25 = icmp slt i64 %23, 128, !dbg !98
  br i1 %25, label %26, label %182, !dbg !98

26:                                               ; preds = %22
  %27 = mul i64 %20, 2048, !dbg !98
  %28 = mul i64 %23, 16, !dbg !98
  %29 = add i64 %27, %28, !dbg !98
  %30 = add i64 %29, 0, !dbg !98
  %31 = add i64 %30, 0, !dbg !98
  %32 = getelementptr float, ptr %10, i64 %31, !dbg !98
  %33 = load <16 x float>, ptr %32, align 4, !dbg !98
  %34 = mul nuw nsw i64 %17, 2048
  %35 = mul nuw nsw i64 %23, 16
  %36 = add nuw nsw i64 %34, %35
  %37 = add nuw nsw i64 %36, 0
  %38 = add nuw nsw i64 %37, 0
  %39 = getelementptr inbounds nuw float, ptr %6, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = insertelement <16 x float> poison, float %40, i32 0
  %42 = shufflevector <16 x float> %41, <16 x float> poison, <16 x i32> zeroinitializer
  %43 = extractvalue [16 x <16 x float>] %24, 0
  %44 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %42, <16 x float> %33, <16 x float> %43)
  %45 = add nuw nsw i64 %36, 1
  %46 = add nuw nsw i64 %45, 0
  %47 = getelementptr inbounds nuw float, ptr %6, i64 %46
  %48 = load float, ptr %47, align 4
  %49 = insertelement <16 x float> poison, float %48, i32 0
  %50 = shufflevector <16 x float> %49, <16 x float> poison, <16 x i32> zeroinitializer
  %51 = extractvalue [16 x <16 x float>] %24, 1
  %52 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %50, <16 x float> %33, <16 x float> %51)
  %53 = add nuw nsw i64 %36, 2
  %54 = add nuw nsw i64 %53, 0
  %55 = getelementptr inbounds nuw float, ptr %6, i64 %54
  %56 = load float, ptr %55, align 4
  %57 = insertelement <16 x float> poison, float %56, i32 0
  %58 = shufflevector <16 x float> %57, <16 x float> poison, <16 x i32> zeroinitializer
  %59 = extractvalue [16 x <16 x float>] %24, 2
  %60 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %58, <16 x float> %33, <16 x float> %59)
  %61 = add nuw nsw i64 %36, 3
  %62 = add nuw nsw i64 %61, 0
  %63 = getelementptr inbounds nuw float, ptr %6, i64 %62
  %64 = load float, ptr %63, align 4
  %65 = insertelement <16 x float> poison, float %64, i32 0
  %66 = shufflevector <16 x float> %65, <16 x float> poison, <16 x i32> zeroinitializer
  %67 = extractvalue [16 x <16 x float>] %24, 3
  %68 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %66, <16 x float> %33, <16 x float> %67)
  %69 = add nuw nsw i64 %36, 4
  %70 = add nuw nsw i64 %69, 0
  %71 = getelementptr inbounds nuw float, ptr %6, i64 %70
  %72 = load float, ptr %71, align 4
  %73 = insertelement <16 x float> poison, float %72, i32 0
  %74 = shufflevector <16 x float> %73, <16 x float> poison, <16 x i32> zeroinitializer
  %75 = extractvalue [16 x <16 x float>] %24, 4
  %76 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %74, <16 x float> %33, <16 x float> %75)
  %77 = add nuw nsw i64 %36, 5
  %78 = add nuw nsw i64 %77, 0
  %79 = getelementptr inbounds nuw float, ptr %6, i64 %78
  %80 = load float, ptr %79, align 4
  %81 = insertelement <16 x float> poison, float %80, i32 0
  %82 = shufflevector <16 x float> %81, <16 x float> poison, <16 x i32> zeroinitializer
  %83 = extractvalue [16 x <16 x float>] %24, 5
  %84 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %82, <16 x float> %33, <16 x float> %83)
  %85 = add nuw nsw i64 %36, 6
  %86 = add nuw nsw i64 %85, 0
  %87 = getelementptr inbounds nuw float, ptr %6, i64 %86
  %88 = load float, ptr %87, align 4
  %89 = insertelement <16 x float> poison, float %88, i32 0
  %90 = shufflevector <16 x float> %89, <16 x float> poison, <16 x i32> zeroinitializer
  %91 = extractvalue [16 x <16 x float>] %24, 6
  %92 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %90, <16 x float> %33, <16 x float> %91)
  %93 = add nuw nsw i64 %36, 7
  %94 = add nuw nsw i64 %93, 0
  %95 = getelementptr inbounds nuw float, ptr %6, i64 %94
  %96 = load float, ptr %95, align 4
  %97 = insertelement <16 x float> poison, float %96, i32 0
  %98 = shufflevector <16 x float> %97, <16 x float> poison, <16 x i32> zeroinitializer
  %99 = extractvalue [16 x <16 x float>] %24, 7
  %100 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %98, <16 x float> %33, <16 x float> %99)
  %101 = add nuw nsw i64 %36, 8
  %102 = add nuw nsw i64 %101, 0
  %103 = getelementptr inbounds nuw float, ptr %6, i64 %102
  %104 = load float, ptr %103, align 4
  %105 = insertelement <16 x float> poison, float %104, i32 0
  %106 = shufflevector <16 x float> %105, <16 x float> poison, <16 x i32> zeroinitializer
  %107 = extractvalue [16 x <16 x float>] %24, 8
  %108 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %106, <16 x float> %33, <16 x float> %107)
  %109 = add nuw nsw i64 %36, 9
  %110 = add nuw nsw i64 %109, 0
  %111 = getelementptr inbounds nuw float, ptr %6, i64 %110
  %112 = load float, ptr %111, align 4
  %113 = insertelement <16 x float> poison, float %112, i32 0
  %114 = shufflevector <16 x float> %113, <16 x float> poison, <16 x i32> zeroinitializer
  %115 = extractvalue [16 x <16 x float>] %24, 9
  %116 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %114, <16 x float> %33, <16 x float> %115)
  %117 = add nuw nsw i64 %36, 10
  %118 = add nuw nsw i64 %117, 0
  %119 = getelementptr inbounds nuw float, ptr %6, i64 %118
  %120 = load float, ptr %119, align 4
  %121 = insertelement <16 x float> poison, float %120, i32 0
  %122 = shufflevector <16 x float> %121, <16 x float> poison, <16 x i32> zeroinitializer
  %123 = extractvalue [16 x <16 x float>] %24, 10
  %124 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %122, <16 x float> %33, <16 x float> %123)
  %125 = add nuw nsw i64 %36, 11
  %126 = add nuw nsw i64 %125, 0
  %127 = getelementptr inbounds nuw float, ptr %6, i64 %126
  %128 = load float, ptr %127, align 4
  %129 = insertelement <16 x float> poison, float %128, i32 0
  %130 = shufflevector <16 x float> %129, <16 x float> poison, <16 x i32> zeroinitializer
  %131 = extractvalue [16 x <16 x float>] %24, 11
  %132 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %130, <16 x float> %33, <16 x float> %131)
  %133 = add nuw nsw i64 %36, 12
  %134 = add nuw nsw i64 %133, 0
  %135 = getelementptr inbounds nuw float, ptr %6, i64 %134
  %136 = load float, ptr %135, align 4
  %137 = insertelement <16 x float> poison, float %136, i32 0
  %138 = shufflevector <16 x float> %137, <16 x float> poison, <16 x i32> zeroinitializer
  %139 = extractvalue [16 x <16 x float>] %24, 12
  %140 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %138, <16 x float> %33, <16 x float> %139)
  %141 = add nuw nsw i64 %36, 13
  %142 = add nuw nsw i64 %141, 0
  %143 = getelementptr inbounds nuw float, ptr %6, i64 %142
  %144 = load float, ptr %143, align 4
  %145 = insertelement <16 x float> poison, float %144, i32 0
  %146 = shufflevector <16 x float> %145, <16 x float> poison, <16 x i32> zeroinitializer
  %147 = extractvalue [16 x <16 x float>] %24, 13
  %148 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %146, <16 x float> %33, <16 x float> %147)
  %149 = add nuw nsw i64 %36, 14
  %150 = add nuw nsw i64 %149, 0
  %151 = getelementptr inbounds nuw float, ptr %6, i64 %150
  %152 = load float, ptr %151, align 4
  %153 = insertelement <16 x float> poison, float %152, i32 0
  %154 = shufflevector <16 x float> %153, <16 x float> poison, <16 x i32> zeroinitializer
  %155 = extractvalue [16 x <16 x float>] %24, 14
  %156 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %154, <16 x float> %33, <16 x float> %155)
  %157 = add nuw nsw i64 %36, 15
  %158 = add nuw nsw i64 %157, 0
  %159 = getelementptr inbounds nuw float, ptr %6, i64 %158
  %160 = load float, ptr %159, align 4
  %161 = insertelement <16 x float> poison, float %160, i32 0
  %162 = shufflevector <16 x float> %161, <16 x float> poison, <16 x i32> zeroinitializer
  %163 = extractvalue [16 x <16 x float>] %24, 15
  %164 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %162, <16 x float> %33, <16 x float> %163)
  %165 = insertvalue [16 x <16 x float>] poison, <16 x float> %44, 0
  %166 = insertvalue [16 x <16 x float>] %165, <16 x float> %52, 1
  %167 = insertvalue [16 x <16 x float>] %166, <16 x float> %60, 2
  %168 = insertvalue [16 x <16 x float>] %167, <16 x float> %68, 3
  %169 = insertvalue [16 x <16 x float>] %168, <16 x float> %76, 4
  %170 = insertvalue [16 x <16 x float>] %169, <16 x float> %84, 5
  %171 = insertvalue [16 x <16 x float>] %170, <16 x float> %92, 6
  %172 = insertvalue [16 x <16 x float>] %171, <16 x float> %100, 7
  %173 = insertvalue [16 x <16 x float>] %172, <16 x float> %108, 8
  %174 = insertvalue [16 x <16 x float>] %173, <16 x float> %116, 9
  %175 = insertvalue [16 x <16 x float>] %174, <16 x float> %124, 10
  %176 = insertvalue [16 x <16 x float>] %175, <16 x float> %132, 11
  %177 = insertvalue [16 x <16 x float>] %176, <16 x float> %140, 12
  %178 = insertvalue [16 x <16 x float>] %177, <16 x float> %148, 13
  %179 = insertvalue [16 x <16 x float>] %178, <16 x float> %156, 14
  %180 = insertvalue [16 x <16 x float>] %179, <16 x float> %164, 15
  %181 = add i64 %23, 1, !dbg !98
  br label %22, !dbg !98

182:                                              ; preds = %22
  %183 = extractvalue [16 x <16 x float>] %24, 0, !dbg !98
  %184 = mul i64 %17, 2048, !dbg !98
  %185 = mul i64 %20, 256, !dbg !98
  %186 = add i64 %184, %185, !dbg !98
  %187 = add i64 %186, 0, !dbg !98
  %188 = add i64 %187, 0, !dbg !98
  %189 = getelementptr float, ptr %15, i64 %188, !dbg !98
  store <16 x float> %183, ptr %189, align 4, !dbg !98
  %190 = extractvalue [16 x <16 x float>] %24, 1, !dbg !98
  %191 = add i64 %186, 16, !dbg !98
  %192 = add i64 %191, 0, !dbg !98
  %193 = getelementptr float, ptr %15, i64 %192, !dbg !98
  store <16 x float> %190, ptr %193, align 4, !dbg !98
  %194 = extractvalue [16 x <16 x float>] %24, 2, !dbg !98
  %195 = add i64 %186, 32, !dbg !98
  %196 = add i64 %195, 0, !dbg !98
  %197 = getelementptr float, ptr %15, i64 %196, !dbg !98
  store <16 x float> %194, ptr %197, align 4, !dbg !98
  %198 = extractvalue [16 x <16 x float>] %24, 3, !dbg !98
  %199 = add i64 %186, 48, !dbg !98
  %200 = add i64 %199, 0, !dbg !98
  %201 = getelementptr float, ptr %15, i64 %200, !dbg !98
  store <16 x float> %198, ptr %201, align 4, !dbg !98
  %202 = extractvalue [16 x <16 x float>] %24, 4, !dbg !98
  %203 = add i64 %186, 64, !dbg !98
  %204 = add i64 %203, 0, !dbg !98
  %205 = getelementptr float, ptr %15, i64 %204, !dbg !98
  store <16 x float> %202, ptr %205, align 4, !dbg !98
  %206 = extractvalue [16 x <16 x float>] %24, 5, !dbg !98
  %207 = add i64 %186, 80, !dbg !98
  %208 = add i64 %207, 0, !dbg !98
  %209 = getelementptr float, ptr %15, i64 %208, !dbg !98
  store <16 x float> %206, ptr %209, align 4, !dbg !98
  %210 = extractvalue [16 x <16 x float>] %24, 6, !dbg !98
  %211 = add i64 %186, 96, !dbg !98
  %212 = add i64 %211, 0, !dbg !98
  %213 = getelementptr float, ptr %15, i64 %212, !dbg !98
  store <16 x float> %210, ptr %213, align 4, !dbg !98
  %214 = extractvalue [16 x <16 x float>] %24, 7, !dbg !98
  %215 = add i64 %186, 112, !dbg !98
  %216 = add i64 %215, 0, !dbg !98
  %217 = getelementptr float, ptr %15, i64 %216, !dbg !98
  store <16 x float> %214, ptr %217, align 4, !dbg !98
  %218 = extractvalue [16 x <16 x float>] %24, 8, !dbg !98
  %219 = add i64 %186, 128, !dbg !98
  %220 = add i64 %219, 0, !dbg !98
  %221 = getelementptr float, ptr %15, i64 %220, !dbg !98
  store <16 x float> %218, ptr %221, align 4, !dbg !98
  %222 = extractvalue [16 x <16 x float>] %24, 9, !dbg !98
  %223 = add i64 %186, 144, !dbg !98
  %224 = add i64 %223, 0, !dbg !98
  %225 = getelementptr float, ptr %15, i64 %224, !dbg !98
  store <16 x float> %222, ptr %225, align 4, !dbg !98
  %226 = extractvalue [16 x <16 x float>] %24, 10, !dbg !98
  %227 = add i64 %186, 160, !dbg !98
  %228 = add i64 %227, 0, !dbg !98
  %229 = getelementptr float, ptr %15, i64 %228, !dbg !98
  store <16 x float> %226, ptr %229, align 4, !dbg !98
  %230 = extractvalue [16 x <16 x float>] %24, 11, !dbg !98
  %231 = add i64 %186, 176, !dbg !98
  %232 = add i64 %231, 0, !dbg !98
  %233 = getelementptr float, ptr %15, i64 %232, !dbg !98
  store <16 x float> %230, ptr %233, align 4, !dbg !98
  %234 = extractvalue [16 x <16 x float>] %24, 12, !dbg !98
  %235 = add i64 %186, 192, !dbg !98
  %236 = add i64 %235, 0, !dbg !98
  %237 = getelementptr float, ptr %15, i64 %236, !dbg !98
  store <16 x float> %234, ptr %237, align 4, !dbg !98
  %238 = extractvalue [16 x <16 x float>] %24, 13, !dbg !98
  %239 = add i64 %186, 208, !dbg !98
  %240 = add i64 %239, 0, !dbg !98
  %241 = getelementptr float, ptr %15, i64 %240, !dbg !98
  store <16 x float> %238, ptr %241, align 4, !dbg !98
  %242 = extractvalue [16 x <16 x float>] %24, 14, !dbg !98
  %243 = add i64 %186, 224, !dbg !98
  %244 = add i64 %243, 0, !dbg !98
  %245 = getelementptr float, ptr %15, i64 %244, !dbg !98
  store <16 x float> %242, ptr %245, align 4, !dbg !98
  %246 = extractvalue [16 x <16 x float>] %24, 15, !dbg !98
  %247 = add i64 %186, 240, !dbg !98
  %248 = add i64 %247, 0, !dbg !98
  %249 = getelementptr float, ptr %15, i64 %248, !dbg !98
  store <16 x float> %246, ptr %249, align 4, !dbg !98
  %250 = add i64 %20, 1, !dbg !98
  br label %19, !dbg !98

251:                                              ; preds = %19
  %252 = add i64 %17, 1, !dbg !98
  br label %16, !dbg !98

253:                                              ; preds = %16
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
  %31 = sdiv i64 %30, 16, !dbg !103
  %32 = sub i64 -1, %31, !dbg !103
  %33 = select i1 %28, i64 %32, i64 %31, !dbg !103
  %34 = icmp slt i64 %27, 0, !dbg !103
  %35 = sub i64 -1, %27, !dbg !103
  %36 = select i1 %34, i64 %35, i64 %27, !dbg !103
  %37 = sdiv i64 %36, 16, !dbg !103
  %38 = sub i64 -1, %37, !dbg !103
  %39 = select i1 %34, i64 %38, i64 %37, !dbg !103
  br label %40, !dbg !103

40:                                               ; preds = %43, %3
  %41 = phi i64 [ %182, %43 ], [ 0, %3 ], !dbg !103
  %42 = icmp slt i64 %41, 64, !dbg !103
  br i1 %42, label %43, label %183, !dbg !103

43:                                               ; preds = %40
  %44 = icmp slt i64 %41, 0, !dbg !103
  %45 = sub i64 -1, %41, !dbg !103
  %46 = select i1 %44, i64 %45, i64 %41, !dbg !103
  %47 = sdiv i64 %46, 16, !dbg !103
  %48 = sub i64 -1, %47, !dbg !103
  %49 = select i1 %44, i64 %48, i64 %47, !dbg !103
  %50 = add i64 %49, %39, !dbg !103
  %51 = mul i64 %33, 2048, !dbg !103
  %52 = mul i64 %50, 256, !dbg !103
  %53 = add i64 %51, %52, !dbg !103
  %54 = add i64 %53, 0, !dbg !103
  %55 = add i64 %54, 0, !dbg !103
  %56 = getelementptr float, ptr %7, i64 %55, !dbg !103
  %57 = load <16 x float>, ptr %56, align 4, !dbg !103
  %58 = add i64 %53, 16, !dbg !103
  %59 = add i64 %58, 0, !dbg !103
  %60 = getelementptr float, ptr %7, i64 %59, !dbg !103
  %61 = load <16 x float>, ptr %60, align 4, !dbg !103
  %62 = add i64 %53, 32, !dbg !103
  %63 = add i64 %62, 0, !dbg !103
  %64 = getelementptr float, ptr %7, i64 %63, !dbg !103
  %65 = load <16 x float>, ptr %64, align 4, !dbg !103
  %66 = add i64 %53, 48, !dbg !103
  %67 = add i64 %66, 0, !dbg !103
  %68 = getelementptr float, ptr %7, i64 %67, !dbg !103
  %69 = load <16 x float>, ptr %68, align 4, !dbg !103
  %70 = add i64 %53, 64, !dbg !103
  %71 = add i64 %70, 0, !dbg !103
  %72 = getelementptr float, ptr %7, i64 %71, !dbg !103
  %73 = load <16 x float>, ptr %72, align 4, !dbg !103
  %74 = add i64 %53, 80, !dbg !103
  %75 = add i64 %74, 0, !dbg !103
  %76 = getelementptr float, ptr %7, i64 %75, !dbg !103
  %77 = load <16 x float>, ptr %76, align 4, !dbg !103
  %78 = add i64 %53, 96, !dbg !103
  %79 = add i64 %78, 0, !dbg !103
  %80 = getelementptr float, ptr %7, i64 %79, !dbg !103
  %81 = load <16 x float>, ptr %80, align 4, !dbg !103
  %82 = add i64 %53, 112, !dbg !103
  %83 = add i64 %82, 0, !dbg !103
  %84 = getelementptr float, ptr %7, i64 %83, !dbg !103
  %85 = load <16 x float>, ptr %84, align 4, !dbg !103
  %86 = add i64 %53, 128, !dbg !103
  %87 = add i64 %86, 0, !dbg !103
  %88 = getelementptr float, ptr %7, i64 %87, !dbg !103
  %89 = load <16 x float>, ptr %88, align 4, !dbg !103
  %90 = add i64 %53, 144, !dbg !103
  %91 = add i64 %90, 0, !dbg !103
  %92 = getelementptr float, ptr %7, i64 %91, !dbg !103
  %93 = load <16 x float>, ptr %92, align 4, !dbg !103
  %94 = add i64 %53, 160, !dbg !103
  %95 = add i64 %94, 0, !dbg !103
  %96 = getelementptr float, ptr %7, i64 %95, !dbg !103
  %97 = load <16 x float>, ptr %96, align 4, !dbg !103
  %98 = add i64 %53, 176, !dbg !103
  %99 = add i64 %98, 0, !dbg !103
  %100 = getelementptr float, ptr %7, i64 %99, !dbg !103
  %101 = load <16 x float>, ptr %100, align 4, !dbg !103
  %102 = add i64 %53, 192, !dbg !103
  %103 = add i64 %102, 0, !dbg !103
  %104 = getelementptr float, ptr %7, i64 %103, !dbg !103
  %105 = load <16 x float>, ptr %104, align 4, !dbg !103
  %106 = add i64 %53, 208, !dbg !103
  %107 = add i64 %106, 0, !dbg !103
  %108 = getelementptr float, ptr %7, i64 %107, !dbg !103
  %109 = load <16 x float>, ptr %108, align 4, !dbg !103
  %110 = add i64 %53, 224, !dbg !103
  %111 = add i64 %110, 0, !dbg !103
  %112 = getelementptr float, ptr %7, i64 %111, !dbg !103
  %113 = load <16 x float>, ptr %112, align 4, !dbg !103
  %114 = add i64 %53, 240, !dbg !103
  %115 = add i64 %114, 0, !dbg !103
  %116 = getelementptr float, ptr %7, i64 %115, !dbg !103
  %117 = load <16 x float>, ptr %116, align 4, !dbg !103
  %118 = add i64 %27, %41, !dbg !103
  %119 = mul i64 %26, 128, !dbg !103
  %120 = add i64 %119, %118, !dbg !103
  %121 = getelementptr float, ptr %11, i64 %120, !dbg !103
  store <16 x float> %57, ptr %121, align 4, !dbg !103
  %122 = add i64 %26, 1, !dbg !103
  %123 = mul i64 %122, 128, !dbg !103
  %124 = add i64 %123, %118, !dbg !103
  %125 = getelementptr float, ptr %11, i64 %124, !dbg !103
  store <16 x float> %61, ptr %125, align 4, !dbg !103
  %126 = add i64 %26, 2, !dbg !103
  %127 = mul i64 %126, 128, !dbg !103
  %128 = add i64 %127, %118, !dbg !103
  %129 = getelementptr float, ptr %11, i64 %128, !dbg !103
  store <16 x float> %65, ptr %129, align 4, !dbg !103
  %130 = add i64 %26, 3, !dbg !103
  %131 = mul i64 %130, 128, !dbg !103
  %132 = add i64 %131, %118, !dbg !103
  %133 = getelementptr float, ptr %11, i64 %132, !dbg !103
  store <16 x float> %69, ptr %133, align 4, !dbg !103
  %134 = add i64 %26, 4, !dbg !103
  %135 = mul i64 %134, 128, !dbg !103
  %136 = add i64 %135, %118, !dbg !103
  %137 = getelementptr float, ptr %11, i64 %136, !dbg !103
  store <16 x float> %73, ptr %137, align 4, !dbg !103
  %138 = add i64 %26, 5, !dbg !103
  %139 = mul i64 %138, 128, !dbg !103
  %140 = add i64 %139, %118, !dbg !103
  %141 = getelementptr float, ptr %11, i64 %140, !dbg !103
  store <16 x float> %77, ptr %141, align 4, !dbg !103
  %142 = add i64 %26, 6, !dbg !103
  %143 = mul i64 %142, 128, !dbg !103
  %144 = add i64 %143, %118, !dbg !103
  %145 = getelementptr float, ptr %11, i64 %144, !dbg !103
  store <16 x float> %81, ptr %145, align 4, !dbg !103
  %146 = add i64 %26, 7, !dbg !103
  %147 = mul i64 %146, 128, !dbg !103
  %148 = add i64 %147, %118, !dbg !103
  %149 = getelementptr float, ptr %11, i64 %148, !dbg !103
  store <16 x float> %85, ptr %149, align 4, !dbg !103
  %150 = add i64 %26, 8, !dbg !103
  %151 = mul i64 %150, 128, !dbg !103
  %152 = add i64 %151, %118, !dbg !103
  %153 = getelementptr float, ptr %11, i64 %152, !dbg !103
  store <16 x float> %89, ptr %153, align 4, !dbg !103
  %154 = add i64 %26, 9, !dbg !103
  %155 = mul i64 %154, 128, !dbg !103
  %156 = add i64 %155, %118, !dbg !103
  %157 = getelementptr float, ptr %11, i64 %156, !dbg !103
  store <16 x float> %93, ptr %157, align 4, !dbg !103
  %158 = add i64 %26, 10, !dbg !103
  %159 = mul i64 %158, 128, !dbg !103
  %160 = add i64 %159, %118, !dbg !103
  %161 = getelementptr float, ptr %11, i64 %160, !dbg !103
  store <16 x float> %97, ptr %161, align 4, !dbg !103
  %162 = add i64 %26, 11, !dbg !103
  %163 = mul i64 %162, 128, !dbg !103
  %164 = add i64 %163, %118, !dbg !103
  %165 = getelementptr float, ptr %11, i64 %164, !dbg !103
  store <16 x float> %101, ptr %165, align 4, !dbg !103
  %166 = add i64 %26, 12, !dbg !103
  %167 = mul i64 %166, 128, !dbg !103
  %168 = add i64 %167, %118, !dbg !103
  %169 = getelementptr float, ptr %11, i64 %168, !dbg !103
  store <16 x float> %105, ptr %169, align 4, !dbg !103
  %170 = add i64 %26, 13, !dbg !103
  %171 = mul i64 %170, 128, !dbg !103
  %172 = add i64 %171, %118, !dbg !103
  %173 = getelementptr float, ptr %11, i64 %172, !dbg !103
  store <16 x float> %109, ptr %173, align 4, !dbg !103
  %174 = add i64 %26, 14, !dbg !103
  %175 = mul i64 %174, 128, !dbg !103
  %176 = add i64 %175, %118, !dbg !103
  %177 = getelementptr float, ptr %11, i64 %176, !dbg !103
  store <16 x float> %113, ptr %177, align 4, !dbg !103
  %178 = add i64 %26, 15, !dbg !103
  %179 = mul i64 %178, 128, !dbg !103
  %180 = add i64 %179, %118, !dbg !103
  %181 = getelementptr float, ptr %11, i64 %180, !dbg !103
  store <16 x float> %117, ptr %181, align 4, !dbg !103
  %182 = add i64 %41, 16, !dbg !103
  br label %40, !dbg !103

183:                                              ; preds = %40
  ret i32 0, !dbg !104
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #2

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
!1 = !DIFile(filename: "configured_module_matmul_dispatch_0.mlir", directory: "/home/rudramb122/MLIRBench/build/128x128x128/packed_mmt4d_6a56a31965/dispatches")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !3, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "configured_module_matmul_dispatch_1.mlir", directory: "/home/rudramb122/MLIRBench/build/128x128x128/packed_mmt4d_6a56a31965/dispatches")
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !5, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "configured_module_matmul_dispatch_2.mlir", directory: "/home/rudramb122/MLIRBench/build/128x128x128/packed_mmt4d_6a56a31965/dispatches")
!6 = distinct !DICompileUnit(language: DW_LANG_C17, file: !7, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "configured_module_matmul_dispatch_3.mlir", directory: "/home/rudramb122/MLIRBench/build/128x128x128/packed_mmt4d_6a56a31965/dispatches")
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
!94 = distinct !DISubprogram(name: "matmul_dispatch_2_mmt4d_8x8x128x16x16x1_f32", linkageName: "matmul_dispatch_2_mmt4d_8x8x128x16x16x1_f32", scope: !5, file: !5, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
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
