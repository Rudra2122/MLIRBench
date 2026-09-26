; ModuleID = 'matmul_dispatch_0'
source_filename = "matmul_dispatch_0"
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

@0 = private constant [18 x i8] c"matmul_dispatch_0\00", align 1
@iree_hal_executable_library_query_v0_header = private constant %iree_hal_executable_library_header_t { i32 6, ptr @0, i32 0, i32 0 }
@iree_hal_executable_library_query_v0_funcs = private constant [1 x ptr] [ptr @matmul_dispatch_0_matmul_128x128x128_f32]
@iree_hal_executable_library_query_v0_attrs = private constant [1 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = private constant [41 x i8] c"matmul_dispatch_0_matmul_128x128x128_f32\00", align 1
@iree_hal_executable_library_query_v0_names = private constant [1 x ptr] [ptr @1]
@2 = private constant [138 x i8] c"/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/vec_heuristic_efeb61674d/dispatches/configured_module_matmul_dispatch_0.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [1 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 137, ptr @2 }]
@iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_128x128x128_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_128x128x128_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = private constant [1 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_128x128x128_f32_stage_names, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_128x128x128_f32_stage_source_locations }]
@iree_hal_executable_library_query_v0 = private constant %iree_hal_executable_library_v0_t { ptr @iree_hal_executable_library_query_v0_header, %iree_hal_executable_import_table_v0_t zeroinitializer, %iree_hal_executable_export_table_v0_t { i32 1, ptr @iree_hal_executable_library_query_v0_funcs, ptr @iree_hal_executable_library_query_v0_attrs, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_names, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_source_locations, ptr @iree_hal_executable_library_query_v0_stage_location_tables }, %iree_hal_executable_constant_table_v0_t zeroinitializer, %iree_hal_executable_source_file_table_v0_t zeroinitializer }

define internal i32 @matmul_dispatch_0_matmul_128x128x128_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !3 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !79
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !79
  %6 = load ptr, ptr %5, align 8, !dbg !79
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !79
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !80
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !80
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !80
  %10 = load ptr, ptr %9, align 8, !dbg !80
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !80
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !81
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !81
  %13 = getelementptr ptr, ptr %12, i32 2, !dbg !81
  %14 = load ptr, ptr %13, align 8, !dbg !81
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !81
  %15 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !82
  %16 = extractvalue %iree_hal_executable_workgroup_state_v0_t %15, 0, !dbg !82
  %17 = zext i32 %16 to i64, !dbg !82
  %18 = sdiv i64 %17, 2, !dbg !82
  %19 = mul i64 %18, 2, !dbg !82
  %20 = icmp ne i64 %17, %19, !dbg !82
  %21 = icmp slt i64 %17, 0, !dbg !82
  %22 = and i1 %20, %21, !dbg !82
  %23 = add i64 %18, -1, !dbg !82
  %24 = select i1 %22, i64 %23, i64 %18, !dbg !82
  %25 = srem i64 %17, 2, !dbg !82
  %26 = icmp slt i64 %25, 0, !dbg !82
  %27 = add nsw i64 %25, 2, !dbg !82
  %28 = select i1 %26, i64 %27, i64 %25, !dbg !82
  %29 = mul nsw i64 %24, 16, !dbg !82
  %30 = mul nsw i64 %28, 64, !dbg !82
  br label %31, !dbg !82

31:                                               ; preds = %337, %3
  %32 = phi i64 [ %338, %337 ], [ 0, %3 ], !dbg !82
  %33 = icmp slt i64 %32, 16, !dbg !82
  br i1 %33, label %34, label %339, !dbg !82

34:                                               ; preds = %288, %31
  %35 = phi i64 [ %336, %288 ], [ 0, %31 ], !dbg !82
  %36 = icmp slt i64 %35, 64, !dbg !82
  br i1 %36, label %37, label %337, !dbg !82

37:                                               ; preds = %34
  %38 = add i64 %35, %30, !dbg !82
  br label %39, !dbg !82

39:                                               ; preds = %43, %37
  %40 = phi i64 [ %287, %43 ], [ 0, %37 ], !dbg !82
  %41 = phi [8 x <8 x float>] [ %286, %43 ], [ zeroinitializer, %37 ], !dbg !82
  %42 = icmp slt i64 %40, 128, !dbg !82
  br i1 %42, label %43, label %288, !dbg !82

43:                                               ; preds = %39
  %44 = mul i64 %40, 128, !dbg !82
  %45 = add i64 %44, %38, !dbg !82
  %46 = getelementptr float, ptr %10, i64 %45, !dbg !82
  %47 = load <8 x float>, ptr %46, align 4, !dbg !82
  %48 = add i64 %40, 1, !dbg !82
  %49 = mul i64 %48, 128, !dbg !82
  %50 = add i64 %49, %38, !dbg !82
  %51 = getelementptr float, ptr %10, i64 %50, !dbg !82
  %52 = load <8 x float>, ptr %51, align 4, !dbg !82
  %53 = add i64 %40, 2, !dbg !82
  %54 = mul i64 %53, 128, !dbg !82
  %55 = add i64 %54, %38, !dbg !82
  %56 = getelementptr float, ptr %10, i64 %55, !dbg !82
  %57 = load <8 x float>, ptr %56, align 4, !dbg !82
  %58 = add i64 %40, 3, !dbg !82
  %59 = mul i64 %58, 128, !dbg !82
  %60 = add i64 %59, %38, !dbg !82
  %61 = getelementptr float, ptr %10, i64 %60, !dbg !82
  %62 = load <8 x float>, ptr %61, align 4, !dbg !82
  %63 = add i64 %32, %29, !dbg !83
  %64 = mul nuw nsw i64 %63, 128, !dbg !83
  %65 = add nuw nsw i64 %64, %40, !dbg !83
  %66 = getelementptr inbounds nuw float, ptr %6, i64 %65, !dbg !83
  %67 = load float, ptr %66, align 4, !dbg !83
  %68 = insertelement <8 x float> poison, float %67, i32 0, !dbg !83
  %69 = shufflevector <8 x float> %68, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %70 = extractvalue [8 x <8 x float>] %41, 0, !dbg !83
  %71 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %69, <8 x float> %47, <8 x float> %70), !dbg !83
  %72 = add i64 %63, 1, !dbg !83
  %73 = mul nuw nsw i64 %72, 128, !dbg !83
  %74 = add nuw nsw i64 %73, %40, !dbg !83
  %75 = getelementptr inbounds nuw float, ptr %6, i64 %74, !dbg !83
  %76 = load float, ptr %75, align 4, !dbg !83
  %77 = insertelement <8 x float> poison, float %76, i32 0, !dbg !83
  %78 = shufflevector <8 x float> %77, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %79 = extractvalue [8 x <8 x float>] %41, 1, !dbg !83
  %80 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %78, <8 x float> %47, <8 x float> %79), !dbg !83
  %81 = add i64 %63, 2, !dbg !83
  %82 = mul nuw nsw i64 %81, 128, !dbg !83
  %83 = add nuw nsw i64 %82, %40, !dbg !83
  %84 = getelementptr inbounds nuw float, ptr %6, i64 %83, !dbg !83
  %85 = load float, ptr %84, align 4, !dbg !83
  %86 = insertelement <8 x float> poison, float %85, i32 0, !dbg !83
  %87 = shufflevector <8 x float> %86, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %88 = extractvalue [8 x <8 x float>] %41, 2, !dbg !83
  %89 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %87, <8 x float> %47, <8 x float> %88), !dbg !83
  %90 = add i64 %63, 3, !dbg !83
  %91 = mul nuw nsw i64 %90, 128, !dbg !83
  %92 = add nuw nsw i64 %91, %40, !dbg !83
  %93 = getelementptr inbounds nuw float, ptr %6, i64 %92, !dbg !83
  %94 = load float, ptr %93, align 4, !dbg !83
  %95 = insertelement <8 x float> poison, float %94, i32 0, !dbg !83
  %96 = shufflevector <8 x float> %95, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %97 = extractvalue [8 x <8 x float>] %41, 3, !dbg !83
  %98 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %96, <8 x float> %47, <8 x float> %97), !dbg !83
  %99 = add i64 %63, 4, !dbg !83
  %100 = mul nuw nsw i64 %99, 128, !dbg !83
  %101 = add nuw nsw i64 %100, %40, !dbg !83
  %102 = getelementptr inbounds nuw float, ptr %6, i64 %101, !dbg !83
  %103 = load float, ptr %102, align 4, !dbg !83
  %104 = insertelement <8 x float> poison, float %103, i32 0, !dbg !83
  %105 = shufflevector <8 x float> %104, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %106 = extractvalue [8 x <8 x float>] %41, 4, !dbg !83
  %107 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %105, <8 x float> %47, <8 x float> %106), !dbg !83
  %108 = add i64 %63, 5, !dbg !83
  %109 = mul nuw nsw i64 %108, 128, !dbg !83
  %110 = add nuw nsw i64 %109, %40, !dbg !83
  %111 = getelementptr inbounds nuw float, ptr %6, i64 %110, !dbg !83
  %112 = load float, ptr %111, align 4, !dbg !83
  %113 = insertelement <8 x float> poison, float %112, i32 0, !dbg !83
  %114 = shufflevector <8 x float> %113, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %115 = extractvalue [8 x <8 x float>] %41, 5, !dbg !83
  %116 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %114, <8 x float> %47, <8 x float> %115), !dbg !83
  %117 = add i64 %63, 6, !dbg !83
  %118 = mul nuw nsw i64 %117, 128, !dbg !83
  %119 = add nuw nsw i64 %118, %40, !dbg !83
  %120 = getelementptr inbounds nuw float, ptr %6, i64 %119, !dbg !83
  %121 = load float, ptr %120, align 4, !dbg !83
  %122 = insertelement <8 x float> poison, float %121, i32 0, !dbg !83
  %123 = shufflevector <8 x float> %122, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %124 = extractvalue [8 x <8 x float>] %41, 6, !dbg !83
  %125 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %123, <8 x float> %47, <8 x float> %124), !dbg !83
  %126 = add i64 %63, 7, !dbg !83
  %127 = mul nuw nsw i64 %126, 128, !dbg !83
  %128 = add nuw nsw i64 %127, %40, !dbg !83
  %129 = getelementptr inbounds nuw float, ptr %6, i64 %128, !dbg !83
  %130 = load float, ptr %129, align 4, !dbg !83
  %131 = insertelement <8 x float> poison, float %130, i32 0, !dbg !83
  %132 = shufflevector <8 x float> %131, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %133 = extractvalue [8 x <8 x float>] %41, 7, !dbg !83
  %134 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %132, <8 x float> %47, <8 x float> %133), !dbg !83
  %135 = add nuw nsw i64 %64, %48, !dbg !83
  %136 = getelementptr inbounds nuw float, ptr %6, i64 %135, !dbg !83
  %137 = load float, ptr %136, align 4, !dbg !83
  %138 = insertelement <8 x float> poison, float %137, i32 0, !dbg !83
  %139 = shufflevector <8 x float> %138, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %140 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %139, <8 x float> %52, <8 x float> %71), !dbg !83
  %141 = add nuw nsw i64 %73, %48, !dbg !83
  %142 = getelementptr inbounds nuw float, ptr %6, i64 %141, !dbg !83
  %143 = load float, ptr %142, align 4, !dbg !83
  %144 = insertelement <8 x float> poison, float %143, i32 0, !dbg !83
  %145 = shufflevector <8 x float> %144, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %146 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %145, <8 x float> %52, <8 x float> %80), !dbg !83
  %147 = add nuw nsw i64 %82, %48, !dbg !83
  %148 = getelementptr inbounds nuw float, ptr %6, i64 %147, !dbg !83
  %149 = load float, ptr %148, align 4, !dbg !83
  %150 = insertelement <8 x float> poison, float %149, i32 0, !dbg !83
  %151 = shufflevector <8 x float> %150, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %152 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %151, <8 x float> %52, <8 x float> %89), !dbg !83
  %153 = add nuw nsw i64 %91, %48, !dbg !83
  %154 = getelementptr inbounds nuw float, ptr %6, i64 %153, !dbg !83
  %155 = load float, ptr %154, align 4, !dbg !83
  %156 = insertelement <8 x float> poison, float %155, i32 0, !dbg !83
  %157 = shufflevector <8 x float> %156, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %158 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %157, <8 x float> %52, <8 x float> %98), !dbg !83
  %159 = add nuw nsw i64 %100, %48, !dbg !83
  %160 = getelementptr inbounds nuw float, ptr %6, i64 %159, !dbg !83
  %161 = load float, ptr %160, align 4, !dbg !83
  %162 = insertelement <8 x float> poison, float %161, i32 0, !dbg !83
  %163 = shufflevector <8 x float> %162, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %164 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %163, <8 x float> %52, <8 x float> %107), !dbg !83
  %165 = add nuw nsw i64 %109, %48, !dbg !83
  %166 = getelementptr inbounds nuw float, ptr %6, i64 %165, !dbg !83
  %167 = load float, ptr %166, align 4, !dbg !83
  %168 = insertelement <8 x float> poison, float %167, i32 0, !dbg !83
  %169 = shufflevector <8 x float> %168, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %170 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %169, <8 x float> %52, <8 x float> %116), !dbg !83
  %171 = add nuw nsw i64 %118, %48, !dbg !83
  %172 = getelementptr inbounds nuw float, ptr %6, i64 %171, !dbg !83
  %173 = load float, ptr %172, align 4, !dbg !83
  %174 = insertelement <8 x float> poison, float %173, i32 0, !dbg !83
  %175 = shufflevector <8 x float> %174, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %176 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %175, <8 x float> %52, <8 x float> %125), !dbg !83
  %177 = add nuw nsw i64 %127, %48, !dbg !83
  %178 = getelementptr inbounds nuw float, ptr %6, i64 %177, !dbg !83
  %179 = load float, ptr %178, align 4, !dbg !83
  %180 = insertelement <8 x float> poison, float %179, i32 0, !dbg !83
  %181 = shufflevector <8 x float> %180, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %182 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %181, <8 x float> %52, <8 x float> %134), !dbg !83
  %183 = add nuw nsw i64 %64, %53, !dbg !83
  %184 = getelementptr inbounds nuw float, ptr %6, i64 %183, !dbg !83
  %185 = load float, ptr %184, align 4, !dbg !83
  %186 = insertelement <8 x float> poison, float %185, i32 0, !dbg !83
  %187 = shufflevector <8 x float> %186, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %188 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %187, <8 x float> %57, <8 x float> %140), !dbg !83
  %189 = add nuw nsw i64 %73, %53, !dbg !83
  %190 = getelementptr inbounds nuw float, ptr %6, i64 %189, !dbg !83
  %191 = load float, ptr %190, align 4, !dbg !83
  %192 = insertelement <8 x float> poison, float %191, i32 0, !dbg !83
  %193 = shufflevector <8 x float> %192, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %194 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %193, <8 x float> %57, <8 x float> %146), !dbg !83
  %195 = add nuw nsw i64 %82, %53, !dbg !83
  %196 = getelementptr inbounds nuw float, ptr %6, i64 %195, !dbg !83
  %197 = load float, ptr %196, align 4, !dbg !83
  %198 = insertelement <8 x float> poison, float %197, i32 0, !dbg !83
  %199 = shufflevector <8 x float> %198, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %200 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %199, <8 x float> %57, <8 x float> %152), !dbg !83
  %201 = add nuw nsw i64 %91, %53, !dbg !83
  %202 = getelementptr inbounds nuw float, ptr %6, i64 %201, !dbg !83
  %203 = load float, ptr %202, align 4, !dbg !83
  %204 = insertelement <8 x float> poison, float %203, i32 0, !dbg !83
  %205 = shufflevector <8 x float> %204, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %206 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %205, <8 x float> %57, <8 x float> %158), !dbg !83
  %207 = add nuw nsw i64 %100, %53, !dbg !83
  %208 = getelementptr inbounds nuw float, ptr %6, i64 %207, !dbg !83
  %209 = load float, ptr %208, align 4, !dbg !83
  %210 = insertelement <8 x float> poison, float %209, i32 0, !dbg !83
  %211 = shufflevector <8 x float> %210, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %212 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %211, <8 x float> %57, <8 x float> %164), !dbg !83
  %213 = add nuw nsw i64 %109, %53, !dbg !83
  %214 = getelementptr inbounds nuw float, ptr %6, i64 %213, !dbg !83
  %215 = load float, ptr %214, align 4, !dbg !83
  %216 = insertelement <8 x float> poison, float %215, i32 0, !dbg !83
  %217 = shufflevector <8 x float> %216, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %218 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %217, <8 x float> %57, <8 x float> %170), !dbg !83
  %219 = add nuw nsw i64 %118, %53, !dbg !83
  %220 = getelementptr inbounds nuw float, ptr %6, i64 %219, !dbg !83
  %221 = load float, ptr %220, align 4, !dbg !83
  %222 = insertelement <8 x float> poison, float %221, i32 0, !dbg !83
  %223 = shufflevector <8 x float> %222, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %224 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %223, <8 x float> %57, <8 x float> %176), !dbg !83
  %225 = add nuw nsw i64 %127, %53, !dbg !83
  %226 = getelementptr inbounds nuw float, ptr %6, i64 %225, !dbg !83
  %227 = load float, ptr %226, align 4, !dbg !83
  %228 = insertelement <8 x float> poison, float %227, i32 0, !dbg !83
  %229 = shufflevector <8 x float> %228, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %230 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %229, <8 x float> %57, <8 x float> %182), !dbg !83
  %231 = add nuw nsw i64 %64, %58, !dbg !83
  %232 = getelementptr inbounds nuw float, ptr %6, i64 %231, !dbg !83
  %233 = load float, ptr %232, align 4, !dbg !83
  %234 = insertelement <8 x float> poison, float %233, i32 0, !dbg !83
  %235 = shufflevector <8 x float> %234, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %236 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %235, <8 x float> %62, <8 x float> %188), !dbg !83
  %237 = add nuw nsw i64 %73, %58, !dbg !83
  %238 = getelementptr inbounds nuw float, ptr %6, i64 %237, !dbg !83
  %239 = load float, ptr %238, align 4, !dbg !83
  %240 = insertelement <8 x float> poison, float %239, i32 0, !dbg !83
  %241 = shufflevector <8 x float> %240, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %242 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %241, <8 x float> %62, <8 x float> %194), !dbg !83
  %243 = add nuw nsw i64 %82, %58, !dbg !83
  %244 = getelementptr inbounds nuw float, ptr %6, i64 %243, !dbg !83
  %245 = load float, ptr %244, align 4, !dbg !83
  %246 = insertelement <8 x float> poison, float %245, i32 0, !dbg !83
  %247 = shufflevector <8 x float> %246, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %248 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %247, <8 x float> %62, <8 x float> %200), !dbg !83
  %249 = add nuw nsw i64 %91, %58, !dbg !83
  %250 = getelementptr inbounds nuw float, ptr %6, i64 %249, !dbg !83
  %251 = load float, ptr %250, align 4, !dbg !83
  %252 = insertelement <8 x float> poison, float %251, i32 0, !dbg !83
  %253 = shufflevector <8 x float> %252, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %254 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %253, <8 x float> %62, <8 x float> %206), !dbg !83
  %255 = add nuw nsw i64 %100, %58, !dbg !83
  %256 = getelementptr inbounds nuw float, ptr %6, i64 %255, !dbg !83
  %257 = load float, ptr %256, align 4, !dbg !83
  %258 = insertelement <8 x float> poison, float %257, i32 0, !dbg !83
  %259 = shufflevector <8 x float> %258, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %260 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %259, <8 x float> %62, <8 x float> %212), !dbg !83
  %261 = add nuw nsw i64 %109, %58, !dbg !83
  %262 = getelementptr inbounds nuw float, ptr %6, i64 %261, !dbg !83
  %263 = load float, ptr %262, align 4, !dbg !83
  %264 = insertelement <8 x float> poison, float %263, i32 0, !dbg !83
  %265 = shufflevector <8 x float> %264, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %266 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %265, <8 x float> %62, <8 x float> %218), !dbg !83
  %267 = add nuw nsw i64 %118, %58, !dbg !83
  %268 = getelementptr inbounds nuw float, ptr %6, i64 %267, !dbg !83
  %269 = load float, ptr %268, align 4, !dbg !83
  %270 = insertelement <8 x float> poison, float %269, i32 0, !dbg !83
  %271 = shufflevector <8 x float> %270, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %272 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %271, <8 x float> %62, <8 x float> %224), !dbg !83
  %273 = add nuw nsw i64 %127, %58, !dbg !83
  %274 = getelementptr inbounds nuw float, ptr %6, i64 %273, !dbg !83
  %275 = load float, ptr %274, align 4, !dbg !83
  %276 = insertelement <8 x float> poison, float %275, i32 0, !dbg !83
  %277 = shufflevector <8 x float> %276, <8 x float> poison, <8 x i32> zeroinitializer, !dbg !83
  %278 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %277, <8 x float> %62, <8 x float> %230), !dbg !83
  %279 = insertvalue [8 x <8 x float>] poison, <8 x float> %236, 0, !dbg !83
  %280 = insertvalue [8 x <8 x float>] %279, <8 x float> %242, 1, !dbg !83
  %281 = insertvalue [8 x <8 x float>] %280, <8 x float> %248, 2, !dbg !83
  %282 = insertvalue [8 x <8 x float>] %281, <8 x float> %254, 3, !dbg !83
  %283 = insertvalue [8 x <8 x float>] %282, <8 x float> %260, 4, !dbg !83
  %284 = insertvalue [8 x <8 x float>] %283, <8 x float> %266, 5, !dbg !83
  %285 = insertvalue [8 x <8 x float>] %284, <8 x float> %272, 6, !dbg !83
  %286 = insertvalue [8 x <8 x float>] %285, <8 x float> %278, 7, !dbg !83
  %287 = add i64 %40, 4, !dbg !82
  br label %39, !dbg !82

288:                                              ; preds = %39
  %289 = extractvalue [8 x <8 x float>] %41, 0, !dbg !82
  %290 = add i64 %29, %32, !dbg !82
  %291 = mul i64 %290, 128, !dbg !82
  %292 = add i64 %291, %38, !dbg !82
  %293 = getelementptr float, ptr %14, i64 %292, !dbg !82
  store <8 x float> %289, ptr %293, align 4, !dbg !82
  %294 = add i64 %32, 1, !dbg !82
  %295 = extractvalue [8 x <8 x float>] %41, 1, !dbg !82
  %296 = add i64 %29, %294, !dbg !82
  %297 = mul i64 %296, 128, !dbg !82
  %298 = add i64 %297, %38, !dbg !82
  %299 = getelementptr float, ptr %14, i64 %298, !dbg !82
  store <8 x float> %295, ptr %299, align 4, !dbg !82
  %300 = add i64 %32, 2, !dbg !82
  %301 = extractvalue [8 x <8 x float>] %41, 2, !dbg !82
  %302 = add i64 %29, %300, !dbg !82
  %303 = mul i64 %302, 128, !dbg !82
  %304 = add i64 %303, %38, !dbg !82
  %305 = getelementptr float, ptr %14, i64 %304, !dbg !82
  store <8 x float> %301, ptr %305, align 4, !dbg !82
  %306 = add i64 %32, 3, !dbg !82
  %307 = extractvalue [8 x <8 x float>] %41, 3, !dbg !82
  %308 = add i64 %29, %306, !dbg !82
  %309 = mul i64 %308, 128, !dbg !82
  %310 = add i64 %309, %38, !dbg !82
  %311 = getelementptr float, ptr %14, i64 %310, !dbg !82
  store <8 x float> %307, ptr %311, align 4, !dbg !82
  %312 = add i64 %32, 4, !dbg !82
  %313 = extractvalue [8 x <8 x float>] %41, 4, !dbg !82
  %314 = add i64 %29, %312, !dbg !82
  %315 = mul i64 %314, 128, !dbg !82
  %316 = add i64 %315, %38, !dbg !82
  %317 = getelementptr float, ptr %14, i64 %316, !dbg !82
  store <8 x float> %313, ptr %317, align 4, !dbg !82
  %318 = add i64 %32, 5, !dbg !82
  %319 = extractvalue [8 x <8 x float>] %41, 5, !dbg !82
  %320 = add i64 %29, %318, !dbg !82
  %321 = mul i64 %320, 128, !dbg !82
  %322 = add i64 %321, %38, !dbg !82
  %323 = getelementptr float, ptr %14, i64 %322, !dbg !82
  store <8 x float> %319, ptr %323, align 4, !dbg !82
  %324 = add i64 %32, 6, !dbg !82
  %325 = extractvalue [8 x <8 x float>] %41, 6, !dbg !82
  %326 = add i64 %29, %324, !dbg !82
  %327 = mul i64 %326, 128, !dbg !82
  %328 = add i64 %327, %38, !dbg !82
  %329 = getelementptr float, ptr %14, i64 %328, !dbg !82
  store <8 x float> %325, ptr %329, align 4, !dbg !82
  %330 = add i64 %32, 7, !dbg !82
  %331 = extractvalue [8 x <8 x float>] %41, 7, !dbg !82
  %332 = add i64 %29, %330, !dbg !82
  %333 = mul i64 %332, 128, !dbg !82
  %334 = add i64 %333, %38, !dbg !82
  %335 = getelementptr float, ptr %14, i64 %334, !dbg !82
  store <8 x float> %331, ptr %335, align 4, !dbg !82
  %336 = add i64 %35, 8, !dbg !82
  br label %34, !dbg !82

337:                                              ; preds = %34
  %338 = add i64 %32, 8, !dbg !82
  br label %31, !dbg !82

339:                                              ; preds = %31
  ret i32 0, !dbg !84
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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "configured_module_matmul_dispatch_0.mlir", directory: "/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/vec_heuristic_efeb61674d/dispatches")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "matmul_dispatch_0_matmul_128x128x128_f32", linkageName: "matmul_dispatch_0_matmul_128x128x128_f32", scope: !1, file: !1, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!4 = !DISubroutineType(cc: DW_CC_normal, types: !5)
!5 = !{!6, !7, !38, !67}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_environment_v0_t", baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_environment_v0_t", scope: !11, file: !11, line: 246, size: 768, elements: !12)
!11 = !DIFile(filename: "runtime/src/iree/hal/local/executable_library.h", directory: ".")
!12 = !{!13, !21, !24, !27, !29}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DICompositeType(tag: DW_TAG_array_type, scope: !11, file: !11, line: 227, baseType: !17, size: 2048, elements: !19)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", baseType: !18)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20}
!20 = !DISubrange(count: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "import_thunk", baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "void", encoding: DW_ATE_address)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "import_funcs", baseType: !25, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "import_contexts", baseType: !28, size: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "processor", baseType: !30, offset: 256)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_processor_v0_t", scope: !11, file: !11, line: 227, size: 512, elements: !31)
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !33)
!33 = !DICompositeType(tag: DW_TAG_array_type, scope: !11, file: !11, line: 227, baseType: !34, size: 512, elements: !36)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", baseType: !35)
!35 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !{!37}
!37 = !DISubrange(count: 8)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_dispatch_state_v0_t", baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_dispatch_state_v0_t", scope: !11, file: !11, line: 275, size: 384, elements: !42)
!42 = !{!43, !44, !45, !48, !49, !50, !51, !52, !55, !56, !57, !62}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_x", baseType: !17, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_y", baseType: !17, size: 32, offset: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_z", baseType: !46, size: 16, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", baseType: !47)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "constant_count", baseType: !46, size: 16, offset: 80)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_x", baseType: !17, size: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_y", baseType: !17, size: 32, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_z", baseType: !46, size: 16, offset: 160)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "max_concurrency", baseType: !53, size: 8, offset: 176)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", baseType: !54)
!54 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "binding_count", baseType: !53, size: 8, offset: 184)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !14, size: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "binding_ptrs", baseType: !58, size: 64, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, scope: !11, file: !11, line: 227, baseType: !61, size: 4096, elements: !19)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "binding_lengths", baseType: !63, size: 64, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, scope: !11, file: !11, line: 227, baseType: !66, size: 4096, elements: !19)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", baseType: !34)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_workgroup_state_v0_t", baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_workgroup_state_v0_t", scope: !11, file: !11, line: 321, size: 256, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !78}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_x", baseType: !17, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_y", baseType: !17, size: 32, offset: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_z", baseType: !46, size: 16, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", baseType: !46, size: 16, offset: 80)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", baseType: !17, size: 32, offset: 96)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory", baseType: !22, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory_size", baseType: !17, size: 32, offset: 192)
!79 = !DILocation(line: 11, column: 8, scope: !3)
!80 = !DILocation(line: 12, column: 8, scope: !3)
!81 = !DILocation(line: 13, column: 8, scope: !3)
!82 = !DILocation(line: 18, column: 8, scope: !3)
!83 = !DILocation(line: 1, column: 1, scope: !3)
!84 = !DILocation(line: 20, column: 8, scope: !3)
