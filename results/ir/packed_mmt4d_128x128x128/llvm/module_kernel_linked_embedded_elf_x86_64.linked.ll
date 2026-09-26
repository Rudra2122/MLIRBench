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
%struct.exp2f_data = type { [32 x i64], double, [3 x double], double, double, [3 x double] }
%struct.powf_log2_data = type { [16 x %struct.anon], [5 x double] }
%struct.anon = type { double, double }
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
@5 = private constant [118 x i8] c"/home/claude/mlirbench2/build/128x128x128/packed_mmt4d_1af5aad1c4/dispatches/configured_module_matmul_dispatch_0.mlir\00", align 1
@6 = private constant [118 x i8] c"/home/claude/mlirbench2/build/128x128x128/packed_mmt4d_1af5aad1c4/dispatches/configured_module_matmul_dispatch_1.mlir\00", align 1
@7 = private constant [118 x i8] c"/home/claude/mlirbench2/build/128x128x128/packed_mmt4d_1af5aad1c4/dispatches/configured_module_matmul_dispatch_2.mlir\00", align 1
@8 = private constant [118 x i8] c"/home/claude/mlirbench2/build/128x128x128/packed_mmt4d_1af5aad1c4/dispatches/configured_module_matmul_dispatch_3.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [4 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 117, ptr @5 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 117, ptr @6 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 117, ptr @7 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 117, ptr @8 }]
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
@__exp2f_data = hidden local_unnamed_addr constant %struct.exp2f_data { [32 x i64] [i64 4607182418800017408, i64 4607140297302181236, i64 4607100335213349135, i64 4607062579818421073, i64 4607027079437701499, i64 4606993883449571754, i64 4606963042313658936, i64 4606934607594512097, i64 4606908631985796885, i64 4606885169335019979, i64 4606864274668794914, i64 4606846004218661165, i64 4606830415447468583, i64 4606817567076339586, i64 4606807519112221737, i64 4606800332876043653, i64 4606796071031487437, i64 4606794797614391156, i64 4606796578062795143, i64 4606801479247646227, i64 4606809569504174299, i64 4606820918663955941, i64 4606835598087680144, i64 4606853680698631517, i64 4606875241016906669, i64 4606900355194379847, i64 4606929101050434204, i64 4606961558108475497, i64 4606997807633245319, i64 4607037932668951391, i64 4607082018078232794, i64 4607130150581978432], double 0x42E8000000000000, [3 x double] [double 0x3FAC6AF84B912394, double 0x3FCEBFCE50FAC4F3, double 0x3FE62E42FF0C52D6], double 0x4338000000000000, double 0x40471547652B82FE, [3 x double] [double 0x3EBC6AF84B912394, double 0x3F2EBFCE50FAC4F3, double 0x3F962E42FF0C52D6] }, align 8
@__powf_log2_data = hidden local_unnamed_addr constant %struct.powf_log2_data { [16 x %struct.anon] [%struct.anon { double 0x3FF661EC79F8F3BE, double 0xBFDEFEC65B963019 }, %struct.anon { double 0x3FF571ED4AAF883D, double 0xBFDB0B6832D4FCA4 }, %struct.anon { double 0x3FF49539F0F010B0, double 0xBFD7418B0A1FB77B }, %struct.anon { double 0x3FF3C995B0B80385, double 0xBFD39DE91A6DCF7B }, %struct.anon { double 0x3FF30D190C8864A5, double 0xBFD01D9BF3F2B631 }, %struct.anon { double 0x3FF25E227B0B8EA0, double 0xBFC97C1D1B3B7AF0 }, %struct.anon { double 0x3FF1BB4A4A1A343F, double 0xBFC2F9E393AF3C9F }, %struct.anon { double 0x3FF12358F08AE5BA, double 0xBFB960CBBF788D5C }, %struct.anon { double 0x3FF0953F419900A7, double 0xBFAA6F9DB6475FCE }, %struct.anon { double 1.000000e+00, double 0.000000e+00 }, %struct.anon { double 0x3FEE608CFD9A47AC, double 0x3FB338CA9F24F53D }, %struct.anon { double 0x3FECA4B31F026AA0, double 0x3FC476A9543891BA }, %struct.anon { double 0x3FEB2036576AFCE6, double 0x3FCE840B4AC4E4D2 }, %struct.anon { double 0x3FE9C2D163A1AA2D, double 0x3FD40645F0C6651C }, %struct.anon { double 0x3FE886E6037841ED, double 0x3FD88E9C2C1B9FF8 }, %struct.anon { double 0x3FE767DCF5534862, double 0x3FDCE0A44EB17BCC }], [5 x double] [double 0x3FD27616C9496E0B, double 0xBFD71969A075C67A, double 0x3FDEC70A6CA7BADD, double 0xBFE7154748BEF6C8, double 0x3FF71547652AB82B] }, align 8

define internal i32 @matmul_dispatch_0_pack_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !14 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !90
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !90
  %6 = load ptr, ptr %5, align 8, !dbg !90
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !90
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !91
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !91
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !91
  %10 = load ptr, ptr %9, align 8, !dbg !91
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !91
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !92
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !92
  %13 = zext i32 %12 to i64, !dbg !92
  %14 = sdiv i64 %13, 2, !dbg !92
  %15 = mul i64 %14, 2, !dbg !92
  %16 = icmp ne i64 %13, %15, !dbg !92
  %17 = icmp slt i64 %13, 0, !dbg !92
  %18 = and i1 %16, %17, !dbg !92
  %19 = add i64 %14, -1, !dbg !92
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !92
  %21 = srem i64 %13, 2, !dbg !92
  %22 = icmp slt i64 %21, 0, !dbg !92
  %23 = add nsw i64 %21, 2, !dbg !92
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !92
  %25 = mul nsw i64 %24, 64, !dbg !92
  br label %26, !dbg !92

26:                                               ; preds = %29, %3
  %27 = phi i64 [ %286, %29 ], [ 0, %3 ], !dbg !92
  %28 = icmp slt i64 %27, 64, !dbg !92
  br i1 %28, label %29, label %287, !dbg !92

29:                                               ; preds = %26
  %30 = add i64 %27, %25, !dbg !92
  %31 = mul nsw i64 %20, 16, !dbg !92
  %32 = mul i64 %31, 128, !dbg !92
  %33 = add i64 %32, %30, !dbg !92
  %34 = getelementptr float, ptr %6, i64 %33, !dbg !92
  %35 = load <16 x float>, ptr %34, align 4, !dbg !92
  %36 = add i64 %31, 1, !dbg !92
  %37 = mul i64 %36, 128, !dbg !92
  %38 = add i64 %37, %30, !dbg !92
  %39 = getelementptr float, ptr %6, i64 %38, !dbg !92
  %40 = load <16 x float>, ptr %39, align 4, !dbg !92
  %41 = add i64 %31, 2, !dbg !92
  %42 = mul i64 %41, 128, !dbg !92
  %43 = add i64 %42, %30, !dbg !92
  %44 = getelementptr float, ptr %6, i64 %43, !dbg !92
  %45 = load <16 x float>, ptr %44, align 4, !dbg !92
  %46 = add i64 %31, 3, !dbg !92
  %47 = mul i64 %46, 128, !dbg !92
  %48 = add i64 %47, %30, !dbg !92
  %49 = getelementptr float, ptr %6, i64 %48, !dbg !92
  %50 = load <16 x float>, ptr %49, align 4, !dbg !92
  %51 = add i64 %31, 4, !dbg !92
  %52 = mul i64 %51, 128, !dbg !92
  %53 = add i64 %52, %30, !dbg !92
  %54 = getelementptr float, ptr %6, i64 %53, !dbg !92
  %55 = load <16 x float>, ptr %54, align 4, !dbg !92
  %56 = add i64 %31, 5, !dbg !92
  %57 = mul i64 %56, 128, !dbg !92
  %58 = add i64 %57, %30, !dbg !92
  %59 = getelementptr float, ptr %6, i64 %58, !dbg !92
  %60 = load <16 x float>, ptr %59, align 4, !dbg !92
  %61 = add i64 %31, 6, !dbg !92
  %62 = mul i64 %61, 128, !dbg !92
  %63 = add i64 %62, %30, !dbg !92
  %64 = getelementptr float, ptr %6, i64 %63, !dbg !92
  %65 = load <16 x float>, ptr %64, align 4, !dbg !92
  %66 = add i64 %31, 7, !dbg !92
  %67 = mul i64 %66, 128, !dbg !92
  %68 = add i64 %67, %30, !dbg !92
  %69 = getelementptr float, ptr %6, i64 %68, !dbg !92
  %70 = load <16 x float>, ptr %69, align 4, !dbg !92
  %71 = add i64 %31, 8, !dbg !92
  %72 = mul i64 %71, 128, !dbg !92
  %73 = add i64 %72, %30, !dbg !92
  %74 = getelementptr float, ptr %6, i64 %73, !dbg !92
  %75 = load <16 x float>, ptr %74, align 4, !dbg !92
  %76 = add i64 %31, 9, !dbg !92
  %77 = mul i64 %76, 128, !dbg !92
  %78 = add i64 %77, %30, !dbg !92
  %79 = getelementptr float, ptr %6, i64 %78, !dbg !92
  %80 = load <16 x float>, ptr %79, align 4, !dbg !92
  %81 = add i64 %31, 10, !dbg !92
  %82 = mul i64 %81, 128, !dbg !92
  %83 = add i64 %82, %30, !dbg !92
  %84 = getelementptr float, ptr %6, i64 %83, !dbg !92
  %85 = load <16 x float>, ptr %84, align 4, !dbg !92
  %86 = add i64 %31, 11, !dbg !92
  %87 = mul i64 %86, 128, !dbg !92
  %88 = add i64 %87, %30, !dbg !92
  %89 = getelementptr float, ptr %6, i64 %88, !dbg !92
  %90 = load <16 x float>, ptr %89, align 4, !dbg !92
  %91 = add i64 %31, 12, !dbg !92
  %92 = mul i64 %91, 128, !dbg !92
  %93 = add i64 %92, %30, !dbg !92
  %94 = getelementptr float, ptr %6, i64 %93, !dbg !92
  %95 = load <16 x float>, ptr %94, align 4, !dbg !92
  %96 = add i64 %31, 13, !dbg !92
  %97 = mul i64 %96, 128, !dbg !92
  %98 = add i64 %97, %30, !dbg !92
  %99 = getelementptr float, ptr %6, i64 %98, !dbg !92
  %100 = load <16 x float>, ptr %99, align 4, !dbg !92
  %101 = add i64 %31, 14, !dbg !92
  %102 = mul i64 %101, 128, !dbg !92
  %103 = add i64 %102, %30, !dbg !92
  %104 = getelementptr float, ptr %6, i64 %103, !dbg !92
  %105 = load <16 x float>, ptr %104, align 4, !dbg !92
  %106 = add i64 %31, 15, !dbg !92
  %107 = mul i64 %106, 128, !dbg !92
  %108 = add i64 %107, %30, !dbg !92
  %109 = getelementptr float, ptr %6, i64 %108, !dbg !92
  %110 = load <16 x float>, ptr %109, align 4, !dbg !92
  %111 = shufflevector <16 x float> %35, <16 x float> %40, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>, !dbg !92
  %112 = shufflevector <16 x float> %35, <16 x float> %40, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>, !dbg !92
  %113 = shufflevector <16 x float> %45, <16 x float> %50, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>, !dbg !92
  %114 = shufflevector <16 x float> %45, <16 x float> %50, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>, !dbg !92
  %115 = shufflevector <16 x float> %55, <16 x float> %60, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>, !dbg !92
  %116 = shufflevector <16 x float> %55, <16 x float> %60, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>, !dbg !92
  %117 = shufflevector <16 x float> %65, <16 x float> %70, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>, !dbg !92
  %118 = shufflevector <16 x float> %65, <16 x float> %70, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>, !dbg !92
  %119 = shufflevector <16 x float> %75, <16 x float> %80, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>, !dbg !92
  %120 = shufflevector <16 x float> %75, <16 x float> %80, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>, !dbg !92
  %121 = shufflevector <16 x float> %85, <16 x float> %90, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>, !dbg !92
  %122 = shufflevector <16 x float> %85, <16 x float> %90, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>, !dbg !92
  %123 = shufflevector <16 x float> %95, <16 x float> %100, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>, !dbg !92
  %124 = shufflevector <16 x float> %95, <16 x float> %100, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>, !dbg !92
  %125 = shufflevector <16 x float> %105, <16 x float> %110, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>, !dbg !92
  %126 = shufflevector <16 x float> %105, <16 x float> %110, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>, !dbg !92
  %127 = shufflevector <16 x float> %111, <16 x float> %113, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>, !dbg !92
  %128 = shufflevector <16 x float> %111, <16 x float> %113, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>, !dbg !92
  %129 = shufflevector <16 x float> %112, <16 x float> %114, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>, !dbg !92
  %130 = shufflevector <16 x float> %112, <16 x float> %114, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>, !dbg !92
  %131 = shufflevector <16 x float> %115, <16 x float> %117, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>, !dbg !92
  %132 = shufflevector <16 x float> %115, <16 x float> %117, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>, !dbg !92
  %133 = shufflevector <16 x float> %116, <16 x float> %118, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>, !dbg !92
  %134 = shufflevector <16 x float> %116, <16 x float> %118, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>, !dbg !92
  %135 = shufflevector <16 x float> %119, <16 x float> %121, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>, !dbg !92
  %136 = shufflevector <16 x float> %119, <16 x float> %121, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>, !dbg !92
  %137 = shufflevector <16 x float> %120, <16 x float> %122, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>, !dbg !92
  %138 = shufflevector <16 x float> %120, <16 x float> %122, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>, !dbg !92
  %139 = shufflevector <16 x float> %123, <16 x float> %125, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>, !dbg !92
  %140 = shufflevector <16 x float> %123, <16 x float> %125, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>, !dbg !92
  %141 = shufflevector <16 x float> %124, <16 x float> %126, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>, !dbg !92
  %142 = shufflevector <16 x float> %124, <16 x float> %126, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>, !dbg !92
  %143 = shufflevector <16 x float> %127, <16 x float> %131, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !92
  %144 = shufflevector <16 x float> %128, <16 x float> %132, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !92
  %145 = shufflevector <16 x float> %129, <16 x float> %133, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !92
  %146 = shufflevector <16 x float> %130, <16 x float> %134, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !92
  %147 = shufflevector <16 x float> %127, <16 x float> %131, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !92
  %148 = shufflevector <16 x float> %128, <16 x float> %132, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !92
  %149 = shufflevector <16 x float> %129, <16 x float> %133, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !92
  %150 = shufflevector <16 x float> %130, <16 x float> %134, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !92
  %151 = shufflevector <16 x float> %135, <16 x float> %139, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !92
  %152 = shufflevector <16 x float> %136, <16 x float> %140, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !92
  %153 = shufflevector <16 x float> %137, <16 x float> %141, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !92
  %154 = shufflevector <16 x float> %138, <16 x float> %142, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !92
  %155 = shufflevector <16 x float> %135, <16 x float> %139, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !92
  %156 = shufflevector <16 x float> %136, <16 x float> %140, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !92
  %157 = shufflevector <16 x float> %137, <16 x float> %141, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !92
  %158 = shufflevector <16 x float> %138, <16 x float> %142, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !92
  %159 = shufflevector <16 x float> %143, <16 x float> %151, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !92
  %160 = shufflevector <16 x float> %144, <16 x float> %152, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !92
  %161 = shufflevector <16 x float> %145, <16 x float> %153, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !92
  %162 = shufflevector <16 x float> %146, <16 x float> %154, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !92
  %163 = shufflevector <16 x float> %147, <16 x float> %155, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !92
  %164 = shufflevector <16 x float> %148, <16 x float> %156, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !92
  %165 = shufflevector <16 x float> %149, <16 x float> %157, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !92
  %166 = shufflevector <16 x float> %150, <16 x float> %158, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>, !dbg !92
  %167 = shufflevector <16 x float> %143, <16 x float> %151, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !92
  %168 = shufflevector <16 x float> %144, <16 x float> %152, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !92
  %169 = shufflevector <16 x float> %145, <16 x float> %153, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !92
  %170 = shufflevector <16 x float> %146, <16 x float> %154, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !92
  %171 = shufflevector <16 x float> %147, <16 x float> %155, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !92
  %172 = shufflevector <16 x float> %148, <16 x float> %156, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !92
  %173 = shufflevector <16 x float> %149, <16 x float> %157, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !92
  %174 = shufflevector <16 x float> %150, <16 x float> %158, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>, !dbg !92
  %175 = mul i64 %20, 2048, !dbg !92
  %176 = mul i64 %30, 16, !dbg !92
  %177 = add i64 %175, %176, !dbg !92
  %178 = add i64 %177, 0, !dbg !92
  %179 = add i64 %178, 0, !dbg !92
  %180 = getelementptr float, ptr %10, i64 %179, !dbg !92
  store <16 x float> %159, ptr %180, align 4, !dbg !92
  %181 = add i64 %27, 1, !dbg !92
  %182 = add i64 %25, %181, !dbg !92
  %183 = mul i64 %182, 16, !dbg !92
  %184 = add i64 %175, %183, !dbg !92
  %185 = add i64 %184, 0, !dbg !92
  %186 = add i64 %185, 0, !dbg !92
  %187 = getelementptr float, ptr %10, i64 %186, !dbg !92
  store <16 x float> %160, ptr %187, align 4, !dbg !92
  %188 = add i64 %27, 2, !dbg !92
  %189 = add i64 %25, %188, !dbg !92
  %190 = mul i64 %189, 16, !dbg !92
  %191 = add i64 %175, %190, !dbg !92
  %192 = add i64 %191, 0, !dbg !92
  %193 = add i64 %192, 0, !dbg !92
  %194 = getelementptr float, ptr %10, i64 %193, !dbg !92
  store <16 x float> %161, ptr %194, align 4, !dbg !92
  %195 = add i64 %27, 3, !dbg !92
  %196 = add i64 %25, %195, !dbg !92
  %197 = mul i64 %196, 16, !dbg !92
  %198 = add i64 %175, %197, !dbg !92
  %199 = add i64 %198, 0, !dbg !92
  %200 = add i64 %199, 0, !dbg !92
  %201 = getelementptr float, ptr %10, i64 %200, !dbg !92
  store <16 x float> %162, ptr %201, align 4, !dbg !92
  %202 = add i64 %27, 4, !dbg !92
  %203 = add i64 %25, %202, !dbg !92
  %204 = mul i64 %203, 16, !dbg !92
  %205 = add i64 %175, %204, !dbg !92
  %206 = add i64 %205, 0, !dbg !92
  %207 = add i64 %206, 0, !dbg !92
  %208 = getelementptr float, ptr %10, i64 %207, !dbg !92
  store <16 x float> %163, ptr %208, align 4, !dbg !92
  %209 = add i64 %27, 5, !dbg !92
  %210 = add i64 %25, %209, !dbg !92
  %211 = mul i64 %210, 16, !dbg !92
  %212 = add i64 %175, %211, !dbg !92
  %213 = add i64 %212, 0, !dbg !92
  %214 = add i64 %213, 0, !dbg !92
  %215 = getelementptr float, ptr %10, i64 %214, !dbg !92
  store <16 x float> %164, ptr %215, align 4, !dbg !92
  %216 = add i64 %27, 6, !dbg !92
  %217 = add i64 %25, %216, !dbg !92
  %218 = mul i64 %217, 16, !dbg !92
  %219 = add i64 %175, %218, !dbg !92
  %220 = add i64 %219, 0, !dbg !92
  %221 = add i64 %220, 0, !dbg !92
  %222 = getelementptr float, ptr %10, i64 %221, !dbg !92
  store <16 x float> %165, ptr %222, align 4, !dbg !92
  %223 = add i64 %27, 7, !dbg !92
  %224 = add i64 %25, %223, !dbg !92
  %225 = mul i64 %224, 16, !dbg !92
  %226 = add i64 %175, %225, !dbg !92
  %227 = add i64 %226, 0, !dbg !92
  %228 = add i64 %227, 0, !dbg !92
  %229 = getelementptr float, ptr %10, i64 %228, !dbg !92
  store <16 x float> %166, ptr %229, align 4, !dbg !92
  %230 = add i64 %27, 8, !dbg !92
  %231 = add i64 %25, %230, !dbg !92
  %232 = mul i64 %231, 16, !dbg !92
  %233 = add i64 %175, %232, !dbg !92
  %234 = add i64 %233, 0, !dbg !92
  %235 = add i64 %234, 0, !dbg !92
  %236 = getelementptr float, ptr %10, i64 %235, !dbg !92
  store <16 x float> %167, ptr %236, align 4, !dbg !92
  %237 = add i64 %27, 9, !dbg !92
  %238 = add i64 %25, %237, !dbg !92
  %239 = mul i64 %238, 16, !dbg !92
  %240 = add i64 %175, %239, !dbg !92
  %241 = add i64 %240, 0, !dbg !92
  %242 = add i64 %241, 0, !dbg !92
  %243 = getelementptr float, ptr %10, i64 %242, !dbg !92
  store <16 x float> %168, ptr %243, align 4, !dbg !92
  %244 = add i64 %27, 10, !dbg !92
  %245 = add i64 %25, %244, !dbg !92
  %246 = mul i64 %245, 16, !dbg !92
  %247 = add i64 %175, %246, !dbg !92
  %248 = add i64 %247, 0, !dbg !92
  %249 = add i64 %248, 0, !dbg !92
  %250 = getelementptr float, ptr %10, i64 %249, !dbg !92
  store <16 x float> %169, ptr %250, align 4, !dbg !92
  %251 = add i64 %27, 11, !dbg !92
  %252 = add i64 %25, %251, !dbg !92
  %253 = mul i64 %252, 16, !dbg !92
  %254 = add i64 %175, %253, !dbg !92
  %255 = add i64 %254, 0, !dbg !92
  %256 = add i64 %255, 0, !dbg !92
  %257 = getelementptr float, ptr %10, i64 %256, !dbg !92
  store <16 x float> %170, ptr %257, align 4, !dbg !92
  %258 = add i64 %27, 12, !dbg !92
  %259 = add i64 %25, %258, !dbg !92
  %260 = mul i64 %259, 16, !dbg !92
  %261 = add i64 %175, %260, !dbg !92
  %262 = add i64 %261, 0, !dbg !92
  %263 = add i64 %262, 0, !dbg !92
  %264 = getelementptr float, ptr %10, i64 %263, !dbg !92
  store <16 x float> %171, ptr %264, align 4, !dbg !92
  %265 = add i64 %27, 13, !dbg !92
  %266 = add i64 %25, %265, !dbg !92
  %267 = mul i64 %266, 16, !dbg !92
  %268 = add i64 %175, %267, !dbg !92
  %269 = add i64 %268, 0, !dbg !92
  %270 = add i64 %269, 0, !dbg !92
  %271 = getelementptr float, ptr %10, i64 %270, !dbg !92
  store <16 x float> %172, ptr %271, align 4, !dbg !92
  %272 = add i64 %27, 14, !dbg !92
  %273 = add i64 %25, %272, !dbg !92
  %274 = mul i64 %273, 16, !dbg !92
  %275 = add i64 %175, %274, !dbg !92
  %276 = add i64 %275, 0, !dbg !92
  %277 = add i64 %276, 0, !dbg !92
  %278 = getelementptr float, ptr %10, i64 %277, !dbg !92
  store <16 x float> %173, ptr %278, align 4, !dbg !92
  %279 = add i64 %27, 15, !dbg !92
  %280 = add i64 %25, %279, !dbg !92
  %281 = mul i64 %280, 16, !dbg !92
  %282 = add i64 %175, %281, !dbg !92
  %283 = add i64 %282, 0, !dbg !92
  %284 = add i64 %283, 0, !dbg !92
  %285 = getelementptr float, ptr %10, i64 %284, !dbg !92
  store <16 x float> %174, ptr %285, align 4, !dbg !92
  %286 = add i64 %27, 16, !dbg !92
  br label %26, !dbg !92

287:                                              ; preds = %26
  ret i32 0, !dbg !93
}

define internal i32 @matmul_dispatch_1_pack_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !94 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !95
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !95
  %6 = load ptr, ptr %5, align 8, !dbg !95
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !95
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !96
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !96
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !96
  %10 = load ptr, ptr %9, align 8, !dbg !96
  %11 = getelementptr float, ptr %10, i64 16384, !dbg !96
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !96
  %12 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !97
  %13 = extractvalue %iree_hal_executable_workgroup_state_v0_t %12, 0, !dbg !97
  %14 = zext i32 %13 to i64, !dbg !97
  %15 = sdiv i64 %14, 32, !dbg !97
  %16 = mul i64 %15, 32, !dbg !97
  %17 = icmp ne i64 %14, %16, !dbg !97
  %18 = icmp slt i64 %14, 0, !dbg !97
  %19 = and i1 %17, %18, !dbg !97
  %20 = add i64 %15, -1, !dbg !97
  %21 = select i1 %19, i64 %20, i64 %15, !dbg !97
  %22 = srem i64 %14, 32, !dbg !97
  %23 = icmp slt i64 %22, 0, !dbg !97
  %24 = add nsw i64 %22, 32, !dbg !97
  %25 = select i1 %23, i64 %24, i64 %22, !dbg !97
  %26 = mul nsw i64 %25, 4, !dbg !97
  %27 = mul nsw i64 %21, 16, !dbg !97
  br label %28, !dbg !97

28:                                               ; preds = %31, %3
  %29 = phi i64 [ %43, %31 ], [ 0, %3 ], !dbg !97
  %30 = icmp slt i64 %29, 4, !dbg !97
  br i1 %30, label %31, label %44, !dbg !97

31:                                               ; preds = %28
  %32 = add i64 %29, %26, !dbg !97
  %33 = mul i64 %32, 128, !dbg !97
  %34 = add i64 %33, %27, !dbg !97
  %35 = getelementptr float, ptr %6, i64 %34, !dbg !97
  %36 = load <16 x float>, ptr %35, align 4, !dbg !97
  %37 = mul i64 %21, 2048, !dbg !97
  %38 = mul i64 %32, 16, !dbg !97
  %39 = add i64 %37, %38, !dbg !97
  %40 = add i64 %39, 0, !dbg !97
  %41 = add i64 %40, 0, !dbg !97
  %42 = getelementptr float, ptr %11, i64 %41, !dbg !97
  store <16 x float> %36, ptr %42, align 4, !dbg !97
  %43 = add i64 %29, 1, !dbg !97
  br label %28, !dbg !97

44:                                               ; preds = %28
  ret i32 0, !dbg !98
}

define internal i32 @matmul_dispatch_2_mmt4d_8x8x128x16x16x1_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !99 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !100
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !100
  %6 = load ptr, ptr %5, align 8, !dbg !100
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !100
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !101
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !101
  %9 = load ptr, ptr %8, align 8, !dbg !101
  %10 = getelementptr float, ptr %9, i64 16384, !dbg !101
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !101
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !102
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !102
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !102
  %14 = load ptr, ptr %13, align 8, !dbg !102
  %15 = getelementptr float, ptr %14, i64 32768, !dbg !102
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !102
  br label %16, !dbg !103

16:                                               ; preds = %251, %3
  %17 = phi i64 [ %252, %251 ], [ 0, %3 ], !dbg !103
  %18 = icmp slt i64 %17, 8, !dbg !103
  br i1 %18, label %19, label %253, !dbg !103

19:                                               ; preds = %182, %16
  %20 = phi i64 [ %250, %182 ], [ 0, %16 ], !dbg !103
  %21 = icmp slt i64 %20, 8, !dbg !103
  br i1 %21, label %22, label %251, !dbg !103

22:                                               ; preds = %26, %19
  %23 = phi i64 [ %181, %26 ], [ 0, %19 ], !dbg !103
  %24 = phi [16 x <16 x float>] [ %180, %26 ], [ zeroinitializer, %19 ], !dbg !103
  %25 = icmp slt i64 %23, 128, !dbg !103
  br i1 %25, label %26, label %182, !dbg !103

26:                                               ; preds = %22
  %27 = mul i64 %20, 2048, !dbg !103
  %28 = mul i64 %23, 16, !dbg !103
  %29 = add i64 %27, %28, !dbg !103
  %30 = add i64 %29, 0, !dbg !103
  %31 = add i64 %30, 0, !dbg !103
  %32 = getelementptr float, ptr %10, i64 %31, !dbg !103
  %33 = load <16 x float>, ptr %32, align 4, !dbg !103
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
  %181 = add i64 %23, 1, !dbg !103
  br label %22, !dbg !103

182:                                              ; preds = %22
  %183 = extractvalue [16 x <16 x float>] %24, 0, !dbg !103
  %184 = mul i64 %17, 2048, !dbg !103
  %185 = mul i64 %20, 256, !dbg !103
  %186 = add i64 %184, %185, !dbg !103
  %187 = add i64 %186, 0, !dbg !103
  %188 = add i64 %187, 0, !dbg !103
  %189 = getelementptr float, ptr %15, i64 %188, !dbg !103
  store <16 x float> %183, ptr %189, align 4, !dbg !103
  %190 = extractvalue [16 x <16 x float>] %24, 1, !dbg !103
  %191 = add i64 %186, 16, !dbg !103
  %192 = add i64 %191, 0, !dbg !103
  %193 = getelementptr float, ptr %15, i64 %192, !dbg !103
  store <16 x float> %190, ptr %193, align 4, !dbg !103
  %194 = extractvalue [16 x <16 x float>] %24, 2, !dbg !103
  %195 = add i64 %186, 32, !dbg !103
  %196 = add i64 %195, 0, !dbg !103
  %197 = getelementptr float, ptr %15, i64 %196, !dbg !103
  store <16 x float> %194, ptr %197, align 4, !dbg !103
  %198 = extractvalue [16 x <16 x float>] %24, 3, !dbg !103
  %199 = add i64 %186, 48, !dbg !103
  %200 = add i64 %199, 0, !dbg !103
  %201 = getelementptr float, ptr %15, i64 %200, !dbg !103
  store <16 x float> %198, ptr %201, align 4, !dbg !103
  %202 = extractvalue [16 x <16 x float>] %24, 4, !dbg !103
  %203 = add i64 %186, 64, !dbg !103
  %204 = add i64 %203, 0, !dbg !103
  %205 = getelementptr float, ptr %15, i64 %204, !dbg !103
  store <16 x float> %202, ptr %205, align 4, !dbg !103
  %206 = extractvalue [16 x <16 x float>] %24, 5, !dbg !103
  %207 = add i64 %186, 80, !dbg !103
  %208 = add i64 %207, 0, !dbg !103
  %209 = getelementptr float, ptr %15, i64 %208, !dbg !103
  store <16 x float> %206, ptr %209, align 4, !dbg !103
  %210 = extractvalue [16 x <16 x float>] %24, 6, !dbg !103
  %211 = add i64 %186, 96, !dbg !103
  %212 = add i64 %211, 0, !dbg !103
  %213 = getelementptr float, ptr %15, i64 %212, !dbg !103
  store <16 x float> %210, ptr %213, align 4, !dbg !103
  %214 = extractvalue [16 x <16 x float>] %24, 7, !dbg !103
  %215 = add i64 %186, 112, !dbg !103
  %216 = add i64 %215, 0, !dbg !103
  %217 = getelementptr float, ptr %15, i64 %216, !dbg !103
  store <16 x float> %214, ptr %217, align 4, !dbg !103
  %218 = extractvalue [16 x <16 x float>] %24, 8, !dbg !103
  %219 = add i64 %186, 128, !dbg !103
  %220 = add i64 %219, 0, !dbg !103
  %221 = getelementptr float, ptr %15, i64 %220, !dbg !103
  store <16 x float> %218, ptr %221, align 4, !dbg !103
  %222 = extractvalue [16 x <16 x float>] %24, 9, !dbg !103
  %223 = add i64 %186, 144, !dbg !103
  %224 = add i64 %223, 0, !dbg !103
  %225 = getelementptr float, ptr %15, i64 %224, !dbg !103
  store <16 x float> %222, ptr %225, align 4, !dbg !103
  %226 = extractvalue [16 x <16 x float>] %24, 10, !dbg !103
  %227 = add i64 %186, 160, !dbg !103
  %228 = add i64 %227, 0, !dbg !103
  %229 = getelementptr float, ptr %15, i64 %228, !dbg !103
  store <16 x float> %226, ptr %229, align 4, !dbg !103
  %230 = extractvalue [16 x <16 x float>] %24, 11, !dbg !103
  %231 = add i64 %186, 176, !dbg !103
  %232 = add i64 %231, 0, !dbg !103
  %233 = getelementptr float, ptr %15, i64 %232, !dbg !103
  store <16 x float> %230, ptr %233, align 4, !dbg !103
  %234 = extractvalue [16 x <16 x float>] %24, 12, !dbg !103
  %235 = add i64 %186, 192, !dbg !103
  %236 = add i64 %235, 0, !dbg !103
  %237 = getelementptr float, ptr %15, i64 %236, !dbg !103
  store <16 x float> %234, ptr %237, align 4, !dbg !103
  %238 = extractvalue [16 x <16 x float>] %24, 13, !dbg !103
  %239 = add i64 %186, 208, !dbg !103
  %240 = add i64 %239, 0, !dbg !103
  %241 = getelementptr float, ptr %15, i64 %240, !dbg !103
  store <16 x float> %238, ptr %241, align 4, !dbg !103
  %242 = extractvalue [16 x <16 x float>] %24, 14, !dbg !103
  %243 = add i64 %186, 224, !dbg !103
  %244 = add i64 %243, 0, !dbg !103
  %245 = getelementptr float, ptr %15, i64 %244, !dbg !103
  store <16 x float> %242, ptr %245, align 4, !dbg !103
  %246 = extractvalue [16 x <16 x float>] %24, 15, !dbg !103
  %247 = add i64 %186, 240, !dbg !103
  %248 = add i64 %247, 0, !dbg !103
  %249 = getelementptr float, ptr %15, i64 %248, !dbg !103
  store <16 x float> %246, ptr %249, align 4, !dbg !103
  %250 = add i64 %20, 1, !dbg !103
  br label %19, !dbg !103

251:                                              ; preds = %19
  %252 = add i64 %17, 1, !dbg !103
  br label %16, !dbg !103

253:                                              ; preds = %16
  ret i32 0, !dbg !104
}

define internal i32 @matmul_dispatch_3_unpack_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !105 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !106
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !106
  %6 = load ptr, ptr %5, align 8, !dbg !106
  %7 = getelementptr float, ptr %6, i64 32768, !dbg !106
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !106
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !107
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !107
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !107
  %11 = load ptr, ptr %10, align 8, !dbg !107
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !107
  %12 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !108
  %13 = extractvalue %iree_hal_executable_workgroup_state_v0_t %12, 0, !dbg !108
  %14 = zext i32 %13 to i64, !dbg !108
  %15 = sdiv i64 %14, 2, !dbg !108
  %16 = mul i64 %15, 2, !dbg !108
  %17 = icmp ne i64 %14, %16, !dbg !108
  %18 = icmp slt i64 %14, 0, !dbg !108
  %19 = and i1 %17, %18, !dbg !108
  %20 = add i64 %15, -1, !dbg !108
  %21 = select i1 %19, i64 %20, i64 %15, !dbg !108
  %22 = srem i64 %14, 2, !dbg !108
  %23 = icmp slt i64 %22, 0, !dbg !108
  %24 = add nsw i64 %22, 2, !dbg !108
  %25 = select i1 %23, i64 %24, i64 %22, !dbg !108
  %26 = mul nsw i64 %21, 16, !dbg !108
  %27 = mul nsw i64 %25, 64, !dbg !108
  %28 = icmp slt i64 %26, 0, !dbg !108
  %29 = sub i64 -1, %26, !dbg !108
  %30 = select i1 %28, i64 %29, i64 %26, !dbg !108
  %31 = sdiv i64 %30, 16, !dbg !108
  %32 = sub i64 -1, %31, !dbg !108
  %33 = select i1 %28, i64 %32, i64 %31, !dbg !108
  %34 = icmp slt i64 %27, 0, !dbg !108
  %35 = sub i64 -1, %27, !dbg !108
  %36 = select i1 %34, i64 %35, i64 %27, !dbg !108
  %37 = sdiv i64 %36, 16, !dbg !108
  %38 = sub i64 -1, %37, !dbg !108
  %39 = select i1 %34, i64 %38, i64 %37, !dbg !108
  br label %40, !dbg !108

40:                                               ; preds = %43, %3
  %41 = phi i64 [ %182, %43 ], [ 0, %3 ], !dbg !108
  %42 = icmp slt i64 %41, 64, !dbg !108
  br i1 %42, label %43, label %183, !dbg !108

43:                                               ; preds = %40
  %44 = icmp slt i64 %41, 0, !dbg !108
  %45 = sub i64 -1, %41, !dbg !108
  %46 = select i1 %44, i64 %45, i64 %41, !dbg !108
  %47 = sdiv i64 %46, 16, !dbg !108
  %48 = sub i64 -1, %47, !dbg !108
  %49 = select i1 %44, i64 %48, i64 %47, !dbg !108
  %50 = add i64 %49, %39, !dbg !108
  %51 = mul i64 %33, 2048, !dbg !108
  %52 = mul i64 %50, 256, !dbg !108
  %53 = add i64 %51, %52, !dbg !108
  %54 = add i64 %53, 0, !dbg !108
  %55 = add i64 %54, 0, !dbg !108
  %56 = getelementptr float, ptr %7, i64 %55, !dbg !108
  %57 = load <16 x float>, ptr %56, align 4, !dbg !108
  %58 = add i64 %53, 16, !dbg !108
  %59 = add i64 %58, 0, !dbg !108
  %60 = getelementptr float, ptr %7, i64 %59, !dbg !108
  %61 = load <16 x float>, ptr %60, align 4, !dbg !108
  %62 = add i64 %53, 32, !dbg !108
  %63 = add i64 %62, 0, !dbg !108
  %64 = getelementptr float, ptr %7, i64 %63, !dbg !108
  %65 = load <16 x float>, ptr %64, align 4, !dbg !108
  %66 = add i64 %53, 48, !dbg !108
  %67 = add i64 %66, 0, !dbg !108
  %68 = getelementptr float, ptr %7, i64 %67, !dbg !108
  %69 = load <16 x float>, ptr %68, align 4, !dbg !108
  %70 = add i64 %53, 64, !dbg !108
  %71 = add i64 %70, 0, !dbg !108
  %72 = getelementptr float, ptr %7, i64 %71, !dbg !108
  %73 = load <16 x float>, ptr %72, align 4, !dbg !108
  %74 = add i64 %53, 80, !dbg !108
  %75 = add i64 %74, 0, !dbg !108
  %76 = getelementptr float, ptr %7, i64 %75, !dbg !108
  %77 = load <16 x float>, ptr %76, align 4, !dbg !108
  %78 = add i64 %53, 96, !dbg !108
  %79 = add i64 %78, 0, !dbg !108
  %80 = getelementptr float, ptr %7, i64 %79, !dbg !108
  %81 = load <16 x float>, ptr %80, align 4, !dbg !108
  %82 = add i64 %53, 112, !dbg !108
  %83 = add i64 %82, 0, !dbg !108
  %84 = getelementptr float, ptr %7, i64 %83, !dbg !108
  %85 = load <16 x float>, ptr %84, align 4, !dbg !108
  %86 = add i64 %53, 128, !dbg !108
  %87 = add i64 %86, 0, !dbg !108
  %88 = getelementptr float, ptr %7, i64 %87, !dbg !108
  %89 = load <16 x float>, ptr %88, align 4, !dbg !108
  %90 = add i64 %53, 144, !dbg !108
  %91 = add i64 %90, 0, !dbg !108
  %92 = getelementptr float, ptr %7, i64 %91, !dbg !108
  %93 = load <16 x float>, ptr %92, align 4, !dbg !108
  %94 = add i64 %53, 160, !dbg !108
  %95 = add i64 %94, 0, !dbg !108
  %96 = getelementptr float, ptr %7, i64 %95, !dbg !108
  %97 = load <16 x float>, ptr %96, align 4, !dbg !108
  %98 = add i64 %53, 176, !dbg !108
  %99 = add i64 %98, 0, !dbg !108
  %100 = getelementptr float, ptr %7, i64 %99, !dbg !108
  %101 = load <16 x float>, ptr %100, align 4, !dbg !108
  %102 = add i64 %53, 192, !dbg !108
  %103 = add i64 %102, 0, !dbg !108
  %104 = getelementptr float, ptr %7, i64 %103, !dbg !108
  %105 = load <16 x float>, ptr %104, align 4, !dbg !108
  %106 = add i64 %53, 208, !dbg !108
  %107 = add i64 %106, 0, !dbg !108
  %108 = getelementptr float, ptr %7, i64 %107, !dbg !108
  %109 = load <16 x float>, ptr %108, align 4, !dbg !108
  %110 = add i64 %53, 224, !dbg !108
  %111 = add i64 %110, 0, !dbg !108
  %112 = getelementptr float, ptr %7, i64 %111, !dbg !108
  %113 = load <16 x float>, ptr %112, align 4, !dbg !108
  %114 = add i64 %53, 240, !dbg !108
  %115 = add i64 %114, 0, !dbg !108
  %116 = getelementptr float, ptr %7, i64 %115, !dbg !108
  %117 = load <16 x float>, ptr %116, align 4, !dbg !108
  %118 = add i64 %27, %41, !dbg !108
  %119 = mul i64 %26, 128, !dbg !108
  %120 = add i64 %119, %118, !dbg !108
  %121 = getelementptr float, ptr %11, i64 %120, !dbg !108
  store <16 x float> %57, ptr %121, align 4, !dbg !108
  %122 = add i64 %26, 1, !dbg !108
  %123 = mul i64 %122, 128, !dbg !108
  %124 = add i64 %123, %118, !dbg !108
  %125 = getelementptr float, ptr %11, i64 %124, !dbg !108
  store <16 x float> %61, ptr %125, align 4, !dbg !108
  %126 = add i64 %26, 2, !dbg !108
  %127 = mul i64 %126, 128, !dbg !108
  %128 = add i64 %127, %118, !dbg !108
  %129 = getelementptr float, ptr %11, i64 %128, !dbg !108
  store <16 x float> %65, ptr %129, align 4, !dbg !108
  %130 = add i64 %26, 3, !dbg !108
  %131 = mul i64 %130, 128, !dbg !108
  %132 = add i64 %131, %118, !dbg !108
  %133 = getelementptr float, ptr %11, i64 %132, !dbg !108
  store <16 x float> %69, ptr %133, align 4, !dbg !108
  %134 = add i64 %26, 4, !dbg !108
  %135 = mul i64 %134, 128, !dbg !108
  %136 = add i64 %135, %118, !dbg !108
  %137 = getelementptr float, ptr %11, i64 %136, !dbg !108
  store <16 x float> %73, ptr %137, align 4, !dbg !108
  %138 = add i64 %26, 5, !dbg !108
  %139 = mul i64 %138, 128, !dbg !108
  %140 = add i64 %139, %118, !dbg !108
  %141 = getelementptr float, ptr %11, i64 %140, !dbg !108
  store <16 x float> %77, ptr %141, align 4, !dbg !108
  %142 = add i64 %26, 6, !dbg !108
  %143 = mul i64 %142, 128, !dbg !108
  %144 = add i64 %143, %118, !dbg !108
  %145 = getelementptr float, ptr %11, i64 %144, !dbg !108
  store <16 x float> %81, ptr %145, align 4, !dbg !108
  %146 = add i64 %26, 7, !dbg !108
  %147 = mul i64 %146, 128, !dbg !108
  %148 = add i64 %147, %118, !dbg !108
  %149 = getelementptr float, ptr %11, i64 %148, !dbg !108
  store <16 x float> %85, ptr %149, align 4, !dbg !108
  %150 = add i64 %26, 8, !dbg !108
  %151 = mul i64 %150, 128, !dbg !108
  %152 = add i64 %151, %118, !dbg !108
  %153 = getelementptr float, ptr %11, i64 %152, !dbg !108
  store <16 x float> %89, ptr %153, align 4, !dbg !108
  %154 = add i64 %26, 9, !dbg !108
  %155 = mul i64 %154, 128, !dbg !108
  %156 = add i64 %155, %118, !dbg !108
  %157 = getelementptr float, ptr %11, i64 %156, !dbg !108
  store <16 x float> %93, ptr %157, align 4, !dbg !108
  %158 = add i64 %26, 10, !dbg !108
  %159 = mul i64 %158, 128, !dbg !108
  %160 = add i64 %159, %118, !dbg !108
  %161 = getelementptr float, ptr %11, i64 %160, !dbg !108
  store <16 x float> %97, ptr %161, align 4, !dbg !108
  %162 = add i64 %26, 11, !dbg !108
  %163 = mul i64 %162, 128, !dbg !108
  %164 = add i64 %163, %118, !dbg !108
  %165 = getelementptr float, ptr %11, i64 %164, !dbg !108
  store <16 x float> %101, ptr %165, align 4, !dbg !108
  %166 = add i64 %26, 12, !dbg !108
  %167 = mul i64 %166, 128, !dbg !108
  %168 = add i64 %167, %118, !dbg !108
  %169 = getelementptr float, ptr %11, i64 %168, !dbg !108
  store <16 x float> %105, ptr %169, align 4, !dbg !108
  %170 = add i64 %26, 13, !dbg !108
  %171 = mul i64 %170, 128, !dbg !108
  %172 = add i64 %171, %118, !dbg !108
  %173 = getelementptr float, ptr %11, i64 %172, !dbg !108
  store <16 x float> %109, ptr %173, align 4, !dbg !108
  %174 = add i64 %26, 14, !dbg !108
  %175 = mul i64 %174, 128, !dbg !108
  %176 = add i64 %175, %118, !dbg !108
  %177 = getelementptr float, ptr %11, i64 %176, !dbg !108
  store <16 x float> %113, ptr %177, align 4, !dbg !108
  %178 = add i64 %26, 15, !dbg !108
  %179 = mul i64 %178, 128, !dbg !108
  %180 = add i64 %179, %118, !dbg !108
  %181 = getelementptr float, ptr %11, i64 %180, !dbg !108
  store <16 x float> %117, ptr %181, align 4, !dbg !108
  %182 = add i64 %41, 16, !dbg !108
  br label %40, !dbg !108

183:                                              ; preds = %40
  ret i32 0, !dbg !109
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden float @iree_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #4 {
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
define hidden signext i16 @iree_f2h_ieee(float noundef %0) local_unnamed_addr #4 {
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
  %26 = add nsw i32 %25, 15360
  %27 = lshr i32 %21, 13
  %28 = select i1 %22, i32 0, i32 %27
  %29 = add nuw nsw i32 %26, %28
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
define hidden float @__gnu_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #4 {
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
define hidden float @__extendhfsf2(float noundef %0) local_unnamed_addr #4 {
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
define hidden signext i16 @__gnu_f2h_ieee(float noundef %0) local_unnamed_addr #4 {
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
define hidden float @__truncsfhf2(float noundef %0) local_unnamed_addr #4 {
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
  %30 = add nsw i32 %29, %26
  br label %31

31:                                               ; preds = %18, %16, %13, %8, %1
  %32 = phi i32 [ 31744, %8 ], [ %4, %1 ], [ %30, %18 ], [ 31744, %13 ], [ 0, %16 ]
  %33 = or i32 %32, %7
  %34 = trunc i32 %33 to i16
  br label %35

35:                                               ; preds = %10, %31
  %36 = phi i16 [ %12, %10 ], [ %34, %31 ]
  store i16 %36, ptr %2, align 4, !tbaa !110
  %37 = load float, ptr %2, align 4, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret float %37
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden double @__extendhfdf2(float noundef %0) local_unnamed_addr #4 {
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
define hidden float @__truncdfhf2(double noundef %0) local_unnamed_addr #4 {
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
  store i16 %37, ptr %2, align 4, !tbaa !110
  %38 = load float, ptr %2, align 4, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret float %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden noundef double @fma(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #4 {
  %4 = tail call double @llvm.fmuladd.f64(double %0, double %1, double %2)
  ret double %4
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: inlinehint
define hidden noundef float @__math_invalidf(float noundef %0) local_unnamed_addr #7 {
  %2 = fsub float %0, %0
  %3 = fdiv float %2, %2
  ret float %3
}

; Function Attrs: inlinehint
define hidden float @__math_oflowf(i32 noundef %0) local_unnamed_addr #7 {
  %2 = tail call float @__math_xflowf(i32 noundef %0, float noundef 0x4600000000000000) #7
  ret float %2
}

; Function Attrs: inlinehint
define hidden float @__math_xflowf(i32 noundef %0, float noundef %1) local_unnamed_addr #7 {
  %3 = alloca float, align 4
  %.not = icmp eq i32 %0, 0
  %4 = fneg float %1
  %5 = select i1 %.not, float %1, float %4
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store volatile float %5, ptr %3, align 4, !tbaa !112
  %.0..0..0..0..0..0..i = load volatile float, ptr %3, align 4, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %6 = fmul float %1, %.0..0..0..0..0..0..i
  ret float %6
}

; Function Attrs: inlinehint
define hidden float @__math_uflowf(i32 noundef %0) local_unnamed_addr #7 {
  %2 = tail call float @__math_xflowf(i32 noundef %0, float noundef 0x3A00000000000000) #7
  ret float %2
}

; Function Attrs: inlinehint
define hidden float @ceilf(float noundef %0) local_unnamed_addr #7 {
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
  store volatile float %16, ptr %3, align 4, !tbaa !112
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
  store volatile float %24, ptr %2, align 4, !tbaa !112
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

; Function Attrs: inlinehint
define hidden float @expf(float noundef %0) local_unnamed_addr #7 {
  %2 = fpext float %0 to double
  %3 = bitcast float %0 to i32
  %4 = lshr i32 %3, 20
  %5 = and i32 %4, 2047
  %.not = icmp samesign ult i32 %5, 1067
  br i1 %.not, label %19, label %6, !prof !114

6:                                                ; preds = %1
  %7 = fcmp oeq float %0, 0xFFF0000000000000
  br i1 %7, label %42, label %8

8:                                                ; preds = %6
  %.not34 = icmp samesign ult i32 %5, 2040
  br i1 %.not34, label %11, label %9

9:                                                ; preds = %8
  %10 = fadd float %0, %0
  br label %42

11:                                               ; preds = %8
  %12 = fcmp ogt float %0, 0x40562E42E0000000
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = tail call float @__math_oflowf(i32 noundef 0) #7
  br label %42

15:                                               ; preds = %11
  %16 = fcmp olt float %0, 0xC059FE3680000000
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = tail call float @__math_uflowf(i32 noundef 0) #7
  br label %42

19:                                               ; preds = %15, %1
  %20 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 296), align 8, !tbaa !115
  %21 = fmul double %20, %2
  %22 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 288), align 8, !tbaa !118
  %23 = fadd double %21, %22
  %24 = bitcast double %23 to i64
  %25 = fsub double %23, %22
  %26 = fsub double %21, %25
  %27 = and i64 %24, 31
  %28 = getelementptr inbounds nuw i64, ptr @__exp2f_data, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !119
  %30 = shl i64 %24, 47
  %31 = add i64 %30, %29
  %32 = bitcast i64 %31 to double
  %33 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 304), align 8, !tbaa !121
  %34 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 312), align 8, !tbaa !121
  %35 = tail call double @llvm.fmuladd.f64(double %33, double %26, double %34)
  %36 = fmul double %26, %26
  %37 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 320), align 8, !tbaa !121
  %38 = tail call double @llvm.fmuladd.f64(double %37, double %26, double 1.000000e+00)
  %39 = tail call double @llvm.fmuladd.f64(double %35, double %36, double %38)
  %40 = fmul double %39, %32
  %41 = fptrunc double %40 to float
  br label %42

42:                                               ; preds = %19, %17, %13, %9, %6
  %.0 = phi float [ %10, %9 ], [ %14, %13 ], [ %18, %17 ], [ %41, %19 ], [ 0.000000e+00, %6 ]
  ret float %.0
}

; Function Attrs: inlinehint
define hidden noundef i32 @feclearexcept(i32 noundef %0) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @feraiseexcept(i32 noundef %0) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @fetestexcept(i32 noundef %0) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @fegetround() local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @__fesetround(i32 noundef %0) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @fegetenv(ptr noundef readnone captures(none) %0) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @fesetenv(ptr noundef readnone captures(none) %0) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden float @floorf(float noundef %0) local_unnamed_addr #7 {
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
  store volatile float %16, ptr %3, align 4, !tbaa !112
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
  store volatile float %23, ptr %2, align 4, !tbaa !112
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

; Function Attrs: inlinehint
define hidden float @fmaf(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #7 {
  %4 = alloca float, align 4
  %5 = fpext float %0 to double
  %6 = fpext float %1 to double
  %7 = fmul double %5, %6
  %8 = fpext float %2 to double
  %9 = fadd double %7, %8
  %10 = bitcast double %9 to i64
  %11 = lshr i64 %10, 52
  %12 = trunc nuw nsw i64 %11 to i32
  %13 = and i32 %12, 2047
  %14 = and i64 %10, 536870911
  %15 = icmp ne i64 %14, 268435456
  %16 = icmp eq i32 %13, 2047
  %or.cond = select i1 %15, i1 true, i1 %16
  br i1 %or.cond, label %24, label %17

17:                                               ; preds = %3
  %18 = fsub double %9, %7
  %19 = fcmp oeq double %18, %8
  %20 = fsub double %9, %8
  %21 = fcmp oeq double %20, %7
  %or.cond44 = and i1 %19, %21
  br i1 %or.cond44, label %24, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @fegetround() #7
  %.not = icmp eq i32 %23, 0
  br i1 %.not, label %34, label %24

24:                                               ; preds = %22, %17, %3
  %25 = add nsw i32 %13, -874
  %or.cond3 = icmp ult i32 %25, 23
  br i1 %or.cond3, label %26, label %46

26:                                               ; preds = %24
  %27 = tail call i32 @fetestexcept(i32 noundef 32) #7
  %.not41 = icmp eq i32 %27, 0
  br i1 %.not41, label %46, label %28

28:                                               ; preds = %26
  %29 = tail call i32 @feclearexcept(i32 noundef 32) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store volatile float %2, ptr %4, align 4, !tbaa !112
  %.0..0..0..0.5 = load volatile float, ptr %4, align 4, !tbaa !112
  %30 = fpext float %.0..0..0..0.5 to double
  %31 = fadd double %7, %30
  %32 = tail call i32 @fetestexcept(i32 noundef 32) #7
  %.not42 = icmp eq i32 %32, 0
  %. = select i1 %.not42, i32 32, i32 16
  %33 = tail call i32 @feraiseexcept(i32 noundef %.) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %46

34:                                               ; preds = %22
  %35 = icmp slt i64 %10, 0
  %36 = fcmp uge double %7, %8
  %37 = xor i1 %36, %35
  %38 = fsub double %7, %9
  %39 = fadd double %38, %8
  %40 = fsub double %8, %9
  %41 = fadd double %7, %40
  %.038 = select i1 %37, double %39, double %41
  %42 = fcmp uge double %.038, 0.000000e+00
  %43 = xor i1 %35, %42
  %44 = or disjoint i64 %10, 1
  %45 = add nsw i64 %10, -1
  %.sroa.0.0.in = select i1 %43, i64 %44, i64 %45
  %.sroa.0.0 = bitcast i64 %.sroa.0.0.in to double
  br label %46

46:                                               ; preds = %34, %28, %26, %24
  %.0.in = phi double [ %.sroa.0.0, %34 ], [ %31, %28 ], [ %9, %26 ], [ %9, %24 ]
  %.0 = fptrunc double %.0.in to float
  ret float %.0
}

; Function Attrs: inlinehint
define hidden float @fmodf(float noundef %0, float noundef %1) local_unnamed_addr #7 {
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

.lr.ph:                                           ; preds = %.lr.ph, %26
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

.lr.ph90:                                         ; preds = %.lr.ph90, %38
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

.lr.ph96:                                         ; preds = %57, %49
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

.lr.ph103:                                        ; preds = %.lr.ph103, %67
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: inlinehint
define hidden float @frexpf(float noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #7 {
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
  %9 = tail call float @frexpf(float noundef %8, ptr noundef %1) #7
  %10 = load i32, ptr %1, align 4, !tbaa !10
  %11 = add nsw i32 %10, -64
  br label %12

12:                                               ; preds = %7, %5
  %storemerge = phi i32 [ %11, %7 ], [ 0, %5 ]
  %.014 = phi float [ %9, %7 ], [ %0, %5 ]
  store i32 %storemerge, ptr %1, align 4, !tbaa !10
  br label %19

13:                                               ; preds = %2
  %14 = and i32 %4, 255
  %15 = add nsw i32 %14, -126
  store i32 %15, ptr %1, align 4, !tbaa !10
  %16 = and i32 %3, -2139095041
  %17 = or disjoint i32 %16, 1056964608
  %18 = bitcast i32 %17 to float
  br label %19

19:                                               ; preds = %13, %12, %2
  %.0 = phi float [ %18, %13 ], [ %.014, %12 ], [ %0, %2 ]
  ret float %.0
}

; Function Attrs: inlinehint
define hidden float @ldexpf(float noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = tail call float @scalbnf(float noundef %0, i32 noundef %1) #7
  ret float %3
}

; Function Attrs: inlinehint
define hidden float @scalbnf(float noundef %0, i32 noundef %1) local_unnamed_addr #7 {
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: inlinehint
define hidden float @powf(float noundef %0, float noundef %1) local_unnamed_addr #7 {
  %3 = alloca float, align 4
  %4 = bitcast float %0 to i32
  %5 = bitcast float %1 to i32
  %6 = add i32 %4, -2139095040
  %7 = icmp ult i32 %6, -2130706432
  %.pre = shl i32 %5, 1
  %8 = add i32 %.pre, 16777216
  %9 = icmp ult i32 %8, 16777217
  %or.cond99 = or i1 %7, %9
  br i1 %or.cond99, label %.critedge, label %73, !prof !122

.critedge:                                        ; preds = %2
  %10 = add i32 %.pre, -1
  %11 = icmp ult i32 %10, -16777217
  br i1 %11, label %28, label %12, !prof !114

12:                                               ; preds = %.critedge
  %13 = icmp eq i32 %.pre, 0
  %14 = icmp eq i32 %4, 1065353216
  %or.cond70 = or i1 %14, %13
  br i1 %or.cond70, label %138, label %15

15:                                               ; preds = %12
  %16 = shl i32 %4, 1
  %17 = icmp ugt i32 %16, -16777216
  %18 = icmp samesign ugt i32 %.pre, -16777216
  %or.cond = or i1 %17, %18
  br i1 %or.cond, label %19, label %21

19:                                               ; preds = %15
  %20 = fadd float %0, %1
  br label %138

21:                                               ; preds = %15
  %22 = icmp eq i32 %16, 2130706432
  br i1 %22, label %138, label %23

23:                                               ; preds = %21
  %24 = icmp ult i32 %16, 2130706432
  %25 = icmp slt i32 %5, 0
  %26 = xor i1 %24, %25
  %27 = fmul float %1, %1
  %spec.select71 = select i1 %26, float 0.000000e+00, float %27
  br label %138

28:                                               ; preds = %.critedge
  %29 = shl i32 %4, 1
  %30 = add i32 %29, -1
  %31 = icmp ult i32 %30, -16777217
  br i1 %31, label %47, label %32, !prof !114

32:                                               ; preds = %28
  %33 = fmul float %0, %0
  %.not66 = icmp sgt i32 %4, -1
  br i1 %.not66, label %checkint.exit.thread, label %34

34:                                               ; preds = %32
  %35 = lshr i32 %5, 23
  %36 = and i32 %35, 255
  %37 = add nsw i32 %36, -151
  %or.cond92 = icmp ult i32 %37, -24
  br i1 %or.cond92, label %checkint.exit.thread, label %38

38:                                               ; preds = %34
  %39 = sub nuw nsw i32 150, %36
  %40 = shl nuw nsw i32 1, %39
  %41 = add nsw i32 %40, -1
  %42 = and i32 %41, %5
  %.not.i = icmp ne i32 %42, 0
  %43 = and i32 %40, %5
  %.not9.i = icmp eq i32 %43, 0
  %or.cond93 = or i1 %.not9.i, %.not.i
  %44 = fneg float %33
  %spec.select = select i1 %or.cond93, float %33, float %44
  br label %checkint.exit.thread

checkint.exit.thread:                             ; preds = %38, %34, %32
  %.057 = phi float [ %33, %32 ], [ %33, %34 ], [ %spec.select, %38 ]
  %.not67 = icmp sgt i32 %5, -1
  br i1 %.not67, label %138, label %45

45:                                               ; preds = %checkint.exit.thread
  %46 = fdiv float 1.000000e+00, %.057
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store volatile float %46, ptr %3, align 4, !tbaa !112
  %.0..0..0..0..0..0..i = load volatile float, ptr %3, align 4, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %138

47:                                               ; preds = %28
  %.not64 = icmp sgt i32 %4, -1
  br i1 %.not64, label %66, label %48

48:                                               ; preds = %47
  %49 = lshr i32 %5, 23
  %50 = and i32 %49, 255
  %51 = icmp samesign ult i32 %50, 127
  br i1 %51, label %.thread, label %52

52:                                               ; preds = %48
  %53 = icmp samesign ugt i32 %50, 150
  br i1 %53, label %checkint.exit76.thread85, label %54

54:                                               ; preds = %52
  %55 = sub nuw nsw i32 150, %50
  %56 = shl nuw nsw i32 1, %55
  %57 = add nsw i32 %56, -1
  %58 = and i32 %57, %5
  %.not.i72 = icmp eq i32 %58, 0
  br i1 %.not.i72, label %59, label %.thread

59:                                               ; preds = %54
  %60 = and i32 %56, %5
  %.not9.i74 = icmp eq i32 %60, 0
  br i1 %.not9.i74, label %checkint.exit76.thread85, label %62

.thread:                                          ; preds = %54, %48
  %61 = tail call float @__math_invalidf(float noundef %0) #7
  br label %138

checkint.exit76.thread85:                         ; preds = %59, %52
  br label %62

62:                                               ; preds = %checkint.exit76.thread85, %59
  %63 = phi i32 [ 0, %checkint.exit76.thread85 ], [ 65536, %59 ]
  %64 = tail call float @llvm.fabs.f32(float %0)
  %65 = bitcast float %64 to i32
  br label %66

66:                                               ; preds = %62, %47
  %.154 = phi i32 [ %65, %62 ], [ %4, %47 ]
  %.151 = phi i32 [ %63, %62 ], [ 0, %47 ]
  %67 = icmp ult i32 %.154, 8388608
  br i1 %67, label %68, label %73

68:                                               ; preds = %66
  %69 = fmul float %0, 0x4160000000000000
  %70 = tail call float @llvm.fabs.f32(float %69)
  %71 = bitcast float %70 to i32
  %72 = add nsw i32 %71, -192937984
  br label %73

73:                                               ; preds = %68, %66, %2
  %.053 = phi i32 [ %72, %68 ], [ %.154, %66 ], [ %4, %2 ]
  %.050 = phi i32 [ %.151, %68 ], [ %.151, %66 ], [ 0, %2 ]
  %74 = add i32 %.053, -1060306944
  %75 = lshr i32 %74, 19
  %76 = and i32 %75, 15
  %77 = and i32 %74, -8388608
  %78 = sub i32 %.053, %77
  %79 = ashr i32 %74, 23
  %80 = zext nneg i32 %76 to i64
  %81 = getelementptr inbounds nuw %struct.anon, ptr @__powf_log2_data, i64 %80
  %82 = load double, ptr %81, align 8, !tbaa !123
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %84 = load double, ptr %83, align 8, !tbaa !125
  %85 = bitcast i32 %78 to float
  %86 = fpext float %85 to double
  %87 = tail call double @llvm.fmuladd.f64(double %86, double %82, double -1.000000e+00)
  %88 = sitofp i32 %79 to double
  %89 = fadd double %84, %88
  %90 = fmul double %87, %87
  %91 = load double, ptr getelementptr inbounds nuw (i8, ptr @__powf_log2_data, i64 256), align 8, !tbaa !121
  %92 = load double, ptr getelementptr inbounds nuw (i8, ptr @__powf_log2_data, i64 264), align 8, !tbaa !121
  %93 = tail call double @llvm.fmuladd.f64(double %91, double %87, double %92)
  %94 = load double, ptr getelementptr inbounds nuw (i8, ptr @__powf_log2_data, i64 272), align 8, !tbaa !121
  %95 = load double, ptr getelementptr inbounds nuw (i8, ptr @__powf_log2_data, i64 280), align 8, !tbaa !121
  %96 = tail call double @llvm.fmuladd.f64(double %94, double %87, double %95)
  %97 = fmul double %90, %90
  %98 = load double, ptr getelementptr inbounds nuw (i8, ptr @__powf_log2_data, i64 288), align 8, !tbaa !121
  %99 = tail call double @llvm.fmuladd.f64(double %98, double %87, double %89)
  %100 = tail call double @llvm.fmuladd.f64(double %96, double %90, double %99)
  %101 = tail call double @llvm.fmuladd.f64(double %93, double %97, double %100)
  %102 = fpext float %1 to double
  %103 = fmul double %101, %102
  %104 = bitcast double %103 to i64
  %105 = and i64 %104, 9223231299366420480
  %106 = icmp samesign ugt i64 %105, 4638426141214900224
  br i1 %106, label %107, label %115, !prof !126

107:                                              ; preds = %73
  %108 = fcmp ogt double %103, 0x405FFFFFFFD1D571
  br i1 %108, label %109, label %111

109:                                              ; preds = %107
  %110 = tail call float @__math_oflowf(i32 noundef %.050) #7
  br label %138

111:                                              ; preds = %107
  %112 = fcmp ugt double %103, -1.500000e+02
  br i1 %112, label %115, label %113

113:                                              ; preds = %111
  %114 = tail call float @__math_uflowf(i32 noundef %.050) #7
  br label %138

115:                                              ; preds = %111, %73
  %116 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 256), align 8, !tbaa !127
  %117 = fadd double %103, %116
  %118 = bitcast double %117 to i64
  %119 = fsub double %117, %116
  %120 = fsub double %103, %119
  %121 = and i64 %118, 31
  %122 = getelementptr inbounds nuw i64, ptr @__exp2f_data, i64 %121
  %123 = load i64, ptr %122, align 8, !tbaa !119
  %124 = zext nneg i32 %.050 to i64
  %125 = add i64 %118, %124
  %126 = shl i64 %125, 47
  %127 = add i64 %126, %123
  %128 = bitcast i64 %127 to double
  %129 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 264), align 8, !tbaa !121
  %130 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 272), align 8, !tbaa !121
  %131 = tail call double @llvm.fmuladd.f64(double %129, double %120, double %130)
  %132 = fmul double %120, %120
  %133 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 280), align 8, !tbaa !121
  %134 = tail call double @llvm.fmuladd.f64(double %133, double %120, double 1.000000e+00)
  %135 = tail call double @llvm.fmuladd.f64(double %131, double %132, double %134)
  %136 = fmul double %135, %128
  %137 = fptrunc double %136 to float
  br label %138

138:                                              ; preds = %115, %113, %109, %.thread, %45, %checkint.exit.thread, %23, %21, %19, %12
  %.0 = phi float [ %20, %19 ], [ 1.000000e+00, %12 ], [ 1.000000e+00, %21 ], [ %.0..0..0..0..0..0..i, %45 ], [ %.057, %checkint.exit.thread ], [ %110, %109 ], [ %114, %113 ], [ %137, %115 ], [ %spec.select71, %23 ], [ %61, %.thread ]
  ret float %.0
}

; Function Attrs: inlinehint
define hidden noundef float @rintf(float noundef %0) local_unnamed_addr #7 {
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

; Function Attrs: inlinehint
define hidden float @roundf(float noundef %0) local_unnamed_addr #7 {
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
  store volatile float %9, ptr %2, align 4, !tbaa !112
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

attributes #0 = { "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #3 = { uwtable "nonlazybind" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint }

!llvm.dbg.cu = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9}
!llvm.errno.tbaa = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "configured_module_matmul_dispatch_0.mlir", directory: "/home/claude/mlirbench2/build/128x128x128/packed_mmt4d_1af5aad1c4/dispatches")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !3, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "configured_module_matmul_dispatch_1.mlir", directory: "/home/claude/mlirbench2/build/128x128x128/packed_mmt4d_1af5aad1c4/dispatches")
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !5, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "configured_module_matmul_dispatch_2.mlir", directory: "/home/claude/mlirbench2/build/128x128x128/packed_mmt4d_1af5aad1c4/dispatches")
!6 = distinct !DICompileUnit(language: DW_LANG_C17, file: !7, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "configured_module_matmul_dispatch_3.mlir", directory: "/home/claude/mlirbench2/build/128x128x128/packed_mmt4d_1af5aad1c4/dispatches")
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
!14 = distinct !DISubprogram(name: "matmul_dispatch_0_pack_f32", linkageName: "matmul_dispatch_0_pack_f32", scope: !1, file: !1, line: 1, type: !15, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!15 = !DISubroutineType(cc: DW_CC_normal, types: !16)
!16 = !{!17, !18, !49, !78}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_environment_v0_t", baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_environment_v0_t", scope: !22, file: !22, line: 246, size: 768, elements: !23)
!22 = !DIFile(filename: "runtime/src/iree/hal/local/executable_library.h", directory: ".")
!23 = !{!24, !32, !35, !38, !40}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, scope: !22, file: !22, line: 227, baseType: !28, size: 2048, elements: !30)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", baseType: !29)
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !{!31}
!31 = !DISubrange(count: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "import_thunk", baseType: !33, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIBasicType(name: "void", encoding: DW_ATE_address)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "import_funcs", baseType: !36, size: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "import_contexts", baseType: !39, size: 64, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "processor", baseType: !41, offset: 256)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_processor_v0_t", scope: !22, file: !22, line: 227, size: 512, elements: !42)
!42 = !{!43}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !44)
!44 = !DICompositeType(tag: DW_TAG_array_type, scope: !22, file: !22, line: 227, baseType: !45, size: 512, elements: !47)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", baseType: !46)
!46 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!47 = !{!48}
!48 = !DISubrange(count: 8)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_dispatch_state_v0_t", baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_dispatch_state_v0_t", scope: !22, file: !22, line: 275, size: 384, elements: !53)
!53 = !{!54, !55, !56, !59, !60, !61, !62, !63, !66, !67, !68, !73}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_x", baseType: !28, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_y", baseType: !28, size: 32, offset: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_z", baseType: !57, size: 16, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", baseType: !58)
!58 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "constant_count", baseType: !57, size: 16, offset: 80)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_x", baseType: !28, size: 32, offset: 96)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_y", baseType: !28, size: 32, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_z", baseType: !57, size: 16, offset: 160)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "max_concurrency", baseType: !64, size: 8, offset: 176)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", baseType: !65)
!65 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "binding_count", baseType: !64, size: 8, offset: 184)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !25, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "binding_ptrs", baseType: !69, size: 64, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DICompositeType(tag: DW_TAG_array_type, scope: !22, file: !22, line: 227, baseType: !72, size: 4096, elements: !30)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "binding_lengths", baseType: !74, size: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DICompositeType(tag: DW_TAG_array_type, scope: !22, file: !22, line: 227, baseType: !77, size: 4096, elements: !30)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", baseType: !45)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_workgroup_state_v0_t", baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_workgroup_state_v0_t", scope: !22, file: !22, line: 321, size: 256, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !89}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_x", baseType: !28, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_y", baseType: !28, size: 32, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_z", baseType: !57, size: 16, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", baseType: !57, size: 16, offset: 80)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", baseType: !28, size: 32, offset: 96)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory", baseType: !33, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory_size", baseType: !28, size: 32, offset: 192)
!90 = !DILocation(line: 10, column: 8, scope: !14)
!91 = !DILocation(line: 11, column: 8, scope: !14)
!92 = !DILocation(line: 14, column: 8, scope: !14)
!93 = !DILocation(line: 16, column: 8, scope: !14)
!94 = distinct !DISubprogram(name: "matmul_dispatch_1_pack_f32", linkageName: "matmul_dispatch_1_pack_f32", scope: !3, file: !3, line: 1, type: !15, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!95 = !DILocation(line: 11, column: 8, scope: !94)
!96 = !DILocation(line: 12, column: 8, scope: !94)
!97 = !DILocation(line: 15, column: 8, scope: !94)
!98 = !DILocation(line: 17, column: 8, scope: !94)
!99 = distinct !DISubprogram(name: "matmul_dispatch_2_mmt4d_8x8x128x16x16x1_f32", linkageName: "matmul_dispatch_2_mmt4d_8x8x128x16x16x1_f32", scope: !5, file: !5, line: 1, type: !15, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!100 = !DILocation(line: 13, column: 8, scope: !99)
!101 = !DILocation(line: 14, column: 8, scope: !99)
!102 = !DILocation(line: 15, column: 8, scope: !99)
!103 = !DILocation(line: 20, column: 8, scope: !99)
!104 = !DILocation(line: 22, column: 8, scope: !99)
!105 = distinct !DISubprogram(name: "matmul_dispatch_3_unpack_f32", linkageName: "matmul_dispatch_3_unpack_f32", scope: !7, file: !7, line: 1, type: !15, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!106 = !DILocation(line: 11, column: 8, scope: !105)
!107 = !DILocation(line: 12, column: 8, scope: !105)
!108 = !DILocation(line: 15, column: 8, scope: !105)
!109 = !DILocation(line: 17, column: 8, scope: !105)
!110 = !{!111, !111, i64 0}
!111 = !{!"short", !12, i64 0}
!112 = !{!113, !113, i64 0}
!113 = !{!"float", !12, i64 0}
!114 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!115 = !{!116, !117, i64 296}
!116 = !{!"exp2f_data", !12, i64 0, !117, i64 256, !12, i64 264, !117, i64 288, !117, i64 296, !12, i64 304}
!117 = !{!"double", !12, i64 0}
!118 = !{!116, !117, i64 288}
!119 = !{!120, !120, i64 0}
!120 = !{!"long", !12, i64 0}
!121 = !{!117, !117, i64 0}
!122 = !{!"branch_weights", i32 4001, i32 4000000}
!123 = !{!124, !117, i64 0}
!124 = !{!"", !117, i64 0, !117, i64 8}
!125 = !{!124, !117, i64 8}
!126 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!127 = !{!116, !117, i64 256}
