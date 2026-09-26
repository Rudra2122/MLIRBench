; ModuleID = 'matmul_dispatch_0'
source_filename = "matmul_dispatch_0"
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

@0 = private constant [18 x i8] c"matmul_dispatch_0\00", align 1
@iree_hal_executable_library_query_v0_header = private constant %iree_hal_executable_library_header_t { i32 6, ptr @0, i32 0, i32 0 }
@iree_hal_executable_library_query_v0_funcs = private constant [1 x ptr] [ptr @matmul_dispatch_0_matmul_128x128x128_f32]
@iree_hal_executable_library_query_v0_attrs = private constant [1 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = private constant [41 x i8] c"matmul_dispatch_0_matmul_128x128x128_f32\00", align 1
@iree_hal_executable_library_query_v0_names = private constant [1 x ptr] [ptr @1]
@2 = private constant [118 x i8] c"/home/claude/mlirbench2/build/128x128x128/scalar_naive_ac41d96337/dispatches/configured_module_matmul_dispatch_0.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [1 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 117, ptr @2 }]
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
  br label %15, !dbg !82

15:                                               ; preds = %26, %3
  %16 = phi i64 [ %27, %26 ], [ 0, %3 ], !dbg !82
  %17 = icmp slt i64 %16, 128, !dbg !82
  br i1 %17, label %18, label %28, !dbg !82

18:                                               ; preds = %21, %15
  %19 = phi i64 [ %25, %21 ], [ 0, %15 ], !dbg !82
  %20 = icmp slt i64 %19, 128, !dbg !82
  br i1 %20, label %21, label %26, !dbg !82

21:                                               ; preds = %18
  %22 = mul nuw nsw i64 %16, 128, !dbg !82
  %23 = add nuw nsw i64 %22, %19, !dbg !82
  %24 = getelementptr inbounds nuw float, ptr %14, i64 %23, !dbg !82
  store float 0.000000e+00, ptr %24, align 4, !dbg !82
  %25 = add i64 %19, 1, !dbg !82
  br label %18, !dbg !82

26:                                               ; preds = %18
  %27 = add i64 %16, 1, !dbg !82
  br label %15, !dbg !82

28:                                               ; preds = %54, %15
  %29 = phi i64 [ %55, %54 ], [ 0, %15 ], !dbg !83
  %30 = icmp slt i64 %29, 128, !dbg !83
  br i1 %30, label %31, label %56, !dbg !83

31:                                               ; preds = %52, %28
  %32 = phi i64 [ %53, %52 ], [ 0, %28 ], !dbg !83
  %33 = icmp slt i64 %32, 128, !dbg !83
  br i1 %33, label %34, label %54, !dbg !83

34:                                               ; preds = %37, %31
  %35 = phi i64 [ %51, %37 ], [ 0, %31 ], !dbg !83
  %36 = icmp slt i64 %35, 128, !dbg !83
  br i1 %36, label %37, label %52, !dbg !83

37:                                               ; preds = %34
  %38 = mul nuw nsw i64 %29, 128, !dbg !83
  %39 = add nuw nsw i64 %38, %35, !dbg !83
  %40 = getelementptr inbounds nuw float, ptr %6, i64 %39, !dbg !83
  %41 = load float, ptr %40, align 4, !dbg !83
  %42 = mul nuw nsw i64 %35, 128, !dbg !83
  %43 = add nuw nsw i64 %42, %32, !dbg !83
  %44 = getelementptr inbounds nuw float, ptr %10, i64 %43, !dbg !83
  %45 = load float, ptr %44, align 4, !dbg !83
  %46 = add nuw nsw i64 %38, %32, !dbg !83
  %47 = getelementptr inbounds nuw float, ptr %14, i64 %46, !dbg !83
  %48 = load float, ptr %47, align 4, !dbg !83
  %49 = fmul contract float %41, %45, !dbg !84
  %50 = fadd contract float %48, %49, !dbg !84
  store float %50, ptr %47, align 4, !dbg !83
  %51 = add i64 %35, 1, !dbg !83
  br label %34, !dbg !83

52:                                               ; preds = %34
  %53 = add i64 %32, 1, !dbg !83
  br label %31, !dbg !83

54:                                               ; preds = %31
  %55 = add i64 %29, 1, !dbg !83
  br label %28, !dbg !83

56:                                               ; preds = %28
  ret i32 0, !dbg !85
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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "configured_module_matmul_dispatch_0.mlir", directory: "/home/claude/mlirbench2/build/128x128x128/scalar_naive_ac41d96337/dispatches")
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
!82 = !DILocation(line: 17, column: 8, scope: !3)
!83 = !DILocation(line: 18, column: 8, scope: !3)
!84 = !DILocation(line: 4, column: 1, scope: !3)
!85 = !DILocation(line: 20, column: 8, scope: !3)
