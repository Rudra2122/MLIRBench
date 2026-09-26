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
@2 = private constant [138 x i8] c"/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/vec_autotuned_5973499a7e/dispatches/configured_module_matmul_dispatch_0.mlir\00", align 1
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
  %18 = mul nsw i64 %17, 16, !dbg !82
  br label %19, !dbg !82

19:                                               ; preds = %100, %3
  %20 = phi i64 [ %120, %100 ], [ 0, %3 ], !dbg !82
  %21 = icmp slt i64 %20, 128, !dbg !82
  br i1 %21, label %22, label %121, !dbg !82

22:                                               ; preds = %26, %19
  %23 = phi i64 [ %99, %26 ], [ 0, %19 ], !dbg !82
  %24 = phi [4 x <16 x float>] [ %98, %26 ], [ zeroinitializer, %19 ], !dbg !82
  %25 = icmp slt i64 %23, 128, !dbg !82
  br i1 %25, label %26, label %100, !dbg !82

26:                                               ; preds = %22
  %27 = mul i64 %23, 128, !dbg !82
  %28 = add i64 %27, %18, !dbg !82
  %29 = getelementptr float, ptr %10, i64 %28, !dbg !82
  %30 = load <16 x float>, ptr %29, align 4, !dbg !82
  %31 = add i64 %23, 1, !dbg !82
  %32 = mul i64 %31, 128, !dbg !82
  %33 = add i64 %32, %18, !dbg !82
  %34 = getelementptr float, ptr %10, i64 %33, !dbg !82
  %35 = load <16 x float>, ptr %34, align 4, !dbg !82
  %36 = mul nuw nsw i64 %20, 128, !dbg !83
  %37 = add nuw nsw i64 %36, %23, !dbg !83
  %38 = getelementptr inbounds nuw float, ptr %6, i64 %37, !dbg !83
  %39 = load float, ptr %38, align 4, !dbg !83
  %40 = insertelement <16 x float> poison, float %39, i32 0, !dbg !83
  %41 = shufflevector <16 x float> %40, <16 x float> poison, <16 x i32> zeroinitializer, !dbg !83
  %42 = extractvalue [4 x <16 x float>] %24, 0, !dbg !83
  %43 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %41, <16 x float> %30, <16 x float> %42), !dbg !83
  %44 = add i64 %20, 1, !dbg !83
  %45 = mul nuw nsw i64 %44, 128, !dbg !83
  %46 = add nuw nsw i64 %45, %23, !dbg !83
  %47 = getelementptr inbounds nuw float, ptr %6, i64 %46, !dbg !83
  %48 = load float, ptr %47, align 4, !dbg !83
  %49 = insertelement <16 x float> poison, float %48, i32 0, !dbg !83
  %50 = shufflevector <16 x float> %49, <16 x float> poison, <16 x i32> zeroinitializer, !dbg !83
  %51 = extractvalue [4 x <16 x float>] %24, 1, !dbg !83
  %52 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %50, <16 x float> %30, <16 x float> %51), !dbg !83
  %53 = add i64 %20, 2, !dbg !83
  %54 = mul nuw nsw i64 %53, 128, !dbg !83
  %55 = add nuw nsw i64 %54, %23, !dbg !83
  %56 = getelementptr inbounds nuw float, ptr %6, i64 %55, !dbg !83
  %57 = load float, ptr %56, align 4, !dbg !83
  %58 = insertelement <16 x float> poison, float %57, i32 0, !dbg !83
  %59 = shufflevector <16 x float> %58, <16 x float> poison, <16 x i32> zeroinitializer, !dbg !83
  %60 = extractvalue [4 x <16 x float>] %24, 2, !dbg !83
  %61 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %59, <16 x float> %30, <16 x float> %60), !dbg !83
  %62 = add i64 %20, 3, !dbg !83
  %63 = mul nuw nsw i64 %62, 128, !dbg !83
  %64 = add nuw nsw i64 %63, %23, !dbg !83
  %65 = getelementptr inbounds nuw float, ptr %6, i64 %64, !dbg !83
  %66 = load float, ptr %65, align 4, !dbg !83
  %67 = insertelement <16 x float> poison, float %66, i32 0, !dbg !83
  %68 = shufflevector <16 x float> %67, <16 x float> poison, <16 x i32> zeroinitializer, !dbg !83
  %69 = extractvalue [4 x <16 x float>] %24, 3, !dbg !83
  %70 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %68, <16 x float> %30, <16 x float> %69), !dbg !83
  %71 = add nuw nsw i64 %36, %31, !dbg !83
  %72 = getelementptr inbounds nuw float, ptr %6, i64 %71, !dbg !83
  %73 = load float, ptr %72, align 4, !dbg !83
  %74 = insertelement <16 x float> poison, float %73, i32 0, !dbg !83
  %75 = shufflevector <16 x float> %74, <16 x float> poison, <16 x i32> zeroinitializer, !dbg !83
  %76 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %75, <16 x float> %35, <16 x float> %43), !dbg !83
  %77 = add nuw nsw i64 %45, %31, !dbg !83
  %78 = getelementptr inbounds nuw float, ptr %6, i64 %77, !dbg !83
  %79 = load float, ptr %78, align 4, !dbg !83
  %80 = insertelement <16 x float> poison, float %79, i32 0, !dbg !83
  %81 = shufflevector <16 x float> %80, <16 x float> poison, <16 x i32> zeroinitializer, !dbg !83
  %82 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %81, <16 x float> %35, <16 x float> %52), !dbg !83
  %83 = add nuw nsw i64 %54, %31, !dbg !83
  %84 = getelementptr inbounds nuw float, ptr %6, i64 %83, !dbg !83
  %85 = load float, ptr %84, align 4, !dbg !83
  %86 = insertelement <16 x float> poison, float %85, i32 0, !dbg !83
  %87 = shufflevector <16 x float> %86, <16 x float> poison, <16 x i32> zeroinitializer, !dbg !83
  %88 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %87, <16 x float> %35, <16 x float> %61), !dbg !83
  %89 = add nuw nsw i64 %63, %31, !dbg !83
  %90 = getelementptr inbounds nuw float, ptr %6, i64 %89, !dbg !83
  %91 = load float, ptr %90, align 4, !dbg !83
  %92 = insertelement <16 x float> poison, float %91, i32 0, !dbg !83
  %93 = shufflevector <16 x float> %92, <16 x float> poison, <16 x i32> zeroinitializer, !dbg !83
  %94 = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %93, <16 x float> %35, <16 x float> %70), !dbg !83
  %95 = insertvalue [4 x <16 x float>] poison, <16 x float> %76, 0, !dbg !83
  %96 = insertvalue [4 x <16 x float>] %95, <16 x float> %82, 1, !dbg !83
  %97 = insertvalue [4 x <16 x float>] %96, <16 x float> %88, 2, !dbg !83
  %98 = insertvalue [4 x <16 x float>] %97, <16 x float> %94, 3, !dbg !83
  %99 = add i64 %23, 2, !dbg !82
  br label %22, !dbg !82

100:                                              ; preds = %22
  %101 = extractvalue [4 x <16 x float>] %24, 0, !dbg !82
  %102 = mul i64 %20, 128, !dbg !82
  %103 = add i64 %102, %18, !dbg !82
  %104 = getelementptr float, ptr %14, i64 %103, !dbg !82
  store <16 x float> %101, ptr %104, align 4, !dbg !82
  %105 = add i64 %20, 1, !dbg !82
  %106 = extractvalue [4 x <16 x float>] %24, 1, !dbg !82
  %107 = mul i64 %105, 128, !dbg !82
  %108 = add i64 %107, %18, !dbg !82
  %109 = getelementptr float, ptr %14, i64 %108, !dbg !82
  store <16 x float> %106, ptr %109, align 4, !dbg !82
  %110 = add i64 %20, 2, !dbg !82
  %111 = extractvalue [4 x <16 x float>] %24, 2, !dbg !82
  %112 = mul i64 %110, 128, !dbg !82
  %113 = add i64 %112, %18, !dbg !82
  %114 = getelementptr float, ptr %14, i64 %113, !dbg !82
  store <16 x float> %111, ptr %114, align 4, !dbg !82
  %115 = add i64 %20, 3, !dbg !82
  %116 = extractvalue [4 x <16 x float>] %24, 3, !dbg !82
  %117 = mul i64 %115, 128, !dbg !82
  %118 = add i64 %117, %18, !dbg !82
  %119 = getelementptr float, ptr %14, i64 %118, !dbg !82
  store <16 x float> %116, ptr %119, align 4, !dbg !82
  %120 = add i64 %20, 4, !dbg !82
  br label %19, !dbg !82

121:                                              ; preds = %19
  ret i32 0, !dbg !84
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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "configured_module_matmul_dispatch_0.mlir", directory: "/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/vec_autotuned_5973499a7e/dispatches")
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
!83 = !DILocation(line: 4, column: 1, scope: !3)
!84 = !DILocation(line: 20, column: 8, scope: !3)
