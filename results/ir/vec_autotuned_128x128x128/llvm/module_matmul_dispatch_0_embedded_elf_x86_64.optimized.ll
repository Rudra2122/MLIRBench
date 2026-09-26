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
%struct.exp2f_data = type { [32 x i64], double, [3 x double], double, double, [3 x double] }
%struct.powf_log2_data = type { [16 x %struct.anon], [5 x double] }
%struct.anon = type { double, double }

@0 = internal constant [18 x i8] c"matmul_dispatch_0\00", align 1
@iree_hal_executable_library_query_v0_header = internal constant %iree_hal_executable_library_header_t { i32 6, ptr @0, i32 0, i32 0 }
@iree_hal_executable_library_query_v0_funcs = internal constant [1 x ptr] [ptr @matmul_dispatch_0_matmul_128x128x128_f32]
@iree_hal_executable_library_query_v0_attrs = internal constant [1 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = internal constant [41 x i8] c"matmul_dispatch_0_matmul_128x128x128_f32\00", align 1
@iree_hal_executable_library_query_v0_names = internal constant [1 x ptr] [ptr @1]
@2 = internal constant [119 x i8] c"/home/claude/mlirbench2/build/128x128x128/vec_autotuned_a8d8e17b57/dispatches/configured_module_matmul_dispatch_0.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = internal constant [1 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 118, ptr @2 }]
@iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_128x128x128_f32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_128x128x128_f32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = internal constant [1 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_128x128x128_f32_stage_names, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_128x128x128_f32_stage_source_locations }]
@iree_hal_executable_library_query_v0 = internal constant %iree_hal_executable_library_v0_t { ptr @iree_hal_executable_library_query_v0_header, %iree_hal_executable_import_table_v0_t zeroinitializer, %iree_hal_executable_export_table_v0_t { i32 1, ptr @iree_hal_executable_library_query_v0_funcs, ptr @iree_hal_executable_library_query_v0_attrs, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_names, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_source_locations, ptr @iree_hal_executable_library_query_v0_stage_location_tables }, %iree_hal_executable_constant_table_v0_t zeroinitializer, %iree_hal_executable_source_file_table_v0_t zeroinitializer }
@__exp2f_data = internal local_unnamed_addr constant %struct.exp2f_data { [32 x i64] [i64 4607182418800017408, i64 4607140297302181236, i64 4607100335213349135, i64 4607062579818421073, i64 4607027079437701499, i64 4606993883449571754, i64 4606963042313658936, i64 4606934607594512097, i64 4606908631985796885, i64 4606885169335019979, i64 4606864274668794914, i64 4606846004218661165, i64 4606830415447468583, i64 4606817567076339586, i64 4606807519112221737, i64 4606800332876043653, i64 4606796071031487437, i64 4606794797614391156, i64 4606796578062795143, i64 4606801479247646227, i64 4606809569504174299, i64 4606820918663955941, i64 4606835598087680144, i64 4606853680698631517, i64 4606875241016906669, i64 4606900355194379847, i64 4606929101050434204, i64 4606961558108475497, i64 4606997807633245319, i64 4607037932668951391, i64 4607082018078232794, i64 4607130150581978432], double 0x42E8000000000000, [3 x double] [double 0x3FAC6AF84B912394, double 0x3FCEBFCE50FAC4F3, double 0x3FE62E42FF0C52D6], double 0x4338000000000000, double 0x40471547652B82FE, [3 x double] [double 0x3EBC6AF84B912394, double 0x3F2EBFCE50FAC4F3, double 0x3F962E42FF0C52D6] }, align 8
@__powf_log2_data = internal local_unnamed_addr constant %struct.powf_log2_data { [16 x %struct.anon] [%struct.anon { double 0x3FF661EC79F8F3BE, double 0xBFDEFEC65B963019 }, %struct.anon { double 0x3FF571ED4AAF883D, double 0xBFDB0B6832D4FCA4 }, %struct.anon { double 0x3FF49539F0F010B0, double 0xBFD7418B0A1FB77B }, %struct.anon { double 0x3FF3C995B0B80385, double 0xBFD39DE91A6DCF7B }, %struct.anon { double 0x3FF30D190C8864A5, double 0xBFD01D9BF3F2B631 }, %struct.anon { double 0x3FF25E227B0B8EA0, double 0xBFC97C1D1B3B7AF0 }, %struct.anon { double 0x3FF1BB4A4A1A343F, double 0xBFC2F9E393AF3C9F }, %struct.anon { double 0x3FF12358F08AE5BA, double 0xBFB960CBBF788D5C }, %struct.anon { double 0x3FF0953F419900A7, double 0xBFAA6F9DB6475FCE }, %struct.anon { double 1.000000e+00, double 0.000000e+00 }, %struct.anon { double 0x3FEE608CFD9A47AC, double 0x3FB338CA9F24F53D }, %struct.anon { double 0x3FECA4B31F026AA0, double 0x3FC476A9543891BA }, %struct.anon { double 0x3FEB2036576AFCE6, double 0x3FCE840B4AC4E4D2 }, %struct.anon { double 0x3FE9C2D163A1AA2D, double 0x3FD40645F0C6651C }, %struct.anon { double 0x3FE886E6037841ED, double 0x3FD88E9C2C1B9FF8 }, %struct.anon { double 0x3FE767DCF5534862, double 0x3FDCE0A44EB17BCC }], [5 x double] [double 0x3FD27616C9496E0B, double 0xBFD71969A075C67A, double 0x3FDEC70A6CA7BADD, double 0xBFE7154748BEF6C8, double 0x3FF71547652AB82B] }, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem0: none, target_mem1: none)
define internal noundef i32 @matmul_dispatch_0_matmul_128x128x128_f32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !9 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !85
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !85
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !85
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !85
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !86
  %6 = load ptr, ptr %5, align 8, !dbg !86
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !86
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !87
  %8 = load ptr, ptr %7, align 8, !dbg !87
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !87
  %9 = load i32, ptr %2, align 16, !dbg !88
  %10 = zext i32 %9 to i64, !dbg !88
  %11 = shl nuw nsw i64 %10, 3, !dbg !88
  %12 = and i64 %11, 34359738352, !dbg !88
  %13 = shl nuw nsw i64 %10, 6, !dbg !88
  %14 = and i64 %13, 64, !dbg !88
  %invariant.gep = getelementptr [4 x i8], ptr %6, i64 %14
  %invariant.gep72 = getelementptr [4 x i8], ptr %8, i64 %14, !dbg !88
  %15 = or disjoint i64 %12, 1
  %16 = or disjoint i64 %12, 2
  %17 = or disjoint i64 %12, 3
  br label %.preheader, !dbg !88

.preheader:                                       ; preds = %3, %388
  %18 = phi i64 [ 0, %3 ], [ %392, %388 ]
  %19 = add nuw nsw i64 %18, %12
  %.idx83 = shl nuw nsw i64 %19, 9
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 %.idx83
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 512
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 1024
  %23 = getelementptr inbounds nuw i8, ptr %20, i64 1536
  br label %24, !dbg !88

24:                                               ; preds = %.preheader, %24
  %25 = phi [4 x <64 x float>] [ zeroinitializer, %.preheader ], [ %385, %24 ]
  %26 = phi i64 [ 0, %.preheader ], [ %386, %24 ]
  %.idx26 = shl nuw nsw i64 %26, 9, !dbg !88
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx26, !dbg !88
  %27 = load <64 x float>, ptr %gep, align 64, !dbg !88
  %28 = or disjoint i64 %26, 1, !dbg !88
  %.idx27 = shl nuw nsw i64 %28, 9, !dbg !88
  %gep43 = getelementptr i8, ptr %invariant.gep, i64 %.idx27, !dbg !88
  %29 = load <64 x float>, ptr %gep43, align 64, !dbg !88
  %30 = or disjoint i64 %26, 2, !dbg !88
  %.idx28 = shl nuw nsw i64 %30, 9, !dbg !88
  %gep45 = getelementptr i8, ptr %invariant.gep, i64 %.idx28, !dbg !88
  %31 = load <64 x float>, ptr %gep45, align 64, !dbg !88
  %32 = or disjoint i64 %26, 3, !dbg !88
  %.idx29 = shl nuw nsw i64 %32, 9, !dbg !88
  %gep47 = getelementptr i8, ptr %invariant.gep, i64 %.idx29, !dbg !88
  %33 = load <64 x float>, ptr %gep47, align 64, !dbg !88
  %34 = or disjoint i64 %26, 4, !dbg !88
  %.idx30 = shl nuw nsw i64 %34, 9, !dbg !88
  %gep49 = getelementptr i8, ptr %invariant.gep, i64 %.idx30, !dbg !88
  %35 = load <64 x float>, ptr %gep49, align 64, !dbg !88
  %36 = or disjoint i64 %26, 5, !dbg !88
  %.idx31 = shl nuw nsw i64 %36, 9, !dbg !88
  %gep51 = getelementptr i8, ptr %invariant.gep, i64 %.idx31, !dbg !88
  %37 = load <64 x float>, ptr %gep51, align 64, !dbg !88
  %38 = or disjoint i64 %26, 6, !dbg !88
  %.idx32 = shl nuw nsw i64 %38, 9, !dbg !88
  %gep53 = getelementptr i8, ptr %invariant.gep, i64 %.idx32, !dbg !88
  %39 = load <64 x float>, ptr %gep53, align 64, !dbg !88
  %40 = or disjoint i64 %26, 7, !dbg !88
  %.idx33 = shl nuw nsw i64 %40, 9, !dbg !88
  %gep55 = getelementptr i8, ptr %invariant.gep, i64 %.idx33, !dbg !88
  %41 = load <64 x float>, ptr %gep55, align 64, !dbg !88
  %42 = or disjoint i64 %26, 8, !dbg !88
  %.idx34 = shl nuw nsw i64 %42, 9, !dbg !88
  %gep57 = getelementptr i8, ptr %invariant.gep, i64 %.idx34, !dbg !88
  %43 = load <64 x float>, ptr %gep57, align 64, !dbg !88
  %44 = or disjoint i64 %26, 9, !dbg !88
  %.idx35 = shl nuw nsw i64 %44, 9, !dbg !88
  %gep59 = getelementptr i8, ptr %invariant.gep, i64 %.idx35, !dbg !88
  %45 = load <64 x float>, ptr %gep59, align 64, !dbg !88
  %46 = or disjoint i64 %26, 10, !dbg !88
  %.idx36 = shl nuw nsw i64 %46, 9, !dbg !88
  %gep61 = getelementptr i8, ptr %invariant.gep, i64 %.idx36, !dbg !88
  %47 = load <64 x float>, ptr %gep61, align 64, !dbg !88
  %48 = or disjoint i64 %26, 11, !dbg !88
  %.idx37 = shl nuw nsw i64 %48, 9, !dbg !88
  %gep63 = getelementptr i8, ptr %invariant.gep, i64 %.idx37, !dbg !88
  %49 = load <64 x float>, ptr %gep63, align 64, !dbg !88
  %50 = or disjoint i64 %26, 12, !dbg !88
  %.idx38 = shl nuw nsw i64 %50, 9, !dbg !88
  %gep65 = getelementptr i8, ptr %invariant.gep, i64 %.idx38, !dbg !88
  %51 = load <64 x float>, ptr %gep65, align 64, !dbg !88
  %52 = or disjoint i64 %26, 13, !dbg !88
  %.idx39 = shl nuw nsw i64 %52, 9, !dbg !88
  %gep67 = getelementptr i8, ptr %invariant.gep, i64 %.idx39, !dbg !88
  %53 = load <64 x float>, ptr %gep67, align 64, !dbg !88
  %54 = or disjoint i64 %26, 14, !dbg !88
  %.idx40 = shl nuw nsw i64 %54, 9, !dbg !88
  %gep69 = getelementptr i8, ptr %invariant.gep, i64 %.idx40, !dbg !88
  %55 = load <64 x float>, ptr %gep69, align 64, !dbg !88
  %56 = or disjoint i64 %26, 15, !dbg !88
  %.idx41 = shl nuw nsw i64 %56, 9, !dbg !88
  %gep71 = getelementptr i8, ptr %invariant.gep, i64 %.idx41, !dbg !88
  %57 = load <64 x float>, ptr %gep71, align 64, !dbg !88
  %58 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %26, !dbg !89
  %59 = load float, ptr %58, align 64, !dbg !89
  %60 = insertelement <64 x float> poison, float %59, i64 0, !dbg !89
  %61 = shufflevector <64 x float> %60, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %62 = extractvalue [4 x <64 x float>] %25, 0, !dbg !89
  %63 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %61, <64 x float> %27, <64 x float> %62), !dbg !89
  %64 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %26, !dbg !89
  %65 = load float, ptr %64, align 64, !dbg !89
  %66 = insertelement <64 x float> poison, float %65, i64 0, !dbg !89
  %67 = shufflevector <64 x float> %66, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %68 = extractvalue [4 x <64 x float>] %25, 1, !dbg !89
  %69 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %67, <64 x float> %27, <64 x float> %68), !dbg !89
  %70 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %26, !dbg !89
  %71 = load float, ptr %70, align 64, !dbg !89
  %72 = insertelement <64 x float> poison, float %71, i64 0, !dbg !89
  %73 = shufflevector <64 x float> %72, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %74 = extractvalue [4 x <64 x float>] %25, 2, !dbg !89
  %75 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %73, <64 x float> %27, <64 x float> %74), !dbg !89
  %76 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %26, !dbg !89
  %77 = load float, ptr %76, align 64, !dbg !89
  %78 = insertelement <64 x float> poison, float %77, i64 0, !dbg !89
  %79 = shufflevector <64 x float> %78, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %80 = extractvalue [4 x <64 x float>] %25, 3, !dbg !89
  %81 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %79, <64 x float> %27, <64 x float> %80), !dbg !89
  %82 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %28, !dbg !89
  %83 = load float, ptr %82, align 4, !dbg !89
  %84 = insertelement <64 x float> poison, float %83, i64 0, !dbg !89
  %85 = shufflevector <64 x float> %84, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %86 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %85, <64 x float> %29, <64 x float> %63), !dbg !89
  %87 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %28, !dbg !89
  %88 = load float, ptr %87, align 4, !dbg !89
  %89 = insertelement <64 x float> poison, float %88, i64 0, !dbg !89
  %90 = shufflevector <64 x float> %89, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %91 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %90, <64 x float> %29, <64 x float> %69), !dbg !89
  %92 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %28, !dbg !89
  %93 = load float, ptr %92, align 4, !dbg !89
  %94 = insertelement <64 x float> poison, float %93, i64 0, !dbg !89
  %95 = shufflevector <64 x float> %94, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %96 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %95, <64 x float> %29, <64 x float> %75), !dbg !89
  %97 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %28, !dbg !89
  %98 = load float, ptr %97, align 4, !dbg !89
  %99 = insertelement <64 x float> poison, float %98, i64 0, !dbg !89
  %100 = shufflevector <64 x float> %99, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %101 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %100, <64 x float> %29, <64 x float> %81), !dbg !89
  %102 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %30, !dbg !89
  %103 = load float, ptr %102, align 8, !dbg !89
  %104 = insertelement <64 x float> poison, float %103, i64 0, !dbg !89
  %105 = shufflevector <64 x float> %104, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %106 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %105, <64 x float> %31, <64 x float> %86), !dbg !89
  %107 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %30, !dbg !89
  %108 = load float, ptr %107, align 8, !dbg !89
  %109 = insertelement <64 x float> poison, float %108, i64 0, !dbg !89
  %110 = shufflevector <64 x float> %109, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %111 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %110, <64 x float> %31, <64 x float> %91), !dbg !89
  %112 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %30, !dbg !89
  %113 = load float, ptr %112, align 8, !dbg !89
  %114 = insertelement <64 x float> poison, float %113, i64 0, !dbg !89
  %115 = shufflevector <64 x float> %114, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %116 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %115, <64 x float> %31, <64 x float> %96), !dbg !89
  %117 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %30, !dbg !89
  %118 = load float, ptr %117, align 8, !dbg !89
  %119 = insertelement <64 x float> poison, float %118, i64 0, !dbg !89
  %120 = shufflevector <64 x float> %119, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %121 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %120, <64 x float> %31, <64 x float> %101), !dbg !89
  %122 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %32, !dbg !89
  %123 = load float, ptr %122, align 4, !dbg !89
  %124 = insertelement <64 x float> poison, float %123, i64 0, !dbg !89
  %125 = shufflevector <64 x float> %124, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %126 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %125, <64 x float> %33, <64 x float> %106), !dbg !89
  %127 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %32, !dbg !89
  %128 = load float, ptr %127, align 4, !dbg !89
  %129 = insertelement <64 x float> poison, float %128, i64 0, !dbg !89
  %130 = shufflevector <64 x float> %129, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %131 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %130, <64 x float> %33, <64 x float> %111), !dbg !89
  %132 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %32, !dbg !89
  %133 = load float, ptr %132, align 4, !dbg !89
  %134 = insertelement <64 x float> poison, float %133, i64 0, !dbg !89
  %135 = shufflevector <64 x float> %134, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %136 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %135, <64 x float> %33, <64 x float> %116), !dbg !89
  %137 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %32, !dbg !89
  %138 = load float, ptr %137, align 4, !dbg !89
  %139 = insertelement <64 x float> poison, float %138, i64 0, !dbg !89
  %140 = shufflevector <64 x float> %139, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %141 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %140, <64 x float> %33, <64 x float> %121), !dbg !89
  %142 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %34, !dbg !89
  %143 = load float, ptr %142, align 16, !dbg !89
  %144 = insertelement <64 x float> poison, float %143, i64 0, !dbg !89
  %145 = shufflevector <64 x float> %144, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %146 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %145, <64 x float> %35, <64 x float> %126), !dbg !89
  %147 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %34, !dbg !89
  %148 = load float, ptr %147, align 16, !dbg !89
  %149 = insertelement <64 x float> poison, float %148, i64 0, !dbg !89
  %150 = shufflevector <64 x float> %149, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %151 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %150, <64 x float> %35, <64 x float> %131), !dbg !89
  %152 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %34, !dbg !89
  %153 = load float, ptr %152, align 16, !dbg !89
  %154 = insertelement <64 x float> poison, float %153, i64 0, !dbg !89
  %155 = shufflevector <64 x float> %154, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %156 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %155, <64 x float> %35, <64 x float> %136), !dbg !89
  %157 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %34, !dbg !89
  %158 = load float, ptr %157, align 16, !dbg !89
  %159 = insertelement <64 x float> poison, float %158, i64 0, !dbg !89
  %160 = shufflevector <64 x float> %159, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %161 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %160, <64 x float> %35, <64 x float> %141), !dbg !89
  %162 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %36, !dbg !89
  %163 = load float, ptr %162, align 4, !dbg !89
  %164 = insertelement <64 x float> poison, float %163, i64 0, !dbg !89
  %165 = shufflevector <64 x float> %164, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %166 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %165, <64 x float> %37, <64 x float> %146), !dbg !89
  %167 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %36, !dbg !89
  %168 = load float, ptr %167, align 4, !dbg !89
  %169 = insertelement <64 x float> poison, float %168, i64 0, !dbg !89
  %170 = shufflevector <64 x float> %169, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %171 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %170, <64 x float> %37, <64 x float> %151), !dbg !89
  %172 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %36, !dbg !89
  %173 = load float, ptr %172, align 4, !dbg !89
  %174 = insertelement <64 x float> poison, float %173, i64 0, !dbg !89
  %175 = shufflevector <64 x float> %174, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %176 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %175, <64 x float> %37, <64 x float> %156), !dbg !89
  %177 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %36, !dbg !89
  %178 = load float, ptr %177, align 4, !dbg !89
  %179 = insertelement <64 x float> poison, float %178, i64 0, !dbg !89
  %180 = shufflevector <64 x float> %179, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %181 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %180, <64 x float> %37, <64 x float> %161), !dbg !89
  %182 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %38, !dbg !89
  %183 = load float, ptr %182, align 8, !dbg !89
  %184 = insertelement <64 x float> poison, float %183, i64 0, !dbg !89
  %185 = shufflevector <64 x float> %184, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %186 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %185, <64 x float> %39, <64 x float> %166), !dbg !89
  %187 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %38, !dbg !89
  %188 = load float, ptr %187, align 8, !dbg !89
  %189 = insertelement <64 x float> poison, float %188, i64 0, !dbg !89
  %190 = shufflevector <64 x float> %189, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %191 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %190, <64 x float> %39, <64 x float> %171), !dbg !89
  %192 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %38, !dbg !89
  %193 = load float, ptr %192, align 8, !dbg !89
  %194 = insertelement <64 x float> poison, float %193, i64 0, !dbg !89
  %195 = shufflevector <64 x float> %194, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %196 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %195, <64 x float> %39, <64 x float> %176), !dbg !89
  %197 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %38, !dbg !89
  %198 = load float, ptr %197, align 8, !dbg !89
  %199 = insertelement <64 x float> poison, float %198, i64 0, !dbg !89
  %200 = shufflevector <64 x float> %199, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %201 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %200, <64 x float> %39, <64 x float> %181), !dbg !89
  %202 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %40, !dbg !89
  %203 = load float, ptr %202, align 4, !dbg !89
  %204 = insertelement <64 x float> poison, float %203, i64 0, !dbg !89
  %205 = shufflevector <64 x float> %204, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %206 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %205, <64 x float> %41, <64 x float> %186), !dbg !89
  %207 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %40, !dbg !89
  %208 = load float, ptr %207, align 4, !dbg !89
  %209 = insertelement <64 x float> poison, float %208, i64 0, !dbg !89
  %210 = shufflevector <64 x float> %209, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %211 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %210, <64 x float> %41, <64 x float> %191), !dbg !89
  %212 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %40, !dbg !89
  %213 = load float, ptr %212, align 4, !dbg !89
  %214 = insertelement <64 x float> poison, float %213, i64 0, !dbg !89
  %215 = shufflevector <64 x float> %214, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %216 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %215, <64 x float> %41, <64 x float> %196), !dbg !89
  %217 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %40, !dbg !89
  %218 = load float, ptr %217, align 4, !dbg !89
  %219 = insertelement <64 x float> poison, float %218, i64 0, !dbg !89
  %220 = shufflevector <64 x float> %219, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %221 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %220, <64 x float> %41, <64 x float> %201), !dbg !89
  %222 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %42, !dbg !89
  %223 = load float, ptr %222, align 32, !dbg !89
  %224 = insertelement <64 x float> poison, float %223, i64 0, !dbg !89
  %225 = shufflevector <64 x float> %224, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %226 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %225, <64 x float> %43, <64 x float> %206), !dbg !89
  %227 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %42, !dbg !89
  %228 = load float, ptr %227, align 32, !dbg !89
  %229 = insertelement <64 x float> poison, float %228, i64 0, !dbg !89
  %230 = shufflevector <64 x float> %229, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %231 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %230, <64 x float> %43, <64 x float> %211), !dbg !89
  %232 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %42, !dbg !89
  %233 = load float, ptr %232, align 32, !dbg !89
  %234 = insertelement <64 x float> poison, float %233, i64 0, !dbg !89
  %235 = shufflevector <64 x float> %234, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %236 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %235, <64 x float> %43, <64 x float> %216), !dbg !89
  %237 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %42, !dbg !89
  %238 = load float, ptr %237, align 32, !dbg !89
  %239 = insertelement <64 x float> poison, float %238, i64 0, !dbg !89
  %240 = shufflevector <64 x float> %239, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %241 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %240, <64 x float> %43, <64 x float> %221), !dbg !89
  %242 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %44, !dbg !89
  %243 = load float, ptr %242, align 4, !dbg !89
  %244 = insertelement <64 x float> poison, float %243, i64 0, !dbg !89
  %245 = shufflevector <64 x float> %244, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %246 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %245, <64 x float> %45, <64 x float> %226), !dbg !89
  %247 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %44, !dbg !89
  %248 = load float, ptr %247, align 4, !dbg !89
  %249 = insertelement <64 x float> poison, float %248, i64 0, !dbg !89
  %250 = shufflevector <64 x float> %249, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %251 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %250, <64 x float> %45, <64 x float> %231), !dbg !89
  %252 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %44, !dbg !89
  %253 = load float, ptr %252, align 4, !dbg !89
  %254 = insertelement <64 x float> poison, float %253, i64 0, !dbg !89
  %255 = shufflevector <64 x float> %254, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %256 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %255, <64 x float> %45, <64 x float> %236), !dbg !89
  %257 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %44, !dbg !89
  %258 = load float, ptr %257, align 4, !dbg !89
  %259 = insertelement <64 x float> poison, float %258, i64 0, !dbg !89
  %260 = shufflevector <64 x float> %259, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %261 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %260, <64 x float> %45, <64 x float> %241), !dbg !89
  %262 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %46, !dbg !89
  %263 = load float, ptr %262, align 8, !dbg !89
  %264 = insertelement <64 x float> poison, float %263, i64 0, !dbg !89
  %265 = shufflevector <64 x float> %264, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %266 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %265, <64 x float> %47, <64 x float> %246), !dbg !89
  %267 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %46, !dbg !89
  %268 = load float, ptr %267, align 8, !dbg !89
  %269 = insertelement <64 x float> poison, float %268, i64 0, !dbg !89
  %270 = shufflevector <64 x float> %269, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %271 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %270, <64 x float> %47, <64 x float> %251), !dbg !89
  %272 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %46, !dbg !89
  %273 = load float, ptr %272, align 8, !dbg !89
  %274 = insertelement <64 x float> poison, float %273, i64 0, !dbg !89
  %275 = shufflevector <64 x float> %274, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %276 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %275, <64 x float> %47, <64 x float> %256), !dbg !89
  %277 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %46, !dbg !89
  %278 = load float, ptr %277, align 8, !dbg !89
  %279 = insertelement <64 x float> poison, float %278, i64 0, !dbg !89
  %280 = shufflevector <64 x float> %279, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %281 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %280, <64 x float> %47, <64 x float> %261), !dbg !89
  %282 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %48, !dbg !89
  %283 = load float, ptr %282, align 4, !dbg !89
  %284 = insertelement <64 x float> poison, float %283, i64 0, !dbg !89
  %285 = shufflevector <64 x float> %284, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %286 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %285, <64 x float> %49, <64 x float> %266), !dbg !89
  %287 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %48, !dbg !89
  %288 = load float, ptr %287, align 4, !dbg !89
  %289 = insertelement <64 x float> poison, float %288, i64 0, !dbg !89
  %290 = shufflevector <64 x float> %289, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %291 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %290, <64 x float> %49, <64 x float> %271), !dbg !89
  %292 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %48, !dbg !89
  %293 = load float, ptr %292, align 4, !dbg !89
  %294 = insertelement <64 x float> poison, float %293, i64 0, !dbg !89
  %295 = shufflevector <64 x float> %294, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %296 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %295, <64 x float> %49, <64 x float> %276), !dbg !89
  %297 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %48, !dbg !89
  %298 = load float, ptr %297, align 4, !dbg !89
  %299 = insertelement <64 x float> poison, float %298, i64 0, !dbg !89
  %300 = shufflevector <64 x float> %299, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %301 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %300, <64 x float> %49, <64 x float> %281), !dbg !89
  %302 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %50, !dbg !89
  %303 = load float, ptr %302, align 16, !dbg !89
  %304 = insertelement <64 x float> poison, float %303, i64 0, !dbg !89
  %305 = shufflevector <64 x float> %304, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %306 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %305, <64 x float> %51, <64 x float> %286), !dbg !89
  %307 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %50, !dbg !89
  %308 = load float, ptr %307, align 16, !dbg !89
  %309 = insertelement <64 x float> poison, float %308, i64 0, !dbg !89
  %310 = shufflevector <64 x float> %309, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %311 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %310, <64 x float> %51, <64 x float> %291), !dbg !89
  %312 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %50, !dbg !89
  %313 = load float, ptr %312, align 16, !dbg !89
  %314 = insertelement <64 x float> poison, float %313, i64 0, !dbg !89
  %315 = shufflevector <64 x float> %314, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %316 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %315, <64 x float> %51, <64 x float> %296), !dbg !89
  %317 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %50, !dbg !89
  %318 = load float, ptr %317, align 16, !dbg !89
  %319 = insertelement <64 x float> poison, float %318, i64 0, !dbg !89
  %320 = shufflevector <64 x float> %319, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %321 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %320, <64 x float> %51, <64 x float> %301), !dbg !89
  %322 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %52, !dbg !89
  %323 = load float, ptr %322, align 4, !dbg !89
  %324 = insertelement <64 x float> poison, float %323, i64 0, !dbg !89
  %325 = shufflevector <64 x float> %324, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %326 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %325, <64 x float> %53, <64 x float> %306), !dbg !89
  %327 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %52, !dbg !89
  %328 = load float, ptr %327, align 4, !dbg !89
  %329 = insertelement <64 x float> poison, float %328, i64 0, !dbg !89
  %330 = shufflevector <64 x float> %329, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %331 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %330, <64 x float> %53, <64 x float> %311), !dbg !89
  %332 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %52, !dbg !89
  %333 = load float, ptr %332, align 4, !dbg !89
  %334 = insertelement <64 x float> poison, float %333, i64 0, !dbg !89
  %335 = shufflevector <64 x float> %334, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %336 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %335, <64 x float> %53, <64 x float> %316), !dbg !89
  %337 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %52, !dbg !89
  %338 = load float, ptr %337, align 4, !dbg !89
  %339 = insertelement <64 x float> poison, float %338, i64 0, !dbg !89
  %340 = shufflevector <64 x float> %339, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %341 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %340, <64 x float> %53, <64 x float> %321), !dbg !89
  %342 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %54, !dbg !89
  %343 = load float, ptr %342, align 8, !dbg !89
  %344 = insertelement <64 x float> poison, float %343, i64 0, !dbg !89
  %345 = shufflevector <64 x float> %344, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %346 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %345, <64 x float> %55, <64 x float> %326), !dbg !89
  %347 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %54, !dbg !89
  %348 = load float, ptr %347, align 8, !dbg !89
  %349 = insertelement <64 x float> poison, float %348, i64 0, !dbg !89
  %350 = shufflevector <64 x float> %349, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %351 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %350, <64 x float> %55, <64 x float> %331), !dbg !89
  %352 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %54, !dbg !89
  %353 = load float, ptr %352, align 8, !dbg !89
  %354 = insertelement <64 x float> poison, float %353, i64 0, !dbg !89
  %355 = shufflevector <64 x float> %354, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %356 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %355, <64 x float> %55, <64 x float> %336), !dbg !89
  %357 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %54, !dbg !89
  %358 = load float, ptr %357, align 8, !dbg !89
  %359 = insertelement <64 x float> poison, float %358, i64 0, !dbg !89
  %360 = shufflevector <64 x float> %359, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %361 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %360, <64 x float> %55, <64 x float> %341), !dbg !89
  %362 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %56, !dbg !89
  %363 = load float, ptr %362, align 4, !dbg !89
  %364 = insertelement <64 x float> poison, float %363, i64 0, !dbg !89
  %365 = shufflevector <64 x float> %364, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %366 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %365, <64 x float> %57, <64 x float> %346), !dbg !89
  %367 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %56, !dbg !89
  %368 = load float, ptr %367, align 4, !dbg !89
  %369 = insertelement <64 x float> poison, float %368, i64 0, !dbg !89
  %370 = shufflevector <64 x float> %369, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %371 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %370, <64 x float> %57, <64 x float> %351), !dbg !89
  %372 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %56, !dbg !89
  %373 = load float, ptr %372, align 4, !dbg !89
  %374 = insertelement <64 x float> poison, float %373, i64 0, !dbg !89
  %375 = shufflevector <64 x float> %374, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %376 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %375, <64 x float> %57, <64 x float> %356), !dbg !89
  %377 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %56, !dbg !89
  %378 = load float, ptr %377, align 4, !dbg !89
  %379 = insertelement <64 x float> poison, float %378, i64 0, !dbg !89
  %380 = shufflevector <64 x float> %379, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !89
  %381 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %380, <64 x float> %57, <64 x float> %361), !dbg !89
  %382 = insertvalue [4 x <64 x float>] poison, <64 x float> %366, 0, !dbg !89
  %383 = insertvalue [4 x <64 x float>] %382, <64 x float> %371, 1, !dbg !89
  %384 = insertvalue [4 x <64 x float>] %383, <64 x float> %376, 2, !dbg !89
  %385 = insertvalue [4 x <64 x float>] %384, <64 x float> %381, 3, !dbg !89
  %386 = add nuw nsw i64 %26, 16, !dbg !88
  %387 = icmp samesign ult i64 %26, 112, !dbg !88
  br i1 %387, label %24, label %388, !dbg !88

388:                                              ; preds = %24
  %.idx = shl i64 %19, 9, !dbg !88
  %gep73 = getelementptr i8, ptr %invariant.gep72, i64 %.idx, !dbg !88
  store <64 x float> %366, ptr %gep73, align 64, !dbg !88
  %389 = add nuw nsw i64 %15, %18, !dbg !88
  %.idx23 = shl i64 %389, 9, !dbg !88
  %gep75 = getelementptr i8, ptr %invariant.gep72, i64 %.idx23, !dbg !88
  store <64 x float> %371, ptr %gep75, align 64, !dbg !88
  %390 = add nuw nsw i64 %16, %18, !dbg !88
  %.idx24 = shl i64 %390, 9, !dbg !88
  %gep77 = getelementptr i8, ptr %invariant.gep72, i64 %.idx24, !dbg !88
  store <64 x float> %376, ptr %gep77, align 64, !dbg !88
  %391 = add nuw nsw i64 %17, %18, !dbg !88
  %.idx25 = shl i64 %391, 9, !dbg !88
  %gep79 = getelementptr i8, ptr %invariant.gep72, i64 %.idx25, !dbg !88
  store <64 x float> %381, ptr %gep79, align 64, !dbg !88
  %392 = add nuw nsw i64 %18, 4, !dbg !88
  %393 = icmp samesign ult i64 %18, 12, !dbg !88
  br i1 %393, label %.preheader, label %394, !dbg !88

394:                                              ; preds = %388
  ret i32 0, !dbg !90
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <64 x float> @llvm.fmuladd.v64f32(<64 x float>, <64 x float>, <64 x float>) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local dllexport ptr @iree_hal_executable_library_query(i32 %0, ptr readnone captures(none) %1) local_unnamed_addr #3 {
entry:
  %2 = icmp eq i32 %0, 6
  %3 = select i1 %2, ptr @iree_hal_executable_library_query_v0, ptr null
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @iree_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #4 {
  %2 = and i16 %0, 31744
  %3 = and i16 %0, 1023
  %4 = and i16 %0, -32768
  %5 = zext i16 %4 to i32
  %6 = shl nuw i32 %5, 16
  switch i16 %2, label %15 [
    i16 31744, label %7
    i16 0, label %23
  ]

7:                                                ; preds = %1
  %8 = icmp eq i16 %3, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = or disjoint i32 %6, 2143289344
  %11 = bitcast i32 %10 to float
  br label %28

12:                                               ; preds = %7
  %13 = or disjoint i32 %6, 2139095040
  %14 = bitcast i32 %13 to float
  br label %28

15:                                               ; preds = %1
  %16 = zext nneg i16 %3 to i32
  %17 = zext nneg i16 %2 to i32
  %18 = add nuw nsw i32 %17, 114688
  %19 = or disjoint i32 %18, %16
  %20 = shl nuw nsw i32 %19, 13
  %21 = or disjoint i32 %20, %6
  %22 = bitcast i32 %21 to float
  br label %28

23:                                               ; preds = %1
  %24 = or disjoint i32 %6, 864026624
  %25 = uitofp nneg i16 %3 to float
  %26 = bitcast i32 %24 to float
  %27 = fmul float %25, %26
  br label %28

28:                                               ; preds = %23, %15, %12, %9
  %29 = phi float [ %11, %9 ], [ %14, %12 ], [ %22, %15 ], [ %27, %23 ]
  ret float %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal signext i16 @iree_f2h_ieee(float noundef %0) local_unnamed_addr #4 {
  %2 = bitcast float %0 to i32
  %3 = and i32 %2, 2139095040
  %4 = and i32 %2, 8388607
  %5 = lshr i32 %2, 16
  %6 = and i32 %5, 32768
  switch i32 %3, label %12 [
    i32 2139095040, label %7
    i32 0, label %30
  ]

7:                                                ; preds = %1
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %7
  %10 = trunc nuw i32 %5 to i16
  %11 = or i16 %10, 32767
  br label %34

12:                                               ; preds = %1
  %13 = lshr exact i32 %3, 23
  %14 = icmp samesign ugt i32 %3, 1191182336
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = icmp samesign ult i32 %3, 947912704
  br i1 %16, label %30, label %17

17:                                               ; preds = %15
  %18 = and i32 %2, 8192
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 4095, i32 4096
  %21 = add nuw nsw i32 %20, %4
  %22 = icmp samesign ugt i32 %21, 8388607
  %23 = select i1 %22, i32 -126, i32 -127
  %24 = add nsw i32 %23, %13
  %25 = shl nsw i32 %24, 10
  %26 = lshr i32 %21, 13
  %27 = add nuw nsw i32 %26, 15360
  %28 = select i1 %22, i32 15360, i32 %27
  %29 = add nsw i32 %28, %25
  br label %30

30:                                               ; preds = %17, %12, %15, %1, %7
  %31 = phi i32 [ 31744, %7 ], [ %3, %1 ], [ %29, %17 ], [ 31744, %12 ], [ 0, %15 ]
  %32 = or i32 %31, %6
  %33 = trunc i32 %32 to i16
  br label %34

34:                                               ; preds = %30, %9
  %35 = phi i16 [ %11, %9 ], [ %33, %30 ]
  ret i16 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @__gnu_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #4 {
  %2 = and i16 %0, 31744
  %3 = and i16 %0, 1023
  %4 = and i16 %0, -32768
  %5 = zext i16 %4 to i32
  %6 = shl nuw i32 %5, 16
  switch i16 %2, label %15 [
    i16 31744, label %7
    i16 0, label %23
  ]

7:                                                ; preds = %1
  %8 = icmp eq i16 %3, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = or disjoint i32 %6, 2143289344
  %11 = bitcast i32 %10 to float
  br label %28

12:                                               ; preds = %7
  %13 = or disjoint i32 %6, 2139095040
  %14 = bitcast i32 %13 to float
  br label %28

15:                                               ; preds = %1
  %16 = zext nneg i16 %3 to i32
  %17 = zext nneg i16 %2 to i32
  %18 = add nuw nsw i32 %17, 114688
  %19 = or disjoint i32 %18, %16
  %20 = shl nuw nsw i32 %19, 13
  %21 = or disjoint i32 %20, %6
  %22 = bitcast i32 %21 to float
  br label %28

23:                                               ; preds = %1
  %24 = or disjoint i32 %6, 864026624
  %25 = uitofp nneg i16 %3 to float
  %26 = bitcast i32 %24 to float
  %27 = fmul float %25, %26
  br label %28

28:                                               ; preds = %9, %12, %15, %23
  %29 = phi float [ %11, %9 ], [ %14, %12 ], [ %22, %15 ], [ %27, %23 ]
  ret float %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @__extendhfsf2(float noundef %0) local_unnamed_addr #4 {
  %2 = bitcast float %0 to i32
  %3 = trunc i32 %2 to i16
  %4 = and i16 %3, 31744
  %5 = and i16 %3, 1023
  %6 = shl i32 %2, 16
  %7 = and i32 %6, -2147483648
  switch i16 %4, label %16 [
    i16 31744, label %8
    i16 0, label %24
  ]

8:                                                ; preds = %1
  %9 = icmp eq i16 %5, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = or disjoint i32 %7, 2143289344
  %12 = bitcast i32 %11 to float
  br label %29

13:                                               ; preds = %8
  %14 = or disjoint i32 %7, 2139095040
  %15 = bitcast i32 %14 to float
  br label %29

16:                                               ; preds = %1
  %17 = and i32 %2, 1023
  %18 = and i32 %2, 31744
  %19 = add nuw nsw i32 %18, 114688
  %20 = or disjoint i32 %19, %17
  %21 = shl nuw nsw i32 %20, 13
  %22 = or disjoint i32 %21, %7
  %23 = bitcast i32 %22 to float
  br label %29

24:                                               ; preds = %1
  %25 = or disjoint i32 %7, 864026624
  %26 = uitofp nneg i16 %5 to float
  %27 = bitcast i32 %25 to float
  %28 = fmul nnan float %26, %27
  br label %29

29:                                               ; preds = %10, %13, %16, %24
  %30 = phi float [ %12, %10 ], [ %15, %13 ], [ %23, %16 ], [ %28, %24 ]
  ret float %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal signext i16 @__gnu_f2h_ieee(float noundef %0) local_unnamed_addr #4 {
  %2 = bitcast float %0 to i32
  %3 = and i32 %2, 2139095040
  %4 = and i32 %2, 8388607
  %5 = lshr i32 %2, 16
  %6 = and i32 %5, 32768
  switch i32 %3, label %12 [
    i32 2139095040, label %7
    i32 0, label %30
  ]

7:                                                ; preds = %1
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %7
  %10 = trunc nuw i32 %5 to i16
  %11 = or i16 %10, 32767
  br label %34

12:                                               ; preds = %1
  %13 = lshr exact i32 %3, 23
  %14 = icmp samesign ugt i32 %3, 1191182336
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = icmp samesign ult i32 %3, 947912704
  br i1 %16, label %30, label %17

17:                                               ; preds = %15
  %18 = and i32 %2, 8192
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 4095, i32 4096
  %21 = add nuw nsw i32 %20, %4
  %22 = icmp samesign ugt i32 %21, 8388607
  %23 = select i1 %22, i32 -126, i32 -127
  %24 = add nsw i32 %23, %13
  %25 = shl nsw i32 %24, 10
  %26 = lshr i32 %21, 13
  %27 = add nuw nsw i32 %26, 15360
  %28 = select i1 %22, i32 15360, i32 %27
  %29 = add nsw i32 %25, %28
  br label %30

30:                                               ; preds = %17, %15, %12, %7, %1
  %31 = phi i32 [ 31744, %7 ], [ %3, %1 ], [ %29, %17 ], [ 31744, %12 ], [ 0, %15 ]
  %32 = or i32 %31, %6
  %33 = trunc i32 %32 to i16
  br label %34

34:                                               ; preds = %9, %30
  %35 = phi i16 [ %11, %9 ], [ %33, %30 ]
  ret i16 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @__truncsfhf2(float noundef %0) local_unnamed_addr #4 {
  %2 = alloca i16, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %3 = bitcast float %0 to i32
  %4 = and i32 %3, 2139095040
  %5 = and i32 %3, 8388607
  %6 = lshr i32 %3, 16
  %7 = and i32 %6, 32768
  switch i32 %4, label %13 [
    i32 2139095040, label %8
    i32 0, label %31
  ]

8:                                                ; preds = %1
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %8
  %11 = trunc nuw i32 %6 to i16
  %12 = or i16 %11, 32767
  br label %35

13:                                               ; preds = %1
  %14 = lshr exact i32 %4, 23
  %15 = icmp samesign ugt i32 %4, 1191182336
  br i1 %15, label %31, label %16

16:                                               ; preds = %13
  %17 = icmp samesign ult i32 %4, 947912704
  br i1 %17, label %31, label %18

18:                                               ; preds = %16
  %19 = and i32 %3, 8192
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 4095, i32 4096
  %22 = add nuw nsw i32 %21, %5
  %23 = icmp samesign ugt i32 %22, 8388607
  %24 = select i1 %23, i32 -126, i32 -127
  %25 = add nsw i32 %24, %14
  %26 = shl nsw i32 %25, 10
  %27 = lshr i32 %22, 13
  %28 = add nuw nsw i32 %27, 15360
  %29 = select i1 %23, i32 15360, i32 %28
  %30 = add nsw i32 %26, %29
  br label %31

31:                                               ; preds = %18, %16, %13, %8, %1
  %32 = phi i32 [ 31744, %8 ], [ %4, %1 ], [ %30, %18 ], [ 31744, %13 ], [ 0, %16 ]
  %33 = or i32 %32, %7
  %34 = trunc i32 %33 to i16
  br label %35

35:                                               ; preds = %10, %31
  %36 = phi i16 [ %12, %10 ], [ %34, %31 ]
  store i16 %36, ptr %2, align 4, !tbaa !91
  %.0..0..0..0. = load float, ptr %2, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret float %.0..0..0..0.
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal double @__extendhfdf2(float noundef %0) local_unnamed_addr #4 {
  %2 = bitcast float %0 to i32
  %3 = trunc i32 %2 to i16
  %4 = and i16 %3, 31744
  %5 = and i16 %3, 1023
  %6 = shl i32 %2, 16
  %7 = and i32 %6, -2147483648
  switch i16 %4, label %16 [
    i16 31744, label %8
    i16 0, label %24
  ]

8:                                                ; preds = %1
  %9 = icmp eq i16 %5, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = or disjoint i32 %7, 2143289344
  %12 = bitcast i32 %11 to float
  br label %29

13:                                               ; preds = %8
  %14 = or disjoint i32 %7, 2139095040
  %15 = bitcast i32 %14 to float
  br label %29

16:                                               ; preds = %1
  %17 = and i32 %2, 1023
  %18 = and i32 %2, 31744
  %19 = add nuw nsw i32 %18, 114688
  %20 = or disjoint i32 %19, %17
  %21 = shl nuw nsw i32 %20, 13
  %22 = or disjoint i32 %21, %7
  %23 = bitcast i32 %22 to float
  br label %29

24:                                               ; preds = %1
  %25 = or disjoint i32 %7, 864026624
  %26 = uitofp nneg i16 %5 to float
  %27 = bitcast i32 %25 to float
  %28 = fmul nnan float %26, %27
  br label %29

29:                                               ; preds = %10, %13, %16, %24
  %30 = phi float [ %12, %10 ], [ %15, %13 ], [ %23, %16 ], [ %28, %24 ]
  %31 = fpext float %30 to double
  ret double %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @__truncdfhf2(double noundef %0) local_unnamed_addr #4 {
  %2 = alloca i16, align 4
  %3 = fptrunc double %0 to float
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %4 = bitcast float %3 to i32
  %5 = and i32 %4, 2139095040
  %6 = and i32 %4, 8388607
  %7 = lshr i32 %4, 16
  %8 = and i32 %7, 32768
  switch i32 %5, label %14 [
    i32 2139095040, label %9
    i32 0, label %32
  ]

9:                                                ; preds = %1
  %10 = icmp eq i32 %6, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %9
  %12 = trunc nuw i32 %7 to i16
  %13 = or i16 %12, 32767
  br label %36

14:                                               ; preds = %1
  %15 = lshr exact i32 %5, 23
  %16 = icmp samesign ugt i32 %5, 1191182336
  br i1 %16, label %32, label %17

17:                                               ; preds = %14
  %18 = icmp samesign ult i32 %5, 947912704
  br i1 %18, label %32, label %19

19:                                               ; preds = %17
  %20 = and i32 %4, 8192
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 4095, i32 4096
  %23 = add nuw nsw i32 %22, %6
  %24 = icmp samesign ugt i32 %23, 8388607
  %25 = select i1 %24, i32 -126, i32 -127
  %26 = add nsw i32 %25, %15
  %27 = shl nsw i32 %26, 10
  %28 = lshr i32 %23, 13
  %29 = add nuw nsw i32 %28, 15360
  %30 = select i1 %24, i32 15360, i32 %29
  %31 = add nsw i32 %27, %30
  br label %32

32:                                               ; preds = %19, %17, %14, %9, %1
  %33 = phi i32 [ 31744, %9 ], [ %5, %1 ], [ %31, %19 ], [ 31744, %14 ], [ 0, %17 ]
  %34 = or i32 %33, %8
  %35 = trunc i32 %34 to i16
  br label %36

36:                                               ; preds = %11, %32
  %37 = phi i16 [ %13, %11 ], [ %35, %32 ]
  store i16 %37, ptr %2, align 4, !tbaa !91
  %.0..0..0..0. = load float, ptr %2, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret float %.0..0..0..0.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef double @fma(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #4 {
  %4 = tail call double @llvm.fmuladd.f64(double %0, double %1, double %2)
  ret double %4
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef float @__math_invalidf(float noundef %0) local_unnamed_addr #7 {
  %2 = fsub float %0, %0
  %3 = fdiv float %2, %2
  ret float %3
}

; Function Attrs: inlinehint nofree norecurse nounwind memory(inaccessiblemem: readwrite)
define internal float @__math_oflowf(i32 noundef %0) local_unnamed_addr #8 {
  %2 = alloca float, align 4
  %.not.i = icmp eq i32 %0, 0
  %3 = select i1 %.not.i, float 0x4600000000000000, float 0xC600000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store volatile float %3, ptr %2, align 4, !tbaa !93
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i = load volatile float, ptr %2, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %4 = fmul float %.0..0..0..0..0..0..0..0..0..0..0..0..i.i, 0x4600000000000000
  ret float %4
}

; Function Attrs: inlinehint nofree norecurse nounwind memory(inaccessiblemem: readwrite)
define internal float @__math_xflowf(i32 noundef %0, float noundef %1) local_unnamed_addr #8 {
  %3 = alloca float, align 4
  %.not = icmp eq i32 %0, 0
  %4 = fneg float %1
  %5 = select i1 %.not, float %1, float %4
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store volatile float %5, ptr %3, align 4, !tbaa !93
  %.0..0..0..0..0..0..0..0..0..0..i = load volatile float, ptr %3, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %6 = fmul float %1, %.0..0..0..0..0..0..0..0..0..0..i
  ret float %6
}

; Function Attrs: inlinehint nofree norecurse nounwind memory(inaccessiblemem: readwrite)
define internal float @__math_uflowf(i32 noundef %0) local_unnamed_addr #8 {
  %2 = alloca float, align 4
  %.not.i = icmp eq i32 %0, 0
  %3 = select i1 %.not.i, float 0x3A00000000000000, float 0xBA00000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store volatile float %3, ptr %2, align 4, !tbaa !93
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i = load volatile float, ptr %2, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %4 = fmul float %.0..0..0..0..0..0..0..0..0..0..0..0..i.i, 0x3A00000000000000
  ret float %4
}

; Function Attrs: inlinehint nofree norecurse nounwind memory(inaccessiblemem: readwrite)
define internal float @ceilf(float noundef %0) local_unnamed_addr #8 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = bitcast float %0 to i32
  %5 = lshr i32 %4, 23
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -127
  %8 = icmp samesign ugt i32 %6, 149
  br i1 %8, label %26, label %9

9:                                                ; preds = %1
  %10 = icmp samesign ugt i32 %6, 126
  br i1 %10, label %11, label %23

11:                                               ; preds = %9
  %12 = lshr i32 8388607, %7
  %13 = and i32 %12, %4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = fadd float %0, 0x4770000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store volatile float %16, ptr %3, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %17 = icmp slt i32 %4, 0
  %18 = ashr i32 -8388608, %7
  %19 = select i1 %17, i32 0, i32 %12
  %20 = add nuw i32 %19, %4
  %21 = and i32 %20, %18
  %22 = bitcast i32 %21 to float
  br label %26

23:                                               ; preds = %9
  %24 = fadd float %0, 0x4770000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store volatile float %24, ptr %2, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not = icmp sgt i32 %4, -1
  br i1 %.not, label %25, label %26

25:                                               ; preds = %23
  %.not18 = icmp eq i32 %4, 0
  %spec.select = select i1 %.not18, float %0, float 1.000000e+00
  br label %26

26:                                               ; preds = %25, %23, %15, %11, %1
  %.0 = phi float [ %0, %1 ], [ %0, %11 ], [ %22, %15 ], [ -0.000000e+00, %23 ], [ %spec.select, %25 ]
  ret float %.0
}

; Function Attrs: inlinehint nofree norecurse nounwind memory(inaccessiblemem: readwrite)
define internal float @expf(float noundef %0) local_unnamed_addr #8 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = fpext float %0 to double
  %5 = bitcast float %0 to i32
  %6 = lshr i32 %5, 20
  %7 = and i32 %6, 2047
  %.not = icmp samesign ult i32 %7, 1067
  br i1 %.not, label %21, label %8, !prof !95

8:                                                ; preds = %1
  %9 = fcmp oeq float %0, 0xFFF0000000000000
  br i1 %9, label %39, label %10

10:                                               ; preds = %8
  %.not34 = icmp samesign ult i32 %7, 2040
  br i1 %.not34, label %13, label %11

11:                                               ; preds = %10
  %12 = fadd float %0, %0
  br label %39

13:                                               ; preds = %10
  %14 = fcmp ogt float %0, 0x40562E42E0000000
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store volatile float 0x4600000000000000, ptr %3, align 4, !tbaa !93
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile float, ptr %3, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %16 = fmul float %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i, 0x4600000000000000
  br label %39

17:                                               ; preds = %13
  %18 = fcmp olt float %0, 0xC059FE3680000000
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store volatile float 0x3A00000000000000, ptr %2, align 4, !tbaa !93
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i3 = load volatile float, ptr %2, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %20 = fmul float %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i3, 0x3A00000000000000
  br label %39

21:                                               ; preds = %17, %1
  %22 = fmul double %4, 0x40471547652B82FE
  %23 = fadd double %22, 0x4338000000000000
  %24 = bitcast double %23 to i64
  %25 = fadd double %23, 0xC338000000000000
  %26 = fsub double %22, %25
  %27 = and i64 %24, 31
  %28 = getelementptr inbounds nuw [8 x i8], ptr @__exp2f_data, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !96
  %30 = shl i64 %24, 47
  %31 = add i64 %29, %30
  %32 = bitcast i64 %31 to double
  %33 = tail call double @llvm.fmuladd.f64(double %26, double 0x3EBC6AF84B912394, double 0x3F2EBFCE50FAC4F3)
  %34 = fmul double %26, %26
  %35 = tail call double @llvm.fmuladd.f64(double %26, double 0x3F962E42FF0C52D6, double 1.000000e+00)
  %36 = tail call double @llvm.fmuladd.f64(double %33, double %34, double %35)
  %37 = fmul double %36, %32
  %38 = fptrunc double %37 to float
  br label %39

39:                                               ; preds = %21, %19, %15, %11, %8
  %.0 = phi float [ %12, %11 ], [ %16, %15 ], [ %20, %19 ], [ %38, %21 ], [ 0.000000e+00, %8 ]
  ret float %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef i32 @feclearexcept(i32 noundef %0) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef i32 @feraiseexcept(i32 noundef %0) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef i32 @fetestexcept(i32 noundef %0) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef i32 @fegetround() local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef i32 @__fesetround(i32 noundef %0) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef i32 @fegetenv(ptr noundef readnone captures(none) %0) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef i32 @fesetenv(ptr noundef readnone captures(none) %0) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: inlinehint nofree norecurse nounwind memory(inaccessiblemem: readwrite)
define internal float @floorf(float noundef %0) local_unnamed_addr #8 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = bitcast float %0 to i32
  %5 = lshr i32 %4, 23
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -127
  %8 = icmp samesign ugt i32 %6, 149
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = icmp samesign ugt i32 %6, 126
  br i1 %10, label %11, label %22

11:                                               ; preds = %9
  %12 = lshr i32 8388607, %7
  %13 = and i32 %12, %4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = fadd float %0, 0x4770000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store volatile float %16, ptr %3, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not1819 = icmp slt i32 %4, 0
  %17 = ashr i32 -8388608, %7
  %18 = select i1 %.not1819, i32 %12, i32 0
  %19 = add nsw i32 %18, %4
  %20 = and i32 %19, %17
  %21 = bitcast i32 %20 to float
  br label %27

22:                                               ; preds = %9
  %23 = fadd float %0, 0x4770000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store volatile float %23, ptr %2, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %24 = icmp sgt i32 %4, -1
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %.not = fcmp oeq float %0, 0.000000e+00
  br i1 %.not, label %27, label %26

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26, %25, %22, %15, %11, %1
  %.0 = phi float [ %0, %1 ], [ %0, %11 ], [ %21, %15 ], [ -1.000000e+00, %26 ], [ %0, %25 ], [ 0.000000e+00, %22 ]
  ret float %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @fmaf(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #7 {
  %4 = fpext float %0 to double
  %5 = fpext float %1 to double
  %6 = fmul double %4, %5
  %7 = fpext float %2 to double
  %8 = fadd double %6, %7
  %9 = bitcast double %8 to i64
  %10 = and i64 %9, 536870911
  %11 = icmp ne i64 %10, 268435456
  %12 = and i64 %9, 9218868437227405312
  %13 = icmp eq i64 %12, 9218868437227405312
  %or.cond = or i1 %11, %13
  br i1 %or.cond, label %31, label %14

14:                                               ; preds = %3
  %15 = fsub double %8, %6
  %16 = fcmp oeq double %15, %7
  %17 = fsub double %8, %7
  %18 = fcmp oeq double %17, %6
  %or.cond44 = and i1 %16, %18
  br i1 %or.cond44, label %31, label %19

19:                                               ; preds = %14
  %20 = icmp slt i64 %9, 0
  %21 = fcmp uge double %6, %7
  %22 = xor i1 %21, %20
  %23 = fsub double %6, %8
  %24 = fadd double %23, %7
  %25 = fsub double %7, %8
  %26 = fadd double %6, %25
  %.038 = select i1 %22, double %24, double %26
  %27 = fcmp uge double %.038, 0.000000e+00
  %28 = xor i1 %20, %27
  %29 = or disjoint i64 %9, 1
  %30 = add nsw i64 %9, -1
  %.sroa.0.0.in = select i1 %28, i64 %29, i64 %30
  %.sroa.0.0 = bitcast i64 %.sroa.0.0.in to double
  br label %31

31:                                               ; preds = %3, %14, %19
  %.0.in = phi double [ %.sroa.0.0, %19 ], [ %8, %14 ], [ %8, %3 ]
  %.0 = fptrunc double %.0.in to float
  ret float %.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(none)
define internal float @fmodf(float noundef %0, float noundef %1) local_unnamed_addr #9 {
  %3 = bitcast float %0 to i32
  %4 = lshr i32 %3, 23
  %5 = and i32 %4, 255
  %6 = bitcast float %1 to i32
  %7 = lshr i32 %6, 23
  %8 = and i32 %7, 255
  %9 = and i32 %3, -2147483648
  %10 = shl i32 %6, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = tail call float @llvm.fabs.f32(float %1)
  %14 = bitcast float %13 to i32
  %15 = icmp samesign ugt i32 %14, 2139095040
  %16 = icmp eq i32 %5, 255
  %or.cond = or i1 %15, %16
  br i1 %or.cond, label %17, label %20

17:                                               ; preds = %12, %2
  %18 = fmul float %0, %1
  %19 = fdiv float %18, %18
  br label %83

20:                                               ; preds = %12
  %21 = shl i32 %3, 1
  %.not = icmp ugt i32 %21, %10
  br i1 %.not, label %25, label %22

22:                                               ; preds = %20
  %23 = icmp eq i32 %21, %10
  %24 = fmul float %0, 0.000000e+00
  %spec.select = select i1 %23, float %24, float %0
  br label %83

25:                                               ; preds = %20
  %.not81 = icmp eq i32 %5, 0
  br i1 %.not81, label %26, label %34

26:                                               ; preds = %25
  %27 = shl i32 %3, 9
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %26, %.lr.ph
  %.06586 = phi i32 [ %30, %.lr.ph ], [ %27, %26 ]
  %.07085 = phi i32 [ %29, %.lr.ph ], [ 0, %26 ]
  %29 = add nsw i32 %.07085, -1
  %30 = shl nuw i32 %.06586, 1
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %26
  %.070.lcssa = phi i32 [ 0, %26 ], [ %29, %.lr.ph ]
  %32 = sub i32 1, %.070.lcssa
  %33 = shl i32 %3, %32
  br label %37

34:                                               ; preds = %25
  %35 = and i32 %3, 8388607
  %36 = or disjoint i32 %35, 8388608
  br label %37

37:                                               ; preds = %34, %._crit_edge
  %.171 = phi i32 [ %5, %34 ], [ %.070.lcssa, %._crit_edge ]
  %.0 = phi i32 [ %36, %34 ], [ %33, %._crit_edge ]
  %.not82 = icmp eq i32 %8, 0
  br i1 %.not82, label %38, label %46

38:                                               ; preds = %37
  %39 = shl i32 %6, 9
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %.lr.ph90, label %._crit_edge91

.lr.ph90:                                         ; preds = %38, %.lr.ph90
  %.16688 = phi i32 [ %42, %.lr.ph90 ], [ %39, %38 ]
  %.06887 = phi i32 [ %41, %.lr.ph90 ], [ 0, %38 ]
  %41 = add nsw i32 %.06887, -1
  %42 = shl nuw i32 %.16688, 1
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %.lr.ph90, label %._crit_edge91

._crit_edge91:                                    ; preds = %.lr.ph90, %38
  %.068.lcssa = phi i32 [ 0, %38 ], [ %41, %.lr.ph90 ]
  %44 = sub i32 1, %.068.lcssa
  %45 = shl i32 %6, %44
  br label %49

46:                                               ; preds = %37
  %47 = and i32 %6, 8388607
  %48 = or disjoint i32 %47, 8388608
  br label %49

49:                                               ; preds = %46, %._crit_edge91
  %.sroa.0.0.in = phi i32 [ %48, %46 ], [ %45, %._crit_edge91 ]
  %.169 = phi i32 [ %8, %46 ], [ %.068.lcssa, %._crit_edge91 ]
  %50 = icmp sgt i32 %.171, %.169
  br i1 %50, label %.lr.ph96, label %._crit_edge97

.lr.ph96:                                         ; preds = %49, %57
  %.194 = phi i32 [ %58, %57 ], [ %.0, %49 ]
  %.27293 = phi i32 [ %59, %57 ], [ %.171, %49 ]
  %51 = sub i32 %.194, %.sroa.0.0.in
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %57

53:                                               ; preds = %.lr.ph96
  %54 = icmp eq i32 %51, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %53
  %56 = fmul float %0, 0.000000e+00
  br label %83

57:                                               ; preds = %53, %.lr.ph96
  %.2 = phi i32 [ %.194, %.lr.ph96 ], [ %51, %53 ]
  %58 = shl i32 %.2, 1
  %59 = add nsw i32 %.27293, -1
  %60 = icmp sgt i32 %59, %.169
  br i1 %60, label %.lr.ph96, label %._crit_edge97

._crit_edge97:                                    ; preds = %57, %49
  %.272.lcssa = phi i32 [ %.171, %49 ], [ %.169, %57 ]
  %.1.lcssa = phi i32 [ %.0, %49 ], [ %58, %57 ]
  %61 = sub i32 %.1.lcssa, %.sroa.0.0.in
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %63, label %67

63:                                               ; preds = %._crit_edge97
  %64 = icmp eq i32 %61, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = fmul float %0, 0.000000e+00
  br label %83

67:                                               ; preds = %63, %._crit_edge97
  %.3 = phi i32 [ %.1.lcssa, %._crit_edge97 ], [ %61, %63 ]
  %68 = icmp ult i32 %.3, 8388608
  br i1 %68, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %67, %.lr.ph103
  %.4101 = phi i32 [ %69, %.lr.ph103 ], [ %.3, %67 ]
  %.373100 = phi i32 [ %70, %.lr.ph103 ], [ %.272.lcssa, %67 ]
  %69 = shl nuw nsw i32 %.4101, 1
  %70 = add nsw i32 %.373100, -1
  %71 = icmp samesign ult i32 %.4101, 4194304
  br i1 %71, label %.lr.ph103, label %._crit_edge104

._crit_edge104:                                   ; preds = %.lr.ph103, %67
  %.373.lcssa = phi i32 [ %.272.lcssa, %67 ], [ %70, %.lr.ph103 ]
  %.4.lcssa = phi i32 [ %.3, %67 ], [ %69, %.lr.ph103 ]
  %72 = icmp sgt i32 %.373.lcssa, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %._crit_edge104
  %74 = add i32 %.4.lcssa, -8388608
  %75 = shl i32 %.373.lcssa, 23
  %76 = or i32 %74, %75
  br label %80

77:                                               ; preds = %._crit_edge104
  %78 = sub i32 1, %.373.lcssa
  %79 = lshr i32 %.4.lcssa, %78
  br label %80

80:                                               ; preds = %77, %73
  %.5 = phi i32 [ %76, %73 ], [ %79, %77 ]
  %81 = or i32 %.5, %9
  %82 = bitcast i32 %81 to float
  br label %83

83:                                               ; preds = %80, %65, %55, %22, %17
  %.067 = phi float [ %19, %17 ], [ %56, %55 ], [ %66, %65 ], [ %82, %80 ], [ %spec.select, %22 ]
  ret float %.067
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: inlinehint nofree nosync nounwind memory(argmem: readwrite)
define internal float @frexpf(float noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #10 {
  %3 = bitcast float %0 to i32
  %4 = lshr i32 %3, 23
  %trunc = trunc i32 %4 to i8
  switch i8 %trunc, label %13 [
    i8 0, label %5
    i8 -1, label %19
  ]

5:                                                ; preds = %2
  %6 = fcmp une float %0, 0.000000e+00
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = fmul float %0, 0x43F0000000000000
  %9 = tail call float @frexpf(float noundef %8, ptr noundef %1) #11
  %10 = load i32, ptr %1, align 4, !tbaa !5
  %11 = add nsw i32 %10, -64
  br label %12

12:                                               ; preds = %7, %5
  %storemerge = phi i32 [ %11, %7 ], [ 0, %5 ]
  %.014 = phi float [ %9, %7 ], [ %0, %5 ]
  store i32 %storemerge, ptr %1, align 4, !tbaa !5
  br label %19

13:                                               ; preds = %2
  %14 = and i32 %4, 255
  %15 = add nsw i32 %14, -126
  store i32 %15, ptr %1, align 4, !tbaa !5
  %16 = and i32 %3, -2139095041
  %17 = or disjoint i32 %16, 1056964608
  %18 = bitcast i32 %17 to float
  br label %19

19:                                               ; preds = %13, %12, %2
  %.0 = phi float [ %18, %13 ], [ %.014, %12 ], [ %0, %2 ]
  ret float %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @ldexpf(float noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp sgt i32 %1, 127
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = fmul float %0, 0x47E0000000000000
  %6 = add nsw i32 %1, -127
  %7 = icmp samesign ugt i32 %1, 254
  br i1 %7, label %8, label %scalbnf.exit

8:                                                ; preds = %4
  %9 = fmul float %5, 0x47E0000000000000
  %10 = tail call i32 @llvm.umin.i32(i32 %1, i32 381)
  %spec.store.select.i = add nsw i32 %10, -254
  br label %scalbnf.exit

11:                                               ; preds = %2
  %12 = icmp slt i32 %1, -126
  br i1 %12, label %13, label %scalbnf.exit

13:                                               ; preds = %11
  %14 = fmul float %0, 0x3990000000000000
  %15 = add nuw nsw i32 %1, 102
  %16 = icmp samesign ult i32 %1, -228
  br i1 %16, label %17, label %scalbnf.exit

17:                                               ; preds = %13
  %18 = fmul float %14, 0x3990000000000000
  %19 = tail call i32 @llvm.umax.i32(i32 %1, i32 -330)
  %spec.store.select1.i = add nuw nsw i32 %19, 204
  br label %scalbnf.exit

scalbnf.exit:                                     ; preds = %4, %8, %11, %13, %17
  %.018.i = phi i32 [ %spec.store.select.i, %8 ], [ %6, %4 ], [ %spec.store.select1.i, %17 ], [ %15, %13 ], [ %1, %11 ]
  %.0.i = phi float [ %9, %8 ], [ %5, %4 ], [ %18, %17 ], [ %14, %13 ], [ %0, %11 ]
  %20 = shl nsw i32 %.018.i, 23
  %21 = add nsw i32 %20, 1065353216
  %22 = bitcast i32 %21 to float
  %23 = fmul float %.0.i, %22
  ret float %23
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @scalbnf(float noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp sgt i32 %1, 127
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = fmul float %0, 0x47E0000000000000
  %6 = add nsw i32 %1, -127
  %7 = icmp samesign ugt i32 %1, 254
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = fmul float %5, 0x47E0000000000000
  %10 = tail call i32 @llvm.umin.i32(i32 %1, i32 381)
  %spec.store.select = add nsw i32 %10, -254
  br label %20

11:                                               ; preds = %2
  %12 = icmp slt i32 %1, -126
  br i1 %12, label %13, label %20

13:                                               ; preds = %11
  %14 = fmul float %0, 0x3990000000000000
  %15 = add nuw nsw i32 %1, 102
  %16 = icmp samesign ult i32 %1, -228
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = fmul float %14, 0x3990000000000000
  %19 = tail call i32 @llvm.umax.i32(i32 %1, i32 -330)
  %spec.store.select1 = add nuw nsw i32 %19, 204
  br label %20

20:                                               ; preds = %17, %13, %11, %8, %4
  %.018 = phi i32 [ %spec.store.select, %8 ], [ %6, %4 ], [ %spec.store.select1, %17 ], [ %15, %13 ], [ %1, %11 ]
  %.0 = phi float [ %9, %8 ], [ %5, %4 ], [ %18, %17 ], [ %14, %13 ], [ %0, %11 ]
  %21 = shl nsw i32 %.018, 23
  %22 = add nsw i32 %21, 1065353216
  %23 = bitcast i32 %22 to float
  %24 = fmul float %.0, %23
  ret float %24
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: inlinehint nofree norecurse nounwind memory(inaccessiblemem: readwrite)
define internal float @powf(float noundef %0, float noundef %1) local_unnamed_addr #8 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = bitcast float %0 to i32
  %7 = bitcast float %1 to i32
  %8 = add i32 %6, -2139095040
  %9 = icmp ult i32 %8, -2130706432
  %.pre = shl i32 %7, 1
  %10 = add i32 %.pre, 16777216
  %11 = icmp ult i32 %10, 16777217
  %or.cond99 = or i1 %9, %11
  br i1 %or.cond99, label %.critedge, label %76, !prof !98

.critedge:                                        ; preds = %2
  %12 = add i32 %.pre, -1
  %13 = icmp ult i32 %12, -16777217
  br i1 %13, label %30, label %14, !prof !95

14:                                               ; preds = %.critedge
  %15 = icmp eq i32 %.pre, 0
  %16 = icmp eq i32 %6, 1065353216
  %or.cond70 = or i1 %16, %15
  br i1 %or.cond70, label %134, label %17

17:                                               ; preds = %14
  %18 = shl i32 %6, 1
  %19 = icmp ugt i32 %18, -16777216
  %20 = icmp samesign ugt i32 %.pre, -16777216
  %or.cond = or i1 %19, %20
  br i1 %or.cond, label %21, label %23

21:                                               ; preds = %17
  %22 = fadd float %0, %1
  br label %134

23:                                               ; preds = %17
  %24 = icmp eq i32 %18, 2130706432
  br i1 %24, label %134, label %25

25:                                               ; preds = %23
  %26 = icmp ult i32 %18, 2130706432
  %27 = icmp slt i32 %7, 0
  %28 = xor i1 %26, %27
  %29 = fmul float %1, %1
  %spec.select71 = select i1 %28, float 0.000000e+00, float %29
  br label %134

30:                                               ; preds = %.critedge
  %31 = shl i32 %6, 1
  %32 = add i32 %31, -1
  %33 = icmp ult i32 %32, -16777217
  br i1 %33, label %49, label %34, !prof !95

34:                                               ; preds = %30
  %35 = fmul float %0, %0
  %.not66 = icmp sgt i32 %6, -1
  br i1 %.not66, label %checkint.exit.thread, label %36

36:                                               ; preds = %34
  %37 = lshr i32 %7, 23
  %38 = and i32 %37, 255
  %39 = add nsw i32 %38, -151
  %or.cond92 = icmp ult i32 %39, -24
  br i1 %or.cond92, label %checkint.exit.thread, label %40

40:                                               ; preds = %36
  %41 = sub nuw nsw i32 150, %38
  %42 = shl nuw nsw i32 1, %41
  %43 = add nsw i32 %42, -1
  %44 = and i32 %43, %7
  %.not.i = icmp ne i32 %44, 0
  %45 = and i32 %42, %7
  %.not9.i = icmp eq i32 %45, 0
  %or.cond93 = or i1 %.not9.i, %.not.i
  %46 = fneg float %35
  %spec.select = select i1 %or.cond93, float %35, float %46
  br label %checkint.exit.thread

checkint.exit.thread:                             ; preds = %40, %36, %34
  %.057 = phi float [ %35, %34 ], [ %35, %36 ], [ %spec.select, %40 ]
  %.not67 = icmp sgt i32 %7, -1
  br i1 %.not67, label %134, label %47

47:                                               ; preds = %checkint.exit.thread
  %48 = fdiv float 1.000000e+00, %.057
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store volatile float %48, ptr %5, align 4, !tbaa !93
  %.0..0..0..0..0..0..0..0..0..0..i = load volatile float, ptr %5, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %134

49:                                               ; preds = %30
  %.not64 = icmp sgt i32 %6, -1
  br i1 %.not64, label %69, label %50

50:                                               ; preds = %49
  %51 = lshr i32 %7, 23
  %52 = and i32 %51, 255
  %53 = icmp samesign ult i32 %52, 127
  br i1 %53, label %.thread, label %54

54:                                               ; preds = %50
  %55 = icmp samesign ugt i32 %52, 150
  br i1 %55, label %checkint.exit76.thread85, label %56

56:                                               ; preds = %54
  %57 = sub nuw nsw i32 150, %52
  %58 = shl nuw nsw i32 1, %57
  %59 = add nsw i32 %58, -1
  %60 = and i32 %59, %7
  %.not.i72 = icmp eq i32 %60, 0
  br i1 %.not.i72, label %61, label %.thread

61:                                               ; preds = %56
  %62 = and i32 %58, %7
  %.not9.i74 = icmp eq i32 %62, 0
  br i1 %.not9.i74, label %checkint.exit76.thread85, label %65

.thread:                                          ; preds = %56, %50
  %63 = fsub float %0, %0
  %64 = fdiv float %63, %63
  br label %134

checkint.exit76.thread85:                         ; preds = %61, %54
  br label %65

65:                                               ; preds = %checkint.exit76.thread85, %61
  %66 = phi i32 [ 0, %checkint.exit76.thread85 ], [ 65536, %61 ]
  %67 = tail call float @llvm.fabs.f32(float %0)
  %68 = bitcast float %67 to i32
  br label %69

69:                                               ; preds = %65, %49
  %.154 = phi i32 [ %68, %65 ], [ %6, %49 ]
  %.151 = phi i32 [ %66, %65 ], [ 0, %49 ]
  %70 = icmp ult i32 %.154, 8388608
  br i1 %70, label %71, label %76

71:                                               ; preds = %69
  %72 = fmul float %0, 0x4160000000000000
  %73 = tail call float @llvm.fabs.f32(float %72)
  %74 = bitcast float %73 to i32
  %75 = add nsw i32 %74, -192937984
  br label %76

76:                                               ; preds = %71, %69, %2
  %.053 = phi i32 [ %75, %71 ], [ %.154, %69 ], [ %6, %2 ]
  %.050 = phi i32 [ %.151, %71 ], [ %.151, %69 ], [ 0, %2 ]
  %77 = add i32 %.053, -1060306944
  %78 = lshr i32 %77, 19
  %79 = and i32 %78, 15
  %80 = and i32 %77, -8388608
  %81 = sub i32 %.053, %80
  %82 = ashr i32 %77, 23
  %83 = zext nneg i32 %79 to i64
  %84 = getelementptr inbounds nuw [16 x i8], ptr @__powf_log2_data, i64 %83
  %85 = load double, ptr %84, align 8, !tbaa !99
  %86 = getelementptr inbounds nuw i8, ptr %84, i64 8
  %87 = load double, ptr %86, align 8, !tbaa !102
  %88 = bitcast i32 %81 to float
  %89 = fpext float %88 to double
  %90 = tail call double @llvm.fmuladd.f64(double %89, double %85, double -1.000000e+00)
  %91 = sitofp i32 %82 to double
  %92 = fadd double %87, %91
  %93 = fmul double %90, %90
  %94 = tail call double @llvm.fmuladd.f64(double %90, double 0x3FD27616C9496E0B, double 0xBFD71969A075C67A)
  %95 = tail call double @llvm.fmuladd.f64(double %90, double 0x3FDEC70A6CA7BADD, double 0xBFE7154748BEF6C8)
  %96 = fmul double %93, %93
  %97 = tail call double @llvm.fmuladd.f64(double %90, double 0x3FF71547652AB82B, double %92)
  %98 = tail call double @llvm.fmuladd.f64(double %95, double %93, double %97)
  %99 = tail call double @llvm.fmuladd.f64(double %94, double %96, double %98)
  %100 = fpext float %1 to double
  %101 = fmul double %99, %100
  %102 = bitcast double %101 to i64
  %103 = and i64 %102, 9223231299366420480
  %104 = icmp samesign ugt i64 %103, 4638426141214900224
  br i1 %104, label %105, label %115, !prof !103

105:                                              ; preds = %76
  %106 = fcmp ogt double %101, 0x405FFFFFFFD1D571
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %.not.i.i = icmp eq i32 %.050, 0
  %108 = select i1 %.not.i.i, float 0x4600000000000000, float 0xC600000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store volatile float %108, ptr %4, align 4, !tbaa !93
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile float, ptr %4, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %109 = fmul float %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i, 0x4600000000000000
  br label %134

110:                                              ; preds = %105
  %111 = fcmp ugt double %101, -1.500000e+02
  br i1 %111, label %115, label %112

112:                                              ; preds = %110
  %.not.i.i5 = icmp eq i32 %.050, 0
  %113 = select i1 %.not.i.i5, float 0x3A00000000000000, float 0xBA00000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store volatile float %113, ptr %3, align 4, !tbaa !93
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i6 = load volatile float, ptr %3, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %114 = fmul float %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i6, 0x3A00000000000000
  br label %134

115:                                              ; preds = %110, %76
  %116 = fadd double %101, 0x42E8000000000000
  %117 = bitcast double %116 to i64
  %118 = fadd double %116, 0xC2E8000000000000
  %119 = fsub double %101, %118
  %120 = and i64 %117, 31
  %121 = getelementptr inbounds nuw [8 x i8], ptr @__exp2f_data, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !96
  %123 = zext nneg i32 %.050 to i64
  %124 = add i64 %117, %123
  %125 = shl i64 %124, 47
  %126 = add i64 %122, %125
  %127 = bitcast i64 %126 to double
  %128 = tail call double @llvm.fmuladd.f64(double %119, double 0x3FAC6AF84B912394, double 0x3FCEBFCE50FAC4F3)
  %129 = fmul double %119, %119
  %130 = tail call double @llvm.fmuladd.f64(double %119, double 0x3FE62E42FF0C52D6, double 1.000000e+00)
  %131 = tail call double @llvm.fmuladd.f64(double %128, double %129, double %130)
  %132 = fmul double %131, %127
  %133 = fptrunc double %132 to float
  br label %134

134:                                              ; preds = %115, %112, %107, %.thread, %47, %checkint.exit.thread, %25, %23, %21, %14
  %.0 = phi float [ %22, %21 ], [ 1.000000e+00, %14 ], [ 1.000000e+00, %23 ], [ %.0..0..0..0..0..0..0..0..0..0..i, %47 ], [ %.057, %checkint.exit.thread ], [ %109, %107 ], [ %114, %112 ], [ %133, %115 ], [ %spec.select71, %25 ], [ %64, %.thread ]
  ret float %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef float @rintf(float noundef %0) local_unnamed_addr #7 {
  %2 = bitcast float %0 to i32
  %3 = and i32 %2, 2130706432
  %4 = icmp samesign ugt i32 %3, 1249902592
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %.not = icmp sgt i32 %2, -1
  %6 = fadd float %0, 0xC160000000000000
  %7 = fadd float %6, 0x4160000000000000
  %8 = fadd float %0, 0x4160000000000000
  %9 = fadd float %8, 0xC160000000000000
  %.0 = select i1 %.not, float %9, float %7
  %10 = fcmp oeq float %.0, 0.000000e+00
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = select i1 %.not, float 0.000000e+00, float -0.000000e+00
  br label %13

13:                                               ; preds = %11, %5, %1
  %.010 = phi float [ %12, %11 ], [ %0, %1 ], [ %.0, %5 ]
  ret float %.010
}

; Function Attrs: inlinehint nofree norecurse nounwind memory(inaccessiblemem: readwrite)
define internal float @roundf(float noundef %0) local_unnamed_addr #8 {
  %2 = alloca float, align 4
  %3 = bitcast float %0 to i32
  %4 = lshr i32 %3, 23
  %5 = and i32 %4, 255
  %6 = icmp samesign ugt i32 %5, 149
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %spec.select = tail call float @llvm.fabs.f32(float %0)
  %8 = icmp samesign ult i32 %5, 126
  %9 = fadd float %spec.select, 0x4160000000000000
  br i1 %8, label %10, label %12

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store volatile float %9, ptr %2, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %11 = fmul float %0, 0.000000e+00
  br label %26

12:                                               ; preds = %7
  %13 = fadd float %9, 0xC160000000000000
  %14 = fsub float %13, %spec.select
  %15 = fcmp ogt float %14, 5.000000e-01
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = fadd float %spec.select, %14
  %18 = fadd float %17, -1.000000e+00
  br label %24

19:                                               ; preds = %12
  %20 = fcmp ugt float %14, -5.000000e-01
  %21 = fadd float %spec.select, %14
  br i1 %20, label %24, label %22

22:                                               ; preds = %19
  %23 = fadd float %21, 1.000000e+00
  br label %24

24:                                               ; preds = %22, %19, %16
  %.0 = phi float [ %18, %16 ], [ %23, %22 ], [ %21, %19 ]
  %25 = fneg float %.0
  %.not26 = icmp slt i32 %3, 0
  %spec.select25 = select i1 %.not26, float %25, float %.0
  br label %26

26:                                               ; preds = %24, %10, %1
  %.020 = phi float [ %11, %10 ], [ %spec.select25, %24 ], [ %0, %1 ]
  ret float %.020
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem0: none, target_mem1: none) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #2 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "nonlazybind" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #8 = { inlinehint nofree norecurse nounwind memory(inaccessiblemem: readwrite) }
attributes #9 = { inlinehint nofree norecurse nosync nounwind memory(none) }
attributes #10 = { inlinehint nofree nosync nounwind memory(argmem: readwrite) }
attributes #11 = { inlinehint }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4}
!llvm.errno.tbaa = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "configured_module_matmul_dispatch_0.mlir", directory: "/home/claude/mlirbench2/build/128x128x128/vec_autotuned_a8d8e17b57/dispatches")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !DISubprogram(name: "matmul_dispatch_0_matmul_128x128x128_f32", linkageName: "matmul_dispatch_0_matmul_128x128x128_f32", scope: !1, file: !1, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
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
!85 = !DILocation(line: 11, column: 8, scope: !9)
!86 = !DILocation(line: 12, column: 8, scope: !9)
!87 = !DILocation(line: 13, column: 8, scope: !9)
!88 = !DILocation(line: 18, column: 8, scope: !9)
!89 = !DILocation(line: 4, column: 1, scope: !9)
!90 = !DILocation(line: 20, column: 8, scope: !9)
!91 = !{!92, !92, i64 0}
!92 = !{!"short", !7, i64 0}
!93 = !{!94, !94, i64 0}
!94 = !{!"float", !7, i64 0}
!95 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!96 = !{!97, !97, i64 0}
!97 = !{!"long", !7, i64 0}
!98 = !{!"branch_weights", i32 4001, i32 4000000}
!99 = !{!100, !101, i64 0}
!100 = !{!"", !101, i64 0, !101, i64 8}
!101 = !{!"double", !7, i64 0}
!102 = !{!100, !101, i64 8}
!103 = !{!"branch_weights", !"expected", i32 1, i32 2000}
