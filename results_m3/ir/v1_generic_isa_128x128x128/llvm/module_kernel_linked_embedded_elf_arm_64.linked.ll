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
%struct.exp2f_data = type { [32 x i64], double, [3 x double], double, double, [3 x double] }
%struct.powf_log2_data = type { [16 x %struct.anon], [5 x double] }
%struct.anon = type { double, double }
%iree_hal_executable_dispatch_state_v0_t = type { i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr }
%iree_hal_executable_workgroup_state_v0_t = type { i32, i32, i16, i16, i32, ptr, i32 }
%struct.iree_uk_mmt4d_params_t = type { ptr, i64, i64, ptr, i64, i64, ptr, i64, i64, i64, i64, i64, i32, i32, i32, i32, ptr }

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
@__exp2f_data = hidden local_unnamed_addr constant %struct.exp2f_data { [32 x i64] [i64 4607182418800017408, i64 4607140297302181236, i64 4607100335213349135, i64 4607062579818421073, i64 4607027079437701499, i64 4606993883449571754, i64 4606963042313658936, i64 4606934607594512097, i64 4606908631985796885, i64 4606885169335019979, i64 4606864274668794914, i64 4606846004218661165, i64 4606830415447468583, i64 4606817567076339586, i64 4606807519112221737, i64 4606800332876043653, i64 4606796071031487437, i64 4606794797614391156, i64 4606796578062795143, i64 4606801479247646227, i64 4606809569504174299, i64 4606820918663955941, i64 4606835598087680144, i64 4606853680698631517, i64 4606875241016906669, i64 4606900355194379847, i64 4606929101050434204, i64 4606961558108475497, i64 4606997807633245319, i64 4607037932668951391, i64 4607082018078232794, i64 4607130150581978432], double 0x42E8000000000000, [3 x double] [double 0x3FAC6AF84B912394, double 0x3FCEBFCE50FAC4F3, double 0x3FE62E42FF0C52D6], double 0x4338000000000000, double 0x40471547652B82FE, [3 x double] [double 0x3EBC6AF84B912394, double 0x3F2EBFCE50FAC4F3, double 0x3F962E42FF0C52D6] }, align 8
@__powf_log2_data = hidden local_unnamed_addr constant %struct.powf_log2_data { [16 x %struct.anon] [%struct.anon { double 0x3FF661EC79F8F3BE, double 0xBFDEFEC65B963019 }, %struct.anon { double 0x3FF571ED4AAF883D, double 0xBFDB0B6832D4FCA4 }, %struct.anon { double 0x3FF49539F0F010B0, double 0xBFD7418B0A1FB77B }, %struct.anon { double 0x3FF3C995B0B80385, double 0xBFD39DE91A6DCF7B }, %struct.anon { double 0x3FF30D190C8864A5, double 0xBFD01D9BF3F2B631 }, %struct.anon { double 0x3FF25E227B0B8EA0, double 0xBFC97C1D1B3B7AF0 }, %struct.anon { double 0x3FF1BB4A4A1A343F, double 0xBFC2F9E393AF3C9F }, %struct.anon { double 0x3FF12358F08AE5BA, double 0xBFB960CBBF788D5C }, %struct.anon { double 0x3FF0953F419900A7, double 0xBFAA6F9DB6475FCE }, %struct.anon { double 1.000000e+00, double 0.000000e+00 }, %struct.anon { double 0x3FEE608CFD9A47AC, double 0x3FB338CA9F24F53D }, %struct.anon { double 0x3FECA4B31F026AA0, double 0x3FC476A9543891BA }, %struct.anon { double 0x3FEB2036576AFCE6, double 0x3FCE840B4AC4E4D2 }, %struct.anon { double 0x3FE9C2D163A1AA2D, double 0x3FD40645F0C6651C }, %struct.anon { double 0x3FE886E6037841ED, double 0x3FD88E9C2C1B9FF8 }, %struct.anon { double 0x3FE767DCF5534862, double 0x3FDCE0A44EB17BCC }], [5 x double] [double 0x3FD27616C9496E0B, double 0xBFD71969A075C67A, double 0x3FDEC70A6CA7BADD, double 0xBFE7154748BEF6C8, double 0x3FF71547652AB82B] }, align 8
@switch.table.iree_uk_mmt4d_p = private unnamed_addr constant [10 x i32] [i32 16119285, i32 3486515, i32 16119028, i32 16053492, i32 16114916, i32 15000804, i32 3486772, i32 3490356, i32 3486516, i32 3486259], align 4

define internal i32 @matmul_dispatch_0_pack_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !15 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !91
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !91
  %6 = load ptr, ptr %5, align 8, !dbg !91
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !91
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !92
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !92
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !92
  %10 = load ptr, ptr %9, align 8, !dbg !92
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !92
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !93
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !93
  %13 = zext i32 %12 to i64, !dbg !93
  %14 = sdiv i64 %13, 2, !dbg !93
  %15 = mul i64 %14, 2, !dbg !93
  %16 = icmp ne i64 %13, %15, !dbg !93
  %17 = icmp slt i64 %13, 0, !dbg !93
  %18 = and i1 %16, %17, !dbg !93
  %19 = add i64 %14, -1, !dbg !93
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !93
  %21 = srem i64 %13, 2, !dbg !93
  %22 = icmp slt i64 %21, 0, !dbg !93
  %23 = add nsw i64 %21, 2, !dbg !93
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !93
  %25 = mul nsw i64 %24, 64, !dbg !93
  %26 = mul nsw i64 %20, 8, !dbg !93
  br label %27, !dbg !93

27:                                               ; preds = %47, %3
  %28 = phi i64 [ %48, %47 ], [ 0, %3 ], !dbg !93
  %29 = icmp slt i64 %28, 64, !dbg !93
  br i1 %29, label %30, label %49, !dbg !93

30:                                               ; preds = %33, %27
  %31 = phi i64 [ %46, %33 ], [ 0, %27 ], !dbg !93
  %32 = icmp slt i64 %31, 8, !dbg !93
  br i1 %32, label %33, label %47, !dbg !93

33:                                               ; preds = %30
  %34 = add i64 %26, %31, !dbg !93
  %35 = add i64 %25, %28, !dbg !93
  %36 = mul nuw nsw i64 %34, 128, !dbg !93
  %37 = add nuw nsw i64 %36, %35, !dbg !93
  %38 = getelementptr inbounds nuw float, ptr %6, i64 %37, !dbg !93
  %39 = load float, ptr %38, align 4, !dbg !93
  %40 = mul nuw nsw i64 %20, 1024, !dbg !93
  %41 = mul nuw nsw i64 %35, 8, !dbg !93
  %42 = add nuw nsw i64 %40, %41, !dbg !93
  %43 = add nuw nsw i64 %42, %31, !dbg !93
  %44 = add nuw nsw i64 %43, 0, !dbg !93
  %45 = getelementptr inbounds nuw float, ptr %10, i64 %44, !dbg !93
  store float %39, ptr %45, align 4, !dbg !93
  %46 = add i64 %31, 1, !dbg !93
  br label %30, !dbg !93

47:                                               ; preds = %30
  %48 = add i64 %28, 1, !dbg !93
  br label %27, !dbg !93

49:                                               ; preds = %27
  ret i32 0, !dbg !94
}

define internal i32 @matmul_dispatch_1_pack_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !95 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !96
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !96
  %6 = load ptr, ptr %5, align 8, !dbg !96
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !96
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !97
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !97
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !97
  %10 = load ptr, ptr %9, align 8, !dbg !97
  %11 = getelementptr float, ptr %10, i64 16384, !dbg !97
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !97
  %12 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !98
  %13 = extractvalue %iree_hal_executable_workgroup_state_v0_t %12, 0, !dbg !98
  %14 = zext i32 %13 to i64, !dbg !98
  %15 = sdiv i64 %14, 16, !dbg !98
  %16 = mul i64 %15, 16, !dbg !98
  %17 = icmp ne i64 %14, %16, !dbg !98
  %18 = icmp slt i64 %14, 0, !dbg !98
  %19 = and i1 %17, %18, !dbg !98
  %20 = add i64 %15, -1, !dbg !98
  %21 = select i1 %19, i64 %20, i64 %15, !dbg !98
  %22 = srem i64 %14, 16, !dbg !98
  %23 = icmp slt i64 %22, 0, !dbg !98
  %24 = add nsw i64 %22, 16, !dbg !98
  %25 = select i1 %23, i64 %24, i64 %22, !dbg !98
  %26 = mul nsw i64 %21, 2, !dbg !98
  %27 = mul nsw i64 %25, 8, !dbg !98
  %28 = mul nsw i64 %21, 16, !dbg !98
  br label %29, !dbg !98

29:                                               ; preds = %52, %3
  %30 = phi i64 [ %53, %52 ], [ 0, %3 ], !dbg !98
  %31 = icmp slt i64 %30, 2, !dbg !98
  br i1 %31, label %32, label %54, !dbg !98

32:                                               ; preds = %29
  %33 = mul nsw i64 %30, 8, !dbg !98
  br label %34, !dbg !98

34:                                               ; preds = %37, %32
  %35 = phi i64 [ %51, %37 ], [ 0, %32 ], !dbg !98
  %36 = icmp slt i64 %35, 8, !dbg !98
  br i1 %36, label %37, label %52, !dbg !98

37:                                               ; preds = %34
  %38 = add i64 %35, %27, !dbg !98
  %39 = add i64 %33, %28, !dbg !98
  %40 = mul i64 %38, 128, !dbg !98
  %41 = add i64 %40, %39, !dbg !98
  %42 = getelementptr float, ptr %6, i64 %41, !dbg !98
  %43 = load <8 x float>, ptr %42, align 4, !dbg !98
  %44 = add i64 %26, %30, !dbg !98
  %45 = mul i64 %44, 1024, !dbg !98
  %46 = mul i64 %38, 8, !dbg !98
  %47 = add i64 %45, %46, !dbg !98
  %48 = add i64 %47, 0, !dbg !98
  %49 = add i64 %48, 0, !dbg !98
  %50 = getelementptr float, ptr %11, i64 %49, !dbg !98
  store <8 x float> %43, ptr %50, align 4, !dbg !98
  %51 = add i64 %35, 1, !dbg !98
  br label %34, !dbg !98

52:                                               ; preds = %34
  %53 = add i64 %30, 1, !dbg !98
  br label %29, !dbg !98

54:                                               ; preds = %29
  ret i32 0, !dbg !99
}

define internal i32 @matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !100 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !101
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !101
  %6 = load ptr, ptr %5, align 8, !dbg !101
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !102
  %8 = load ptr, ptr %7, align 8, !dbg !102
  br label %9, !dbg !101

9:                                                ; preds = %25, %3
  %10 = phi i64 [ %26, %25 ], [ 0, %3 ], !dbg !101
  %11 = icmp slt i64 %10, 16, !dbg !101
  br i1 %11, label %12, label %27, !dbg !101

12:                                               ; preds = %15, %9
  %13 = phi i64 [ %24, %15 ], [ 0, %9 ], !dbg !101
  %14 = icmp slt i64 %13, 16, !dbg !101
  br i1 %14, label %15, label %25, !dbg !101

15:                                               ; preds = %12
  %16 = mul nsw i64 %10, 1024, !dbg !101
  %17 = mul nsw i64 %13, 1024, !dbg !101
  %18 = add i64 %17, 16384, !dbg !101
  %19 = mul nsw i64 %13, 64, !dbg !102
  %20 = add i64 %16, %19, !dbg !102
  %21 = add i64 %20, 32768, !dbg !102
  %22 = getelementptr inbounds ptr, ptr %0, i32 4, !dbg !101
  %23 = call i32 @iree_uk_mmt4d(ptr %6, i64 %16, i64 1024, ptr %6, i64 %18, i64 1024, ptr %8, i64 %21, i64 1024, i64 1, i64 1, i64 128, i32 8, i32 8, i32 1, i32 1537, ptr %22), !dbg !101
  %24 = add i64 %13, 1, !dbg !101
  br label %12, !dbg !101

25:                                               ; preds = %12
  %26 = add i64 %10, 1, !dbg !101
  br label %9, !dbg !101

27:                                               ; preds = %9
  ret i32 0, !dbg !103
}

define internal i32 @matmul_dispatch_3_unpack_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !104 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !105
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !105
  %6 = load ptr, ptr %5, align 8, !dbg !105
  %7 = getelementptr float, ptr %6, i64 32768, !dbg !105
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !105
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !106
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !106
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !106
  %11 = load ptr, ptr %10, align 8, !dbg !106
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !106
  %12 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !107
  %13 = extractvalue %iree_hal_executable_workgroup_state_v0_t %12, 0, !dbg !107
  %14 = zext i32 %13 to i64, !dbg !107
  %15 = sdiv i64 %14, 2, !dbg !107
  %16 = mul i64 %15, 2, !dbg !107
  %17 = icmp ne i64 %14, %16, !dbg !107
  %18 = icmp slt i64 %14, 0, !dbg !107
  %19 = and i1 %17, %18, !dbg !107
  %20 = add i64 %15, -1, !dbg !107
  %21 = select i1 %19, i64 %20, i64 %15, !dbg !107
  %22 = srem i64 %14, 2, !dbg !107
  %23 = icmp slt i64 %22, 0, !dbg !107
  %24 = add nsw i64 %22, 2, !dbg !107
  %25 = select i1 %23, i64 %24, i64 %22, !dbg !107
  %26 = mul nsw i64 %21, 16, !dbg !107
  %27 = mul nsw i64 %25, 64, !dbg !107
  %28 = icmp slt i64 %26, 0, !dbg !107
  %29 = sub i64 -1, %26, !dbg !107
  %30 = select i1 %28, i64 %29, i64 %26, !dbg !107
  %31 = sdiv i64 %30, 8, !dbg !107
  %32 = sub i64 -1, %31, !dbg !107
  %33 = select i1 %28, i64 %32, i64 %31, !dbg !107
  %34 = icmp slt i64 %27, 0, !dbg !107
  %35 = sub i64 -1, %27, !dbg !107
  %36 = select i1 %34, i64 %35, i64 %27, !dbg !107
  %37 = sdiv i64 %36, 8, !dbg !107
  %38 = sub i64 -1, %37, !dbg !107
  %39 = select i1 %34, i64 %38, i64 %37, !dbg !107
  br label %40, !dbg !107

40:                                               ; preds = %89, %3
  %41 = phi i64 [ %90, %89 ], [ 0, %3 ], !dbg !107
  %42 = icmp slt i64 %41, 16, !dbg !107
  br i1 %42, label %43, label %91, !dbg !107

43:                                               ; preds = %40
  %44 = icmp slt i64 %41, 0, !dbg !107
  %45 = sub i64 -1, %41, !dbg !107
  %46 = select i1 %44, i64 %45, i64 %41, !dbg !107
  %47 = sdiv i64 %46, 8, !dbg !107
  %48 = sub i64 -1, %47, !dbg !107
  %49 = select i1 %44, i64 %48, i64 %47, !dbg !107
  br label %50, !dbg !107

50:                                               ; preds = %87, %43
  %51 = phi i64 [ %88, %87 ], [ 0, %43 ], !dbg !107
  %52 = icmp slt i64 %51, 64, !dbg !107
  br i1 %52, label %53, label %89, !dbg !107

53:                                               ; preds = %50
  %54 = icmp slt i64 %51, 0, !dbg !107
  %55 = sub i64 -1, %51, !dbg !107
  %56 = select i1 %54, i64 %55, i64 %51, !dbg !107
  %57 = sdiv i64 %56, 8, !dbg !107
  %58 = sub i64 -1, %57, !dbg !107
  %59 = select i1 %54, i64 %58, i64 %57, !dbg !107
  br label %60, !dbg !107

60:                                               ; preds = %85, %53
  %61 = phi i64 [ %86, %85 ], [ 0, %53 ], !dbg !107
  %62 = icmp slt i64 %61, 8, !dbg !107
  br i1 %62, label %63, label %87, !dbg !107

63:                                               ; preds = %66, %60
  %64 = phi i64 [ %84, %66 ], [ 0, %60 ], !dbg !107
  %65 = icmp slt i64 %64, 8, !dbg !107
  br i1 %65, label %66, label %85, !dbg !107

66:                                               ; preds = %63
  %67 = add i64 %33, %49, !dbg !107
  %68 = add i64 %39, %59, !dbg !107
  %69 = mul nuw nsw i64 %67, 1024, !dbg !107
  %70 = mul nuw nsw i64 %68, 64, !dbg !107
  %71 = add nuw nsw i64 %69, %70, !dbg !107
  %72 = mul nuw nsw i64 %61, 8, !dbg !107
  %73 = add nuw nsw i64 %71, %72, !dbg !107
  %74 = add nuw nsw i64 %73, %64, !dbg !107
  %75 = getelementptr inbounds nuw float, ptr %7, i64 %74, !dbg !107
  %76 = load float, ptr %75, align 4, !dbg !107
  %77 = add i64 %26, %41, !dbg !107
  %78 = add i64 %77, %61, !dbg !107
  %79 = add i64 %27, %51, !dbg !107
  %80 = add i64 %79, %64, !dbg !107
  %81 = mul nuw nsw i64 %78, 128, !dbg !107
  %82 = add nuw nsw i64 %81, %80, !dbg !107
  %83 = getelementptr inbounds nuw float, ptr %11, i64 %82, !dbg !107
  store float %76, ptr %83, align 4, !dbg !107
  %84 = add i64 %64, 1, !dbg !107
  br label %63, !dbg !107

85:                                               ; preds = %63
  %86 = add i64 %61, 1, !dbg !107
  br label %60, !dbg !107

87:                                               ; preds = %60
  %88 = add i64 %51, 8, !dbg !107
  br label %50, !dbg !107

89:                                               ; preds = %50
  %90 = add i64 %41, 8, !dbg !107
  br label %40, !dbg !107

91:                                               ; preds = %40
  ret i32 0, !dbg !108
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden float @iree_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #3 {
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
define hidden signext i16 @iree_f2h_ieee(float noundef %0) local_unnamed_addr #3 {
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
define hidden float @__gnu_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #3 {
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
define hidden float @__extendhfsf2(float noundef %0) local_unnamed_addr #3 {
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
define hidden signext i16 @__gnu_f2h_ieee(float noundef %0) local_unnamed_addr #3 {
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
define hidden float @__truncsfhf2(float noundef %0) local_unnamed_addr #3 {
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
  store i16 %36, ptr %2, align 4, !tbaa !109
  %37 = load float, ptr %2, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret float %37
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden double @__extendhfdf2(float noundef %0) local_unnamed_addr #3 {
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
define hidden float @__truncdfhf2(double noundef %0) local_unnamed_addr #3 {
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
  store i16 %37, ptr %2, align 4, !tbaa !109
  %38 = load float, ptr %2, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret float %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden noundef double @fma(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #3 {
  %4 = tail call double @llvm.fmuladd.f64(double %0, double %1, double %2)
  ret double %4
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: inlinehint
define hidden noundef float @__math_invalidf(float noundef %0) local_unnamed_addr #6 {
  %2 = fsub float %0, %0
  %3 = fdiv float %2, %2
  ret float %3
}

; Function Attrs: inlinehint
define hidden float @__math_oflowf(i32 noundef %0) local_unnamed_addr #6 {
  %2 = tail call float @__math_xflowf(i32 noundef %0, float noundef 0x4600000000000000) #6
  ret float %2
}

; Function Attrs: inlinehint
define hidden float @__math_xflowf(i32 noundef %0, float noundef %1) local_unnamed_addr #6 {
  %3 = alloca float, align 4
  %.not = icmp eq i32 %0, 0
  %4 = fneg float %1
  %5 = select i1 %.not, float %1, float %4
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store volatile float %5, ptr %3, align 4, !tbaa !111
  %.0..0..0..0..0..0..i = load volatile float, ptr %3, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %6 = fmul float %1, %.0..0..0..0..0..0..i
  ret float %6
}

; Function Attrs: inlinehint
define hidden float @__math_uflowf(i32 noundef %0) local_unnamed_addr #6 {
  %2 = tail call float @__math_xflowf(i32 noundef %0, float noundef 0x3A00000000000000) #6
  ret float %2
}

; Function Attrs: inlinehint
define hidden float @ceilf(float noundef %0) local_unnamed_addr #6 {
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
  store volatile float %16, ptr %3, align 4, !tbaa !111
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
  store volatile float %24, ptr %2, align 4, !tbaa !111
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
define hidden float @expf(float noundef %0) local_unnamed_addr #6 {
  %2 = fpext float %0 to double
  %3 = bitcast float %0 to i32
  %4 = lshr i32 %3, 20
  %5 = and i32 %4, 2047
  %.not = icmp samesign ult i32 %5, 1067
  br i1 %.not, label %19, label %6, !prof !113

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
  %14 = tail call float @__math_oflowf(i32 noundef 0) #6
  br label %42

15:                                               ; preds = %11
  %16 = fcmp olt float %0, 0xC059FE3680000000
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = tail call float @__math_uflowf(i32 noundef 0) #6
  br label %42

19:                                               ; preds = %15, %1
  %20 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 296), align 8, !tbaa !114
  %21 = fmul double %20, %2
  %22 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 288), align 8, !tbaa !117
  %23 = fadd double %21, %22
  %24 = bitcast double %23 to i64
  %25 = fsub double %23, %22
  %26 = fsub double %21, %25
  %27 = and i64 %24, 31
  %28 = getelementptr inbounds nuw i64, ptr @__exp2f_data, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !118
  %30 = shl i64 %24, 47
  %31 = add i64 %30, %29
  %32 = bitcast i64 %31 to double
  %33 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 304), align 8, !tbaa !120
  %34 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 312), align 8, !tbaa !120
  %35 = tail call double @llvm.fmuladd.f64(double %33, double %26, double %34)
  %36 = fmul double %26, %26
  %37 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 320), align 8, !tbaa !120
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
define hidden noundef i32 @feclearexcept(i32 noundef %0) local_unnamed_addr #6 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @feraiseexcept(i32 noundef %0) local_unnamed_addr #6 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @fetestexcept(i32 noundef %0) local_unnamed_addr #6 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @fegetround() local_unnamed_addr #6 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @__fesetround(i32 noundef %0) local_unnamed_addr #6 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @fegetenv(ptr noundef readnone captures(none) %0) local_unnamed_addr #6 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @fesetenv(ptr noundef readnone captures(none) %0) local_unnamed_addr #6 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden float @floorf(float noundef %0) local_unnamed_addr #6 {
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
  store volatile float %16, ptr %3, align 4, !tbaa !111
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
  store volatile float %23, ptr %2, align 4, !tbaa !111
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
define hidden float @fmaf(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #6 {
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
  %23 = tail call i32 @fegetround() #6
  %.not = icmp eq i32 %23, 0
  br i1 %.not, label %34, label %24

24:                                               ; preds = %22, %17, %3
  %25 = add nsw i32 %13, -874
  %or.cond3 = icmp ult i32 %25, 23
  br i1 %or.cond3, label %26, label %46

26:                                               ; preds = %24
  %27 = tail call i32 @fetestexcept(i32 noundef 32) #6
  %.not41 = icmp eq i32 %27, 0
  br i1 %.not41, label %46, label %28

28:                                               ; preds = %26
  %29 = tail call i32 @feclearexcept(i32 noundef 32) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store volatile float %2, ptr %4, align 4, !tbaa !111
  %.0..0..0..0.5 = load volatile float, ptr %4, align 4, !tbaa !111
  %30 = fpext float %.0..0..0..0.5 to double
  %31 = fadd double %7, %30
  %32 = tail call i32 @fetestexcept(i32 noundef 32) #6
  %.not42 = icmp eq i32 %32, 0
  %. = select i1 %.not42, i32 32, i32 16
  %33 = tail call i32 @feraiseexcept(i32 noundef %.) #6
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
define hidden float @fmodf(float noundef %0, float noundef %1) local_unnamed_addr #6 {
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
declare float @llvm.fabs.f32(float) #5

; Function Attrs: inlinehint
define hidden float @frexpf(float noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #6 {
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
  %9 = tail call float @frexpf(float noundef %8, ptr noundef %1) #6
  %10 = load i32, ptr %1, align 4, !tbaa !11
  %11 = add nsw i32 %10, -64
  br label %12

12:                                               ; preds = %7, %5
  %storemerge = phi i32 [ %11, %7 ], [ 0, %5 ]
  %.014 = phi float [ %9, %7 ], [ %0, %5 ]
  store i32 %storemerge, ptr %1, align 4, !tbaa !11
  br label %19

13:                                               ; preds = %2
  %14 = and i32 %4, 255
  %15 = add nsw i32 %14, -126
  store i32 %15, ptr %1, align 4, !tbaa !11
  %16 = and i32 %3, -2139095041
  %17 = or disjoint i32 %16, 1056964608
  %18 = bitcast i32 %17 to float
  br label %19

19:                                               ; preds = %13, %12, %2
  %.0 = phi float [ %18, %13 ], [ %.014, %12 ], [ %0, %2 ]
  ret float %.0
}

; Function Attrs: inlinehint
define hidden float @ldexpf(float noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = tail call float @scalbnf(float noundef %0, i32 noundef %1) #6
  ret float %3
}

; Function Attrs: inlinehint
define hidden float @scalbnf(float noundef %0, i32 noundef %1) local_unnamed_addr #6 {
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
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: inlinehint
define hidden float @powf(float noundef %0, float noundef %1) local_unnamed_addr #6 {
  %3 = alloca float, align 4
  %4 = bitcast float %0 to i32
  %5 = bitcast float %1 to i32
  %6 = add i32 %4, -2139095040
  %7 = icmp ult i32 %6, -2130706432
  %.pre = shl i32 %5, 1
  %8 = add i32 %.pre, 16777216
  %9 = icmp ult i32 %8, 16777217
  %or.cond99 = or i1 %7, %9
  br i1 %or.cond99, label %.critedge, label %73, !prof !121

.critedge:                                        ; preds = %2
  %10 = add i32 %.pre, -1
  %11 = icmp ult i32 %10, -16777217
  br i1 %11, label %28, label %12, !prof !113

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
  br i1 %31, label %47, label %32, !prof !113

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
  store volatile float %46, ptr %3, align 4, !tbaa !111
  %.0..0..0..0..0..0..i = load volatile float, ptr %3, align 4, !tbaa !111
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
  %61 = tail call float @__math_invalidf(float noundef %0) #6
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
  %82 = load double, ptr %81, align 8, !tbaa !122
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %84 = load double, ptr %83, align 8, !tbaa !124
  %85 = bitcast i32 %78 to float
  %86 = fpext float %85 to double
  %87 = tail call double @llvm.fmuladd.f64(double %86, double %82, double -1.000000e+00)
  %88 = sitofp i32 %79 to double
  %89 = fadd double %84, %88
  %90 = fmul double %87, %87
  %91 = load double, ptr getelementptr inbounds nuw (i8, ptr @__powf_log2_data, i64 256), align 8, !tbaa !120
  %92 = load double, ptr getelementptr inbounds nuw (i8, ptr @__powf_log2_data, i64 264), align 8, !tbaa !120
  %93 = tail call double @llvm.fmuladd.f64(double %91, double %87, double %92)
  %94 = load double, ptr getelementptr inbounds nuw (i8, ptr @__powf_log2_data, i64 272), align 8, !tbaa !120
  %95 = load double, ptr getelementptr inbounds nuw (i8, ptr @__powf_log2_data, i64 280), align 8, !tbaa !120
  %96 = tail call double @llvm.fmuladd.f64(double %94, double %87, double %95)
  %97 = fmul double %90, %90
  %98 = load double, ptr getelementptr inbounds nuw (i8, ptr @__powf_log2_data, i64 288), align 8, !tbaa !120
  %99 = tail call double @llvm.fmuladd.f64(double %98, double %87, double %89)
  %100 = tail call double @llvm.fmuladd.f64(double %96, double %90, double %99)
  %101 = tail call double @llvm.fmuladd.f64(double %93, double %97, double %100)
  %102 = fpext float %1 to double
  %103 = fmul double %101, %102
  %104 = bitcast double %103 to i64
  %105 = and i64 %104, 9223231299366420480
  %106 = icmp samesign ugt i64 %105, 4638426141214900224
  br i1 %106, label %107, label %115, !prof !125

107:                                              ; preds = %73
  %108 = fcmp ogt double %103, 0x405FFFFFFFD1D571
  br i1 %108, label %109, label %111

109:                                              ; preds = %107
  %110 = tail call float @__math_oflowf(i32 noundef %.050) #6
  br label %138

111:                                              ; preds = %107
  %112 = fcmp ugt double %103, -1.500000e+02
  br i1 %112, label %115, label %113

113:                                              ; preds = %111
  %114 = tail call float @__math_uflowf(i32 noundef %.050) #6
  br label %138

115:                                              ; preds = %111, %73
  %116 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 256), align 8, !tbaa !126
  %117 = fadd double %103, %116
  %118 = bitcast double %117 to i64
  %119 = fsub double %117, %116
  %120 = fsub double %103, %119
  %121 = and i64 %118, 31
  %122 = getelementptr inbounds nuw i64, ptr @__exp2f_data, i64 %121
  %123 = load i64, ptr %122, align 8, !tbaa !118
  %124 = zext nneg i32 %.050 to i64
  %125 = add i64 %118, %124
  %126 = shl i64 %125, 47
  %127 = add i64 %126, %123
  %128 = bitcast i64 %127 to double
  %129 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 264), align 8, !tbaa !120
  %130 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 272), align 8, !tbaa !120
  %131 = tail call double @llvm.fmuladd.f64(double %129, double %120, double %130)
  %132 = fmul double %120, %120
  %133 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 280), align 8, !tbaa !120
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
define hidden noundef float @rintf(float noundef %0) local_unnamed_addr #6 {
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
define hidden float @roundf(float noundef %0) local_unnamed_addr #6 {
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
  store volatile float %9, ptr %2, align 4, !tbaa !111
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

; Function Attrs: alwaysinline nounwind
define internal void @iree_uk_mmt4d(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, ptr noundef %16) #7 {
  %18 = alloca %struct.iree_uk_mmt4d_params_t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  store ptr %0, ptr %18, align 8, !tbaa !127
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %19, align 8, !tbaa !132
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %20, align 8, !tbaa !133
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %3, ptr %21, align 8, !tbaa !134
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %22, align 8, !tbaa !135
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %23, align 8, !tbaa !136
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store ptr %6, ptr %24, align 8, !tbaa !137
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %25, align 8, !tbaa !138
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %26, align 8, !tbaa !139
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %27, align 8, !tbaa !140
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %28, align 8, !tbaa !141
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %29, align 8, !tbaa !142
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i32 %12, ptr %30, align 8, !tbaa !143
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 100
  store i32 %13, ptr %31, align 4, !tbaa !144
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i32 %14, ptr %32, align 8, !tbaa !145
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 108
  store i32 %15, ptr %33, align 4, !tbaa !146
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store ptr %16, ptr %34, align 8, !tbaa !147
  call void @iree_uk_mmt4d_p(ptr noundef nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  ret void
}

; Function Attrs: alwaysinline nounwind
define internal void @iree_uk_mmt4d_p(ptr noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %3 = load i64, ptr %2, align 8, !tbaa !140
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %123, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %7 = load i64, ptr %6, align 8, !tbaa !141
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %123, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %11 = load i64, ptr %10, align 8, !tbaa !142
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %15 = load i32, ptr %14, align 4, !tbaa !146
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %123

18:                                               ; preds = %13, %9
  %19 = tail call ptr @iree_uk_mmt4d_select_tile_func_arch(ptr noundef nonnull %0) #26
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %23 = load i32, ptr %22, align 4, !tbaa !146
  %24 = and i32 %23, 512
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call ptr @iree_uk_mmt4d_select_tile_func_generic(ptr noundef nonnull %0) #26
  br label %28

28:                                               ; preds = %26, %21, %18
  %29 = phi ptr [ %19, %18 ], [ %27, %26 ], [ null, %21 ]
  %30 = load i64, ptr %2, align 8, !tbaa !140
  %31 = trunc i64 %30 to i32
  %32 = load i64, ptr %6, align 8, !tbaa !141
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %35 = load i32, ptr %34, align 8, !tbaa !143
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %37 = load i32, ptr %36, align 4, !tbaa !144
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %39 = load i32, ptr %38, align 4, !tbaa !146
  %40 = trunc i32 %39 to i8
  %41 = add i8 %40, -1
  %42 = icmp ult i8 %41, 10
  br i1 %42, label %43, label %47

43:                                               ; preds = %28
  %44 = zext nneg i8 %41 to i64
  %45 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.iree_uk_mmt4d_p, i64 %44
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %28, %43
  %48 = phi i32 [ %46, %43 ], [ 0, %28 ]
  %49 = lshr i32 %48, 8
  %50 = and i32 %48, 7
  %51 = and i32 %49, 7
  %52 = and i32 %48, 327680
  %53 = add nsw i32 %52, -196608
  %54 = ashr exact i32 %53, 16
  %55 = zext i32 %54 to i64
  %56 = zext nneg i32 %50 to i64
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %58 = load ptr, ptr %57, align 8, !tbaa !134
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %60 = load i64, ptr %59, align 8, !tbaa !135
  %61 = zext nneg i32 %51 to i64
  %62 = shl i64 %60, %61
  %63 = sdiv i64 %62, 8
  %64 = getelementptr inbounds i8, ptr %58, i64 %63
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %66 = load i64, ptr %65, align 8, !tbaa !133
  %67 = shl i64 %66, %56
  %68 = sdiv i64 %67, 8
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %70 = load i64, ptr %69, align 8, !tbaa !136
  %71 = shl i64 %70, %61
  %72 = sdiv i64 %71, 8
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %74 = load i64, ptr %73, align 8, !tbaa !139
  %75 = shl i64 %74, %55
  %76 = icmp sgt i32 %31, 0
  br i1 %76, label %77, label %123

77:                                               ; preds = %47
  %78 = shl i32 %37, 16
  %79 = ashr exact i32 %78, 16
  %80 = shl i32 %35, 16
  %81 = ashr exact i32 %80, 16
  %82 = mul nsw i32 %79, %81
  %83 = shl i32 %82, %54
  %84 = load ptr, ptr %0, align 8, !tbaa !127
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %86 = load i64, ptr %85, align 8, !tbaa !132
  %87 = shl i64 %86, %56
  %88 = sdiv i64 %87, 8
  %89 = getelementptr inbounds i8, ptr %84, i64 %88
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %91 = load ptr, ptr %90, align 8, !tbaa !137
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %93 = load i64, ptr %92, align 8, !tbaa !138
  %94 = shl i64 %93, %55
  %95 = getelementptr inbounds i8, ptr %91, i64 %94
  %96 = icmp sgt i32 %33, 0
  %97 = sext i32 %83 to i64
  br i1 %96, label %98, label %115

98:                                               ; preds = %77, %110
  %99 = phi i32 [ %113, %110 ], [ 0, %77 ]
  %100 = phi ptr [ %111, %110 ], [ %95, %77 ]
  %101 = phi ptr [ %112, %110 ], [ %89, %77 ]
  tail call void @llvm.prefetch.p0(ptr %100, i32 1, i32 1, i32 1)
  tail call void @llvm.prefetch.p0(ptr %101, i32 0, i32 3, i32 1)
  tail call void @llvm.prefetch.p0(ptr %64, i32 0, i32 3, i32 1)
  br label %102

102:                                              ; preds = %102, %98
  %103 = phi i32 [ 0, %98 ], [ %108, %102 ]
  %104 = phi ptr [ %64, %98 ], [ %107, %102 ]
  %105 = phi ptr [ %100, %98 ], [ %106, %102 ]
  tail call void %29(ptr noundef %105, ptr noundef %101, ptr noundef %104, ptr noundef nonnull %0) #26
  %106 = getelementptr inbounds i8, ptr %105, i64 %97
  %107 = getelementptr inbounds i8, ptr %104, i64 %72
  %108 = add nuw nsw i32 %103, 1
  %109 = icmp eq i32 %108, %33
  br i1 %109, label %110, label %102, !llvm.loop !148

110:                                              ; preds = %102
  %111 = getelementptr inbounds i8, ptr %100, i64 %75
  %112 = getelementptr inbounds i8, ptr %101, i64 %68
  %113 = add nuw nsw i32 %99, 1
  %114 = icmp eq i32 %113, %31
  br i1 %114, label %123, label %98, !llvm.loop !150

115:                                              ; preds = %77, %115
  %116 = phi i32 [ %121, %115 ], [ 0, %77 ]
  %117 = phi ptr [ %119, %115 ], [ %95, %77 ]
  %118 = phi ptr [ %120, %115 ], [ %89, %77 ]
  tail call void @llvm.prefetch.p0(ptr %117, i32 1, i32 1, i32 1)
  tail call void @llvm.prefetch.p0(ptr %118, i32 0, i32 3, i32 1)
  tail call void @llvm.prefetch.p0(ptr %64, i32 0, i32 3, i32 1)
  %119 = getelementptr inbounds i8, ptr %117, i64 %75
  %120 = getelementptr inbounds i8, ptr %118, i64 %68
  %121 = add nuw nsw i32 %116, 1
  %122 = icmp eq i32 %121, %31
  br i1 %122, label %123, label %115, !llvm.loop !150

123:                                              ; preds = %115, %110, %1, %5, %13, %47
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal ptr @iree_uk_mmt4d_select_tile_func_arch(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %3 = load i32, ptr %2, align 4, !tbaa !146
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %745 [
    i8 1, label %5
    i8 2, label %396
    i8 10, label %588
    i8 6, label %329
    i8 5, label %262
    i8 4, label %155
    i8 3, label %48
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %7)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %745

10:                                               ; preds = %5
  %11 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %7, i1 true)
  switch i32 %11, label %745 [
    i32 0, label %12
    i32 1, label %21
    i32 2, label %30
    i32 3, label %39
  ]

12:                                               ; preds = %10
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %14 = load i32, ptr %13, align 4, !tbaa !144
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %16, label %745

16:                                               ; preds = %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %18 = load i32, ptr %17, align 8, !tbaa !145
  %19 = icmp eq i32 %18, 1
  %20 = select i1 %19, ptr @iree_uk_mmt4d_tile_f32f32f32_1x8x1_arm_64, ptr null
  br label %745

21:                                               ; preds = %10
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %23 = load i32, ptr %22, align 4, !tbaa !144
  %24 = icmp eq i32 %23, 8
  br i1 %24, label %25, label %745

25:                                               ; preds = %21
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %27 = load i32, ptr %26, align 8, !tbaa !145
  %28 = icmp eq i32 %27, 1
  %29 = select i1 %28, ptr @iree_uk_mmt4d_tile_f32f32f32_2x8x1_arm_64, ptr null
  br label %745

30:                                               ; preds = %10
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %32 = load i32, ptr %31, align 4, !tbaa !144
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %34, label %745

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %36 = load i32, ptr %35, align 8, !tbaa !145
  %37 = icmp eq i32 %36, 1
  %38 = select i1 %37, ptr @iree_uk_mmt4d_tile_f32f32f32_4x8x1_arm_64, ptr null
  br label %745

39:                                               ; preds = %10
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %41 = load i32, ptr %40, align 4, !tbaa !144
  %42 = icmp eq i32 %41, 8
  br i1 %42, label %43, label %745

43:                                               ; preds = %39
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %45 = load i32, ptr %44, align 8, !tbaa !145
  %46 = icmp eq i32 %45, 1
  %47 = select i1 %46, ptr @iree_uk_mmt4d_tile_f32f32f32_8x8x1_arm_64, ptr null
  br label %745

48:                                               ; preds = %1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %50 = load i32, ptr %49, align 8, !tbaa !143
  %51 = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %50)
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %745

53:                                               ; preds = %48
  %54 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %50, i1 true)
  switch i32 %54, label %745 [
    i32 0, label %55
    i32 1, label %64
    i32 2, label %73
    i32 3, label %82
  ]

55:                                               ; preds = %53
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %57 = load i32, ptr %56, align 4, !tbaa !144
  %58 = icmp eq i32 %57, 8
  br i1 %58, label %59, label %91

59:                                               ; preds = %55
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %61 = load i32, ptr %60, align 8, !tbaa !145
  %62 = icmp eq i32 %61, 1
  %63 = select i1 %62, ptr @iree_uk_mmt4d_tile_f16f16f32_1x8x1_arm_64, ptr null
  br label %91

64:                                               ; preds = %53
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %66 = load i32, ptr %65, align 4, !tbaa !144
  %67 = icmp eq i32 %66, 8
  br i1 %67, label %68, label %107

68:                                               ; preds = %64
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %70 = load i32, ptr %69, align 8, !tbaa !145
  %71 = icmp eq i32 %70, 1
  %72 = select i1 %71, ptr @iree_uk_mmt4d_tile_f16f16f32_2x8x1_arm_64, ptr null
  br label %107

73:                                               ; preds = %53
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %75 = load i32, ptr %74, align 4, !tbaa !144
  %76 = icmp eq i32 %75, 8
  br i1 %76, label %77, label %123

77:                                               ; preds = %73
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %79 = load i32, ptr %78, align 8, !tbaa !145
  %80 = icmp eq i32 %79, 1
  %81 = select i1 %80, ptr @iree_uk_mmt4d_tile_f16f16f32_4x8x1_arm_64, ptr null
  br label %123

82:                                               ; preds = %53
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %84 = load i32, ptr %83, align 4, !tbaa !144
  %85 = icmp eq i32 %84, 8
  br i1 %85, label %86, label %139

86:                                               ; preds = %82
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %88 = load i32, ptr %87, align 8, !tbaa !145
  %89 = icmp eq i32 %88, 1
  %90 = select i1 %89, ptr @iree_uk_mmt4d_tile_f16f16f32_8x8x1_arm_64, ptr null
  br label %139

91:                                               ; preds = %55, %59
  %92 = phi ptr [ %63, %59 ], [ null, %55 ]
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %94 = load i32, ptr %93, align 4, !tbaa !144
  %95 = icmp eq i32 %94, 8
  br i1 %95, label %96, label %745

96:                                               ; preds = %91
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %98 = load i32, ptr %97, align 8, !tbaa !145
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %745

100:                                              ; preds = %96
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %102 = load ptr, ptr %101, align 8, !tbaa !147
  %103 = load i64, ptr %102, align 8, !tbaa !151
  %104 = and i64 %103, 2048
  %105 = icmp eq i64 %104, 0
  %106 = select i1 %105, ptr %92, ptr @iree_uk_mmt4d_tile_f16f16f32_1x8x1_arm_64_fp16fml
  br label %745

107:                                              ; preds = %68, %64
  %108 = phi ptr [ null, %64 ], [ %72, %68 ]
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %110 = load i32, ptr %109, align 4, !tbaa !144
  %111 = icmp eq i32 %110, 8
  br i1 %111, label %112, label %745

112:                                              ; preds = %107
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %114 = load i32, ptr %113, align 8, !tbaa !145
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %745

116:                                              ; preds = %112
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %118 = load ptr, ptr %117, align 8, !tbaa !147
  %119 = load i64, ptr %118, align 8, !tbaa !151
  %120 = and i64 %119, 2048
  %121 = icmp eq i64 %120, 0
  %122 = select i1 %121, ptr %108, ptr @iree_uk_mmt4d_tile_f16f16f32_2x8x1_arm_64_fp16fml
  br label %745

123:                                              ; preds = %77, %73
  %124 = phi ptr [ %81, %77 ], [ null, %73 ]
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %126 = load i32, ptr %125, align 4, !tbaa !144
  %127 = icmp eq i32 %126, 8
  br i1 %127, label %128, label %745

128:                                              ; preds = %123
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %130 = load i32, ptr %129, align 8, !tbaa !145
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %745

132:                                              ; preds = %128
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %134 = load ptr, ptr %133, align 8, !tbaa !147
  %135 = load i64, ptr %134, align 8, !tbaa !151
  %136 = and i64 %135, 2048
  %137 = icmp eq i64 %136, 0
  %138 = select i1 %137, ptr %124, ptr @iree_uk_mmt4d_tile_f16f16f32_4x8x1_arm_64_fp16fml
  br label %745

139:                                              ; preds = %82, %86
  %140 = phi ptr [ %90, %86 ], [ null, %82 ]
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %142 = load i32, ptr %141, align 4, !tbaa !144
  %143 = icmp eq i32 %142, 8
  br i1 %143, label %144, label %745

144:                                              ; preds = %139
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %146 = load i32, ptr %145, align 8, !tbaa !145
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %745

148:                                              ; preds = %144
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %150 = load ptr, ptr %149, align 8, !tbaa !147
  %151 = load i64, ptr %150, align 8, !tbaa !151
  %152 = and i64 %151, 2048
  %153 = icmp eq i64 %152, 0
  %154 = select i1 %153, ptr %140, ptr @iree_uk_mmt4d_tile_f16f16f32_8x8x1_arm_64_fp16fml
  br label %745

155:                                              ; preds = %1
  %156 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %157 = load i32, ptr %156, align 8, !tbaa !143
  %158 = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %157)
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %160, label %745

160:                                              ; preds = %155
  %161 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %157, i1 true)
  switch i32 %161, label %745 [
    i32 0, label %162
    i32 1, label %171
    i32 2, label %180
    i32 3, label %189
  ]

162:                                              ; preds = %160
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %164 = load i32, ptr %163, align 4, !tbaa !144
  %165 = icmp eq i32 %164, 8
  br i1 %165, label %166, label %198

166:                                              ; preds = %162
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %168 = load i32, ptr %167, align 8, !tbaa !145
  %169 = icmp eq i32 %168, 1
  %170 = select i1 %169, ptr @iree_uk_mmt4d_tile_f16f16f16_1x8x1_arm_64, ptr null
  br label %198

171:                                              ; preds = %160
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %173 = load i32, ptr %172, align 4, !tbaa !144
  %174 = icmp eq i32 %173, 8
  br i1 %174, label %175, label %214

175:                                              ; preds = %171
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %177 = load i32, ptr %176, align 8, !tbaa !145
  %178 = icmp eq i32 %177, 1
  %179 = select i1 %178, ptr @iree_uk_mmt4d_tile_f16f16f16_2x8x1_arm_64, ptr null
  br label %214

180:                                              ; preds = %160
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %182 = load i32, ptr %181, align 4, !tbaa !144
  %183 = icmp eq i32 %182, 8
  br i1 %183, label %184, label %230

184:                                              ; preds = %180
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %186 = load i32, ptr %185, align 8, !tbaa !145
  %187 = icmp eq i32 %186, 1
  %188 = select i1 %187, ptr @iree_uk_mmt4d_tile_f16f16f16_4x8x1_arm_64, ptr null
  br label %230

189:                                              ; preds = %160
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %191 = load i32, ptr %190, align 4, !tbaa !144
  %192 = icmp eq i32 %191, 8
  br i1 %192, label %193, label %246

193:                                              ; preds = %189
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %195 = load i32, ptr %194, align 8, !tbaa !145
  %196 = icmp eq i32 %195, 1
  %197 = select i1 %196, ptr @iree_uk_mmt4d_tile_f16f16f16_8x8x1_arm_64, ptr null
  br label %246

198:                                              ; preds = %162, %166
  %199 = phi ptr [ %170, %166 ], [ null, %162 ]
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %201 = load i32, ptr %200, align 4, !tbaa !144
  %202 = icmp eq i32 %201, 8
  br i1 %202, label %203, label %745

203:                                              ; preds = %198
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %205 = load i32, ptr %204, align 8, !tbaa !145
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %207, label %745

207:                                              ; preds = %203
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %209 = load ptr, ptr %208, align 8, !tbaa !147
  %210 = load i64, ptr %209, align 8, !tbaa !151
  %211 = and i64 %210, 1024
  %212 = icmp eq i64 %211, 0
  %213 = select i1 %212, ptr %199, ptr @iree_uk_mmt4d_tile_f16f16f16_1x8x1_arm_64_fullfp16
  br label %745

214:                                              ; preds = %175, %171
  %215 = phi ptr [ null, %171 ], [ %179, %175 ]
  %216 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %217 = load i32, ptr %216, align 4, !tbaa !144
  %218 = icmp eq i32 %217, 8
  br i1 %218, label %219, label %745

219:                                              ; preds = %214
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %221 = load i32, ptr %220, align 8, !tbaa !145
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %223, label %745

223:                                              ; preds = %219
  %224 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %225 = load ptr, ptr %224, align 8, !tbaa !147
  %226 = load i64, ptr %225, align 8, !tbaa !151
  %227 = and i64 %226, 1024
  %228 = icmp eq i64 %227, 0
  %229 = select i1 %228, ptr %215, ptr @iree_uk_mmt4d_tile_f16f16f16_2x8x1_arm_64_fullfp16
  br label %745

230:                                              ; preds = %184, %180
  %231 = phi ptr [ %188, %184 ], [ null, %180 ]
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %233 = load i32, ptr %232, align 4, !tbaa !144
  %234 = icmp eq i32 %233, 8
  br i1 %234, label %235, label %745

235:                                              ; preds = %230
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %237 = load i32, ptr %236, align 8, !tbaa !145
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %239, label %745

239:                                              ; preds = %235
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %241 = load ptr, ptr %240, align 8, !tbaa !147
  %242 = load i64, ptr %241, align 8, !tbaa !151
  %243 = and i64 %242, 1024
  %244 = icmp eq i64 %243, 0
  %245 = select i1 %244, ptr %231, ptr @iree_uk_mmt4d_tile_f16f16f16_4x8x1_arm_64_fullfp16
  br label %745

246:                                              ; preds = %189, %193
  %247 = phi ptr [ %197, %193 ], [ null, %189 ]
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %249 = load i32, ptr %248, align 4, !tbaa !144
  %250 = icmp eq i32 %249, 8
  br i1 %250, label %251, label %745

251:                                              ; preds = %246
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %253 = load i32, ptr %252, align 8, !tbaa !145
  %254 = icmp eq i32 %253, 1
  br i1 %254, label %255, label %745

255:                                              ; preds = %251
  %256 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %257 = load ptr, ptr %256, align 8, !tbaa !147
  %258 = load i64, ptr %257, align 8, !tbaa !151
  %259 = and i64 %258, 1024
  %260 = icmp eq i64 %259, 0
  %261 = select i1 %260, ptr %247, ptr @iree_uk_mmt4d_tile_f16f16f16_8x8x1_arm_64_fullfp16
  br label %745

262:                                              ; preds = %1
  %263 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %264 = load i32, ptr %263, align 8, !tbaa !143
  %265 = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %264)
  %266 = icmp eq i32 %265, 1
  br i1 %266, label %267, label %745

267:                                              ; preds = %262
  %268 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %264, i1 true)
  switch i32 %268, label %745 [
    i32 0, label %269
    i32 1, label %284
    i32 2, label %299
    i32 3, label %314
  ]

269:                                              ; preds = %267
  %270 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %271 = load i32, ptr %270, align 4, !tbaa !144
  %272 = icmp eq i32 %271, 8
  br i1 %272, label %273, label %745

273:                                              ; preds = %269
  %274 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %275 = load i32, ptr %274, align 8, !tbaa !145
  %276 = icmp eq i32 %275, 4
  br i1 %276, label %277, label %745

277:                                              ; preds = %273
  %278 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %279 = load ptr, ptr %278, align 8, !tbaa !147
  %280 = load i64, ptr %279, align 8, !tbaa !151
  %281 = and i64 %280, 16384
  %282 = icmp eq i64 %281, 0
  %283 = select i1 %282, ptr null, ptr @iree_uk_mmt4d_tile_bf16bf16f32_1x8x4_arm_64_bf16
  br label %745

284:                                              ; preds = %267
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %286 = load i32, ptr %285, align 4, !tbaa !144
  %287 = icmp eq i32 %286, 8
  br i1 %287, label %288, label %745

288:                                              ; preds = %284
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %290 = load i32, ptr %289, align 8, !tbaa !145
  %291 = icmp eq i32 %290, 4
  br i1 %291, label %292, label %745

292:                                              ; preds = %288
  %293 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %294 = load ptr, ptr %293, align 8, !tbaa !147
  %295 = load i64, ptr %294, align 8, !tbaa !151
  %296 = and i64 %295, 16384
  %297 = icmp eq i64 %296, 0
  %298 = select i1 %297, ptr null, ptr @iree_uk_mmt4d_tile_bf16bf16f32_2x8x4_arm_64_bf16
  br label %745

299:                                              ; preds = %267
  %300 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %301 = load i32, ptr %300, align 4, !tbaa !144
  %302 = icmp eq i32 %301, 8
  br i1 %302, label %303, label %745

303:                                              ; preds = %299
  %304 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %305 = load i32, ptr %304, align 8, !tbaa !145
  %306 = icmp eq i32 %305, 4
  br i1 %306, label %307, label %745

307:                                              ; preds = %303
  %308 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %309 = load ptr, ptr %308, align 8, !tbaa !147
  %310 = load i64, ptr %309, align 8, !tbaa !151
  %311 = and i64 %310, 16384
  %312 = icmp eq i64 %311, 0
  %313 = select i1 %312, ptr null, ptr @iree_uk_mmt4d_tile_bf16bf16f32_4x8x4_arm_64_bf16
  br label %745

314:                                              ; preds = %267
  %315 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %316 = load i32, ptr %315, align 4, !tbaa !144
  %317 = icmp eq i32 %316, 8
  br i1 %317, label %318, label %745

318:                                              ; preds = %314
  %319 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %320 = load i32, ptr %319, align 8, !tbaa !145
  %321 = icmp eq i32 %320, 4
  br i1 %321, label %322, label %745

322:                                              ; preds = %318
  %323 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %324 = load ptr, ptr %323, align 8, !tbaa !147
  %325 = load i64, ptr %324, align 8, !tbaa !151
  %326 = and i64 %325, 16384
  %327 = icmp eq i64 %326, 0
  %328 = select i1 %327, ptr null, ptr @iree_uk_mmt4d_tile_bf16bf16f32_8x8x4_arm_64_bf16
  br label %745

329:                                              ; preds = %1
  %330 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %331 = load i32, ptr %330, align 8, !tbaa !143
  %332 = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %331)
  %333 = icmp eq i32 %332, 1
  br i1 %333, label %334, label %745

334:                                              ; preds = %329
  %335 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %331, i1 true)
  switch i32 %335, label %745 [
    i32 0, label %336
    i32 1, label %351
    i32 2, label %366
    i32 3, label %381
  ]

336:                                              ; preds = %334
  %337 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %338 = load i32, ptr %337, align 4, !tbaa !144
  %339 = icmp eq i32 %338, 8
  br i1 %339, label %340, label %745

340:                                              ; preds = %336
  %341 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %342 = load i32, ptr %341, align 8, !tbaa !145
  %343 = icmp eq i32 %342, 4
  br i1 %343, label %344, label %745

344:                                              ; preds = %340
  %345 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %346 = load ptr, ptr %345, align 8, !tbaa !147
  %347 = load i64, ptr %346, align 8, !tbaa !151
  %348 = and i64 %347, 16384
  %349 = icmp eq i64 %348, 0
  %350 = select i1 %349, ptr null, ptr @iree_uk_mmt4d_tile_bf16bf16bf16_1x8x4_arm_64_bf16
  br label %745

351:                                              ; preds = %334
  %352 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %353 = load i32, ptr %352, align 4, !tbaa !144
  %354 = icmp eq i32 %353, 8
  br i1 %354, label %355, label %745

355:                                              ; preds = %351
  %356 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %357 = load i32, ptr %356, align 8, !tbaa !145
  %358 = icmp eq i32 %357, 4
  br i1 %358, label %359, label %745

359:                                              ; preds = %355
  %360 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %361 = load ptr, ptr %360, align 8, !tbaa !147
  %362 = load i64, ptr %361, align 8, !tbaa !151
  %363 = and i64 %362, 16384
  %364 = icmp eq i64 %363, 0
  %365 = select i1 %364, ptr null, ptr @iree_uk_mmt4d_tile_bf16bf16bf16_2x8x4_arm_64_bf16
  br label %745

366:                                              ; preds = %334
  %367 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %368 = load i32, ptr %367, align 4, !tbaa !144
  %369 = icmp eq i32 %368, 8
  br i1 %369, label %370, label %745

370:                                              ; preds = %366
  %371 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %372 = load i32, ptr %371, align 8, !tbaa !145
  %373 = icmp eq i32 %372, 4
  br i1 %373, label %374, label %745

374:                                              ; preds = %370
  %375 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %376 = load ptr, ptr %375, align 8, !tbaa !147
  %377 = load i64, ptr %376, align 8, !tbaa !151
  %378 = and i64 %377, 16384
  %379 = icmp eq i64 %378, 0
  %380 = select i1 %379, ptr null, ptr @iree_uk_mmt4d_tile_bf16bf16bf16_4x8x4_arm_64_bf16
  br label %745

381:                                              ; preds = %334
  %382 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %383 = load i32, ptr %382, align 4, !tbaa !144
  %384 = icmp eq i32 %383, 8
  br i1 %384, label %385, label %745

385:                                              ; preds = %381
  %386 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %387 = load i32, ptr %386, align 8, !tbaa !145
  %388 = icmp eq i32 %387, 4
  br i1 %388, label %389, label %745

389:                                              ; preds = %385
  %390 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %391 = load ptr, ptr %390, align 8, !tbaa !147
  %392 = load i64, ptr %391, align 8, !tbaa !151
  %393 = and i64 %392, 16384
  %394 = icmp eq i64 %393, 0
  %395 = select i1 %394, ptr null, ptr @iree_uk_mmt4d_tile_bf16bf16bf16_8x8x4_arm_64_bf16
  br label %745

396:                                              ; preds = %1
  %397 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %398 = load i32, ptr %397, align 8, !tbaa !143
  %399 = icmp eq i32 %398, 1
  br i1 %399, label %400, label %409

400:                                              ; preds = %396
  %401 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %402 = load i32, ptr %401, align 4, !tbaa !144
  %403 = icmp eq i32 %402, 8
  br i1 %403, label %404, label %437

404:                                              ; preds = %400
  %405 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %406 = load i32, ptr %405, align 8, !tbaa !145
  %407 = icmp eq i32 %406, 1
  %408 = select i1 %407, ptr @iree_uk_mmt4d_tile_s8s8s32_1x8x1_arm_64, ptr null
  br label %437

409:                                              ; preds = %396
  switch i32 %398, label %745 [
    i32 2, label %410
    i32 4, label %419
    i32 8, label %428
  ]

410:                                              ; preds = %409
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %412 = load i32, ptr %411, align 4, !tbaa !144
  %413 = icmp eq i32 %412, 8
  br i1 %413, label %414, label %453

414:                                              ; preds = %410
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %416 = load i32, ptr %415, align 8, !tbaa !145
  %417 = icmp eq i32 %416, 1
  %418 = select i1 %417, ptr @iree_uk_mmt4d_tile_s8s8s32_2x8x1_arm_64, ptr null
  br label %453

419:                                              ; preds = %409
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %421 = load i32, ptr %420, align 4, !tbaa !144
  %422 = icmp eq i32 %421, 8
  br i1 %422, label %423, label %469

423:                                              ; preds = %419
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %425 = load i32, ptr %424, align 8, !tbaa !145
  %426 = icmp eq i32 %425, 1
  %427 = select i1 %426, ptr @iree_uk_mmt4d_tile_s8s8s32_4x8x1_arm_64, ptr null
  br label %469

428:                                              ; preds = %409
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %430 = load i32, ptr %429, align 4, !tbaa !144
  %431 = icmp eq i32 %430, 8
  br i1 %431, label %432, label %485

432:                                              ; preds = %428
  %433 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %434 = load i32, ptr %433, align 8, !tbaa !145
  %435 = icmp eq i32 %434, 1
  %436 = select i1 %435, ptr @iree_uk_mmt4d_tile_s8s8s32_8x8x1_arm_64, ptr null
  br label %485

437:                                              ; preds = %400, %404
  %438 = phi ptr [ %408, %404 ], [ null, %400 ]
  %439 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %440 = load i32, ptr %439, align 4, !tbaa !144
  %441 = icmp eq i32 %440, 8
  br i1 %441, label %442, label %501

442:                                              ; preds = %437
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %444 = load i32, ptr %443, align 8, !tbaa !145
  %445 = icmp eq i32 %444, 4
  br i1 %445, label %446, label %501

446:                                              ; preds = %442
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %448 = load ptr, ptr %447, align 8, !tbaa !147
  %449 = load i64, ptr %448, align 8, !tbaa !151
  %450 = and i64 %449, 4096
  %451 = icmp eq i64 %450, 0
  %452 = select i1 %451, ptr %438, ptr @iree_uk_mmt4d_tile_s8s8s32_1x8x4_arm_64_dotprod
  br label %506

453:                                              ; preds = %414, %410
  %454 = phi ptr [ null, %410 ], [ %418, %414 ]
  %455 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %456 = load i32, ptr %455, align 4, !tbaa !144
  %457 = icmp eq i32 %456, 8
  br i1 %457, label %458, label %501

458:                                              ; preds = %453
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %460 = load i32, ptr %459, align 8, !tbaa !145
  %461 = icmp eq i32 %460, 4
  br i1 %461, label %462, label %501

462:                                              ; preds = %458
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %464 = load ptr, ptr %463, align 8, !tbaa !147
  %465 = load i64, ptr %464, align 8, !tbaa !151
  %466 = and i64 %465, 4096
  %467 = icmp eq i64 %466, 0
  %468 = select i1 %467, ptr %454, ptr @iree_uk_mmt4d_tile_s8s8s32_2x8x4_arm_64_dotprod
  br label %501

469:                                              ; preds = %423, %419
  %470 = phi ptr [ %427, %423 ], [ null, %419 ]
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %472 = load i32, ptr %471, align 4, !tbaa !144
  %473 = icmp eq i32 %472, 8
  br i1 %473, label %474, label %501

474:                                              ; preds = %469
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %476 = load i32, ptr %475, align 8, !tbaa !145
  %477 = icmp eq i32 %476, 4
  br i1 %477, label %478, label %501

478:                                              ; preds = %474
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %480 = load ptr, ptr %479, align 8, !tbaa !147
  %481 = load i64, ptr %480, align 8, !tbaa !151
  %482 = and i64 %481, 4096
  %483 = icmp eq i64 %482, 0
  %484 = select i1 %483, ptr %470, ptr @iree_uk_mmt4d_tile_s8s8s32_4x8x4_arm_64_dotprod
  br label %501

485:                                              ; preds = %428, %432
  %486 = phi ptr [ %436, %432 ], [ null, %428 ]
  %487 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %488 = load i32, ptr %487, align 4, !tbaa !144
  %489 = icmp eq i32 %488, 8
  br i1 %489, label %490, label %501

490:                                              ; preds = %485
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %492 = load i32, ptr %491, align 8, !tbaa !145
  %493 = icmp eq i32 %492, 4
  br i1 %493, label %494, label %501

494:                                              ; preds = %490
  %495 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %496 = load ptr, ptr %495, align 8, !tbaa !147
  %497 = load i64, ptr %496, align 8, !tbaa !151
  %498 = and i64 %497, 4096
  %499 = icmp eq i64 %498, 0
  %500 = select i1 %499, ptr %486, ptr @iree_uk_mmt4d_tile_s8s8s32_8x8x4_arm_64_dotprod
  br label %501

501:                                              ; preds = %469, %474, %462, %437, %442, %453, %458, %478, %485, %490, %494
  %502 = phi i1 [ false, %478 ], [ true, %494 ], [ true, %490 ], [ true, %485 ], [ false, %458 ], [ false, %453 ], [ false, %442 ], [ false, %437 ], [ false, %462 ], [ false, %474 ], [ false, %469 ]
  %503 = phi i1 [ false, %478 ], [ false, %494 ], [ false, %490 ], [ false, %485 ], [ true, %458 ], [ true, %453 ], [ false, %442 ], [ false, %437 ], [ true, %462 ], [ false, %474 ], [ false, %469 ]
  %504 = phi i1 [ true, %478 ], [ false, %494 ], [ false, %490 ], [ false, %485 ], [ false, %458 ], [ false, %453 ], [ false, %442 ], [ false, %437 ], [ false, %462 ], [ true, %474 ], [ true, %469 ]
  %505 = phi ptr [ %484, %478 ], [ %500, %494 ], [ %486, %490 ], [ %486, %485 ], [ %454, %458 ], [ %454, %453 ], [ %438, %442 ], [ %438, %437 ], [ %468, %462 ], [ %470, %474 ], [ %470, %469 ]
  br i1 %399, label %506, label %525

506:                                              ; preds = %446, %501
  %507 = phi ptr [ %452, %446 ], [ %505, %501 ]
  %508 = phi i1 [ false, %446 ], [ %504, %501 ]
  %509 = phi i1 [ false, %446 ], [ %503, %501 ]
  %510 = phi i1 [ false, %446 ], [ %502, %501 ]
  %511 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %512 = load i32, ptr %511, align 4, !tbaa !144
  %513 = icmp eq i32 %512, 8
  br i1 %513, label %514, label %525

514:                                              ; preds = %506
  %515 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %516 = load i32, ptr %515, align 8, !tbaa !145
  %517 = icmp eq i32 %516, 8
  br i1 %517, label %518, label %525

518:                                              ; preds = %514
  %519 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %520 = load ptr, ptr %519, align 8, !tbaa !147
  %521 = load i64, ptr %520, align 8, !tbaa !151
  %522 = and i64 %521, 8192
  %523 = icmp eq i64 %522, 0
  %524 = select i1 %523, ptr %507, ptr @iree_uk_mmt4d_tile_s8s8s32_1x8x8_arm_64_i8mm
  br i1 %509, label %530, label %548

525:                                              ; preds = %514, %506, %501
  %526 = phi i1 [ %504, %501 ], [ %508, %506 ], [ %508, %514 ]
  %527 = phi i1 [ %503, %501 ], [ %509, %506 ], [ %509, %514 ]
  %528 = phi i1 [ %502, %501 ], [ %510, %506 ], [ %510, %514 ]
  %529 = phi ptr [ %505, %501 ], [ %507, %506 ], [ %507, %514 ]
  br i1 %527, label %530, label %548

530:                                              ; preds = %518, %525
  %531 = phi ptr [ %524, %518 ], [ %529, %525 ]
  %532 = phi i1 [ %510, %518 ], [ %528, %525 ]
  %533 = phi i1 [ %508, %518 ], [ %526, %525 ]
  %534 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %535 = load i32, ptr %534, align 4, !tbaa !144
  %536 = icmp eq i32 %535, 8
  br i1 %536, label %537, label %548

537:                                              ; preds = %530
  %538 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %539 = load i32, ptr %538, align 8, !tbaa !145
  %540 = icmp eq i32 %539, 8
  br i1 %540, label %541, label %548

541:                                              ; preds = %537
  %542 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %543 = load ptr, ptr %542, align 8, !tbaa !147
  %544 = load i64, ptr %543, align 8, !tbaa !151
  %545 = and i64 %544, 8192
  %546 = icmp eq i64 %545, 0
  %547 = select i1 %546, ptr %531, ptr @iree_uk_mmt4d_tile_s8s8s32_2x8x8_arm_64_i8mm
  br i1 %533, label %552, label %569

548:                                              ; preds = %518, %525, %530, %537
  %549 = phi i1 [ %528, %525 ], [ %510, %518 ], [ %532, %537 ], [ %532, %530 ]
  %550 = phi i1 [ %526, %525 ], [ %508, %518 ], [ %533, %537 ], [ %533, %530 ]
  %551 = phi ptr [ %529, %525 ], [ %524, %518 ], [ %531, %537 ], [ %531, %530 ]
  br i1 %550, label %552, label %569

552:                                              ; preds = %541, %548
  %553 = phi ptr [ %547, %541 ], [ %551, %548 ]
  %554 = phi i1 [ %532, %541 ], [ %549, %548 ]
  %555 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %556 = load i32, ptr %555, align 4, !tbaa !144
  %557 = icmp eq i32 %556, 8
  br i1 %557, label %558, label %569

558:                                              ; preds = %552
  %559 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %560 = load i32, ptr %559, align 8, !tbaa !145
  %561 = icmp eq i32 %560, 8
  br i1 %561, label %562, label %569

562:                                              ; preds = %558
  %563 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %564 = load ptr, ptr %563, align 8, !tbaa !147
  %565 = load i64, ptr %564, align 8, !tbaa !151
  %566 = and i64 %565, 8192
  %567 = icmp eq i64 %566, 0
  %568 = select i1 %567, ptr %553, ptr @iree_uk_mmt4d_tile_s8s8s32_4x8x8_arm_64_i8mm
  br i1 %554, label %572, label %745

569:                                              ; preds = %541, %558, %552, %548
  %570 = phi i1 [ %549, %548 ], [ %554, %552 ], [ %554, %558 ], [ %532, %541 ]
  %571 = phi ptr [ %551, %548 ], [ %553, %552 ], [ %553, %558 ], [ %547, %541 ]
  br i1 %570, label %572, label %745

572:                                              ; preds = %562, %569
  %573 = phi ptr [ %568, %562 ], [ %571, %569 ]
  %574 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %575 = load i32, ptr %574, align 4, !tbaa !144
  %576 = icmp eq i32 %575, 8
  br i1 %576, label %577, label %745

577:                                              ; preds = %572
  %578 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %579 = load i32, ptr %578, align 8, !tbaa !145
  %580 = icmp eq i32 %579, 8
  br i1 %580, label %581, label %745

581:                                              ; preds = %577
  %582 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %583 = load ptr, ptr %582, align 8, !tbaa !147
  %584 = load i64, ptr %583, align 8, !tbaa !151
  %585 = and i64 %584, 8192
  %586 = icmp eq i64 %585, 0
  %587 = select i1 %586, ptr %573, ptr @iree_uk_mmt4d_tile_s8s8s32_8x8x8_arm_64_i8mm
  br label %745

588:                                              ; preds = %1
  %589 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %590 = load i32, ptr %589, align 8, !tbaa !143
  %591 = icmp eq i32 %590, 1
  br i1 %591, label %592, label %601

592:                                              ; preds = %588
  %593 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %594 = load i32, ptr %593, align 4, !tbaa !144
  %595 = icmp eq i32 %594, 16
  br i1 %595, label %596, label %620

596:                                              ; preds = %592
  %597 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %598 = load i32, ptr %597, align 8, !tbaa !145
  %599 = icmp eq i32 %598, 2
  %600 = select i1 %599, ptr @iree_uk_mmt4d_tile_s8s4s32_1x16x2_arm_64, ptr null
  br label %620

601:                                              ; preds = %588
  switch i32 %590, label %745 [
    i32 2, label %602
    i32 4, label %611
    i32 8, label %668
  ]

602:                                              ; preds = %601
  %603 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %604 = load i32, ptr %603, align 4, !tbaa !144
  %605 = icmp eq i32 %604, 16
  br i1 %605, label %606, label %636

606:                                              ; preds = %602
  %607 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %608 = load i32, ptr %607, align 8, !tbaa !145
  %609 = icmp eq i32 %608, 2
  %610 = select i1 %609, ptr @iree_uk_mmt4d_tile_s8s4s32_2x16x2_arm_64, ptr null
  br label %636

611:                                              ; preds = %601
  %612 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %613 = load i32, ptr %612, align 4, !tbaa !144
  %614 = icmp eq i32 %613, 16
  br i1 %614, label %615, label %652

615:                                              ; preds = %611
  %616 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %617 = load i32, ptr %616, align 8, !tbaa !145
  %618 = icmp eq i32 %617, 2
  %619 = select i1 %618, ptr @iree_uk_mmt4d_tile_s8s4s32_4x16x2_arm_64, ptr null
  br label %652

620:                                              ; preds = %592, %596
  %621 = phi ptr [ %600, %596 ], [ null, %592 ]
  %622 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %623 = load i32, ptr %622, align 4, !tbaa !144
  %624 = icmp eq i32 %623, 8
  br i1 %624, label %625, label %683

625:                                              ; preds = %620
  %626 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %627 = load i32, ptr %626, align 8, !tbaa !145
  %628 = icmp eq i32 %627, 8
  br i1 %628, label %629, label %683

629:                                              ; preds = %625
  %630 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %631 = load ptr, ptr %630, align 8, !tbaa !147
  %632 = load i64, ptr %631, align 8, !tbaa !151
  %633 = and i64 %632, 4096
  %634 = icmp eq i64 %633, 0
  %635 = select i1 %634, ptr %621, ptr @iree_uk_mmt4d_tile_s8s4s32_1x8x8_arm_64_dotprod
  br label %687

636:                                              ; preds = %606, %602
  %637 = phi ptr [ null, %602 ], [ %610, %606 ]
  %638 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %639 = load i32, ptr %638, align 4, !tbaa !144
  %640 = icmp eq i32 %639, 8
  br i1 %640, label %641, label %683

641:                                              ; preds = %636
  %642 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %643 = load i32, ptr %642, align 8, !tbaa !145
  %644 = icmp eq i32 %643, 8
  br i1 %644, label %645, label %683

645:                                              ; preds = %641
  %646 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %647 = load ptr, ptr %646, align 8, !tbaa !147
  %648 = load i64, ptr %647, align 8, !tbaa !151
  %649 = and i64 %648, 4096
  %650 = icmp eq i64 %649, 0
  %651 = select i1 %650, ptr %637, ptr @iree_uk_mmt4d_tile_s8s4s32_2x8x8_arm_64_dotprod
  br label %683

652:                                              ; preds = %615, %611
  %653 = phi ptr [ null, %611 ], [ %619, %615 ]
  %654 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %655 = load i32, ptr %654, align 4, !tbaa !144
  %656 = icmp eq i32 %655, 8
  br i1 %656, label %657, label %683

657:                                              ; preds = %652
  %658 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %659 = load i32, ptr %658, align 8, !tbaa !145
  %660 = icmp eq i32 %659, 8
  br i1 %660, label %661, label %683

661:                                              ; preds = %657
  %662 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %663 = load ptr, ptr %662, align 8, !tbaa !147
  %664 = load i64, ptr %663, align 8, !tbaa !151
  %665 = and i64 %664, 4096
  %666 = icmp eq i64 %665, 0
  %667 = select i1 %666, ptr %653, ptr @iree_uk_mmt4d_tile_s8s4s32_4x8x8_arm_64_dotprod
  br label %683

668:                                              ; preds = %601
  %669 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %670 = load i32, ptr %669, align 4, !tbaa !144
  %671 = icmp eq i32 %670, 8
  br i1 %671, label %672, label %745

672:                                              ; preds = %668
  %673 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %674 = load i32, ptr %673, align 8, !tbaa !145
  %675 = icmp eq i32 %674, 8
  br i1 %675, label %676, label %745

676:                                              ; preds = %672
  %677 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %678 = load ptr, ptr %677, align 8, !tbaa !147
  %679 = load i64, ptr %678, align 8, !tbaa !151
  %680 = and i64 %679, 4096
  %681 = icmp eq i64 %680, 0
  %682 = select i1 %681, ptr null, ptr @iree_uk_mmt4d_tile_s8s4s32_8x8x8_arm_64_dotprod
  br label %745

683:                                              ; preds = %636, %641, %620, %625, %645, %652, %657, %661
  %684 = phi i1 [ true, %645 ], [ false, %652 ], [ false, %657 ], [ false, %661 ], [ false, %625 ], [ false, %620 ], [ true, %641 ], [ true, %636 ]
  %685 = phi i1 [ false, %645 ], [ true, %652 ], [ true, %657 ], [ true, %661 ], [ false, %625 ], [ false, %620 ], [ false, %641 ], [ false, %636 ]
  %686 = phi ptr [ %651, %645 ], [ %653, %652 ], [ %653, %657 ], [ %667, %661 ], [ %621, %625 ], [ %621, %620 ], [ %637, %641 ], [ %637, %636 ]
  br i1 %591, label %687, label %705

687:                                              ; preds = %629, %683
  %688 = phi ptr [ %635, %629 ], [ %686, %683 ]
  %689 = phi i1 [ false, %629 ], [ %685, %683 ]
  %690 = phi i1 [ false, %629 ], [ %684, %683 ]
  %691 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %692 = load i32, ptr %691, align 4, !tbaa !144
  %693 = icmp eq i32 %692, 8
  br i1 %693, label %694, label %705

694:                                              ; preds = %687
  %695 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %696 = load i32, ptr %695, align 8, !tbaa !145
  %697 = icmp eq i32 %696, 16
  br i1 %697, label %698, label %705

698:                                              ; preds = %694
  %699 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %700 = load ptr, ptr %699, align 8, !tbaa !147
  %701 = load i64, ptr %700, align 8, !tbaa !151
  %702 = and i64 %701, 8192
  %703 = icmp eq i64 %702, 0
  %704 = select i1 %703, ptr %688, ptr @iree_uk_mmt4d_tile_s8s4s32_1x8x16_arm_64_i8mm
  br i1 %690, label %709, label %726

705:                                              ; preds = %683, %687, %694
  %706 = phi i1 [ %684, %683 ], [ %690, %687 ], [ %690, %694 ]
  %707 = phi i1 [ %685, %683 ], [ %689, %687 ], [ %689, %694 ]
  %708 = phi ptr [ %686, %683 ], [ %688, %687 ], [ %688, %694 ]
  br i1 %706, label %709, label %726

709:                                              ; preds = %698, %705
  %710 = phi ptr [ %704, %698 ], [ %708, %705 ]
  %711 = phi i1 [ %689, %698 ], [ %707, %705 ]
  %712 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %713 = load i32, ptr %712, align 4, !tbaa !144
  %714 = icmp eq i32 %713, 8
  br i1 %714, label %715, label %726

715:                                              ; preds = %709
  %716 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %717 = load i32, ptr %716, align 8, !tbaa !145
  %718 = icmp eq i32 %717, 16
  br i1 %718, label %719, label %726

719:                                              ; preds = %715
  %720 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %721 = load ptr, ptr %720, align 8, !tbaa !147
  %722 = load i64, ptr %721, align 8, !tbaa !151
  %723 = and i64 %722, 8192
  %724 = icmp eq i64 %723, 0
  %725 = select i1 %724, ptr %710, ptr @iree_uk_mmt4d_tile_s8s4s32_2x8x16_arm_64_i8mm
  br i1 %711, label %729, label %745

726:                                              ; preds = %698, %715, %709, %705
  %727 = phi i1 [ %707, %705 ], [ %711, %709 ], [ %711, %715 ], [ %689, %698 ]
  %728 = phi ptr [ %708, %705 ], [ %710, %709 ], [ %710, %715 ], [ %704, %698 ]
  br i1 %727, label %729, label %745

729:                                              ; preds = %719, %726
  %730 = phi ptr [ %725, %719 ], [ %728, %726 ]
  %731 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %732 = load i32, ptr %731, align 4, !tbaa !144
  %733 = icmp eq i32 %732, 8
  br i1 %733, label %734, label %745

734:                                              ; preds = %729
  %735 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %736 = load i32, ptr %735, align 8, !tbaa !145
  %737 = icmp eq i32 %736, 16
  br i1 %737, label %738, label %745

738:                                              ; preds = %734
  %739 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %740 = load ptr, ptr %739, align 8, !tbaa !147
  %741 = load i64, ptr %740, align 8, !tbaa !151
  %742 = and i64 %741, 8192
  %743 = icmp eq i64 %742, 0
  %744 = select i1 %743, ptr %730, ptr @iree_uk_mmt4d_tile_s8s4s32_4x8x16_arm_64_i8mm
  br label %745

745:                                              ; preds = %230, %235, %223, %198, %203, %214, %219, %123, %128, %116, %91, %96, %107, %112, %239, %132, %329, %262, %155, %48, %5, %601, %409, %334, %267, %160, %53, %10, %207, %100, %668, %672, %676, %562, %336, %340, %344, %359, %355, %351, %366, %370, %374, %269, %273, %277, %292, %288, %284, %299, %303, %307, %12, %16, %21, %25, %30, %34, %719, %43, %1, %39, %139, %144, %148, %246, %251, %255, %314, %318, %322, %381, %385, %389, %572, %577, %581, %569, %738, %734, %729, %726
  %746 = phi ptr [ %728, %726 ], [ %744, %738 ], [ %730, %734 ], [ %730, %729 ], [ %587, %581 ], [ %573, %577 ], [ %571, %569 ], [ null, %1 ], [ null, %39 ], [ %47, %43 ], [ null, %10 ], [ %573, %572 ], [ %140, %139 ], [ %140, %144 ], [ %154, %148 ], [ null, %329 ], [ %247, %246 ], [ %247, %251 ], [ %261, %255 ], [ %92, %91 ], [ null, %314 ], [ null, %318 ], [ %328, %322 ], [ null, %267 ], [ null, %381 ], [ null, %385 ], [ %395, %389 ], [ null, %334 ], [ %725, %719 ], [ %138, %132 ], [ %245, %239 ], [ %106, %100 ], [ null, %269 ], [ %568, %562 ], [ null, %30 ], [ %38, %34 ], [ null, %21 ], [ %29, %25 ], [ %20, %16 ], [ null, %12 ], [ null, %601 ], [ null, %299 ], [ %313, %307 ], [ null, %303 ], [ %298, %292 ], [ null, %284 ], [ null, %288 ], [ %283, %277 ], [ null, %273 ], [ null, %366 ], [ %380, %374 ], [ null, %370 ], [ %365, %359 ], [ null, %351 ], [ null, %355 ], [ %350, %344 ], [ null, %340 ], [ null, %336 ], [ %213, %207 ], [ %682, %676 ], [ null, %672 ], [ null, %668 ], [ null, %53 ], [ null, %160 ], [ null, %409 ], [ null, %5 ], [ null, %48 ], [ null, %155 ], [ null, %262 ], [ %122, %116 ], [ %124, %123 ], [ %124, %128 ], [ %108, %112 ], [ %108, %107 ], [ %92, %96 ], [ %229, %223 ], [ %231, %230 ], [ %231, %235 ], [ %215, %219 ], [ %215, %214 ], [ %199, %203 ], [ %199, %198 ]
  ret ptr %746
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define internal ptr @iree_uk_mmt4d_select_tile_func_generic(ptr noundef readonly captures(none) %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %3 = load i32, ptr %2, align 4, !tbaa !146
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %20 [
    i8 1, label %5
    i8 2, label %21
    i8 10, label %6
    i8 7, label %7
    i8 8, label %8
    i8 9, label %9
    i8 3, label %10
    i8 4, label %11
    i8 5, label %15
    i8 6, label %16
  ]

5:                                                ; preds = %1
  br label %21

6:                                                ; preds = %1
  br label %21

7:                                                ; preds = %1
  br label %21

8:                                                ; preds = %1
  br label %21

9:                                                ; preds = %1
  br label %21

10:                                               ; preds = %1
  br label %21

11:                                               ; preds = %1
  %12 = and i32 %3, 1024
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr @iree_uk_mmt4d_tile_f16f16f16_generic_noskipround, ptr @iree_uk_mmt4d_tile_f16f16f16_generic_skipround
  br label %21

15:                                               ; preds = %1
  br label %21

16:                                               ; preds = %1
  %17 = and i32 %3, 1024
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, ptr @iree_uk_mmt4d_tile_bf16bf16bf16_generic_noskipround, ptr @iree_uk_mmt4d_tile_bf16bf16bf16_generic_skipround
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %1, %5, %20, %16, %15, %11, %10, %9, %8, %7, %6
  %22 = phi ptr [ null, %20 ], [ %19, %16 ], [ @iree_uk_mmt4d_tile_f32f32f32_generic, %5 ], [ @iree_uk_mmt4d_tile_s8s4s32_generic, %6 ], [ @iree_uk_mmt4d_tile_s16s16s32_generic, %7 ], [ @iree_uk_mmt4d_tile_s16u4s32_generic, %8 ], [ @iree_uk_mmt4d_tile_s16s8s32_generic, %9 ], [ @iree_uk_mmt4d_tile_f16f16f32_generic, %10 ], [ %14, %11 ], [ @iree_uk_mmt4d_tile_bf16bf16f32_generic, %15 ], [ @iree_uk_mmt4d_tile_s8s8s32_generic, %1 ]
  ret ptr %22
}

; Function Attrs: alwaysinline nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #10

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f16_generic_noskipround(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #11 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !143
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %244

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !145
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %16 = load i32, ptr %15, align 4, !tbaa !144
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 48
  %19 = ashr exact i64 %18, 48
  %20 = icmp sgt i64 %19, 0
  %21 = shl i64 %14, 48
  %22 = ashr exact i64 %21, 48
  %23 = icmp sgt i64 %22, 0
  br i1 %20, label %24, label %244

24:                                               ; preds = %11
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %27 = load i32, ptr %26, align 4, !tbaa !146
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  %30 = load i64, ptr %25, align 8, !tbaa !142
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %202

32:                                               ; preds = %24
  br i1 %23, label %33, label %160

33:                                               ; preds = %32, %157
  %34 = phi i64 [ %158, %157 ], [ 0, %32 ]
  %35 = mul nuw nsw i64 %34, %19
  %36 = getelementptr [2 x i8], ptr %0, i64 %35
  br label %37

37:                                               ; preds = %153, %33
  %38 = phi i64 [ 0, %33 ], [ %155, %153 ]
  br i1 %29, label %42, label %39

39:                                               ; preds = %37
  %40 = getelementptr [2 x i8], ptr %36, i64 %38
  %41 = load i16, ptr %40, align 2, !tbaa !109
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i16 [ 0, %37 ], [ %41, %39 ]
  br label %44

44:                                               ; preds = %42, %150
  %45 = phi i64 [ %151, %150 ], [ 0, %42 ]
  %46 = phi i16 [ %147, %150 ], [ %43, %42 ]
  %47 = mul nuw nsw i64 %45, %9
  %48 = add nuw i64 %47, %34
  %49 = mul i64 %48, %22
  %50 = getelementptr [2 x i8], ptr %1, i64 %49
  %51 = mul nuw nsw i64 %45, %19
  %52 = add nuw i64 %51, %38
  %53 = mul i64 %52, %22
  %54 = getelementptr [2 x i8], ptr %2, i64 %53
  br label %55

55:                                               ; preds = %140, %44
  %56 = phi i64 [ 0, %44 ], [ %148, %140 ]
  %57 = phi i16 [ %46, %44 ], [ %147, %140 ]
  %58 = getelementptr [2 x i8], ptr %50, i64 %56
  %59 = load i16, ptr %58, align 2, !tbaa !109
  %60 = zext i16 %59 to i32
  %61 = and i32 %60, 31744
  %62 = and i32 %60, 1023
  switch i32 %61, label %66 [
    i32 31744, label %63
    i32 0, label %70
  ]

63:                                               ; preds = %55
  %64 = icmp eq i32 %62, 0
  %65 = select i1 %64, i32 0, i32 8388607
  br label %70

66:                                               ; preds = %55
  %67 = shl nuw nsw i32 %61, 13
  %68 = add nuw nsw i32 %67, 939524096
  %69 = shl nuw nsw i32 %62, 13
  br label %70

70:                                               ; preds = %66, %63, %55
  %71 = phi i32 [ %69, %66 ], [ %65, %63 ], [ %61, %55 ]
  %72 = phi i32 [ %68, %66 ], [ 2139095040, %63 ], [ %61, %55 ]
  %73 = sext i16 %59 to i32
  %74 = and i32 %73, -2147483648
  %75 = or disjoint i32 %71, %74
  %76 = or i32 %75, %72
  %77 = bitcast i32 %76 to float
  %78 = getelementptr [2 x i8], ptr %54, i64 %56
  %79 = load i16, ptr %78, align 2, !tbaa !109
  %80 = zext i16 %79 to i32
  %81 = and i32 %80, 31744
  %82 = and i32 %80, 1023
  switch i32 %81, label %86 [
    i32 31744, label %83
    i32 0, label %90
  ]

83:                                               ; preds = %70
  %84 = icmp eq i32 %82, 0
  %85 = select i1 %84, i32 0, i32 8388607
  br label %90

86:                                               ; preds = %70
  %87 = shl nuw nsw i32 %81, 13
  %88 = add nuw nsw i32 %87, 939524096
  %89 = shl nuw nsw i32 %82, 13
  br label %90

90:                                               ; preds = %86, %83, %70
  %91 = phi i32 [ %89, %86 ], [ %85, %83 ], [ %81, %70 ]
  %92 = phi i32 [ %88, %86 ], [ 2139095040, %83 ], [ %81, %70 ]
  %93 = sext i16 %79 to i32
  %94 = and i32 %93, -2147483648
  %95 = or disjoint i32 %91, %94
  %96 = or i32 %95, %92
  %97 = bitcast i32 %96 to float
  %98 = zext i16 %57 to i32
  %99 = and i32 %98, 31744
  %100 = and i32 %98, 1023
  switch i32 %99, label %104 [
    i32 31744, label %101
    i32 0, label %108
  ]

101:                                              ; preds = %90
  %102 = icmp eq i32 %100, 0
  %103 = select i1 %102, i32 0, i32 8388607
  br label %108

104:                                              ; preds = %90
  %105 = shl nuw nsw i32 %99, 13
  %106 = add nuw nsw i32 %105, 939524096
  %107 = shl nuw nsw i32 %100, 13
  br label %108

108:                                              ; preds = %104, %101, %90
  %109 = phi i32 [ %107, %104 ], [ %103, %101 ], [ %99, %90 ]
  %110 = phi i32 [ %106, %104 ], [ 2139095040, %101 ], [ %99, %90 ]
  %111 = sext i16 %57 to i32
  %112 = and i32 %111, -2147483648
  %113 = or disjoint i32 %109, %112
  %114 = or i32 %113, %110
  %115 = bitcast i32 %114 to float
  %116 = tail call float @llvm.fmuladd.f32(float %77, float %97, float %115)
  %117 = bitcast float %116 to i32
  %118 = and i32 %117, 2139095040
  %119 = and i32 %117, 8388607
  switch i32 %118, label %123 [
    i32 2139095040, label %120
    i32 0, label %140
  ]

120:                                              ; preds = %108
  %121 = icmp eq i32 %119, 0
  %122 = select i1 %121, i32 0, i32 1023
  br label %140

123:                                              ; preds = %108
  %124 = lshr exact i32 %118, 23
  %125 = icmp samesign ult i32 %118, 1207959552
  br i1 %125, label %126, label %140

126:                                              ; preds = %123
  %127 = icmp samesign ult i32 %118, 939524096
  br i1 %127, label %140, label %128

128:                                              ; preds = %126
  %129 = lshr i32 %117, 13
  %130 = and i32 %129, 1
  %131 = add nuw nsw i32 %130, %119
  %132 = add nuw nsw i32 %131, 4095
  %133 = icmp samesign ugt i32 %131, 8384512
  %134 = select i1 %133, i32 4194177, i32 4194176
  %135 = add nuw nsw i32 %134, %124
  %136 = shl i32 %135, 10
  %137 = add i32 %136, 16384
  %138 = lshr i32 %132, 13
  %139 = select i1 %133, i32 0, i32 %138
  br label %140

140:                                              ; preds = %128, %126, %123, %120, %108
  %141 = phi i32 [ 0, %126 ], [ %122, %120 ], [ %118, %108 ], [ %139, %128 ], [ 0, %123 ]
  %142 = phi i32 [ 0, %126 ], [ 31744, %120 ], [ %118, %108 ], [ %137, %128 ], [ 31744, %123 ]
  %143 = lshr i32 %117, 16
  %144 = and i32 %143, 32768
  %145 = or i32 %141, %144
  %146 = or i32 %145, %142
  %147 = trunc nuw i32 %146 to i16
  %148 = add nuw nsw i64 %56, 1
  %149 = icmp eq i64 %148, %22
  br i1 %149, label %150, label %55, !llvm.loop !152

150:                                              ; preds = %140
  %151 = add nuw nsw i64 %45, 1
  %152 = icmp eq i64 %151, %30
  br i1 %152, label %153, label %44, !llvm.loop !153

153:                                              ; preds = %150
  %154 = getelementptr [2 x i8], ptr %36, i64 %38
  store i16 %147, ptr %154, align 2, !tbaa !109
  %155 = add nuw nsw i64 %38, 1
  %156 = icmp eq i64 %155, %19
  br i1 %156, label %157, label %37, !llvm.loop !154

157:                                              ; preds = %153
  %158 = add nuw nsw i64 %34, 1
  %159 = icmp eq i64 %158, %9
  br i1 %159, label %244, label %33, !llvm.loop !155

160:                                              ; preds = %32
  br i1 %29, label %161, label %244

161:                                              ; preds = %160
  %162 = icmp ult i64 %19, 4
  %163 = icmp ult i64 %19, 16
  %164 = and i64 %17, 15
  %165 = sub nuw nsw i64 %19, %164
  %166 = icmp eq i64 %164, 0
  %167 = icmp samesign ult i64 %164, 4
  %168 = and i64 %17, 3
  %169 = sub nsw i64 %19, %168
  %170 = icmp eq i64 %168, 0
  br label %171

171:                                              ; preds = %161, %199
  %172 = phi i64 [ %200, %199 ], [ 0, %161 ]
  %173 = mul nuw nsw i64 %172, %19
  %174 = getelementptr [2 x i8], ptr %0, i64 %173
  br i1 %162, label %192, label %175

175:                                              ; preds = %171
  br i1 %163, label %184, label %176

176:                                              ; preds = %175, %176
  %177 = phi i64 [ %180, %176 ], [ 0, %175 ]
  %178 = getelementptr [2 x i8], ptr %174, i64 %177
  %179 = getelementptr i8, ptr %178, i64 16
  store <8 x i16> zeroinitializer, ptr %178, align 2, !tbaa !109
  store <8 x i16> zeroinitializer, ptr %179, align 2, !tbaa !109
  %180 = add nuw i64 %177, 16
  %181 = icmp eq i64 %180, %165
  br i1 %181, label %182, label %176, !llvm.loop !156

182:                                              ; preds = %176
  br i1 %166, label %199, label %183

183:                                              ; preds = %182
  br i1 %167, label %192, label %184, !prof !159

184:                                              ; preds = %175, %183
  %185 = phi i64 [ %165, %183 ], [ 0, %175 ]
  br label %186

186:                                              ; preds = %186, %184
  %187 = phi i64 [ %185, %184 ], [ %189, %186 ]
  %188 = getelementptr [2 x i8], ptr %174, i64 %187
  store <4 x i16> zeroinitializer, ptr %188, align 2, !tbaa !109
  %189 = add nuw i64 %187, 4
  %190 = icmp eq i64 %189, %169
  br i1 %190, label %191, label %186, !llvm.loop !160

191:                                              ; preds = %186
  br i1 %170, label %199, label %192

192:                                              ; preds = %171, %183, %191
  %193 = phi i64 [ 0, %171 ], [ %165, %183 ], [ %169, %191 ]
  br label %194

194:                                              ; preds = %192, %194
  %195 = phi i64 [ %197, %194 ], [ %193, %192 ]
  %196 = getelementptr [2 x i8], ptr %174, i64 %195
  store i16 0, ptr %196, align 2, !tbaa !109
  %197 = add nuw nsw i64 %195, 1
  %198 = icmp eq i64 %197, %19
  br i1 %198, label %199, label %194, !llvm.loop !161

199:                                              ; preds = %194, %191, %182
  %200 = add nuw nsw i64 %172, 1
  %201 = icmp eq i64 %200, %9
  br i1 %201, label %244, label %171, !llvm.loop !155

202:                                              ; preds = %24
  br i1 %29, label %203, label %244

203:                                              ; preds = %202
  %204 = icmp ult i64 %19, 4
  %205 = icmp ult i64 %19, 16
  %206 = and i64 %17, 15
  %207 = sub nuw nsw i64 %19, %206
  %208 = icmp eq i64 %206, 0
  %209 = icmp samesign ult i64 %206, 4
  %210 = and i64 %17, 3
  %211 = sub nsw i64 %19, %210
  %212 = icmp eq i64 %210, 0
  br label %213

213:                                              ; preds = %203, %241
  %214 = phi i64 [ %242, %241 ], [ 0, %203 ]
  %215 = mul nuw nsw i64 %214, %19
  %216 = getelementptr [2 x i8], ptr %0, i64 %215
  br i1 %204, label %234, label %217

217:                                              ; preds = %213
  br i1 %205, label %226, label %218

218:                                              ; preds = %217, %218
  %219 = phi i64 [ %222, %218 ], [ 0, %217 ]
  %220 = getelementptr [2 x i8], ptr %216, i64 %219
  %221 = getelementptr i8, ptr %220, i64 16
  store <8 x i16> zeroinitializer, ptr %220, align 2, !tbaa !109
  store <8 x i16> zeroinitializer, ptr %221, align 2, !tbaa !109
  %222 = add nuw i64 %219, 16
  %223 = icmp eq i64 %222, %207
  br i1 %223, label %224, label %218, !llvm.loop !162

224:                                              ; preds = %218
  br i1 %208, label %241, label %225

225:                                              ; preds = %224
  br i1 %209, label %234, label %226, !prof !159

226:                                              ; preds = %217, %225
  %227 = phi i64 [ %207, %225 ], [ 0, %217 ]
  br label %228

228:                                              ; preds = %228, %226
  %229 = phi i64 [ %227, %226 ], [ %231, %228 ]
  %230 = getelementptr [2 x i8], ptr %216, i64 %229
  store <4 x i16> zeroinitializer, ptr %230, align 2, !tbaa !109
  %231 = add nuw i64 %229, 4
  %232 = icmp eq i64 %231, %211
  br i1 %232, label %233, label %228, !llvm.loop !163

233:                                              ; preds = %228
  br i1 %212, label %241, label %234

234:                                              ; preds = %213, %225, %233
  %235 = phi i64 [ 0, %213 ], [ %207, %225 ], [ %211, %233 ]
  br label %236

236:                                              ; preds = %234, %236
  %237 = phi i64 [ %239, %236 ], [ %235, %234 ]
  %238 = getelementptr [2 x i8], ptr %216, i64 %237
  store i16 0, ptr %238, align 2, !tbaa !109
  %239 = add nuw nsw i64 %237, 1
  %240 = icmp eq i64 %239, %19
  br i1 %240, label %241, label %236, !llvm.loop !164

241:                                              ; preds = %236, %233, %224
  %242 = add nuw nsw i64 %214, 1
  %243 = icmp eq i64 %242, %9
  br i1 %243, label %244, label %213, !llvm.loop !155

244:                                              ; preds = %241, %199, %157, %202, %160, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f16_generic_skipround(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #11 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !143
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %323

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !145
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %16 = load i32, ptr %15, align 4, !tbaa !144
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 48
  %19 = ashr exact i64 %18, 48
  %20 = icmp sgt i64 %19, 0
  %21 = shl i64 %14, 48
  %22 = ashr exact i64 %21, 48
  %23 = icmp slt i64 %22, 1
  br i1 %20, label %24, label %323

24:                                               ; preds = %11
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %27 = load i32, ptr %26, align 4, !tbaa !146
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  %30 = load i64, ptr %25, align 8, !tbaa !142
  %31 = icmp slt i64 %30, 1
  %32 = select i1 %31, i1 true, i1 %23
  %33 = icmp ult i64 %22, 8
  %34 = icmp ult i64 %22, 16
  %35 = and i64 %14, 15
  %36 = sub nuw nsw i64 %22, %35
  %37 = icmp eq i64 %35, 0
  %38 = icmp samesign ult i64 %35, 8
  %39 = and i64 %14, 7
  %40 = sub nsw i64 %22, %39
  %41 = icmp eq i64 %39, 0
  br label %42

42:                                               ; preds = %320, %24
  %43 = phi i64 [ 0, %24 ], [ %321, %320 ]
  %44 = mul nuw nsw i64 %43, %19
  %45 = getelementptr [2 x i8], ptr %0, i64 %44
  br label %46

46:                                               ; preds = %42, %96
  %47 = phi i64 [ 0, %42 ], [ %105, %96 ]
  br i1 %29, label %69, label %48

48:                                               ; preds = %46
  %49 = getelementptr [2 x i8], ptr %45, i64 %47
  %50 = load i16, ptr %49, align 2, !tbaa !109
  %51 = zext i16 %50 to i32
  %52 = and i32 %51, 31744
  %53 = and i32 %51, 1023
  switch i32 %52, label %57 [
    i32 31744, label %54
    i32 0, label %61
  ]

54:                                               ; preds = %48
  %55 = icmp eq i32 %53, 0
  %56 = select i1 %55, i32 0, i32 8388607
  br label %61

57:                                               ; preds = %48
  %58 = shl nuw nsw i32 %52, 13
  %59 = add nuw nsw i32 %58, 939524096
  %60 = shl nuw nsw i32 %53, 13
  br label %61

61:                                               ; preds = %57, %54, %48
  %62 = phi i32 [ %60, %57 ], [ %56, %54 ], [ %52, %48 ]
  %63 = phi i32 [ %59, %57 ], [ 2139095040, %54 ], [ %52, %48 ]
  %64 = sext i16 %50 to i32
  %65 = and i32 %64, -2147483648
  %66 = or disjoint i32 %62, %65
  %67 = or i32 %66, %63
  %68 = bitcast i32 %67 to float
  br label %69

69:                                               ; preds = %61, %46
  %70 = phi float [ %68, %61 ], [ 0.000000e+00, %46 ]
  br i1 %32, label %71, label %107

71:                                               ; preds = %316, %69
  %72 = phi float [ %70, %69 ], [ %317, %316 ]
  %73 = bitcast float %72 to i32
  %74 = and i32 %73, 2139095040
  %75 = and i32 %73, 8388607
  switch i32 %74, label %79 [
    i32 2139095040, label %76
    i32 0, label %96
  ]

76:                                               ; preds = %71
  %77 = icmp eq i32 %75, 0
  %78 = select i1 %77, i32 0, i32 1023
  br label %96

79:                                               ; preds = %71
  %80 = lshr exact i32 %74, 23
  %81 = icmp samesign ult i32 %74, 1207959552
  br i1 %81, label %82, label %96

82:                                               ; preds = %79
  %83 = icmp samesign ult i32 %74, 939524096
  br i1 %83, label %96, label %84

84:                                               ; preds = %82
  %85 = lshr i32 %73, 13
  %86 = and i32 %85, 1
  %87 = add nuw nsw i32 %86, %75
  %88 = add nuw nsw i32 %87, 4095
  %89 = icmp samesign ugt i32 %87, 8384512
  %90 = select i1 %89, i32 4194177, i32 4194176
  %91 = add nuw nsw i32 %90, %80
  %92 = shl i32 %91, 10
  %93 = add i32 %92, 16384
  %94 = lshr i32 %88, 13
  %95 = select i1 %89, i32 0, i32 %94
  br label %96

96:                                               ; preds = %84, %82, %79, %76, %71
  %97 = phi i32 [ 0, %82 ], [ %78, %76 ], [ %74, %71 ], [ %95, %84 ], [ 0, %79 ]
  %98 = phi i32 [ 0, %82 ], [ 31744, %76 ], [ %74, %71 ], [ %93, %84 ], [ 31744, %79 ]
  %99 = lshr i32 %73, 16
  %100 = and i32 %99, 32768
  %101 = or i32 %97, %100
  %102 = or i32 %101, %98
  %103 = trunc nuw i32 %102 to i16
  %104 = getelementptr [2 x i8], ptr %45, i64 %47
  store i16 %103, ptr %104, align 2, !tbaa !109
  %105 = add nuw nsw i64 %47, 1
  %106 = icmp eq i64 %105, %19
  br i1 %106, label %320, label %46, !llvm.loop !165

107:                                              ; preds = %69, %316
  %108 = phi i64 [ %318, %316 ], [ 0, %69 ]
  %109 = phi float [ %317, %316 ], [ %70, %69 ]
  %110 = mul nuw nsw i64 %108, %9
  %111 = add nuw i64 %110, %43
  %112 = mul i64 %111, %22
  %113 = getelementptr [2 x i8], ptr %1, i64 %112
  %114 = mul nuw nsw i64 %108, %19
  %115 = add nuw i64 %114, %47
  %116 = mul i64 %115, %22
  %117 = getelementptr [2 x i8], ptr %2, i64 %116
  br i1 %33, label %267, label %118

118:                                              ; preds = %107
  br i1 %34, label %214, label %119

119:                                              ; preds = %118, %119
  %120 = phi i64 [ %210, %119 ], [ 0, %118 ]
  %121 = phi float [ %209, %119 ], [ %109, %118 ]
  %122 = getelementptr [2 x i8], ptr %113, i64 %120
  %123 = getelementptr i8, ptr %122, i64 16
  %124 = load <8 x i16>, ptr %122, align 2, !tbaa !109
  %125 = load <8 x i16>, ptr %123, align 2, !tbaa !109
  %126 = zext <8 x i16> %124 to <8 x i32>
  %127 = zext <8 x i16> %125 to <8 x i32>
  %128 = and <8 x i32> %126, splat (i32 31744)
  %129 = and <8 x i32> %127, splat (i32 31744)
  %130 = and <8 x i32> %126, splat (i32 1023)
  %131 = and <8 x i32> %127, splat (i32 1023)
  %132 = icmp eq <8 x i32> %128, splat (i32 31744)
  %133 = icmp eq <8 x i32> %129, splat (i32 31744)
  %134 = icmp eq <8 x i32> %128, zeroinitializer
  %135 = icmp eq <8 x i32> %129, zeroinitializer
  %136 = icmp eq <8 x i32> %130, zeroinitializer
  %137 = icmp eq <8 x i32> %131, zeroinitializer
  %138 = select <8 x i1> %136, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %139 = select <8 x i1> %137, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %140 = shl nuw nsw <8 x i32> %128, splat (i32 13)
  %141 = shl nuw nsw <8 x i32> %129, splat (i32 13)
  %142 = add nuw nsw <8 x i32> %140, splat (i32 939524096)
  %143 = add nuw nsw <8 x i32> %141, splat (i32 939524096)
  %144 = shl nuw nsw <8 x i32> %130, splat (i32 13)
  %145 = shl nuw nsw <8 x i32> %131, splat (i32 13)
  %146 = select <8 x i1> %132, <8 x i32> %138, <8 x i32> %144
  %147 = select <8 x i1> %134, <8 x i32> zeroinitializer, <8 x i32> %146
  %148 = select <8 x i1> %133, <8 x i32> %139, <8 x i32> %145
  %149 = select <8 x i1> %135, <8 x i32> zeroinitializer, <8 x i32> %148
  %150 = select <8 x i1> %132, <8 x i32> splat (i32 2139095040), <8 x i32> %142
  %151 = select <8 x i1> %134, <8 x i32> zeroinitializer, <8 x i32> %150
  %152 = select <8 x i1> %133, <8 x i32> splat (i32 2139095040), <8 x i32> %143
  %153 = select <8 x i1> %135, <8 x i32> zeroinitializer, <8 x i32> %152
  %154 = sext <8 x i16> %124 to <8 x i32>
  %155 = sext <8 x i16> %125 to <8 x i32>
  %156 = and <8 x i32> %154, splat (i32 -2147483648)
  %157 = and <8 x i32> %155, splat (i32 -2147483648)
  %158 = or disjoint <8 x i32> %147, %156
  %159 = or disjoint <8 x i32> %149, %157
  %160 = or disjoint <8 x i32> %158, %151
  %161 = or disjoint <8 x i32> %159, %153
  %162 = bitcast <8 x i32> %160 to <8 x float>
  %163 = bitcast <8 x i32> %161 to <8 x float>
  %164 = getelementptr [2 x i8], ptr %117, i64 %120
  %165 = getelementptr i8, ptr %164, i64 16
  %166 = load <8 x i16>, ptr %164, align 2, !tbaa !109
  %167 = load <8 x i16>, ptr %165, align 2, !tbaa !109
  %168 = zext <8 x i16> %166 to <8 x i32>
  %169 = zext <8 x i16> %167 to <8 x i32>
  %170 = and <8 x i32> %168, splat (i32 31744)
  %171 = and <8 x i32> %169, splat (i32 31744)
  %172 = and <8 x i32> %168, splat (i32 1023)
  %173 = and <8 x i32> %169, splat (i32 1023)
  %174 = icmp eq <8 x i32> %170, splat (i32 31744)
  %175 = icmp eq <8 x i32> %171, splat (i32 31744)
  %176 = icmp eq <8 x i32> %170, zeroinitializer
  %177 = icmp eq <8 x i32> %171, zeroinitializer
  %178 = icmp eq <8 x i32> %172, zeroinitializer
  %179 = icmp eq <8 x i32> %173, zeroinitializer
  %180 = select <8 x i1> %178, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %181 = select <8 x i1> %179, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %182 = shl nuw nsw <8 x i32> %170, splat (i32 13)
  %183 = shl nuw nsw <8 x i32> %171, splat (i32 13)
  %184 = add nuw nsw <8 x i32> %182, splat (i32 939524096)
  %185 = add nuw nsw <8 x i32> %183, splat (i32 939524096)
  %186 = shl nuw nsw <8 x i32> %172, splat (i32 13)
  %187 = shl nuw nsw <8 x i32> %173, splat (i32 13)
  %188 = select <8 x i1> %174, <8 x i32> %180, <8 x i32> %186
  %189 = select <8 x i1> %176, <8 x i32> zeroinitializer, <8 x i32> %188
  %190 = select <8 x i1> %175, <8 x i32> %181, <8 x i32> %187
  %191 = select <8 x i1> %177, <8 x i32> zeroinitializer, <8 x i32> %190
  %192 = select <8 x i1> %174, <8 x i32> splat (i32 2139095040), <8 x i32> %184
  %193 = select <8 x i1> %176, <8 x i32> zeroinitializer, <8 x i32> %192
  %194 = select <8 x i1> %175, <8 x i32> splat (i32 2139095040), <8 x i32> %185
  %195 = select <8 x i1> %177, <8 x i32> zeroinitializer, <8 x i32> %194
  %196 = sext <8 x i16> %166 to <8 x i32>
  %197 = sext <8 x i16> %167 to <8 x i32>
  %198 = and <8 x i32> %196, splat (i32 -2147483648)
  %199 = and <8 x i32> %197, splat (i32 -2147483648)
  %200 = or disjoint <8 x i32> %189, %198
  %201 = or disjoint <8 x i32> %191, %199
  %202 = or disjoint <8 x i32> %200, %193
  %203 = or disjoint <8 x i32> %201, %195
  %204 = bitcast <8 x i32> %202 to <8 x float>
  %205 = bitcast <8 x i32> %203 to <8 x float>
  %206 = fmul <8 x float> %162, %204
  %207 = fmul <8 x float> %163, %205
  %208 = tail call float @llvm.vector.reduce.fadd.v8f32(float %121, <8 x float> %206)
  %209 = tail call float @llvm.vector.reduce.fadd.v8f32(float %208, <8 x float> %207)
  %210 = add nuw i64 %120, 16
  %211 = icmp eq i64 %210, %36
  br i1 %211, label %212, label %119, !llvm.loop !166

212:                                              ; preds = %119
  br i1 %37, label %316, label %213

213:                                              ; preds = %212
  br i1 %38, label %267, label %214, !prof !167

214:                                              ; preds = %118, %213
  %215 = phi i64 [ %36, %213 ], [ 0, %118 ]
  %216 = phi float [ %209, %213 ], [ %109, %118 ]
  br label %217

217:                                              ; preds = %217, %214
  %218 = phi i64 [ %215, %214 ], [ %264, %217 ]
  %219 = phi float [ %216, %214 ], [ %263, %217 ]
  %220 = getelementptr [2 x i8], ptr %113, i64 %218
  %221 = load <8 x i16>, ptr %220, align 2, !tbaa !109
  %222 = zext <8 x i16> %221 to <8 x i32>
  %223 = and <8 x i32> %222, splat (i32 31744)
  %224 = and <8 x i32> %222, splat (i32 1023)
  %225 = icmp eq <8 x i32> %223, splat (i32 31744)
  %226 = icmp eq <8 x i32> %223, zeroinitializer
  %227 = icmp eq <8 x i32> %224, zeroinitializer
  %228 = select <8 x i1> %227, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %229 = shl nuw nsw <8 x i32> %223, splat (i32 13)
  %230 = add nuw nsw <8 x i32> %229, splat (i32 939524096)
  %231 = shl nuw nsw <8 x i32> %224, splat (i32 13)
  %232 = select <8 x i1> %225, <8 x i32> %228, <8 x i32> %231
  %233 = select <8 x i1> %226, <8 x i32> zeroinitializer, <8 x i32> %232
  %234 = select <8 x i1> %225, <8 x i32> splat (i32 2139095040), <8 x i32> %230
  %235 = select <8 x i1> %226, <8 x i32> zeroinitializer, <8 x i32> %234
  %236 = sext <8 x i16> %221 to <8 x i32>
  %237 = and <8 x i32> %236, splat (i32 -2147483648)
  %238 = or disjoint <8 x i32> %233, %237
  %239 = or disjoint <8 x i32> %238, %235
  %240 = bitcast <8 x i32> %239 to <8 x float>
  %241 = getelementptr [2 x i8], ptr %117, i64 %218
  %242 = load <8 x i16>, ptr %241, align 2, !tbaa !109
  %243 = zext <8 x i16> %242 to <8 x i32>
  %244 = and <8 x i32> %243, splat (i32 31744)
  %245 = and <8 x i32> %243, splat (i32 1023)
  %246 = icmp eq <8 x i32> %244, splat (i32 31744)
  %247 = icmp eq <8 x i32> %244, zeroinitializer
  %248 = icmp eq <8 x i32> %245, zeroinitializer
  %249 = select <8 x i1> %248, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %250 = shl nuw nsw <8 x i32> %244, splat (i32 13)
  %251 = add nuw nsw <8 x i32> %250, splat (i32 939524096)
  %252 = shl nuw nsw <8 x i32> %245, splat (i32 13)
  %253 = select <8 x i1> %246, <8 x i32> %249, <8 x i32> %252
  %254 = select <8 x i1> %247, <8 x i32> zeroinitializer, <8 x i32> %253
  %255 = select <8 x i1> %246, <8 x i32> splat (i32 2139095040), <8 x i32> %251
  %256 = select <8 x i1> %247, <8 x i32> zeroinitializer, <8 x i32> %255
  %257 = sext <8 x i16> %242 to <8 x i32>
  %258 = and <8 x i32> %257, splat (i32 -2147483648)
  %259 = or disjoint <8 x i32> %254, %258
  %260 = or disjoint <8 x i32> %259, %256
  %261 = bitcast <8 x i32> %260 to <8 x float>
  %262 = fmul <8 x float> %240, %261
  %263 = tail call float @llvm.vector.reduce.fadd.v8f32(float %219, <8 x float> %262)
  %264 = add nuw i64 %218, 8
  %265 = icmp eq i64 %264, %40
  br i1 %265, label %266, label %217, !llvm.loop !168

266:                                              ; preds = %217
  br i1 %41, label %316, label %267

267:                                              ; preds = %107, %213, %266
  %268 = phi i64 [ 0, %107 ], [ %36, %213 ], [ %40, %266 ]
  %269 = phi float [ %109, %107 ], [ %209, %213 ], [ %263, %266 ]
  br label %270

270:                                              ; preds = %267, %305
  %271 = phi i64 [ %314, %305 ], [ %268, %267 ]
  %272 = phi float [ %313, %305 ], [ %269, %267 ]
  %273 = getelementptr [2 x i8], ptr %113, i64 %271
  %274 = load i16, ptr %273, align 2, !tbaa !109
  %275 = zext i16 %274 to i32
  %276 = and i32 %275, 31744
  %277 = and i32 %275, 1023
  switch i32 %276, label %281 [
    i32 31744, label %278
    i32 0, label %285
  ]

278:                                              ; preds = %270
  %279 = icmp eq i32 %277, 0
  %280 = select i1 %279, i32 0, i32 8388607
  br label %285

281:                                              ; preds = %270
  %282 = shl nuw nsw i32 %276, 13
  %283 = add nuw nsw i32 %282, 939524096
  %284 = shl nuw nsw i32 %277, 13
  br label %285

285:                                              ; preds = %281, %278, %270
  %286 = phi i32 [ %284, %281 ], [ %280, %278 ], [ %276, %270 ]
  %287 = phi i32 [ %283, %281 ], [ 2139095040, %278 ], [ %276, %270 ]
  %288 = sext i16 %274 to i32
  %289 = and i32 %288, -2147483648
  %290 = or disjoint i32 %286, %289
  %291 = or i32 %290, %287
  %292 = bitcast i32 %291 to float
  %293 = getelementptr [2 x i8], ptr %117, i64 %271
  %294 = load i16, ptr %293, align 2, !tbaa !109
  %295 = zext i16 %294 to i32
  %296 = and i32 %295, 31744
  %297 = and i32 %295, 1023
  switch i32 %296, label %301 [
    i32 31744, label %298
    i32 0, label %305
  ]

298:                                              ; preds = %285
  %299 = icmp eq i32 %297, 0
  %300 = select i1 %299, i32 0, i32 8388607
  br label %305

301:                                              ; preds = %285
  %302 = shl nuw nsw i32 %296, 13
  %303 = add nuw nsw i32 %302, 939524096
  %304 = shl nuw nsw i32 %297, 13
  br label %305

305:                                              ; preds = %301, %298, %285
  %306 = phi i32 [ %304, %301 ], [ %300, %298 ], [ %296, %285 ]
  %307 = phi i32 [ %303, %301 ], [ 2139095040, %298 ], [ %296, %285 ]
  %308 = sext i16 %294 to i32
  %309 = and i32 %308, -2147483648
  %310 = or disjoint i32 %306, %309
  %311 = or i32 %310, %307
  %312 = bitcast i32 %311 to float
  %313 = tail call float @llvm.fmuladd.f32(float %292, float %312, float %272)
  %314 = add nuw nsw i64 %271, 1
  %315 = icmp eq i64 %314, %22
  br i1 %315, label %316, label %270, !llvm.loop !169

316:                                              ; preds = %305, %266, %212
  %317 = phi float [ %263, %266 ], [ %209, %212 ], [ %313, %305 ]
  %318 = add nuw nsw i64 %108, 1
  %319 = icmp eq i64 %318, %30
  br i1 %319, label %71, label %107, !llvm.loop !170

320:                                              ; preds = %96
  %321 = add nuw nsw i64 %43, 1
  %322 = icmp eq i64 %321, %9
  br i1 %322, label %323, label %42, !llvm.loop !171

323:                                              ; preds = %320, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16bf16_generic_noskipround(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #11 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !143
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %237

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !145
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %16 = load i32, ptr %15, align 4, !tbaa !144
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 48
  %19 = ashr exact i64 %18, 48
  %20 = icmp sgt i64 %19, 0
  %21 = shl i64 %14, 48
  %22 = ashr exact i64 %21, 48
  %23 = icmp sgt i64 %22, 0
  br i1 %20, label %24, label %237

24:                                               ; preds = %11
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %27 = load i32, ptr %26, align 4, !tbaa !146
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  %30 = load i64, ptr %25, align 8, !tbaa !142
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %195

32:                                               ; preds = %24
  br i1 %23, label %33, label %153

33:                                               ; preds = %32, %150
  %34 = phi i64 [ %151, %150 ], [ 0, %32 ]
  %35 = mul nuw nsw i64 %34, %19
  %36 = getelementptr [2 x i8], ptr %0, i64 %35
  br label %37

37:                                               ; preds = %146, %33
  %38 = phi i64 [ 0, %33 ], [ %148, %146 ]
  br i1 %29, label %42, label %39

39:                                               ; preds = %37
  %40 = getelementptr [2 x i8], ptr %36, i64 %38
  %41 = load i16, ptr %40, align 2, !tbaa !109
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i16 [ 0, %37 ], [ %41, %39 ]
  br label %44

44:                                               ; preds = %42, %143
  %45 = phi i64 [ %144, %143 ], [ 0, %42 ]
  %46 = phi i16 [ %140, %143 ], [ %43, %42 ]
  %47 = mul nuw nsw i64 %45, %9
  %48 = add nuw i64 %47, %34
  %49 = mul i64 %48, %22
  %50 = getelementptr [2 x i8], ptr %1, i64 %49
  %51 = mul nuw nsw i64 %45, %19
  %52 = add nuw i64 %51, %38
  %53 = mul i64 %52, %22
  %54 = getelementptr [2 x i8], ptr %2, i64 %53
  br label %55

55:                                               ; preds = %133, %44
  %56 = phi i64 [ 0, %44 ], [ %141, %133 ]
  %57 = phi i16 [ %46, %44 ], [ %140, %133 ]
  %58 = getelementptr [2 x i8], ptr %50, i64 %56
  %59 = load i16, ptr %58, align 2, !tbaa !109
  %60 = zext i16 %59 to i32
  %61 = and i32 %60, 32640
  %62 = and i32 %60, 127
  switch i32 %61, label %66 [
    i32 32640, label %63
    i32 0, label %69
  ]

63:                                               ; preds = %55
  %64 = icmp eq i32 %62, 0
  %65 = select i1 %64, i32 0, i32 8388607
  br label %69

66:                                               ; preds = %55
  %67 = shl nuw nsw i32 %61, 16
  %68 = shl nuw nsw i32 %62, 16
  br label %69

69:                                               ; preds = %66, %63, %55
  %70 = phi i32 [ %68, %66 ], [ %65, %63 ], [ %61, %55 ]
  %71 = phi i32 [ %67, %66 ], [ 2139095040, %63 ], [ %61, %55 ]
  %72 = sext i16 %59 to i32
  %73 = and i32 %72, -2147483648
  %74 = or disjoint i32 %70, %73
  %75 = or i32 %74, %71
  %76 = bitcast i32 %75 to float
  %77 = getelementptr [2 x i8], ptr %54, i64 %56
  %78 = load i16, ptr %77, align 2, !tbaa !109
  %79 = zext i16 %78 to i32
  %80 = and i32 %79, 32640
  %81 = and i32 %79, 127
  switch i32 %80, label %85 [
    i32 32640, label %82
    i32 0, label %88
  ]

82:                                               ; preds = %69
  %83 = icmp eq i32 %81, 0
  %84 = select i1 %83, i32 0, i32 8388607
  br label %88

85:                                               ; preds = %69
  %86 = shl nuw nsw i32 %80, 16
  %87 = shl nuw nsw i32 %81, 16
  br label %88

88:                                               ; preds = %85, %82, %69
  %89 = phi i32 [ %87, %85 ], [ %84, %82 ], [ %80, %69 ]
  %90 = phi i32 [ %86, %85 ], [ 2139095040, %82 ], [ %80, %69 ]
  %91 = sext i16 %78 to i32
  %92 = and i32 %91, -2147483648
  %93 = or disjoint i32 %89, %92
  %94 = or i32 %93, %90
  %95 = bitcast i32 %94 to float
  %96 = zext i16 %57 to i32
  %97 = and i32 %96, 32640
  %98 = and i32 %96, 127
  switch i32 %97, label %102 [
    i32 32640, label %99
    i32 0, label %105
  ]

99:                                               ; preds = %88
  %100 = icmp eq i32 %98, 0
  %101 = select i1 %100, i32 0, i32 8388607
  br label %105

102:                                              ; preds = %88
  %103 = shl nuw nsw i32 %97, 16
  %104 = shl nuw nsw i32 %98, 16
  br label %105

105:                                              ; preds = %102, %99, %88
  %106 = phi i32 [ %104, %102 ], [ %101, %99 ], [ %97, %88 ]
  %107 = phi i32 [ %103, %102 ], [ 2139095040, %99 ], [ %97, %88 ]
  %108 = sext i16 %57 to i32
  %109 = and i32 %108, -2147483648
  %110 = or disjoint i32 %106, %109
  %111 = or i32 %110, %107
  %112 = bitcast i32 %111 to float
  %113 = tail call float @llvm.fmuladd.f32(float %76, float %95, float %112)
  %114 = bitcast float %113 to i32
  %115 = and i32 %114, 2139095040
  %116 = and i32 %114, 8388607
  switch i32 %115, label %120 [
    i32 2139095040, label %117
    i32 0, label %133
  ]

117:                                              ; preds = %105
  %118 = icmp eq i32 %116, 0
  %119 = select i1 %118, i32 0, i32 127
  br label %133

120:                                              ; preds = %105
  %121 = lshr exact i32 %115, 23
  %122 = lshr i32 %114, 16
  %123 = and i32 %122, 1
  %124 = add nuw nsw i32 %123, %116
  %125 = add nuw nsw i32 %124, 32767
  %126 = icmp samesign ugt i32 %124, 8355840
  %127 = select i1 %126, i32 33554305, i32 33554304
  %128 = add nuw nsw i32 %127, %121
  %129 = shl i32 %128, 7
  %130 = add i32 %129, 16384
  %131 = lshr i32 %125, 16
  %132 = select i1 %126, i32 0, i32 %131
  br label %133

133:                                              ; preds = %120, %117, %105
  %134 = phi i32 [ %132, %120 ], [ %119, %117 ], [ %115, %105 ]
  %135 = phi i32 [ %130, %120 ], [ 32640, %117 ], [ %115, %105 ]
  %136 = lshr i32 %114, 16
  %137 = and i32 %136, 32768
  %138 = or i32 %134, %137
  %139 = or i32 %138, %135
  %140 = trunc nuw i32 %139 to i16
  %141 = add nuw nsw i64 %56, 1
  %142 = icmp eq i64 %141, %22
  br i1 %142, label %143, label %55, !llvm.loop !172

143:                                              ; preds = %133
  %144 = add nuw nsw i64 %45, 1
  %145 = icmp eq i64 %144, %30
  br i1 %145, label %146, label %44, !llvm.loop !173

146:                                              ; preds = %143
  %147 = getelementptr [2 x i8], ptr %36, i64 %38
  store i16 %140, ptr %147, align 2, !tbaa !109
  %148 = add nuw nsw i64 %38, 1
  %149 = icmp eq i64 %148, %19
  br i1 %149, label %150, label %37, !llvm.loop !174

150:                                              ; preds = %146
  %151 = add nuw nsw i64 %34, 1
  %152 = icmp eq i64 %151, %9
  br i1 %152, label %237, label %33, !llvm.loop !175

153:                                              ; preds = %32
  br i1 %29, label %154, label %237

154:                                              ; preds = %153
  %155 = icmp ult i64 %19, 4
  %156 = icmp ult i64 %19, 16
  %157 = and i64 %17, 15
  %158 = sub nuw nsw i64 %19, %157
  %159 = icmp eq i64 %157, 0
  %160 = icmp samesign ult i64 %157, 4
  %161 = and i64 %17, 3
  %162 = sub nsw i64 %19, %161
  %163 = icmp eq i64 %161, 0
  br label %164

164:                                              ; preds = %154, %192
  %165 = phi i64 [ %193, %192 ], [ 0, %154 ]
  %166 = mul nuw nsw i64 %165, %19
  %167 = getelementptr [2 x i8], ptr %0, i64 %166
  br i1 %155, label %185, label %168

168:                                              ; preds = %164
  br i1 %156, label %177, label %169

169:                                              ; preds = %168, %169
  %170 = phi i64 [ %173, %169 ], [ 0, %168 ]
  %171 = getelementptr [2 x i8], ptr %167, i64 %170
  %172 = getelementptr i8, ptr %171, i64 16
  store <8 x i16> zeroinitializer, ptr %171, align 2, !tbaa !109
  store <8 x i16> zeroinitializer, ptr %172, align 2, !tbaa !109
  %173 = add nuw i64 %170, 16
  %174 = icmp eq i64 %173, %158
  br i1 %174, label %175, label %169, !llvm.loop !176

175:                                              ; preds = %169
  br i1 %159, label %192, label %176

176:                                              ; preds = %175
  br i1 %160, label %185, label %177, !prof !159

177:                                              ; preds = %168, %176
  %178 = phi i64 [ %158, %176 ], [ 0, %168 ]
  br label %179

179:                                              ; preds = %179, %177
  %180 = phi i64 [ %178, %177 ], [ %182, %179 ]
  %181 = getelementptr [2 x i8], ptr %167, i64 %180
  store <4 x i16> zeroinitializer, ptr %181, align 2, !tbaa !109
  %182 = add nuw i64 %180, 4
  %183 = icmp eq i64 %182, %162
  br i1 %183, label %184, label %179, !llvm.loop !177

184:                                              ; preds = %179
  br i1 %163, label %192, label %185

185:                                              ; preds = %164, %176, %184
  %186 = phi i64 [ 0, %164 ], [ %158, %176 ], [ %162, %184 ]
  br label %187

187:                                              ; preds = %185, %187
  %188 = phi i64 [ %190, %187 ], [ %186, %185 ]
  %189 = getelementptr [2 x i8], ptr %167, i64 %188
  store i16 0, ptr %189, align 2, !tbaa !109
  %190 = add nuw nsw i64 %188, 1
  %191 = icmp eq i64 %190, %19
  br i1 %191, label %192, label %187, !llvm.loop !178

192:                                              ; preds = %187, %184, %175
  %193 = add nuw nsw i64 %165, 1
  %194 = icmp eq i64 %193, %9
  br i1 %194, label %237, label %164, !llvm.loop !175

195:                                              ; preds = %24
  br i1 %29, label %196, label %237

196:                                              ; preds = %195
  %197 = icmp ult i64 %19, 4
  %198 = icmp ult i64 %19, 16
  %199 = and i64 %17, 15
  %200 = sub nuw nsw i64 %19, %199
  %201 = icmp eq i64 %199, 0
  %202 = icmp samesign ult i64 %199, 4
  %203 = and i64 %17, 3
  %204 = sub nsw i64 %19, %203
  %205 = icmp eq i64 %203, 0
  br label %206

206:                                              ; preds = %196, %234
  %207 = phi i64 [ %235, %234 ], [ 0, %196 ]
  %208 = mul nuw nsw i64 %207, %19
  %209 = getelementptr [2 x i8], ptr %0, i64 %208
  br i1 %197, label %227, label %210

210:                                              ; preds = %206
  br i1 %198, label %219, label %211

211:                                              ; preds = %210, %211
  %212 = phi i64 [ %215, %211 ], [ 0, %210 ]
  %213 = getelementptr [2 x i8], ptr %209, i64 %212
  %214 = getelementptr i8, ptr %213, i64 16
  store <8 x i16> zeroinitializer, ptr %213, align 2, !tbaa !109
  store <8 x i16> zeroinitializer, ptr %214, align 2, !tbaa !109
  %215 = add nuw i64 %212, 16
  %216 = icmp eq i64 %215, %200
  br i1 %216, label %217, label %211, !llvm.loop !179

217:                                              ; preds = %211
  br i1 %201, label %234, label %218

218:                                              ; preds = %217
  br i1 %202, label %227, label %219, !prof !159

219:                                              ; preds = %210, %218
  %220 = phi i64 [ %200, %218 ], [ 0, %210 ]
  br label %221

221:                                              ; preds = %221, %219
  %222 = phi i64 [ %220, %219 ], [ %224, %221 ]
  %223 = getelementptr [2 x i8], ptr %209, i64 %222
  store <4 x i16> zeroinitializer, ptr %223, align 2, !tbaa !109
  %224 = add nuw i64 %222, 4
  %225 = icmp eq i64 %224, %204
  br i1 %225, label %226, label %221, !llvm.loop !180

226:                                              ; preds = %221
  br i1 %205, label %234, label %227

227:                                              ; preds = %206, %218, %226
  %228 = phi i64 [ 0, %206 ], [ %200, %218 ], [ %204, %226 ]
  br label %229

229:                                              ; preds = %227, %229
  %230 = phi i64 [ %232, %229 ], [ %228, %227 ]
  %231 = getelementptr [2 x i8], ptr %209, i64 %230
  store i16 0, ptr %231, align 2, !tbaa !109
  %232 = add nuw nsw i64 %230, 1
  %233 = icmp eq i64 %232, %19
  br i1 %233, label %234, label %229, !llvm.loop !181

234:                                              ; preds = %229, %226, %217
  %235 = add nuw nsw i64 %207, 1
  %236 = icmp eq i64 %235, %9
  br i1 %236, label %237, label %206, !llvm.loop !175

237:                                              ; preds = %234, %192, %150, %195, %153, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16bf16_generic_skipround(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #11 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !143
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %414

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !145
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %16 = load i32, ptr %15, align 4, !tbaa !144
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 48
  %19 = ashr exact i64 %18, 48
  %20 = icmp sgt i64 %19, 0
  %21 = shl i64 %14, 48
  %22 = ashr exact i64 %21, 48
  %23 = icmp sgt i64 %22, 0
  br i1 %20, label %24, label %414

24:                                               ; preds = %11
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %27 = load i32, ptr %26, align 4, !tbaa !146
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  %30 = load i64, ptr %25, align 8, !tbaa !142
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %356

32:                                               ; preds = %24
  br i1 %23, label %33, label %298

33:                                               ; preds = %32
  %34 = icmp ult i64 %22, 8
  %35 = icmp ult i64 %22, 16
  %36 = and i64 %14, 15
  %37 = sub nuw nsw i64 %22, %36
  %38 = icmp eq i64 %36, 0
  %39 = icmp samesign ult i64 %36, 8
  %40 = and i64 %14, 7
  %41 = sub nsw i64 %22, %40
  %42 = icmp eq i64 %40, 0
  br label %43

43:                                               ; preds = %33, %295
  %44 = phi i64 [ %296, %295 ], [ 0, %33 ]
  %45 = mul nuw nsw i64 %44, %19
  %46 = getelementptr [2 x i8], ptr %0, i64 %45
  br label %47

47:                                               ; preds = %87, %43
  %48 = phi i64 [ 0, %43 ], [ %96, %87 ]
  br i1 %29, label %49, label %51

49:                                               ; preds = %63, %47
  %50 = phi float [ 0.000000e+00, %47 ], [ %70, %63 ]
  br label %98

51:                                               ; preds = %47
  %52 = getelementptr [2 x i8], ptr %46, i64 %48
  %53 = load i16, ptr %52, align 2, !tbaa !109
  %54 = zext i16 %53 to i32
  %55 = and i32 %54, 32640
  %56 = and i32 %54, 127
  switch i32 %55, label %60 [
    i32 32640, label %57
    i32 0, label %63
  ]

57:                                               ; preds = %51
  %58 = icmp eq i32 %56, 0
  %59 = select i1 %58, i32 0, i32 8388607
  br label %63

60:                                               ; preds = %51
  %61 = shl nuw nsw i32 %55, 16
  %62 = shl nuw nsw i32 %56, 16
  br label %63

63:                                               ; preds = %60, %57, %51
  %64 = phi i32 [ %62, %60 ], [ %59, %57 ], [ %55, %51 ]
  %65 = phi i32 [ %61, %60 ], [ 2139095040, %57 ], [ %55, %51 ]
  %66 = sext i16 %53 to i32
  %67 = and i32 %66, -2147483648
  %68 = or disjoint i32 %64, %67
  %69 = or i32 %68, %65
  %70 = bitcast i32 %69 to float
  br label %49

71:                                               ; preds = %291
  %72 = icmp eq i32 %294, 0
  %73 = select i1 %72, i32 0, i32 127
  br label %87

74:                                               ; preds = %291
  %75 = lshr exact i32 %293, 23
  %76 = lshr i32 %292, 16
  %77 = and i32 %76, 1
  %78 = add nuw nsw i32 %77, %294
  %79 = add nuw nsw i32 %78, 32767
  %80 = icmp samesign ugt i32 %78, 8355840
  %81 = select i1 %80, i32 33554305, i32 33554304
  %82 = add nuw nsw i32 %81, %75
  %83 = shl i32 %82, 7
  %84 = add i32 %83, 16384
  %85 = lshr i32 %79, 16
  %86 = select i1 %80, i32 0, i32 %85
  br label %87

87:                                               ; preds = %291, %74, %71
  %88 = phi i32 [ %86, %74 ], [ %73, %71 ], [ %293, %291 ]
  %89 = phi i32 [ %84, %74 ], [ 32640, %71 ], [ %293, %291 ]
  %90 = lshr i32 %292, 16
  %91 = and i32 %90, 32768
  %92 = or i32 %88, %91
  %93 = or i32 %92, %89
  %94 = trunc nuw i32 %93 to i16
  %95 = getelementptr [2 x i8], ptr %46, i64 %48
  store i16 %94, ptr %95, align 2, !tbaa !109
  %96 = add nuw nsw i64 %48, 1
  %97 = icmp eq i64 %96, %19
  br i1 %97, label %295, label %47, !llvm.loop !182

98:                                               ; preds = %49, %287
  %99 = phi i64 [ %289, %287 ], [ 0, %49 ]
  %100 = phi float [ %288, %287 ], [ %50, %49 ]
  %101 = mul nuw nsw i64 %99, %9
  %102 = add nuw i64 %101, %44
  %103 = mul i64 %102, %22
  %104 = getelementptr [2 x i8], ptr %1, i64 %103
  %105 = mul nuw nsw i64 %99, %19
  %106 = add nuw i64 %105, %48
  %107 = mul i64 %106, %22
  %108 = getelementptr [2 x i8], ptr %2, i64 %107
  br i1 %34, label %240, label %109

109:                                              ; preds = %98
  br i1 %35, label %193, label %110

110:                                              ; preds = %109, %110
  %111 = phi i64 [ %189, %110 ], [ 0, %109 ]
  %112 = phi float [ %188, %110 ], [ %100, %109 ]
  %113 = getelementptr [2 x i8], ptr %104, i64 %111
  %114 = getelementptr i8, ptr %113, i64 16
  %115 = load <8 x i16>, ptr %113, align 2, !tbaa !109
  %116 = load <8 x i16>, ptr %114, align 2, !tbaa !109
  %117 = zext <8 x i16> %115 to <8 x i32>
  %118 = zext <8 x i16> %116 to <8 x i32>
  %119 = and <8 x i32> %117, splat (i32 32640)
  %120 = and <8 x i32> %118, splat (i32 32640)
  %121 = and <8 x i32> %117, splat (i32 127)
  %122 = and <8 x i32> %118, splat (i32 127)
  %123 = icmp eq <8 x i32> %119, splat (i32 32640)
  %124 = icmp eq <8 x i32> %120, splat (i32 32640)
  %125 = icmp eq <8 x i32> %119, zeroinitializer
  %126 = icmp eq <8 x i32> %120, zeroinitializer
  %127 = icmp eq <8 x i32> %121, zeroinitializer
  %128 = icmp eq <8 x i32> %122, zeroinitializer
  %129 = select <8 x i1> %127, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %130 = select <8 x i1> %128, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %131 = shl nuw nsw <8 x i32> %119, splat (i32 16)
  %132 = shl nuw nsw <8 x i32> %120, splat (i32 16)
  %133 = shl nuw nsw <8 x i32> %121, splat (i32 16)
  %134 = shl nuw nsw <8 x i32> %122, splat (i32 16)
  %135 = select <8 x i1> %123, <8 x i32> %129, <8 x i32> %133
  %136 = select <8 x i1> %125, <8 x i32> zeroinitializer, <8 x i32> %135
  %137 = select <8 x i1> %124, <8 x i32> %130, <8 x i32> %134
  %138 = select <8 x i1> %126, <8 x i32> zeroinitializer, <8 x i32> %137
  %139 = sext <8 x i16> %115 to <8 x i32>
  %140 = sext <8 x i16> %116 to <8 x i32>
  %141 = and <8 x i32> %139, splat (i32 -2147483648)
  %142 = and <8 x i32> %140, splat (i32 -2147483648)
  %143 = or disjoint <8 x i32> %136, %141
  %144 = or disjoint <8 x i32> %138, %142
  %145 = or disjoint <8 x i32> %143, %131
  %146 = or disjoint <8 x i32> %144, %132
  %147 = bitcast <8 x i32> %145 to <8 x float>
  %148 = bitcast <8 x i32> %146 to <8 x float>
  %149 = getelementptr [2 x i8], ptr %108, i64 %111
  %150 = getelementptr i8, ptr %149, i64 16
  %151 = load <8 x i16>, ptr %149, align 2, !tbaa !109
  %152 = load <8 x i16>, ptr %150, align 2, !tbaa !109
  %153 = zext <8 x i16> %151 to <8 x i32>
  %154 = zext <8 x i16> %152 to <8 x i32>
  %155 = and <8 x i32> %153, splat (i32 32640)
  %156 = and <8 x i32> %154, splat (i32 32640)
  %157 = and <8 x i32> %153, splat (i32 127)
  %158 = and <8 x i32> %154, splat (i32 127)
  %159 = icmp eq <8 x i32> %155, splat (i32 32640)
  %160 = icmp eq <8 x i32> %156, splat (i32 32640)
  %161 = icmp eq <8 x i32> %155, zeroinitializer
  %162 = icmp eq <8 x i32> %156, zeroinitializer
  %163 = icmp eq <8 x i32> %157, zeroinitializer
  %164 = icmp eq <8 x i32> %158, zeroinitializer
  %165 = select <8 x i1> %163, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %166 = select <8 x i1> %164, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %167 = shl nuw nsw <8 x i32> %155, splat (i32 16)
  %168 = shl nuw nsw <8 x i32> %156, splat (i32 16)
  %169 = shl nuw nsw <8 x i32> %157, splat (i32 16)
  %170 = shl nuw nsw <8 x i32> %158, splat (i32 16)
  %171 = select <8 x i1> %159, <8 x i32> %165, <8 x i32> %169
  %172 = select <8 x i1> %161, <8 x i32> zeroinitializer, <8 x i32> %171
  %173 = select <8 x i1> %160, <8 x i32> %166, <8 x i32> %170
  %174 = select <8 x i1> %162, <8 x i32> zeroinitializer, <8 x i32> %173
  %175 = sext <8 x i16> %151 to <8 x i32>
  %176 = sext <8 x i16> %152 to <8 x i32>
  %177 = and <8 x i32> %175, splat (i32 -2147483648)
  %178 = and <8 x i32> %176, splat (i32 -2147483648)
  %179 = or disjoint <8 x i32> %172, %177
  %180 = or disjoint <8 x i32> %174, %178
  %181 = or disjoint <8 x i32> %179, %167
  %182 = or disjoint <8 x i32> %180, %168
  %183 = bitcast <8 x i32> %181 to <8 x float>
  %184 = bitcast <8 x i32> %182 to <8 x float>
  %185 = fmul <8 x float> %147, %183
  %186 = fmul <8 x float> %148, %184
  %187 = tail call float @llvm.vector.reduce.fadd.v8f32(float %112, <8 x float> %185)
  %188 = tail call float @llvm.vector.reduce.fadd.v8f32(float %187, <8 x float> %186)
  %189 = add nuw i64 %111, 16
  %190 = icmp eq i64 %189, %37
  br i1 %190, label %191, label %110, !llvm.loop !183

191:                                              ; preds = %110
  br i1 %38, label %287, label %192

192:                                              ; preds = %191
  br i1 %39, label %240, label %193, !prof !167

193:                                              ; preds = %109, %192
  %194 = phi i64 [ %37, %192 ], [ 0, %109 ]
  %195 = phi float [ %188, %192 ], [ %100, %109 ]
  br label %196

196:                                              ; preds = %196, %193
  %197 = phi i64 [ %194, %193 ], [ %237, %196 ]
  %198 = phi float [ %195, %193 ], [ %236, %196 ]
  %199 = getelementptr [2 x i8], ptr %104, i64 %197
  %200 = load <8 x i16>, ptr %199, align 2, !tbaa !109
  %201 = zext <8 x i16> %200 to <8 x i32>
  %202 = and <8 x i32> %201, splat (i32 32640)
  %203 = and <8 x i32> %201, splat (i32 127)
  %204 = icmp eq <8 x i32> %202, splat (i32 32640)
  %205 = icmp eq <8 x i32> %202, zeroinitializer
  %206 = icmp eq <8 x i32> %203, zeroinitializer
  %207 = select <8 x i1> %206, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %208 = shl nuw nsw <8 x i32> %202, splat (i32 16)
  %209 = shl nuw nsw <8 x i32> %203, splat (i32 16)
  %210 = select <8 x i1> %204, <8 x i32> %207, <8 x i32> %209
  %211 = select <8 x i1> %205, <8 x i32> zeroinitializer, <8 x i32> %210
  %212 = sext <8 x i16> %200 to <8 x i32>
  %213 = and <8 x i32> %212, splat (i32 -2147483648)
  %214 = or disjoint <8 x i32> %211, %213
  %215 = or disjoint <8 x i32> %214, %208
  %216 = bitcast <8 x i32> %215 to <8 x float>
  %217 = getelementptr [2 x i8], ptr %108, i64 %197
  %218 = load <8 x i16>, ptr %217, align 2, !tbaa !109
  %219 = zext <8 x i16> %218 to <8 x i32>
  %220 = and <8 x i32> %219, splat (i32 32640)
  %221 = and <8 x i32> %219, splat (i32 127)
  %222 = icmp eq <8 x i32> %220, splat (i32 32640)
  %223 = icmp eq <8 x i32> %220, zeroinitializer
  %224 = icmp eq <8 x i32> %221, zeroinitializer
  %225 = select <8 x i1> %224, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %226 = shl nuw nsw <8 x i32> %220, splat (i32 16)
  %227 = shl nuw nsw <8 x i32> %221, splat (i32 16)
  %228 = select <8 x i1> %222, <8 x i32> %225, <8 x i32> %227
  %229 = select <8 x i1> %223, <8 x i32> zeroinitializer, <8 x i32> %228
  %230 = sext <8 x i16> %218 to <8 x i32>
  %231 = and <8 x i32> %230, splat (i32 -2147483648)
  %232 = or disjoint <8 x i32> %229, %231
  %233 = or disjoint <8 x i32> %232, %226
  %234 = bitcast <8 x i32> %233 to <8 x float>
  %235 = fmul <8 x float> %216, %234
  %236 = tail call float @llvm.vector.reduce.fadd.v8f32(float %198, <8 x float> %235)
  %237 = add nuw i64 %197, 8
  %238 = icmp eq i64 %237, %41
  br i1 %238, label %239, label %196, !llvm.loop !184

239:                                              ; preds = %196
  br i1 %42, label %287, label %240

240:                                              ; preds = %98, %192, %239
  %241 = phi i64 [ 0, %98 ], [ %37, %192 ], [ %41, %239 ]
  %242 = phi float [ %100, %98 ], [ %188, %192 ], [ %236, %239 ]
  br label %243

243:                                              ; preds = %240, %276
  %244 = phi i64 [ %285, %276 ], [ %241, %240 ]
  %245 = phi float [ %284, %276 ], [ %242, %240 ]
  %246 = getelementptr [2 x i8], ptr %104, i64 %244
  %247 = load i16, ptr %246, align 2, !tbaa !109
  %248 = zext i16 %247 to i32
  %249 = and i32 %248, 32640
  %250 = and i32 %248, 127
  switch i32 %249, label %254 [
    i32 32640, label %251
    i32 0, label %257
  ]

251:                                              ; preds = %243
  %252 = icmp eq i32 %250, 0
  %253 = select i1 %252, i32 0, i32 8388607
  br label %257

254:                                              ; preds = %243
  %255 = shl nuw nsw i32 %249, 16
  %256 = shl nuw nsw i32 %250, 16
  br label %257

257:                                              ; preds = %254, %251, %243
  %258 = phi i32 [ %256, %254 ], [ %253, %251 ], [ %249, %243 ]
  %259 = phi i32 [ %255, %254 ], [ 2139095040, %251 ], [ %249, %243 ]
  %260 = sext i16 %247 to i32
  %261 = and i32 %260, -2147483648
  %262 = or disjoint i32 %258, %261
  %263 = or i32 %262, %259
  %264 = bitcast i32 %263 to float
  %265 = getelementptr [2 x i8], ptr %108, i64 %244
  %266 = load i16, ptr %265, align 2, !tbaa !109
  %267 = zext i16 %266 to i32
  %268 = and i32 %267, 32640
  %269 = and i32 %267, 127
  switch i32 %268, label %273 [
    i32 32640, label %270
    i32 0, label %276
  ]

270:                                              ; preds = %257
  %271 = icmp eq i32 %269, 0
  %272 = select i1 %271, i32 0, i32 8388607
  br label %276

273:                                              ; preds = %257
  %274 = shl nuw nsw i32 %268, 16
  %275 = shl nuw nsw i32 %269, 16
  br label %276

276:                                              ; preds = %273, %270, %257
  %277 = phi i32 [ %275, %273 ], [ %272, %270 ], [ %268, %257 ]
  %278 = phi i32 [ %274, %273 ], [ 2139095040, %270 ], [ %268, %257 ]
  %279 = sext i16 %266 to i32
  %280 = and i32 %279, -2147483648
  %281 = or disjoint i32 %277, %280
  %282 = or i32 %281, %278
  %283 = bitcast i32 %282 to float
  %284 = tail call float @llvm.fmuladd.f32(float %264, float %283, float %245)
  %285 = add nuw nsw i64 %244, 1
  %286 = icmp eq i64 %285, %22
  br i1 %286, label %287, label %243, !llvm.loop !185

287:                                              ; preds = %276, %239, %191
  %288 = phi float [ %236, %239 ], [ %188, %191 ], [ %284, %276 ]
  %289 = add nuw nsw i64 %99, 1
  %290 = icmp eq i64 %289, %30
  br i1 %290, label %291, label %98, !llvm.loop !186

291:                                              ; preds = %287
  %292 = bitcast float %288 to i32
  %293 = and i32 %292, 2139095040
  %294 = and i32 %292, 8388607
  switch i32 %293, label %74 [
    i32 2139095040, label %71
    i32 0, label %87
  ]

295:                                              ; preds = %87
  %296 = add nuw nsw i64 %44, 1
  %297 = icmp eq i64 %296, %9
  br i1 %297, label %414, label %43, !llvm.loop !187

298:                                              ; preds = %32, %353
  %299 = phi i64 [ %354, %353 ], [ 0, %32 ]
  %300 = mul nuw nsw i64 %299, %19
  %301 = getelementptr [2 x i8], ptr %0, i64 %300
  br label %302

302:                                              ; preds = %341, %298
  %303 = phi i64 [ 0, %298 ], [ %351, %341 ]
  br i1 %29, label %341, label %304

304:                                              ; preds = %302
  %305 = getelementptr [2 x i8], ptr %301, i64 %303
  %306 = load i16, ptr %305, align 2, !tbaa !109
  %307 = zext i16 %306 to i32
  %308 = and i32 %307, 32640
  %309 = and i32 %307, 127
  switch i32 %308, label %313 [
    i32 32640, label %310
    i32 0, label %316
  ]

310:                                              ; preds = %304
  %311 = icmp eq i32 %309, 0
  %312 = select i1 %311, i32 0, i32 8388607
  br label %316

313:                                              ; preds = %304
  %314 = shl nuw nsw i32 %308, 16
  %315 = shl nuw nsw i32 %309, 16
  br label %316

316:                                              ; preds = %304, %310, %313
  %317 = phi i32 [ %315, %313 ], [ %312, %310 ], [ %308, %304 ]
  %318 = phi i32 [ %314, %313 ], [ 2139095040, %310 ], [ %308, %304 ]
  %319 = sext i16 %306 to i32
  %320 = and i32 %319, -2147483648
  %321 = or disjoint i32 %317, %320
  %322 = or i32 %321, %318
  %323 = and i32 %322, 2139095040
  %324 = and i32 %322, 8388607
  switch i32 %323, label %328 [
    i32 2139095040, label %325
    i32 0, label %341
  ]

325:                                              ; preds = %316
  %326 = icmp eq i32 %324, 0
  %327 = select i1 %326, i32 0, i32 127
  br label %341

328:                                              ; preds = %316
  %329 = lshr exact i32 %323, 23
  %330 = lshr i32 %322, 16
  %331 = and i32 %330, 1
  %332 = add nuw nsw i32 %331, %324
  %333 = add nuw nsw i32 %332, 32767
  %334 = icmp samesign ugt i32 %332, 8355840
  %335 = select i1 %334, i32 33554305, i32 33554304
  %336 = add nuw nsw i32 %335, %329
  %337 = shl i32 %336, 7
  %338 = add i32 %337, 16384
  %339 = lshr i32 %333, 16
  %340 = select i1 %334, i32 0, i32 %339
  br label %341

341:                                              ; preds = %302, %316, %328, %325
  %342 = phi i32 [ %322, %328 ], [ %322, %325 ], [ %322, %316 ], [ 0, %302 ]
  %343 = phi i32 [ %340, %328 ], [ %327, %325 ], [ %323, %316 ], [ 0, %302 ]
  %344 = phi i32 [ %338, %328 ], [ 32640, %325 ], [ %323, %316 ], [ 0, %302 ]
  %345 = lshr i32 %342, 16
  %346 = and i32 %345, 32768
  %347 = or i32 %343, %346
  %348 = or i32 %347, %344
  %349 = trunc nuw i32 %348 to i16
  %350 = getelementptr [2 x i8], ptr %301, i64 %303
  store i16 %349, ptr %350, align 2, !tbaa !109
  %351 = add nuw nsw i64 %303, 1
  %352 = icmp eq i64 %351, %19
  br i1 %352, label %353, label %302, !llvm.loop !182

353:                                              ; preds = %341
  %354 = add nuw nsw i64 %299, 1
  %355 = icmp eq i64 %354, %9
  br i1 %355, label %414, label %298, !llvm.loop !187

356:                                              ; preds = %24, %411
  %357 = phi i64 [ %412, %411 ], [ 0, %24 ]
  %358 = mul nuw nsw i64 %357, %19
  %359 = getelementptr [2 x i8], ptr %0, i64 %358
  br label %360

360:                                              ; preds = %356, %399
  %361 = phi i64 [ 0, %356 ], [ %409, %399 ]
  br i1 %29, label %399, label %362

362:                                              ; preds = %360
  %363 = getelementptr [2 x i8], ptr %359, i64 %361
  %364 = load i16, ptr %363, align 2, !tbaa !109
  %365 = zext i16 %364 to i32
  %366 = and i32 %365, 32640
  %367 = and i32 %365, 127
  switch i32 %366, label %371 [
    i32 32640, label %368
    i32 0, label %374
  ]

368:                                              ; preds = %362
  %369 = icmp eq i32 %367, 0
  %370 = select i1 %369, i32 0, i32 8388607
  br label %374

371:                                              ; preds = %362
  %372 = shl nuw nsw i32 %366, 16
  %373 = shl nuw nsw i32 %367, 16
  br label %374

374:                                              ; preds = %362, %368, %371
  %375 = phi i32 [ %373, %371 ], [ %370, %368 ], [ %366, %362 ]
  %376 = phi i32 [ %372, %371 ], [ 2139095040, %368 ], [ %366, %362 ]
  %377 = sext i16 %364 to i32
  %378 = and i32 %377, -2147483648
  %379 = or disjoint i32 %375, %378
  %380 = or i32 %379, %376
  %381 = and i32 %380, 2139095040
  %382 = and i32 %380, 8388607
  switch i32 %381, label %386 [
    i32 2139095040, label %383
    i32 0, label %399
  ]

383:                                              ; preds = %374
  %384 = icmp eq i32 %382, 0
  %385 = select i1 %384, i32 0, i32 127
  br label %399

386:                                              ; preds = %374
  %387 = lshr exact i32 %381, 23
  %388 = lshr i32 %380, 16
  %389 = and i32 %388, 1
  %390 = add nuw nsw i32 %389, %382
  %391 = add nuw nsw i32 %390, 32767
  %392 = icmp samesign ugt i32 %390, 8355840
  %393 = select i1 %392, i32 33554305, i32 33554304
  %394 = add nuw nsw i32 %393, %387
  %395 = shl i32 %394, 7
  %396 = add i32 %395, 16384
  %397 = lshr i32 %391, 16
  %398 = select i1 %392, i32 0, i32 %397
  br label %399

399:                                              ; preds = %360, %386, %383, %374
  %400 = phi i32 [ %380, %386 ], [ %380, %383 ], [ %380, %374 ], [ 0, %360 ]
  %401 = phi i32 [ %398, %386 ], [ %385, %383 ], [ %381, %374 ], [ 0, %360 ]
  %402 = phi i32 [ %396, %386 ], [ 32640, %383 ], [ %381, %374 ], [ 0, %360 ]
  %403 = lshr i32 %400, 16
  %404 = and i32 %403, 32768
  %405 = or i32 %401, %404
  %406 = or i32 %405, %402
  %407 = trunc nuw i32 %406 to i16
  %408 = getelementptr [2 x i8], ptr %359, i64 %361
  store i16 %407, ptr %408, align 2, !tbaa !109
  %409 = add nuw nsw i64 %361, 1
  %410 = icmp eq i64 %409, %19
  br i1 %410, label %411, label %360, !llvm.loop !182

411:                                              ; preds = %399
  %412 = add nuw nsw i64 %357, 1
  %413 = icmp eq i64 %412, %9
  br i1 %413, label %414, label %356, !llvm.loop !187

414:                                              ; preds = %411, %353, %295, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_f32f32f32_generic(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #11 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !143
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %217

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !145
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %16 = load i32, ptr %15, align 4, !tbaa !144
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 48
  %19 = ashr exact i64 %18, 48
  %20 = icmp sgt i64 %19, 0
  %21 = shl i64 %14, 48
  %22 = ashr exact i64 %21, 48
  %23 = icmp sgt i64 %22, 0
  br i1 %20, label %24, label %217

24:                                               ; preds = %11
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %27 = load i32, ptr %26, align 4, !tbaa !146
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  %30 = load i64, ptr %25, align 8, !tbaa !142
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %190

32:                                               ; preds = %24
  br i1 %23, label %33, label %163

33:                                               ; preds = %32
  br i1 %29, label %39, label %34

34:                                               ; preds = %33
  %35 = icmp ult i64 %22, 8
  %36 = and i64 %14, 7
  %37 = sub nuw nsw i64 %22, %36
  %38 = icmp eq i64 %36, 0
  br label %103

39:                                               ; preds = %33
  %40 = icmp ult i64 %22, 8
  %41 = and i64 %14, 7
  %42 = sub nuw nsw i64 %22, %41
  %43 = icmp eq i64 %41, 0
  br label %44

44:                                               ; preds = %39, %100
  %45 = phi i64 [ %101, %100 ], [ 0, %39 ]
  %46 = mul nuw nsw i64 %45, %19
  %47 = getelementptr [4 x i8], ptr %0, i64 %46
  br label %48

48:                                               ; preds = %96, %44
  %49 = phi i64 [ 0, %44 ], [ %98, %96 ]
  br label %50

50:                                               ; preds = %92, %48
  %51 = phi i64 [ 0, %48 ], [ %94, %92 ]
  %52 = phi float [ 0.000000e+00, %48 ], [ %93, %92 ]
  %53 = mul nuw nsw i64 %51, %9
  %54 = add nuw i64 %53, %45
  %55 = mul i64 %54, %22
  %56 = getelementptr [4 x i8], ptr %1, i64 %55
  %57 = mul nuw nsw i64 %51, %19
  %58 = add nuw i64 %57, %49
  %59 = mul i64 %58, %22
  %60 = getelementptr [4 x i8], ptr %2, i64 %59
  br i1 %40, label %79, label %61

61:                                               ; preds = %50, %61
  %62 = phi i64 [ %76, %61 ], [ 0, %50 ]
  %63 = phi float [ %75, %61 ], [ %52, %50 ]
  %64 = getelementptr [4 x i8], ptr %56, i64 %62
  %65 = getelementptr i8, ptr %64, i64 16
  %66 = load <4 x float>, ptr %64, align 4, !tbaa !111
  %67 = load <4 x float>, ptr %65, align 4, !tbaa !111
  %68 = getelementptr [4 x i8], ptr %60, i64 %62
  %69 = getelementptr i8, ptr %68, i64 16
  %70 = load <4 x float>, ptr %68, align 4, !tbaa !111
  %71 = load <4 x float>, ptr %69, align 4, !tbaa !111
  %72 = fmul <4 x float> %66, %70
  %73 = fmul <4 x float> %67, %71
  %74 = tail call float @llvm.vector.reduce.fadd.v4f32(float %63, <4 x float> %72)
  %75 = tail call float @llvm.vector.reduce.fadd.v4f32(float %74, <4 x float> %73)
  %76 = add nuw i64 %62, 8
  %77 = icmp eq i64 %76, %42
  br i1 %77, label %78, label %61, !llvm.loop !188

78:                                               ; preds = %61
  br i1 %43, label %92, label %79

79:                                               ; preds = %50, %78
  %80 = phi i64 [ 0, %50 ], [ %42, %78 ]
  %81 = phi float [ %52, %50 ], [ %75, %78 ]
  br label %82

82:                                               ; preds = %79, %82
  %83 = phi i64 [ %90, %82 ], [ %80, %79 ]
  %84 = phi float [ %89, %82 ], [ %81, %79 ]
  %85 = getelementptr [4 x i8], ptr %56, i64 %83
  %86 = load float, ptr %85, align 4, !tbaa !111
  %87 = getelementptr [4 x i8], ptr %60, i64 %83
  %88 = load float, ptr %87, align 4, !tbaa !111
  %89 = tail call float @llvm.fmuladd.f32(float %86, float %88, float %84)
  %90 = add nuw nsw i64 %83, 1
  %91 = icmp eq i64 %90, %22
  br i1 %91, label %92, label %82, !llvm.loop !189

92:                                               ; preds = %82, %78
  %93 = phi float [ %75, %78 ], [ %89, %82 ]
  %94 = add nuw nsw i64 %51, 1
  %95 = icmp eq i64 %94, %30
  br i1 %95, label %96, label %50, !llvm.loop !190

96:                                               ; preds = %92
  %97 = getelementptr [4 x i8], ptr %47, i64 %49
  store float %93, ptr %97, align 4, !tbaa !111
  %98 = add nuw nsw i64 %49, 1
  %99 = icmp eq i64 %98, %19
  br i1 %99, label %100, label %48, !llvm.loop !191

100:                                              ; preds = %96
  %101 = add nuw nsw i64 %45, 1
  %102 = icmp eq i64 %101, %9
  br i1 %102, label %217, label %44, !llvm.loop !192

103:                                              ; preds = %34, %160
  %104 = phi i64 [ %161, %160 ], [ 0, %34 ]
  %105 = mul nuw nsw i64 %104, %19
  %106 = getelementptr [4 x i8], ptr %0, i64 %105
  br label %107

107:                                              ; preds = %157, %103
  %108 = phi i64 [ 0, %103 ], [ %158, %157 ]
  %109 = getelementptr [4 x i8], ptr %106, i64 %108
  %110 = load float, ptr %109, align 4, !tbaa !111
  br label %111

111:                                              ; preds = %153, %107
  %112 = phi i64 [ 0, %107 ], [ %155, %153 ]
  %113 = phi float [ %110, %107 ], [ %154, %153 ]
  %114 = mul nuw nsw i64 %112, %9
  %115 = add nuw i64 %114, %104
  %116 = mul i64 %115, %22
  %117 = getelementptr [4 x i8], ptr %1, i64 %116
  %118 = mul nuw nsw i64 %112, %19
  %119 = add nuw i64 %118, %108
  %120 = mul i64 %119, %22
  %121 = getelementptr [4 x i8], ptr %2, i64 %120
  br i1 %35, label %140, label %122

122:                                              ; preds = %111, %122
  %123 = phi i64 [ %137, %122 ], [ 0, %111 ]
  %124 = phi float [ %136, %122 ], [ %113, %111 ]
  %125 = getelementptr [4 x i8], ptr %117, i64 %123
  %126 = getelementptr i8, ptr %125, i64 16
  %127 = load <4 x float>, ptr %125, align 4, !tbaa !111
  %128 = load <4 x float>, ptr %126, align 4, !tbaa !111
  %129 = getelementptr [4 x i8], ptr %121, i64 %123
  %130 = getelementptr i8, ptr %129, i64 16
  %131 = load <4 x float>, ptr %129, align 4, !tbaa !111
  %132 = load <4 x float>, ptr %130, align 4, !tbaa !111
  %133 = fmul <4 x float> %127, %131
  %134 = fmul <4 x float> %128, %132
  %135 = tail call float @llvm.vector.reduce.fadd.v4f32(float %124, <4 x float> %133)
  %136 = tail call float @llvm.vector.reduce.fadd.v4f32(float %135, <4 x float> %134)
  %137 = add nuw i64 %123, 8
  %138 = icmp eq i64 %137, %37
  br i1 %138, label %139, label %122, !llvm.loop !193

139:                                              ; preds = %122
  br i1 %38, label %153, label %140

140:                                              ; preds = %111, %139
  %141 = phi i64 [ 0, %111 ], [ %37, %139 ]
  %142 = phi float [ %113, %111 ], [ %136, %139 ]
  br label %143

143:                                              ; preds = %140, %143
  %144 = phi i64 [ %151, %143 ], [ %141, %140 ]
  %145 = phi float [ %150, %143 ], [ %142, %140 ]
  %146 = getelementptr [4 x i8], ptr %117, i64 %144
  %147 = load float, ptr %146, align 4, !tbaa !111
  %148 = getelementptr [4 x i8], ptr %121, i64 %144
  %149 = load float, ptr %148, align 4, !tbaa !111
  %150 = tail call float @llvm.fmuladd.f32(float %147, float %149, float %145)
  %151 = add nuw nsw i64 %144, 1
  %152 = icmp eq i64 %151, %22
  br i1 %152, label %153, label %143, !llvm.loop !194

153:                                              ; preds = %143, %139
  %154 = phi float [ %136, %139 ], [ %150, %143 ]
  %155 = add nuw nsw i64 %112, 1
  %156 = icmp eq i64 %155, %30
  br i1 %156, label %157, label %111, !llvm.loop !190

157:                                              ; preds = %153
  store float %154, ptr %109, align 4, !tbaa !111
  %158 = add nuw nsw i64 %108, 1
  %159 = icmp eq i64 %158, %19
  br i1 %159, label %160, label %107, !llvm.loop !191

160:                                              ; preds = %157
  %161 = add nuw nsw i64 %104, 1
  %162 = icmp eq i64 %161, %9
  br i1 %162, label %217, label %103, !llvm.loop !192

163:                                              ; preds = %32
  br i1 %29, label %164, label %217

164:                                              ; preds = %163
  %165 = icmp ult i64 %19, 8
  %166 = and i64 %17, 7
  %167 = sub nuw nsw i64 %19, %166
  %168 = icmp eq i64 %166, 0
  br label %169

169:                                              ; preds = %164, %187
  %170 = phi i64 [ %188, %187 ], [ 0, %164 ]
  %171 = mul nuw nsw i64 %170, %19
  %172 = getelementptr [4 x i8], ptr %0, i64 %171
  br i1 %165, label %180, label %173

173:                                              ; preds = %169, %173
  %174 = phi i64 [ %177, %173 ], [ 0, %169 ]
  %175 = getelementptr [4 x i8], ptr %172, i64 %174
  %176 = getelementptr i8, ptr %175, i64 16
  store <4 x float> zeroinitializer, ptr %175, align 4, !tbaa !111
  store <4 x float> zeroinitializer, ptr %176, align 4, !tbaa !111
  %177 = add nuw i64 %174, 8
  %178 = icmp eq i64 %177, %167
  br i1 %178, label %179, label %173, !llvm.loop !195

179:                                              ; preds = %173
  br i1 %168, label %187, label %180

180:                                              ; preds = %169, %179
  %181 = phi i64 [ 0, %169 ], [ %167, %179 ]
  br label %182

182:                                              ; preds = %180, %182
  %183 = phi i64 [ %185, %182 ], [ %181, %180 ]
  %184 = getelementptr [4 x i8], ptr %172, i64 %183
  store float 0.000000e+00, ptr %184, align 4, !tbaa !111
  %185 = add nuw nsw i64 %183, 1
  %186 = icmp eq i64 %185, %19
  br i1 %186, label %187, label %182, !llvm.loop !196

187:                                              ; preds = %182, %179
  %188 = add nuw nsw i64 %170, 1
  %189 = icmp eq i64 %188, %9
  br i1 %189, label %217, label %169, !llvm.loop !192

190:                                              ; preds = %24
  br i1 %29, label %191, label %217

191:                                              ; preds = %190
  %192 = icmp ult i64 %19, 8
  %193 = and i64 %17, 7
  %194 = sub nuw nsw i64 %19, %193
  %195 = icmp eq i64 %193, 0
  br label %196

196:                                              ; preds = %191, %214
  %197 = phi i64 [ %215, %214 ], [ 0, %191 ]
  %198 = mul nuw nsw i64 %197, %19
  %199 = getelementptr [4 x i8], ptr %0, i64 %198
  br i1 %192, label %207, label %200

200:                                              ; preds = %196, %200
  %201 = phi i64 [ %204, %200 ], [ 0, %196 ]
  %202 = getelementptr [4 x i8], ptr %199, i64 %201
  %203 = getelementptr i8, ptr %202, i64 16
  store <4 x float> zeroinitializer, ptr %202, align 4, !tbaa !111
  store <4 x float> zeroinitializer, ptr %203, align 4, !tbaa !111
  %204 = add nuw i64 %201, 8
  %205 = icmp eq i64 %204, %194
  br i1 %205, label %206, label %200, !llvm.loop !197

206:                                              ; preds = %200
  br i1 %195, label %214, label %207

207:                                              ; preds = %196, %206
  %208 = phi i64 [ 0, %196 ], [ %194, %206 ]
  br label %209

209:                                              ; preds = %207, %209
  %210 = phi i64 [ %212, %209 ], [ %208, %207 ]
  %211 = getelementptr [4 x i8], ptr %199, i64 %210
  store float 0.000000e+00, ptr %211, align 4, !tbaa !111
  %212 = add nuw nsw i64 %210, 1
  %213 = icmp eq i64 %212, %19
  br i1 %213, label %214, label %209, !llvm.loop !198

214:                                              ; preds = %209, %206
  %215 = add nuw nsw i64 %197, 1
  %216 = icmp eq i64 %215, %9
  br i1 %216, label %217, label %196, !llvm.loop !192

217:                                              ; preds = %214, %187, %160, %100, %190, %163, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s4s32_generic(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #11 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !143
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %217

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !145
  %14 = trunc i32 %13 to i16
  %15 = sdiv i16 %14, 2
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %18 = load i32, ptr %17, align 4, !tbaa !144
  %19 = zext i32 %18 to i64
  %20 = shl i64 %19, 48
  %21 = ashr exact i64 %20, 48
  %22 = icmp sgt i64 %21, 0
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %24 = sext i16 %15 to i64
  %25 = icmp sgt i16 %14, 1
  %26 = shl i64 %16, 48
  %27 = ashr exact i64 %26, 48
  br i1 %22, label %28, label %217

28:                                               ; preds = %11
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %30 = load i64, ptr %29, align 8, !tbaa !142
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %197

32:                                               ; preds = %28
  br i1 %25, label %33, label %177

33:                                               ; preds = %32
  %34 = icmp ult i16 %15, 8
  %35 = icmp ult i16 %15, 16
  %36 = and i64 %24, 16368
  %37 = icmp eq i64 %36, %24
  %38 = and i16 %15, 8
  %39 = icmp eq i16 %38, 0
  %40 = and i64 %24, 16376
  %41 = icmp eq i64 %40, %24
  br label %42

42:                                               ; preds = %33, %174
  %43 = phi i64 [ %175, %174 ], [ 0, %33 ]
  %44 = mul nuw nsw i64 %43, %21
  %45 = getelementptr [4 x i8], ptr %0, i64 %44
  br label %46

46:                                               ; preds = %170, %42
  %47 = phi i64 [ 0, %42 ], [ %172, %170 ]
  %48 = load i32, ptr %23, align 4, !tbaa !146
  %49 = and i32 %48, 256
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = getelementptr [4 x i8], ptr %45, i64 %47
  %53 = load i32, ptr %52, align 4, !tbaa !11
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i32 [ 0, %46 ], [ %53, %51 ]
  br label %56

56:                                               ; preds = %54, %166
  %57 = phi i64 [ %168, %166 ], [ 0, %54 ]
  %58 = phi i32 [ %167, %166 ], [ %55, %54 ]
  %59 = mul nuw nsw i64 %57, %9
  %60 = add nuw i64 %59, %43
  %61 = mul i64 %60, %27
  %62 = getelementptr i8, ptr %1, i64 %61
  %63 = mul nuw nsw i64 %57, %21
  %64 = add nuw i64 %63, %47
  %65 = mul i64 %64, %24
  %66 = getelementptr i8, ptr %2, i64 %65
  br i1 %34, label %135, label %67

67:                                               ; preds = %56
  br i1 %35, label %101, label %68

68:                                               ; preds = %67
  %69 = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %58, i64 0
  br label %70

70:                                               ; preds = %70, %68
  %71 = phi i64 [ 0, %68 ], [ %96, %70 ]
  %72 = phi <16 x i32> [ %69, %68 ], [ %95, %70 ]
  %73 = shl nuw nsw i64 %71, 1
  %74 = getelementptr i8, ptr %62, i64 %73
  %75 = load <32 x i8>, ptr %74, align 1, !tbaa !199
  %76 = shufflevector <32 x i8> %75, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %77 = shufflevector <32 x i8> %75, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %78 = sext <16 x i8> %76 to <16 x i32>
  %79 = sext <16 x i8> %77 to <16 x i32>
  %80 = getelementptr i8, ptr %66, i64 %71
  %81 = load <16 x i8>, ptr %80, align 1, !tbaa !199
  %82 = and <16 x i8> %81, splat (i8 15)
  %83 = icmp samesign ult <16 x i8> %82, splat (i8 8)
  %84 = select <16 x i1> %83, <16 x i8> zeroinitializer, <16 x i8> splat (i8 -16)
  %85 = or disjoint <16 x i8> %84, %82
  %86 = lshr <16 x i8> %81, splat (i8 4)
  %87 = or disjoint <16 x i8> %86, splat (i8 -16)
  %88 = icmp slt <16 x i8> %81, zeroinitializer
  %89 = select <16 x i1> %88, <16 x i8> %87, <16 x i8> %86
  %90 = sext <16 x i8> %85 to <16 x i32>
  %91 = mul nsw <16 x i32> %90, %78
  %92 = sext <16 x i8> %89 to <16 x i32>
  %93 = mul nsw <16 x i32> %92, %79
  %94 = add <16 x i32> %93, %72
  %95 = add <16 x i32> %94, %91
  %96 = add nuw i64 %71, 16
  %97 = icmp eq i64 %96, %36
  br i1 %97, label %98, label %70, !llvm.loop !200

98:                                               ; preds = %70
  %99 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %95)
  br i1 %37, label %166, label %100

100:                                              ; preds = %98
  br i1 %39, label %135, label %101, !prof !167

101:                                              ; preds = %67, %100
  %102 = phi i64 [ %36, %100 ], [ 0, %67 ]
  %103 = phi i32 [ %99, %100 ], [ %58, %67 ]
  %104 = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %103, i64 0
  br label %105

105:                                              ; preds = %105, %101
  %106 = phi i64 [ %102, %101 ], [ %131, %105 ]
  %107 = phi <8 x i32> [ %104, %101 ], [ %130, %105 ]
  %108 = shl nuw nsw i64 %106, 1
  %109 = getelementptr i8, ptr %62, i64 %108
  %110 = load <16 x i8>, ptr %109, align 1, !tbaa !199
  %111 = shufflevector <16 x i8> %110, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %112 = shufflevector <16 x i8> %110, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %113 = sext <8 x i8> %111 to <8 x i32>
  %114 = sext <8 x i8> %112 to <8 x i32>
  %115 = getelementptr i8, ptr %66, i64 %106
  %116 = load <8 x i8>, ptr %115, align 1, !tbaa !199
  %117 = and <8 x i8> %116, splat (i8 15)
  %118 = icmp samesign ult <8 x i8> %117, splat (i8 8)
  %119 = select <8 x i1> %118, <8 x i8> zeroinitializer, <8 x i8> splat (i8 -16)
  %120 = or disjoint <8 x i8> %119, %117
  %121 = lshr <8 x i8> %116, splat (i8 4)
  %122 = or disjoint <8 x i8> %121, splat (i8 -16)
  %123 = icmp slt <8 x i8> %116, zeroinitializer
  %124 = select <8 x i1> %123, <8 x i8> %122, <8 x i8> %121
  %125 = sext <8 x i8> %120 to <8 x i32>
  %126 = mul nsw <8 x i32> %125, %113
  %127 = sext <8 x i8> %124 to <8 x i32>
  %128 = mul nsw <8 x i32> %127, %114
  %129 = add <8 x i32> %128, %107
  %130 = add <8 x i32> %129, %126
  %131 = add nuw i64 %106, 8
  %132 = icmp eq i64 %131, %40
  br i1 %132, label %133, label %105, !llvm.loop !201

133:                                              ; preds = %105
  %134 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %130)
  br i1 %41, label %166, label %135

135:                                              ; preds = %56, %100, %133
  %136 = phi i64 [ 0, %56 ], [ %36, %100 ], [ %40, %133 ]
  %137 = phi i32 [ %58, %56 ], [ %99, %100 ], [ %134, %133 ]
  br label %138

138:                                              ; preds = %135, %138
  %139 = phi i64 [ %164, %138 ], [ %136, %135 ]
  %140 = phi i32 [ %163, %138 ], [ %137, %135 ]
  %141 = shl nuw nsw i64 %139, 1
  %142 = getelementptr i8, ptr %62, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !199
  %144 = sext i8 %143 to i32
  %145 = getelementptr i8, ptr %142, i64 1
  %146 = load i8, ptr %145, align 1, !tbaa !199
  %147 = sext i8 %146 to i32
  %148 = getelementptr i8, ptr %66, i64 %139
  %149 = load i8, ptr %148, align 1, !tbaa !199
  %150 = and i8 %149, 15
  %151 = icmp samesign ult i8 %150, 8
  %152 = select i1 %151, i8 0, i8 -16
  %153 = or disjoint i8 %152, %150
  %154 = lshr i8 %149, 4
  %155 = or disjoint i8 %154, -16
  %156 = icmp slt i8 %149, 0
  %157 = select i1 %156, i8 %155, i8 %154
  %158 = sext i8 %153 to i32
  %159 = mul nsw i32 %158, %144
  %160 = sext i8 %157 to i32
  %161 = mul nsw i32 %160, %147
  %162 = add i32 %161, %140
  %163 = add i32 %162, %159
  %164 = add nuw nsw i64 %139, 1
  %165 = icmp eq i64 %164, %24
  br i1 %165, label %166, label %138, !llvm.loop !202

166:                                              ; preds = %138, %133, %98
  %167 = phi i32 [ %134, %133 ], [ %99, %98 ], [ %163, %138 ]
  %168 = add nuw nsw i64 %57, 1
  %169 = icmp eq i64 %168, %30
  br i1 %169, label %170, label %56, !llvm.loop !203

170:                                              ; preds = %166
  %171 = getelementptr [4 x i8], ptr %45, i64 %47
  store i32 %167, ptr %171, align 4, !tbaa !11
  %172 = add nuw nsw i64 %47, 1
  %173 = icmp eq i64 %172, %21
  br i1 %173, label %174, label %46, !llvm.loop !204

174:                                              ; preds = %170
  %175 = add nuw nsw i64 %43, 1
  %176 = icmp eq i64 %175, %9
  br i1 %176, label %217, label %42, !llvm.loop !205

177:                                              ; preds = %32, %194
  %178 = phi i64 [ %195, %194 ], [ 0, %32 ]
  %179 = mul nuw nsw i64 %178, %21
  %180 = getelementptr [4 x i8], ptr %0, i64 %179
  br label %181

181:                                              ; preds = %177, %189
  %182 = phi i64 [ 0, %177 ], [ %192, %189 ]
  %183 = load i32, ptr %23, align 4, !tbaa !146
  %184 = and i32 %183, 256
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %181
  %187 = getelementptr [4 x i8], ptr %180, i64 %182
  %188 = load i32, ptr %187, align 4, !tbaa !11
  br label %189

189:                                              ; preds = %186, %181
  %190 = phi i32 [ %188, %186 ], [ 0, %181 ]
  %191 = getelementptr [4 x i8], ptr %180, i64 %182
  store i32 %190, ptr %191, align 4, !tbaa !11
  %192 = add nuw nsw i64 %182, 1
  %193 = icmp eq i64 %192, %21
  br i1 %193, label %194, label %181, !llvm.loop !204

194:                                              ; preds = %189
  %195 = add nuw nsw i64 %178, 1
  %196 = icmp eq i64 %195, %9
  br i1 %196, label %217, label %177, !llvm.loop !205

197:                                              ; preds = %28, %214
  %198 = phi i64 [ %215, %214 ], [ 0, %28 ]
  %199 = mul nuw nsw i64 %198, %21
  %200 = getelementptr [4 x i8], ptr %0, i64 %199
  br label %201

201:                                              ; preds = %197, %209
  %202 = phi i64 [ 0, %197 ], [ %212, %209 ]
  %203 = load i32, ptr %23, align 4, !tbaa !146
  %204 = and i32 %203, 256
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %201
  %207 = getelementptr [4 x i8], ptr %200, i64 %202
  %208 = load i32, ptr %207, align 4, !tbaa !11
  br label %209

209:                                              ; preds = %206, %201
  %210 = phi i32 [ %208, %206 ], [ 0, %201 ]
  %211 = getelementptr [4 x i8], ptr %200, i64 %202
  store i32 %210, ptr %211, align 4, !tbaa !11
  %212 = add nuw nsw i64 %202, 1
  %213 = icmp eq i64 %212, %21
  br i1 %213, label %214, label %201, !llvm.loop !204

214:                                              ; preds = %209
  %215 = add nuw nsw i64 %198, 1
  %216 = icmp eq i64 %215, %9
  br i1 %216, label %217, label %197, !llvm.loop !205

217:                                              ; preds = %214, %194, %174, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_s16s16s32_generic(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #11 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !143
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %180

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !145
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %16 = load i32, ptr %15, align 4, !tbaa !144
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 48
  %19 = ashr exact i64 %18, 48
  %20 = icmp sgt i64 %19, 0
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %22 = shl i64 %14, 48
  %23 = ashr exact i64 %22, 48
  %24 = icmp sgt i64 %23, 0
  br i1 %20, label %25, label %180

25:                                               ; preds = %11
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %27 = load i64, ptr %26, align 8, !tbaa !142
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %160

29:                                               ; preds = %25
  br i1 %24, label %30, label %140

30:                                               ; preds = %29
  %31 = icmp ult i64 %23, 4
  %32 = icmp ult i64 %23, 16
  %33 = and i64 %14, 15
  %34 = sub nuw nsw i64 %23, %33
  %35 = icmp eq i64 %33, 0
  %36 = icmp samesign ult i64 %33, 4
  %37 = and i64 %14, 3
  %38 = sub nsw i64 %23, %37
  %39 = icmp eq i64 %37, 0
  br label %40

40:                                               ; preds = %30, %137
  %41 = phi i64 [ %138, %137 ], [ 0, %30 ]
  %42 = mul nuw nsw i64 %41, %19
  %43 = getelementptr [4 x i8], ptr %0, i64 %42
  br label %44

44:                                               ; preds = %133, %40
  %45 = phi i64 [ 0, %40 ], [ %135, %133 ]
  %46 = load i32, ptr %21, align 4, !tbaa !146
  %47 = and i32 %46, 256
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = getelementptr [4 x i8], ptr %43, i64 %45
  %51 = load i32, ptr %50, align 4, !tbaa !11
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi i32 [ 0, %44 ], [ %51, %49 ]
  br label %54

54:                                               ; preds = %52, %129
  %55 = phi i64 [ %131, %129 ], [ 0, %52 ]
  %56 = phi i32 [ %130, %129 ], [ %53, %52 ]
  %57 = mul nuw nsw i64 %55, %9
  %58 = add nuw i64 %57, %41
  %59 = mul i64 %58, %23
  %60 = getelementptr [2 x i8], ptr %1, i64 %59
  %61 = mul nuw nsw i64 %55, %19
  %62 = add nuw i64 %61, %45
  %63 = mul i64 %62, %23
  %64 = getelementptr [2 x i8], ptr %2, i64 %63
  br i1 %31, label %113, label %65

65:                                               ; preds = %54
  br i1 %32, label %94, label %66

66:                                               ; preds = %65
  %67 = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %56, i64 0
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi i64 [ 0, %66 ], [ %88, %68 ]
  %70 = phi <8 x i32> [ %67, %66 ], [ %86, %68 ]
  %71 = phi <8 x i32> [ zeroinitializer, %66 ], [ %87, %68 ]
  %72 = getelementptr [2 x i8], ptr %60, i64 %69
  %73 = getelementptr i8, ptr %72, i64 16
  %74 = load <8 x i16>, ptr %72, align 2, !tbaa !109
  %75 = load <8 x i16>, ptr %73, align 2, !tbaa !109
  %76 = sext <8 x i16> %74 to <8 x i32>
  %77 = sext <8 x i16> %75 to <8 x i32>
  %78 = getelementptr [2 x i8], ptr %64, i64 %69
  %79 = getelementptr i8, ptr %78, i64 16
  %80 = load <8 x i16>, ptr %78, align 2, !tbaa !109
  %81 = load <8 x i16>, ptr %79, align 2, !tbaa !109
  %82 = sext <8 x i16> %80 to <8 x i32>
  %83 = sext <8 x i16> %81 to <8 x i32>
  %84 = mul nsw <8 x i32> %82, %76
  %85 = mul nsw <8 x i32> %83, %77
  %86 = add <8 x i32> %84, %70
  %87 = add <8 x i32> %85, %71
  %88 = add nuw i64 %69, 16
  %89 = icmp eq i64 %88, %34
  br i1 %89, label %90, label %68, !llvm.loop !206

90:                                               ; preds = %68
  %91 = add <8 x i32> %87, %86
  %92 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %91)
  br i1 %35, label %129, label %93

93:                                               ; preds = %90
  br i1 %36, label %113, label %94, !prof !159

94:                                               ; preds = %65, %93
  %95 = phi i64 [ %34, %93 ], [ 0, %65 ]
  %96 = phi i32 [ %92, %93 ], [ %56, %65 ]
  %97 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %96, i64 0
  br label %98

98:                                               ; preds = %98, %94
  %99 = phi i64 [ %95, %94 ], [ %109, %98 ]
  %100 = phi <4 x i32> [ %97, %94 ], [ %108, %98 ]
  %101 = getelementptr [2 x i8], ptr %60, i64 %99
  %102 = load <4 x i16>, ptr %101, align 2, !tbaa !109
  %103 = sext <4 x i16> %102 to <4 x i32>
  %104 = getelementptr [2 x i8], ptr %64, i64 %99
  %105 = load <4 x i16>, ptr %104, align 2, !tbaa !109
  %106 = sext <4 x i16> %105 to <4 x i32>
  %107 = mul nsw <4 x i32> %106, %103
  %108 = add <4 x i32> %107, %100
  %109 = add nuw i64 %99, 4
  %110 = icmp eq i64 %109, %38
  br i1 %110, label %111, label %98, !llvm.loop !207

111:                                              ; preds = %98
  %112 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %108)
  br i1 %39, label %129, label %113

113:                                              ; preds = %54, %93, %111
  %114 = phi i64 [ 0, %54 ], [ %34, %93 ], [ %38, %111 ]
  %115 = phi i32 [ %56, %54 ], [ %92, %93 ], [ %112, %111 ]
  br label %116

116:                                              ; preds = %113, %116
  %117 = phi i64 [ %127, %116 ], [ %114, %113 ]
  %118 = phi i32 [ %126, %116 ], [ %115, %113 ]
  %119 = getelementptr [2 x i8], ptr %60, i64 %117
  %120 = load i16, ptr %119, align 2, !tbaa !109
  %121 = sext i16 %120 to i32
  %122 = getelementptr [2 x i8], ptr %64, i64 %117
  %123 = load i16, ptr %122, align 2, !tbaa !109
  %124 = sext i16 %123 to i32
  %125 = mul nsw i32 %124, %121
  %126 = add nsw i32 %125, %118
  %127 = add nuw nsw i64 %117, 1
  %128 = icmp eq i64 %127, %23
  br i1 %128, label %129, label %116, !llvm.loop !208

129:                                              ; preds = %116, %111, %90
  %130 = phi i32 [ %112, %111 ], [ %92, %90 ], [ %126, %116 ]
  %131 = add nuw nsw i64 %55, 1
  %132 = icmp eq i64 %131, %27
  br i1 %132, label %133, label %54, !llvm.loop !209

133:                                              ; preds = %129
  %134 = getelementptr [4 x i8], ptr %43, i64 %45
  store i32 %130, ptr %134, align 4, !tbaa !11
  %135 = add nuw nsw i64 %45, 1
  %136 = icmp eq i64 %135, %19
  br i1 %136, label %137, label %44, !llvm.loop !210

137:                                              ; preds = %133
  %138 = add nuw nsw i64 %41, 1
  %139 = icmp eq i64 %138, %9
  br i1 %139, label %180, label %40, !llvm.loop !211

140:                                              ; preds = %29, %157
  %141 = phi i64 [ %158, %157 ], [ 0, %29 ]
  %142 = mul nuw nsw i64 %141, %19
  %143 = getelementptr [4 x i8], ptr %0, i64 %142
  br label %144

144:                                              ; preds = %140, %152
  %145 = phi i64 [ 0, %140 ], [ %155, %152 ]
  %146 = load i32, ptr %21, align 4, !tbaa !146
  %147 = and i32 %146, 256
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %144
  %150 = getelementptr [4 x i8], ptr %143, i64 %145
  %151 = load i32, ptr %150, align 4, !tbaa !11
  br label %152

152:                                              ; preds = %149, %144
  %153 = phi i32 [ %151, %149 ], [ 0, %144 ]
  %154 = getelementptr [4 x i8], ptr %143, i64 %145
  store i32 %153, ptr %154, align 4, !tbaa !11
  %155 = add nuw nsw i64 %145, 1
  %156 = icmp eq i64 %155, %19
  br i1 %156, label %157, label %144, !llvm.loop !210

157:                                              ; preds = %152
  %158 = add nuw nsw i64 %141, 1
  %159 = icmp eq i64 %158, %9
  br i1 %159, label %180, label %140, !llvm.loop !211

160:                                              ; preds = %25, %177
  %161 = phi i64 [ %178, %177 ], [ 0, %25 ]
  %162 = mul nuw nsw i64 %161, %19
  %163 = getelementptr [4 x i8], ptr %0, i64 %162
  br label %164

164:                                              ; preds = %160, %172
  %165 = phi i64 [ 0, %160 ], [ %175, %172 ]
  %166 = load i32, ptr %21, align 4, !tbaa !146
  %167 = and i32 %166, 256
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %164
  %170 = getelementptr [4 x i8], ptr %163, i64 %165
  %171 = load i32, ptr %170, align 4, !tbaa !11
  br label %172

172:                                              ; preds = %169, %164
  %173 = phi i32 [ %171, %169 ], [ 0, %164 ]
  %174 = getelementptr [4 x i8], ptr %163, i64 %165
  store i32 %173, ptr %174, align 4, !tbaa !11
  %175 = add nuw nsw i64 %165, 1
  %176 = icmp eq i64 %175, %19
  br i1 %176, label %177, label %164, !llvm.loop !210

177:                                              ; preds = %172
  %178 = add nuw nsw i64 %161, 1
  %179 = icmp eq i64 %178, %9
  br i1 %179, label %180, label %160, !llvm.loop !211

180:                                              ; preds = %177, %157, %137, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_s16u4s32_generic(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #11 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !143
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %197

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !145
  %14 = trunc i32 %13 to i16
  %15 = sdiv i16 %14, 2
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %18 = load i32, ptr %17, align 4, !tbaa !144
  %19 = zext i32 %18 to i64
  %20 = shl i64 %19, 48
  %21 = ashr exact i64 %20, 48
  %22 = icmp sgt i64 %21, 0
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %24 = sext i16 %15 to i64
  %25 = icmp sgt i16 %14, 1
  %26 = shl i64 %16, 48
  %27 = ashr exact i64 %26, 48
  br i1 %22, label %28, label %197

28:                                               ; preds = %11
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %30 = load i64, ptr %29, align 8, !tbaa !142
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %177

32:                                               ; preds = %28
  br i1 %25, label %33, label %157

33:                                               ; preds = %32
  %34 = icmp ult i16 %15, 4
  %35 = icmp ult i16 %15, 16
  %36 = and i64 %24, 16368
  %37 = icmp eq i64 %36, %24
  %38 = and i16 %15, 12
  %39 = icmp eq i16 %38, 0
  %40 = and i64 %24, 16380
  %41 = icmp eq i64 %40, %24
  br label %42

42:                                               ; preds = %33, %154
  %43 = phi i64 [ %155, %154 ], [ 0, %33 ]
  %44 = mul nuw nsw i64 %43, %21
  %45 = getelementptr [4 x i8], ptr %0, i64 %44
  br label %46

46:                                               ; preds = %150, %42
  %47 = phi i64 [ 0, %42 ], [ %152, %150 ]
  %48 = load i32, ptr %23, align 4, !tbaa !146
  %49 = and i32 %48, 256
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = getelementptr [4 x i8], ptr %45, i64 %47
  %53 = load i32, ptr %52, align 4, !tbaa !11
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i32 [ 0, %46 ], [ %53, %51 ]
  br label %56

56:                                               ; preds = %54, %146
  %57 = phi i32 [ %147, %146 ], [ %55, %54 ]
  %58 = phi i64 [ %148, %146 ], [ 0, %54 ]
  %59 = mul nuw nsw i64 %58, %9
  %60 = add nuw i64 %59, %43
  %61 = mul i64 %60, %27
  %62 = getelementptr [2 x i8], ptr %1, i64 %61
  %63 = mul nuw nsw i64 %58, %21
  %64 = add nuw i64 %63, %47
  %65 = mul i64 %64, %24
  %66 = getelementptr i8, ptr %2, i64 %65
  br i1 %34, label %122, label %67

67:                                               ; preds = %56
  br i1 %35, label %95, label %68

68:                                               ; preds = %67
  %69 = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %57, i64 0
  br label %70

70:                                               ; preds = %70, %68
  %71 = phi i64 [ 0, %68 ], [ %90, %70 ]
  %72 = phi <16 x i32> [ %69, %68 ], [ %89, %70 ]
  %73 = shl i64 %71, 2
  %74 = getelementptr i8, ptr %62, i64 %73
  %75 = load <32 x i16>, ptr %74, align 2, !tbaa !109
  %76 = shufflevector <32 x i16> %75, <32 x i16> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %77 = shufflevector <32 x i16> %75, <32 x i16> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %78 = sext <16 x i16> %76 to <16 x i32>
  %79 = sext <16 x i16> %77 to <16 x i32>
  %80 = getelementptr i8, ptr %66, i64 %71
  %81 = load <16 x i8>, ptr %80, align 1, !tbaa !199
  %82 = and <16 x i8> %81, splat (i8 15)
  %83 = zext nneg <16 x i8> %82 to <16 x i32>
  %84 = lshr <16 x i8> %81, splat (i8 4)
  %85 = zext nneg <16 x i8> %84 to <16 x i32>
  %86 = mul nsw <16 x i32> %83, %78
  %87 = mul nsw <16 x i32> %85, %79
  %88 = add <16 x i32> %87, %72
  %89 = add <16 x i32> %88, %86
  %90 = add nuw i64 %71, 16
  %91 = icmp eq i64 %90, %36
  br i1 %91, label %92, label %70, !llvm.loop !212

92:                                               ; preds = %70
  %93 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %89)
  br i1 %37, label %146, label %94

94:                                               ; preds = %92
  br i1 %39, label %122, label %95, !prof !159

95:                                               ; preds = %67, %94
  %96 = phi i64 [ %36, %94 ], [ 0, %67 ]
  %97 = phi i32 [ %93, %94 ], [ %57, %67 ]
  %98 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %97, i64 0
  br label %99

99:                                               ; preds = %99, %95
  %100 = phi i64 [ %96, %95 ], [ %118, %99 ]
  %101 = phi <4 x i32> [ %98, %95 ], [ %117, %99 ]
  %102 = shl i64 %100, 2
  %103 = getelementptr i8, ptr %62, i64 %102
  %104 = load <8 x i16>, ptr %103, align 2, !tbaa !109
  %105 = shufflevector <8 x i16> %104, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %106 = shufflevector <8 x i16> %104, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %107 = sext <4 x i16> %105 to <4 x i32>
  %108 = sext <4 x i16> %106 to <4 x i32>
  %109 = getelementptr i8, ptr %66, i64 %100
  %110 = load <4 x i8>, ptr %109, align 1, !tbaa !199
  %111 = zext <4 x i8> %110 to <4 x i32>
  %112 = and <4 x i32> %111, splat (i32 15)
  %113 = lshr <4 x i32> %111, splat (i32 4)
  %114 = mul nsw <4 x i32> %112, %107
  %115 = mul nsw <4 x i32> %113, %108
  %116 = add <4 x i32> %115, %101
  %117 = add <4 x i32> %116, %114
  %118 = add nuw i64 %100, 4
  %119 = icmp eq i64 %118, %40
  br i1 %119, label %120, label %99, !llvm.loop !213

120:                                              ; preds = %99
  %121 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %117)
  br i1 %41, label %146, label %122

122:                                              ; preds = %56, %94, %120
  %123 = phi i32 [ %57, %56 ], [ %93, %94 ], [ %121, %120 ]
  %124 = phi i64 [ 0, %56 ], [ %36, %94 ], [ %40, %120 ]
  br label %125

125:                                              ; preds = %122, %125
  %126 = phi i32 [ %143, %125 ], [ %123, %122 ]
  %127 = phi i64 [ %144, %125 ], [ %124, %122 ]
  %128 = shl i64 %127, 2
  %129 = getelementptr i8, ptr %62, i64 %128
  %130 = load i16, ptr %129, align 2, !tbaa !109
  %131 = sext i16 %130 to i32
  %132 = getelementptr i8, ptr %129, i64 2
  %133 = load i16, ptr %132, align 2, !tbaa !109
  %134 = sext i16 %133 to i32
  %135 = getelementptr i8, ptr %66, i64 %127
  %136 = load i8, ptr %135, align 1, !tbaa !199
  %137 = zext i8 %136 to i32
  %138 = and i32 %137, 15
  %139 = lshr i32 %137, 4
  %140 = mul nsw i32 %138, %131
  %141 = mul nsw i32 %139, %134
  %142 = add i32 %141, %126
  %143 = add i32 %142, %140
  %144 = add nuw nsw i64 %127, 1
  %145 = icmp eq i64 %144, %24
  br i1 %145, label %146, label %125, !llvm.loop !214

146:                                              ; preds = %125, %120, %92
  %147 = phi i32 [ %121, %120 ], [ %93, %92 ], [ %143, %125 ]
  %148 = add nuw nsw i64 %58, 1
  %149 = icmp eq i64 %148, %30
  br i1 %149, label %150, label %56, !llvm.loop !215

150:                                              ; preds = %146
  %151 = getelementptr [4 x i8], ptr %45, i64 %47
  store i32 %147, ptr %151, align 4, !tbaa !11
  %152 = add nuw nsw i64 %47, 1
  %153 = icmp eq i64 %152, %21
  br i1 %153, label %154, label %46, !llvm.loop !216

154:                                              ; preds = %150
  %155 = add nuw nsw i64 %43, 1
  %156 = icmp eq i64 %155, %9
  br i1 %156, label %197, label %42, !llvm.loop !217

157:                                              ; preds = %32, %174
  %158 = phi i64 [ %175, %174 ], [ 0, %32 ]
  %159 = mul nuw nsw i64 %158, %21
  %160 = getelementptr [4 x i8], ptr %0, i64 %159
  br label %161

161:                                              ; preds = %157, %169
  %162 = phi i64 [ 0, %157 ], [ %172, %169 ]
  %163 = load i32, ptr %23, align 4, !tbaa !146
  %164 = and i32 %163, 256
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %161
  %167 = getelementptr [4 x i8], ptr %160, i64 %162
  %168 = load i32, ptr %167, align 4, !tbaa !11
  br label %169

169:                                              ; preds = %166, %161
  %170 = phi i32 [ %168, %166 ], [ 0, %161 ]
  %171 = getelementptr [4 x i8], ptr %160, i64 %162
  store i32 %170, ptr %171, align 4, !tbaa !11
  %172 = add nuw nsw i64 %162, 1
  %173 = icmp eq i64 %172, %21
  br i1 %173, label %174, label %161, !llvm.loop !216

174:                                              ; preds = %169
  %175 = add nuw nsw i64 %158, 1
  %176 = icmp eq i64 %175, %9
  br i1 %176, label %197, label %157, !llvm.loop !217

177:                                              ; preds = %28, %194
  %178 = phi i64 [ %195, %194 ], [ 0, %28 ]
  %179 = mul nuw nsw i64 %178, %21
  %180 = getelementptr [4 x i8], ptr %0, i64 %179
  br label %181

181:                                              ; preds = %177, %189
  %182 = phi i64 [ 0, %177 ], [ %192, %189 ]
  %183 = load i32, ptr %23, align 4, !tbaa !146
  %184 = and i32 %183, 256
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %181
  %187 = getelementptr [4 x i8], ptr %180, i64 %182
  %188 = load i32, ptr %187, align 4, !tbaa !11
  br label %189

189:                                              ; preds = %186, %181
  %190 = phi i32 [ %188, %186 ], [ 0, %181 ]
  %191 = getelementptr [4 x i8], ptr %180, i64 %182
  store i32 %190, ptr %191, align 4, !tbaa !11
  %192 = add nuw nsw i64 %182, 1
  %193 = icmp eq i64 %192, %21
  br i1 %193, label %194, label %181, !llvm.loop !216

194:                                              ; preds = %189
  %195 = add nuw nsw i64 %178, 1
  %196 = icmp eq i64 %195, %9
  br i1 %196, label %197, label %177, !llvm.loop !217

197:                                              ; preds = %194, %174, %154, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_s16s8s32_generic(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #11 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !143
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %180

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !145
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %16 = load i32, ptr %15, align 4, !tbaa !144
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 48
  %19 = ashr exact i64 %18, 48
  %20 = icmp sgt i64 %19, 0
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %22 = shl i64 %14, 48
  %23 = ashr exact i64 %22, 48
  %24 = icmp sgt i64 %23, 0
  br i1 %20, label %25, label %180

25:                                               ; preds = %11
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %27 = load i64, ptr %26, align 8, !tbaa !142
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %160

29:                                               ; preds = %25
  br i1 %24, label %30, label %140

30:                                               ; preds = %29
  %31 = icmp ult i64 %23, 4
  %32 = icmp ult i64 %23, 32
  %33 = and i64 %14, 31
  %34 = sub nuw nsw i64 %23, %33
  %35 = icmp eq i64 %33, 0
  %36 = icmp samesign ult i64 %33, 4
  %37 = and i64 %14, 3
  %38 = sub nsw i64 %23, %37
  %39 = icmp eq i64 %37, 0
  br label %40

40:                                               ; preds = %30, %137
  %41 = phi i64 [ %138, %137 ], [ 0, %30 ]
  %42 = mul nuw nsw i64 %41, %19
  %43 = getelementptr [4 x i8], ptr %0, i64 %42
  br label %44

44:                                               ; preds = %133, %40
  %45 = phi i64 [ 0, %40 ], [ %135, %133 ]
  %46 = load i32, ptr %21, align 4, !tbaa !146
  %47 = and i32 %46, 256
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = getelementptr [4 x i8], ptr %43, i64 %45
  %51 = load i32, ptr %50, align 4, !tbaa !11
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi i32 [ 0, %44 ], [ %51, %49 ]
  br label %54

54:                                               ; preds = %52, %129
  %55 = phi i64 [ %131, %129 ], [ 0, %52 ]
  %56 = phi i32 [ %130, %129 ], [ %53, %52 ]
  %57 = mul nuw nsw i64 %55, %9
  %58 = add nuw i64 %57, %41
  %59 = mul i64 %58, %23
  %60 = getelementptr [2 x i8], ptr %1, i64 %59
  %61 = mul nuw nsw i64 %55, %19
  %62 = add nuw i64 %61, %45
  %63 = mul i64 %62, %23
  %64 = getelementptr i8, ptr %2, i64 %63
  br i1 %31, label %113, label %65

65:                                               ; preds = %54
  br i1 %32, label %94, label %66

66:                                               ; preds = %65
  %67 = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %56, i64 0
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi i64 [ 0, %66 ], [ %88, %68 ]
  %70 = phi <16 x i32> [ %67, %66 ], [ %86, %68 ]
  %71 = phi <16 x i32> [ zeroinitializer, %66 ], [ %87, %68 ]
  %72 = getelementptr [2 x i8], ptr %60, i64 %69
  %73 = getelementptr i8, ptr %72, i64 32
  %74 = load <16 x i16>, ptr %72, align 2, !tbaa !109
  %75 = load <16 x i16>, ptr %73, align 2, !tbaa !109
  %76 = sext <16 x i16> %74 to <16 x i32>
  %77 = sext <16 x i16> %75 to <16 x i32>
  %78 = getelementptr i8, ptr %64, i64 %69
  %79 = getelementptr i8, ptr %78, i64 16
  %80 = load <16 x i8>, ptr %78, align 1, !tbaa !199
  %81 = load <16 x i8>, ptr %79, align 1, !tbaa !199
  %82 = sext <16 x i8> %80 to <16 x i32>
  %83 = sext <16 x i8> %81 to <16 x i32>
  %84 = mul nsw <16 x i32> %82, %76
  %85 = mul nsw <16 x i32> %83, %77
  %86 = add <16 x i32> %84, %70
  %87 = add <16 x i32> %85, %71
  %88 = add nuw i64 %69, 32
  %89 = icmp eq i64 %88, %34
  br i1 %89, label %90, label %68, !llvm.loop !218

90:                                               ; preds = %68
  %91 = add <16 x i32> %87, %86
  %92 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %91)
  br i1 %35, label %129, label %93

93:                                               ; preds = %90
  br i1 %36, label %113, label %94, !prof !219

94:                                               ; preds = %65, %93
  %95 = phi i64 [ %34, %93 ], [ 0, %65 ]
  %96 = phi i32 [ %92, %93 ], [ %56, %65 ]
  %97 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %96, i64 0
  br label %98

98:                                               ; preds = %98, %94
  %99 = phi i64 [ %95, %94 ], [ %109, %98 ]
  %100 = phi <4 x i32> [ %97, %94 ], [ %108, %98 ]
  %101 = getelementptr [2 x i8], ptr %60, i64 %99
  %102 = load <4 x i16>, ptr %101, align 2, !tbaa !109
  %103 = sext <4 x i16> %102 to <4 x i32>
  %104 = getelementptr i8, ptr %64, i64 %99
  %105 = load <4 x i8>, ptr %104, align 1, !tbaa !199
  %106 = sext <4 x i8> %105 to <4 x i32>
  %107 = mul nsw <4 x i32> %106, %103
  %108 = add <4 x i32> %107, %100
  %109 = add nuw i64 %99, 4
  %110 = icmp eq i64 %109, %38
  br i1 %110, label %111, label %98, !llvm.loop !220

111:                                              ; preds = %98
  %112 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %108)
  br i1 %39, label %129, label %113

113:                                              ; preds = %54, %93, %111
  %114 = phi i64 [ 0, %54 ], [ %34, %93 ], [ %38, %111 ]
  %115 = phi i32 [ %56, %54 ], [ %92, %93 ], [ %112, %111 ]
  br label %116

116:                                              ; preds = %113, %116
  %117 = phi i64 [ %127, %116 ], [ %114, %113 ]
  %118 = phi i32 [ %126, %116 ], [ %115, %113 ]
  %119 = getelementptr [2 x i8], ptr %60, i64 %117
  %120 = load i16, ptr %119, align 2, !tbaa !109
  %121 = sext i16 %120 to i32
  %122 = getelementptr i8, ptr %64, i64 %117
  %123 = load i8, ptr %122, align 1, !tbaa !199
  %124 = sext i8 %123 to i32
  %125 = mul nsw i32 %124, %121
  %126 = add nsw i32 %125, %118
  %127 = add nuw nsw i64 %117, 1
  %128 = icmp eq i64 %127, %23
  br i1 %128, label %129, label %116, !llvm.loop !221

129:                                              ; preds = %116, %111, %90
  %130 = phi i32 [ %112, %111 ], [ %92, %90 ], [ %126, %116 ]
  %131 = add nuw nsw i64 %55, 1
  %132 = icmp eq i64 %131, %27
  br i1 %132, label %133, label %54, !llvm.loop !222

133:                                              ; preds = %129
  %134 = getelementptr [4 x i8], ptr %43, i64 %45
  store i32 %130, ptr %134, align 4, !tbaa !11
  %135 = add nuw nsw i64 %45, 1
  %136 = icmp eq i64 %135, %19
  br i1 %136, label %137, label %44, !llvm.loop !223

137:                                              ; preds = %133
  %138 = add nuw nsw i64 %41, 1
  %139 = icmp eq i64 %138, %9
  br i1 %139, label %180, label %40, !llvm.loop !224

140:                                              ; preds = %29, %157
  %141 = phi i64 [ %158, %157 ], [ 0, %29 ]
  %142 = mul nuw nsw i64 %141, %19
  %143 = getelementptr [4 x i8], ptr %0, i64 %142
  br label %144

144:                                              ; preds = %140, %152
  %145 = phi i64 [ 0, %140 ], [ %155, %152 ]
  %146 = load i32, ptr %21, align 4, !tbaa !146
  %147 = and i32 %146, 256
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %144
  %150 = getelementptr [4 x i8], ptr %143, i64 %145
  %151 = load i32, ptr %150, align 4, !tbaa !11
  br label %152

152:                                              ; preds = %149, %144
  %153 = phi i32 [ %151, %149 ], [ 0, %144 ]
  %154 = getelementptr [4 x i8], ptr %143, i64 %145
  store i32 %153, ptr %154, align 4, !tbaa !11
  %155 = add nuw nsw i64 %145, 1
  %156 = icmp eq i64 %155, %19
  br i1 %156, label %157, label %144, !llvm.loop !223

157:                                              ; preds = %152
  %158 = add nuw nsw i64 %141, 1
  %159 = icmp eq i64 %158, %9
  br i1 %159, label %180, label %140, !llvm.loop !224

160:                                              ; preds = %25, %177
  %161 = phi i64 [ %178, %177 ], [ 0, %25 ]
  %162 = mul nuw nsw i64 %161, %19
  %163 = getelementptr [4 x i8], ptr %0, i64 %162
  br label %164

164:                                              ; preds = %160, %172
  %165 = phi i64 [ 0, %160 ], [ %175, %172 ]
  %166 = load i32, ptr %21, align 4, !tbaa !146
  %167 = and i32 %166, 256
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %164
  %170 = getelementptr [4 x i8], ptr %163, i64 %165
  %171 = load i32, ptr %170, align 4, !tbaa !11
  br label %172

172:                                              ; preds = %169, %164
  %173 = phi i32 [ %171, %169 ], [ 0, %164 ]
  %174 = getelementptr [4 x i8], ptr %163, i64 %165
  store i32 %173, ptr %174, align 4, !tbaa !11
  %175 = add nuw nsw i64 %165, 1
  %176 = icmp eq i64 %175, %19
  br i1 %176, label %177, label %164, !llvm.loop !223

177:                                              ; preds = %172
  %178 = add nuw nsw i64 %161, 1
  %179 = icmp eq i64 %178, %9
  br i1 %179, label %180, label %160, !llvm.loop !224

180:                                              ; preds = %177, %157, %137, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f32_generic(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #11 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !143
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %328

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !145
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %16 = load i32, ptr %15, align 4, !tbaa !144
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 48
  %19 = ashr exact i64 %18, 48
  %20 = icmp sgt i64 %19, 0
  %21 = shl i64 %14, 48
  %22 = ashr exact i64 %21, 48
  %23 = icmp sgt i64 %22, 0
  br i1 %20, label %24, label %328

24:                                               ; preds = %11
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %27 = load i32, ptr %26, align 4, !tbaa !146
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  %30 = load i64, ptr %25, align 8, !tbaa !142
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %301

32:                                               ; preds = %24
  br i1 %23, label %33, label %274

33:                                               ; preds = %32
  %34 = icmp ult i64 %22, 8
  %35 = icmp ult i64 %22, 16
  %36 = and i64 %14, 15
  %37 = sub nuw nsw i64 %22, %36
  %38 = icmp eq i64 %36, 0
  %39 = icmp samesign ult i64 %36, 8
  %40 = and i64 %14, 7
  %41 = sub nsw i64 %22, %40
  %42 = icmp eq i64 %40, 0
  br label %43

43:                                               ; preds = %33, %271
  %44 = phi i64 [ %272, %271 ], [ 0, %33 ]
  %45 = mul nuw nsw i64 %44, %19
  %46 = getelementptr [4 x i8], ptr %0, i64 %45
  br label %47

47:                                               ; preds = %267, %43
  %48 = phi i64 [ 0, %43 ], [ %269, %267 ]
  br i1 %29, label %52, label %49

49:                                               ; preds = %47
  %50 = getelementptr [4 x i8], ptr %46, i64 %48
  %51 = load float, ptr %50, align 4, !tbaa !111
  br label %52

52:                                               ; preds = %49, %47
  %53 = phi float [ 0.000000e+00, %47 ], [ %51, %49 ]
  br label %54

54:                                               ; preds = %52, %263
  %55 = phi i64 [ %265, %263 ], [ 0, %52 ]
  %56 = phi float [ %264, %263 ], [ %53, %52 ]
  %57 = mul nuw nsw i64 %55, %9
  %58 = add nuw i64 %57, %44
  %59 = mul i64 %58, %22
  %60 = getelementptr [2 x i8], ptr %1, i64 %59
  %61 = mul nuw nsw i64 %55, %19
  %62 = add nuw i64 %61, %48
  %63 = mul i64 %62, %22
  %64 = getelementptr [2 x i8], ptr %2, i64 %63
  br i1 %34, label %214, label %65

65:                                               ; preds = %54
  br i1 %35, label %161, label %66

66:                                               ; preds = %65, %66
  %67 = phi i64 [ %157, %66 ], [ 0, %65 ]
  %68 = phi float [ %156, %66 ], [ %56, %65 ]
  %69 = getelementptr [2 x i8], ptr %60, i64 %67
  %70 = getelementptr i8, ptr %69, i64 16
  %71 = load <8 x i16>, ptr %69, align 2, !tbaa !109
  %72 = load <8 x i16>, ptr %70, align 2, !tbaa !109
  %73 = zext <8 x i16> %71 to <8 x i32>
  %74 = zext <8 x i16> %72 to <8 x i32>
  %75 = and <8 x i32> %73, splat (i32 31744)
  %76 = and <8 x i32> %74, splat (i32 31744)
  %77 = and <8 x i32> %73, splat (i32 1023)
  %78 = and <8 x i32> %74, splat (i32 1023)
  %79 = icmp eq <8 x i32> %75, splat (i32 31744)
  %80 = icmp eq <8 x i32> %76, splat (i32 31744)
  %81 = icmp eq <8 x i32> %75, zeroinitializer
  %82 = icmp eq <8 x i32> %76, zeroinitializer
  %83 = icmp eq <8 x i32> %77, zeroinitializer
  %84 = icmp eq <8 x i32> %78, zeroinitializer
  %85 = select <8 x i1> %83, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %86 = select <8 x i1> %84, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %87 = shl nuw nsw <8 x i32> %75, splat (i32 13)
  %88 = shl nuw nsw <8 x i32> %76, splat (i32 13)
  %89 = add nuw nsw <8 x i32> %87, splat (i32 939524096)
  %90 = add nuw nsw <8 x i32> %88, splat (i32 939524096)
  %91 = shl nuw nsw <8 x i32> %77, splat (i32 13)
  %92 = shl nuw nsw <8 x i32> %78, splat (i32 13)
  %93 = select <8 x i1> %79, <8 x i32> %85, <8 x i32> %91
  %94 = select <8 x i1> %81, <8 x i32> zeroinitializer, <8 x i32> %93
  %95 = select <8 x i1> %80, <8 x i32> %86, <8 x i32> %92
  %96 = select <8 x i1> %82, <8 x i32> zeroinitializer, <8 x i32> %95
  %97 = select <8 x i1> %79, <8 x i32> splat (i32 2139095040), <8 x i32> %89
  %98 = select <8 x i1> %81, <8 x i32> zeroinitializer, <8 x i32> %97
  %99 = select <8 x i1> %80, <8 x i32> splat (i32 2139095040), <8 x i32> %90
  %100 = select <8 x i1> %82, <8 x i32> zeroinitializer, <8 x i32> %99
  %101 = sext <8 x i16> %71 to <8 x i32>
  %102 = sext <8 x i16> %72 to <8 x i32>
  %103 = and <8 x i32> %101, splat (i32 -2147483648)
  %104 = and <8 x i32> %102, splat (i32 -2147483648)
  %105 = or disjoint <8 x i32> %94, %103
  %106 = or disjoint <8 x i32> %96, %104
  %107 = or disjoint <8 x i32> %105, %98
  %108 = or disjoint <8 x i32> %106, %100
  %109 = bitcast <8 x i32> %107 to <8 x float>
  %110 = bitcast <8 x i32> %108 to <8 x float>
  %111 = getelementptr [2 x i8], ptr %64, i64 %67
  %112 = getelementptr i8, ptr %111, i64 16
  %113 = load <8 x i16>, ptr %111, align 2, !tbaa !109
  %114 = load <8 x i16>, ptr %112, align 2, !tbaa !109
  %115 = zext <8 x i16> %113 to <8 x i32>
  %116 = zext <8 x i16> %114 to <8 x i32>
  %117 = and <8 x i32> %115, splat (i32 31744)
  %118 = and <8 x i32> %116, splat (i32 31744)
  %119 = and <8 x i32> %115, splat (i32 1023)
  %120 = and <8 x i32> %116, splat (i32 1023)
  %121 = icmp eq <8 x i32> %117, splat (i32 31744)
  %122 = icmp eq <8 x i32> %118, splat (i32 31744)
  %123 = icmp eq <8 x i32> %117, zeroinitializer
  %124 = icmp eq <8 x i32> %118, zeroinitializer
  %125 = icmp eq <8 x i32> %119, zeroinitializer
  %126 = icmp eq <8 x i32> %120, zeroinitializer
  %127 = select <8 x i1> %125, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %128 = select <8 x i1> %126, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %129 = shl nuw nsw <8 x i32> %117, splat (i32 13)
  %130 = shl nuw nsw <8 x i32> %118, splat (i32 13)
  %131 = add nuw nsw <8 x i32> %129, splat (i32 939524096)
  %132 = add nuw nsw <8 x i32> %130, splat (i32 939524096)
  %133 = shl nuw nsw <8 x i32> %119, splat (i32 13)
  %134 = shl nuw nsw <8 x i32> %120, splat (i32 13)
  %135 = select <8 x i1> %121, <8 x i32> %127, <8 x i32> %133
  %136 = select <8 x i1> %123, <8 x i32> zeroinitializer, <8 x i32> %135
  %137 = select <8 x i1> %122, <8 x i32> %128, <8 x i32> %134
  %138 = select <8 x i1> %124, <8 x i32> zeroinitializer, <8 x i32> %137
  %139 = select <8 x i1> %121, <8 x i32> splat (i32 2139095040), <8 x i32> %131
  %140 = select <8 x i1> %123, <8 x i32> zeroinitializer, <8 x i32> %139
  %141 = select <8 x i1> %122, <8 x i32> splat (i32 2139095040), <8 x i32> %132
  %142 = select <8 x i1> %124, <8 x i32> zeroinitializer, <8 x i32> %141
  %143 = sext <8 x i16> %113 to <8 x i32>
  %144 = sext <8 x i16> %114 to <8 x i32>
  %145 = and <8 x i32> %143, splat (i32 -2147483648)
  %146 = and <8 x i32> %144, splat (i32 -2147483648)
  %147 = or disjoint <8 x i32> %136, %145
  %148 = or disjoint <8 x i32> %138, %146
  %149 = or disjoint <8 x i32> %147, %140
  %150 = or disjoint <8 x i32> %148, %142
  %151 = bitcast <8 x i32> %149 to <8 x float>
  %152 = bitcast <8 x i32> %150 to <8 x float>
  %153 = fmul <8 x float> %109, %151
  %154 = fmul <8 x float> %110, %152
  %155 = tail call float @llvm.vector.reduce.fadd.v8f32(float %68, <8 x float> %153)
  %156 = tail call float @llvm.vector.reduce.fadd.v8f32(float %155, <8 x float> %154)
  %157 = add nuw i64 %67, 16
  %158 = icmp eq i64 %157, %37
  br i1 %158, label %159, label %66, !llvm.loop !225

159:                                              ; preds = %66
  br i1 %38, label %263, label %160

160:                                              ; preds = %159
  br i1 %39, label %214, label %161, !prof !167

161:                                              ; preds = %65, %160
  %162 = phi i64 [ %37, %160 ], [ 0, %65 ]
  %163 = phi float [ %156, %160 ], [ %56, %65 ]
  br label %164

164:                                              ; preds = %164, %161
  %165 = phi i64 [ %162, %161 ], [ %211, %164 ]
  %166 = phi float [ %163, %161 ], [ %210, %164 ]
  %167 = getelementptr [2 x i8], ptr %60, i64 %165
  %168 = load <8 x i16>, ptr %167, align 2, !tbaa !109
  %169 = zext <8 x i16> %168 to <8 x i32>
  %170 = and <8 x i32> %169, splat (i32 31744)
  %171 = and <8 x i32> %169, splat (i32 1023)
  %172 = icmp eq <8 x i32> %170, splat (i32 31744)
  %173 = icmp eq <8 x i32> %170, zeroinitializer
  %174 = icmp eq <8 x i32> %171, zeroinitializer
  %175 = select <8 x i1> %174, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %176 = shl nuw nsw <8 x i32> %170, splat (i32 13)
  %177 = add nuw nsw <8 x i32> %176, splat (i32 939524096)
  %178 = shl nuw nsw <8 x i32> %171, splat (i32 13)
  %179 = select <8 x i1> %172, <8 x i32> %175, <8 x i32> %178
  %180 = select <8 x i1> %173, <8 x i32> zeroinitializer, <8 x i32> %179
  %181 = select <8 x i1> %172, <8 x i32> splat (i32 2139095040), <8 x i32> %177
  %182 = select <8 x i1> %173, <8 x i32> zeroinitializer, <8 x i32> %181
  %183 = sext <8 x i16> %168 to <8 x i32>
  %184 = and <8 x i32> %183, splat (i32 -2147483648)
  %185 = or disjoint <8 x i32> %180, %184
  %186 = or disjoint <8 x i32> %185, %182
  %187 = bitcast <8 x i32> %186 to <8 x float>
  %188 = getelementptr [2 x i8], ptr %64, i64 %165
  %189 = load <8 x i16>, ptr %188, align 2, !tbaa !109
  %190 = zext <8 x i16> %189 to <8 x i32>
  %191 = and <8 x i32> %190, splat (i32 31744)
  %192 = and <8 x i32> %190, splat (i32 1023)
  %193 = icmp eq <8 x i32> %191, splat (i32 31744)
  %194 = icmp eq <8 x i32> %191, zeroinitializer
  %195 = icmp eq <8 x i32> %192, zeroinitializer
  %196 = select <8 x i1> %195, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %197 = shl nuw nsw <8 x i32> %191, splat (i32 13)
  %198 = add nuw nsw <8 x i32> %197, splat (i32 939524096)
  %199 = shl nuw nsw <8 x i32> %192, splat (i32 13)
  %200 = select <8 x i1> %193, <8 x i32> %196, <8 x i32> %199
  %201 = select <8 x i1> %194, <8 x i32> zeroinitializer, <8 x i32> %200
  %202 = select <8 x i1> %193, <8 x i32> splat (i32 2139095040), <8 x i32> %198
  %203 = select <8 x i1> %194, <8 x i32> zeroinitializer, <8 x i32> %202
  %204 = sext <8 x i16> %189 to <8 x i32>
  %205 = and <8 x i32> %204, splat (i32 -2147483648)
  %206 = or disjoint <8 x i32> %201, %205
  %207 = or disjoint <8 x i32> %206, %203
  %208 = bitcast <8 x i32> %207 to <8 x float>
  %209 = fmul <8 x float> %187, %208
  %210 = tail call float @llvm.vector.reduce.fadd.v8f32(float %166, <8 x float> %209)
  %211 = add nuw i64 %165, 8
  %212 = icmp eq i64 %211, %41
  br i1 %212, label %213, label %164, !llvm.loop !226

213:                                              ; preds = %164
  br i1 %42, label %263, label %214

214:                                              ; preds = %54, %160, %213
  %215 = phi i64 [ 0, %54 ], [ %37, %160 ], [ %41, %213 ]
  %216 = phi float [ %56, %54 ], [ %156, %160 ], [ %210, %213 ]
  br label %217

217:                                              ; preds = %214, %252
  %218 = phi i64 [ %261, %252 ], [ %215, %214 ]
  %219 = phi float [ %260, %252 ], [ %216, %214 ]
  %220 = getelementptr [2 x i8], ptr %60, i64 %218
  %221 = load i16, ptr %220, align 2, !tbaa !109
  %222 = zext i16 %221 to i32
  %223 = and i32 %222, 31744
  %224 = and i32 %222, 1023
  switch i32 %223, label %228 [
    i32 31744, label %225
    i32 0, label %232
  ]

225:                                              ; preds = %217
  %226 = icmp eq i32 %224, 0
  %227 = select i1 %226, i32 0, i32 8388607
  br label %232

228:                                              ; preds = %217
  %229 = shl nuw nsw i32 %223, 13
  %230 = add nuw nsw i32 %229, 939524096
  %231 = shl nuw nsw i32 %224, 13
  br label %232

232:                                              ; preds = %228, %225, %217
  %233 = phi i32 [ %231, %228 ], [ %227, %225 ], [ %223, %217 ]
  %234 = phi i32 [ %230, %228 ], [ 2139095040, %225 ], [ %223, %217 ]
  %235 = sext i16 %221 to i32
  %236 = and i32 %235, -2147483648
  %237 = or disjoint i32 %233, %236
  %238 = or i32 %237, %234
  %239 = bitcast i32 %238 to float
  %240 = getelementptr [2 x i8], ptr %64, i64 %218
  %241 = load i16, ptr %240, align 2, !tbaa !109
  %242 = zext i16 %241 to i32
  %243 = and i32 %242, 31744
  %244 = and i32 %242, 1023
  switch i32 %243, label %248 [
    i32 31744, label %245
    i32 0, label %252
  ]

245:                                              ; preds = %232
  %246 = icmp eq i32 %244, 0
  %247 = select i1 %246, i32 0, i32 8388607
  br label %252

248:                                              ; preds = %232
  %249 = shl nuw nsw i32 %243, 13
  %250 = add nuw nsw i32 %249, 939524096
  %251 = shl nuw nsw i32 %244, 13
  br label %252

252:                                              ; preds = %248, %245, %232
  %253 = phi i32 [ %251, %248 ], [ %247, %245 ], [ %243, %232 ]
  %254 = phi i32 [ %250, %248 ], [ 2139095040, %245 ], [ %243, %232 ]
  %255 = sext i16 %241 to i32
  %256 = and i32 %255, -2147483648
  %257 = or disjoint i32 %253, %256
  %258 = or i32 %257, %254
  %259 = bitcast i32 %258 to float
  %260 = tail call float @llvm.fmuladd.f32(float %239, float %259, float %219)
  %261 = add nuw nsw i64 %218, 1
  %262 = icmp eq i64 %261, %22
  br i1 %262, label %263, label %217, !llvm.loop !227

263:                                              ; preds = %252, %213, %159
  %264 = phi float [ %210, %213 ], [ %156, %159 ], [ %260, %252 ]
  %265 = add nuw nsw i64 %55, 1
  %266 = icmp eq i64 %265, %30
  br i1 %266, label %267, label %54, !llvm.loop !228

267:                                              ; preds = %263
  %268 = getelementptr [4 x i8], ptr %46, i64 %48
  store float %264, ptr %268, align 4, !tbaa !111
  %269 = add nuw nsw i64 %48, 1
  %270 = icmp eq i64 %269, %19
  br i1 %270, label %271, label %47, !llvm.loop !229

271:                                              ; preds = %267
  %272 = add nuw nsw i64 %44, 1
  %273 = icmp eq i64 %272, %9
  br i1 %273, label %328, label %43, !llvm.loop !230

274:                                              ; preds = %32
  br i1 %29, label %275, label %328

275:                                              ; preds = %274
  %276 = icmp ult i64 %19, 8
  %277 = and i64 %17, 7
  %278 = sub nuw nsw i64 %19, %277
  %279 = icmp eq i64 %277, 0
  br label %280

280:                                              ; preds = %275, %298
  %281 = phi i64 [ %299, %298 ], [ 0, %275 ]
  %282 = mul nuw nsw i64 %281, %19
  %283 = getelementptr [4 x i8], ptr %0, i64 %282
  br i1 %276, label %291, label %284

284:                                              ; preds = %280, %284
  %285 = phi i64 [ %288, %284 ], [ 0, %280 ]
  %286 = getelementptr [4 x i8], ptr %283, i64 %285
  %287 = getelementptr i8, ptr %286, i64 16
  store <4 x float> zeroinitializer, ptr %286, align 4, !tbaa !111
  store <4 x float> zeroinitializer, ptr %287, align 4, !tbaa !111
  %288 = add nuw i64 %285, 8
  %289 = icmp eq i64 %288, %278
  br i1 %289, label %290, label %284, !llvm.loop !231

290:                                              ; preds = %284
  br i1 %279, label %298, label %291

291:                                              ; preds = %280, %290
  %292 = phi i64 [ 0, %280 ], [ %278, %290 ]
  br label %293

293:                                              ; preds = %291, %293
  %294 = phi i64 [ %296, %293 ], [ %292, %291 ]
  %295 = getelementptr [4 x i8], ptr %283, i64 %294
  store float 0.000000e+00, ptr %295, align 4, !tbaa !111
  %296 = add nuw nsw i64 %294, 1
  %297 = icmp eq i64 %296, %19
  br i1 %297, label %298, label %293, !llvm.loop !232

298:                                              ; preds = %293, %290
  %299 = add nuw nsw i64 %281, 1
  %300 = icmp eq i64 %299, %9
  br i1 %300, label %328, label %280, !llvm.loop !230

301:                                              ; preds = %24
  br i1 %29, label %302, label %328

302:                                              ; preds = %301
  %303 = icmp ult i64 %19, 8
  %304 = and i64 %17, 7
  %305 = sub nuw nsw i64 %19, %304
  %306 = icmp eq i64 %304, 0
  br label %307

307:                                              ; preds = %302, %325
  %308 = phi i64 [ %326, %325 ], [ 0, %302 ]
  %309 = mul nuw nsw i64 %308, %19
  %310 = getelementptr [4 x i8], ptr %0, i64 %309
  br i1 %303, label %318, label %311

311:                                              ; preds = %307, %311
  %312 = phi i64 [ %315, %311 ], [ 0, %307 ]
  %313 = getelementptr [4 x i8], ptr %310, i64 %312
  %314 = getelementptr i8, ptr %313, i64 16
  store <4 x float> zeroinitializer, ptr %313, align 4, !tbaa !111
  store <4 x float> zeroinitializer, ptr %314, align 4, !tbaa !111
  %315 = add nuw i64 %312, 8
  %316 = icmp eq i64 %315, %305
  br i1 %316, label %317, label %311, !llvm.loop !233

317:                                              ; preds = %311
  br i1 %306, label %325, label %318

318:                                              ; preds = %307, %317
  %319 = phi i64 [ 0, %307 ], [ %305, %317 ]
  br label %320

320:                                              ; preds = %318, %320
  %321 = phi i64 [ %323, %320 ], [ %319, %318 ]
  %322 = getelementptr [4 x i8], ptr %310, i64 %321
  store float 0.000000e+00, ptr %322, align 4, !tbaa !111
  %323 = add nuw nsw i64 %321, 1
  %324 = icmp eq i64 %323, %19
  br i1 %324, label %325, label %320, !llvm.loop !234

325:                                              ; preds = %320, %317
  %326 = add nuw nsw i64 %308, 1
  %327 = icmp eq i64 %326, %9
  br i1 %327, label %328, label %307, !llvm.loop !230

328:                                              ; preds = %325, %298, %271, %301, %274, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16f32_generic(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #11 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !143
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %521

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !145
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %16 = load i32, ptr %15, align 4, !tbaa !144
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 48
  %19 = ashr exact i64 %18, 48
  %20 = icmp sgt i64 %19, 0
  %21 = shl i64 %14, 48
  %22 = ashr exact i64 %21, 48
  %23 = icmp sgt i64 %22, 0
  br i1 %20, label %24, label %521

24:                                               ; preds = %11
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %27 = load i32, ptr %26, align 4, !tbaa !146
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  %30 = load i64, ptr %25, align 8, !tbaa !142
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %494

32:                                               ; preds = %24
  br i1 %23, label %33, label %467

33:                                               ; preds = %32
  br i1 %29, label %44, label %34

34:                                               ; preds = %33
  %35 = icmp ult i64 %22, 8
  %36 = icmp ult i64 %22, 16
  %37 = and i64 %14, 15
  %38 = sub nuw nsw i64 %22, %37
  %39 = icmp eq i64 %37, 0
  %40 = icmp samesign ult i64 %37, 8
  %41 = and i64 %14, 7
  %42 = sub nsw i64 %22, %41
  %43 = icmp eq i64 %41, 0
  br label %260

44:                                               ; preds = %33
  %45 = icmp ult i64 %22, 8
  %46 = icmp ult i64 %22, 16
  %47 = and i64 %14, 15
  %48 = sub nuw nsw i64 %22, %47
  %49 = icmp eq i64 %47, 0
  %50 = icmp samesign ult i64 %47, 8
  %51 = and i64 %14, 7
  %52 = sub nsw i64 %22, %51
  %53 = icmp eq i64 %51, 0
  br label %54

54:                                               ; preds = %44, %257
  %55 = phi i64 [ %258, %257 ], [ 0, %44 ]
  %56 = mul nuw nsw i64 %55, %19
  %57 = getelementptr [4 x i8], ptr %0, i64 %56
  br label %58

58:                                               ; preds = %253, %54
  %59 = phi i64 [ 0, %54 ], [ %255, %253 ]
  br label %60

60:                                               ; preds = %249, %58
  %61 = phi i64 [ 0, %58 ], [ %251, %249 ]
  %62 = phi float [ 0.000000e+00, %58 ], [ %250, %249 ]
  %63 = mul nuw nsw i64 %61, %9
  %64 = add nuw i64 %63, %55
  %65 = mul i64 %64, %22
  %66 = getelementptr [2 x i8], ptr %1, i64 %65
  %67 = mul nuw nsw i64 %61, %19
  %68 = add nuw i64 %67, %59
  %69 = mul i64 %68, %22
  %70 = getelementptr [2 x i8], ptr %2, i64 %69
  br i1 %45, label %202, label %71

71:                                               ; preds = %60
  br i1 %46, label %155, label %72

72:                                               ; preds = %71, %72
  %73 = phi i64 [ %151, %72 ], [ 0, %71 ]
  %74 = phi float [ %150, %72 ], [ %62, %71 ]
  %75 = getelementptr [2 x i8], ptr %66, i64 %73
  %76 = getelementptr i8, ptr %75, i64 16
  %77 = load <8 x i16>, ptr %75, align 2, !tbaa !109
  %78 = load <8 x i16>, ptr %76, align 2, !tbaa !109
  %79 = zext <8 x i16> %77 to <8 x i32>
  %80 = zext <8 x i16> %78 to <8 x i32>
  %81 = and <8 x i32> %79, splat (i32 32640)
  %82 = and <8 x i32> %80, splat (i32 32640)
  %83 = and <8 x i32> %79, splat (i32 127)
  %84 = and <8 x i32> %80, splat (i32 127)
  %85 = icmp eq <8 x i32> %81, splat (i32 32640)
  %86 = icmp eq <8 x i32> %82, splat (i32 32640)
  %87 = icmp eq <8 x i32> %81, zeroinitializer
  %88 = icmp eq <8 x i32> %82, zeroinitializer
  %89 = icmp eq <8 x i32> %83, zeroinitializer
  %90 = icmp eq <8 x i32> %84, zeroinitializer
  %91 = select <8 x i1> %89, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %92 = select <8 x i1> %90, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %93 = shl nuw nsw <8 x i32> %81, splat (i32 16)
  %94 = shl nuw nsw <8 x i32> %82, splat (i32 16)
  %95 = shl nuw nsw <8 x i32> %83, splat (i32 16)
  %96 = shl nuw nsw <8 x i32> %84, splat (i32 16)
  %97 = select <8 x i1> %85, <8 x i32> %91, <8 x i32> %95
  %98 = select <8 x i1> %87, <8 x i32> zeroinitializer, <8 x i32> %97
  %99 = select <8 x i1> %86, <8 x i32> %92, <8 x i32> %96
  %100 = select <8 x i1> %88, <8 x i32> zeroinitializer, <8 x i32> %99
  %101 = sext <8 x i16> %77 to <8 x i32>
  %102 = sext <8 x i16> %78 to <8 x i32>
  %103 = and <8 x i32> %101, splat (i32 -2147483648)
  %104 = and <8 x i32> %102, splat (i32 -2147483648)
  %105 = or disjoint <8 x i32> %98, %103
  %106 = or disjoint <8 x i32> %100, %104
  %107 = or disjoint <8 x i32> %105, %93
  %108 = or disjoint <8 x i32> %106, %94
  %109 = bitcast <8 x i32> %107 to <8 x float>
  %110 = bitcast <8 x i32> %108 to <8 x float>
  %111 = getelementptr [2 x i8], ptr %70, i64 %73
  %112 = getelementptr i8, ptr %111, i64 16
  %113 = load <8 x i16>, ptr %111, align 2, !tbaa !109
  %114 = load <8 x i16>, ptr %112, align 2, !tbaa !109
  %115 = zext <8 x i16> %113 to <8 x i32>
  %116 = zext <8 x i16> %114 to <8 x i32>
  %117 = and <8 x i32> %115, splat (i32 32640)
  %118 = and <8 x i32> %116, splat (i32 32640)
  %119 = and <8 x i32> %115, splat (i32 127)
  %120 = and <8 x i32> %116, splat (i32 127)
  %121 = icmp eq <8 x i32> %117, splat (i32 32640)
  %122 = icmp eq <8 x i32> %118, splat (i32 32640)
  %123 = icmp eq <8 x i32> %117, zeroinitializer
  %124 = icmp eq <8 x i32> %118, zeroinitializer
  %125 = icmp eq <8 x i32> %119, zeroinitializer
  %126 = icmp eq <8 x i32> %120, zeroinitializer
  %127 = select <8 x i1> %125, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %128 = select <8 x i1> %126, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %129 = shl nuw nsw <8 x i32> %117, splat (i32 16)
  %130 = shl nuw nsw <8 x i32> %118, splat (i32 16)
  %131 = shl nuw nsw <8 x i32> %119, splat (i32 16)
  %132 = shl nuw nsw <8 x i32> %120, splat (i32 16)
  %133 = select <8 x i1> %121, <8 x i32> %127, <8 x i32> %131
  %134 = select <8 x i1> %123, <8 x i32> zeroinitializer, <8 x i32> %133
  %135 = select <8 x i1> %122, <8 x i32> %128, <8 x i32> %132
  %136 = select <8 x i1> %124, <8 x i32> zeroinitializer, <8 x i32> %135
  %137 = sext <8 x i16> %113 to <8 x i32>
  %138 = sext <8 x i16> %114 to <8 x i32>
  %139 = and <8 x i32> %137, splat (i32 -2147483648)
  %140 = and <8 x i32> %138, splat (i32 -2147483648)
  %141 = or disjoint <8 x i32> %134, %139
  %142 = or disjoint <8 x i32> %136, %140
  %143 = or disjoint <8 x i32> %141, %129
  %144 = or disjoint <8 x i32> %142, %130
  %145 = bitcast <8 x i32> %143 to <8 x float>
  %146 = bitcast <8 x i32> %144 to <8 x float>
  %147 = fmul <8 x float> %109, %145
  %148 = fmul <8 x float> %110, %146
  %149 = tail call float @llvm.vector.reduce.fadd.v8f32(float %74, <8 x float> %147)
  %150 = tail call float @llvm.vector.reduce.fadd.v8f32(float %149, <8 x float> %148)
  %151 = add nuw i64 %73, 16
  %152 = icmp eq i64 %151, %48
  br i1 %152, label %153, label %72, !llvm.loop !235

153:                                              ; preds = %72
  br i1 %49, label %249, label %154

154:                                              ; preds = %153
  br i1 %50, label %202, label %155, !prof !167

155:                                              ; preds = %71, %154
  %156 = phi i64 [ %48, %154 ], [ 0, %71 ]
  %157 = phi float [ %150, %154 ], [ %62, %71 ]
  br label %158

158:                                              ; preds = %158, %155
  %159 = phi i64 [ %156, %155 ], [ %199, %158 ]
  %160 = phi float [ %157, %155 ], [ %198, %158 ]
  %161 = getelementptr [2 x i8], ptr %66, i64 %159
  %162 = load <8 x i16>, ptr %161, align 2, !tbaa !109
  %163 = zext <8 x i16> %162 to <8 x i32>
  %164 = and <8 x i32> %163, splat (i32 32640)
  %165 = and <8 x i32> %163, splat (i32 127)
  %166 = icmp eq <8 x i32> %164, splat (i32 32640)
  %167 = icmp eq <8 x i32> %164, zeroinitializer
  %168 = icmp eq <8 x i32> %165, zeroinitializer
  %169 = select <8 x i1> %168, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %170 = shl nuw nsw <8 x i32> %164, splat (i32 16)
  %171 = shl nuw nsw <8 x i32> %165, splat (i32 16)
  %172 = select <8 x i1> %166, <8 x i32> %169, <8 x i32> %171
  %173 = select <8 x i1> %167, <8 x i32> zeroinitializer, <8 x i32> %172
  %174 = sext <8 x i16> %162 to <8 x i32>
  %175 = and <8 x i32> %174, splat (i32 -2147483648)
  %176 = or disjoint <8 x i32> %173, %175
  %177 = or disjoint <8 x i32> %176, %170
  %178 = bitcast <8 x i32> %177 to <8 x float>
  %179 = getelementptr [2 x i8], ptr %70, i64 %159
  %180 = load <8 x i16>, ptr %179, align 2, !tbaa !109
  %181 = zext <8 x i16> %180 to <8 x i32>
  %182 = and <8 x i32> %181, splat (i32 32640)
  %183 = and <8 x i32> %181, splat (i32 127)
  %184 = icmp eq <8 x i32> %182, splat (i32 32640)
  %185 = icmp eq <8 x i32> %182, zeroinitializer
  %186 = icmp eq <8 x i32> %183, zeroinitializer
  %187 = select <8 x i1> %186, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %188 = shl nuw nsw <8 x i32> %182, splat (i32 16)
  %189 = shl nuw nsw <8 x i32> %183, splat (i32 16)
  %190 = select <8 x i1> %184, <8 x i32> %187, <8 x i32> %189
  %191 = select <8 x i1> %185, <8 x i32> zeroinitializer, <8 x i32> %190
  %192 = sext <8 x i16> %180 to <8 x i32>
  %193 = and <8 x i32> %192, splat (i32 -2147483648)
  %194 = or disjoint <8 x i32> %191, %193
  %195 = or disjoint <8 x i32> %194, %188
  %196 = bitcast <8 x i32> %195 to <8 x float>
  %197 = fmul <8 x float> %178, %196
  %198 = tail call float @llvm.vector.reduce.fadd.v8f32(float %160, <8 x float> %197)
  %199 = add nuw i64 %159, 8
  %200 = icmp eq i64 %199, %52
  br i1 %200, label %201, label %158, !llvm.loop !236

201:                                              ; preds = %158
  br i1 %53, label %249, label %202

202:                                              ; preds = %60, %154, %201
  %203 = phi i64 [ 0, %60 ], [ %48, %154 ], [ %52, %201 ]
  %204 = phi float [ %62, %60 ], [ %150, %154 ], [ %198, %201 ]
  br label %205

205:                                              ; preds = %202, %238
  %206 = phi i64 [ %247, %238 ], [ %203, %202 ]
  %207 = phi float [ %246, %238 ], [ %204, %202 ]
  %208 = getelementptr [2 x i8], ptr %66, i64 %206
  %209 = load i16, ptr %208, align 2, !tbaa !109
  %210 = zext i16 %209 to i32
  %211 = and i32 %210, 32640
  %212 = and i32 %210, 127
  switch i32 %211, label %216 [
    i32 32640, label %213
    i32 0, label %219
  ]

213:                                              ; preds = %205
  %214 = icmp eq i32 %212, 0
  %215 = select i1 %214, i32 0, i32 8388607
  br label %219

216:                                              ; preds = %205
  %217 = shl nuw nsw i32 %211, 16
  %218 = shl nuw nsw i32 %212, 16
  br label %219

219:                                              ; preds = %216, %213, %205
  %220 = phi i32 [ %218, %216 ], [ %215, %213 ], [ %211, %205 ]
  %221 = phi i32 [ %217, %216 ], [ 2139095040, %213 ], [ %211, %205 ]
  %222 = sext i16 %209 to i32
  %223 = and i32 %222, -2147483648
  %224 = or disjoint i32 %220, %223
  %225 = or i32 %224, %221
  %226 = bitcast i32 %225 to float
  %227 = getelementptr [2 x i8], ptr %70, i64 %206
  %228 = load i16, ptr %227, align 2, !tbaa !109
  %229 = zext i16 %228 to i32
  %230 = and i32 %229, 32640
  %231 = and i32 %229, 127
  switch i32 %230, label %235 [
    i32 32640, label %232
    i32 0, label %238
  ]

232:                                              ; preds = %219
  %233 = icmp eq i32 %231, 0
  %234 = select i1 %233, i32 0, i32 8388607
  br label %238

235:                                              ; preds = %219
  %236 = shl nuw nsw i32 %230, 16
  %237 = shl nuw nsw i32 %231, 16
  br label %238

238:                                              ; preds = %235, %232, %219
  %239 = phi i32 [ %237, %235 ], [ %234, %232 ], [ %230, %219 ]
  %240 = phi i32 [ %236, %235 ], [ 2139095040, %232 ], [ %230, %219 ]
  %241 = sext i16 %228 to i32
  %242 = and i32 %241, -2147483648
  %243 = or disjoint i32 %239, %242
  %244 = or i32 %243, %240
  %245 = bitcast i32 %244 to float
  %246 = tail call float @llvm.fmuladd.f32(float %226, float %245, float %207)
  %247 = add nuw nsw i64 %206, 1
  %248 = icmp eq i64 %247, %22
  br i1 %248, label %249, label %205, !llvm.loop !237

249:                                              ; preds = %238, %201, %153
  %250 = phi float [ %198, %201 ], [ %150, %153 ], [ %246, %238 ]
  %251 = add nuw nsw i64 %61, 1
  %252 = icmp eq i64 %251, %30
  br i1 %252, label %253, label %60, !llvm.loop !238

253:                                              ; preds = %249
  %254 = getelementptr [4 x i8], ptr %57, i64 %59
  store float %250, ptr %254, align 4, !tbaa !111
  %255 = add nuw nsw i64 %59, 1
  %256 = icmp eq i64 %255, %19
  br i1 %256, label %257, label %58, !llvm.loop !239

257:                                              ; preds = %253
  %258 = add nuw nsw i64 %55, 1
  %259 = icmp eq i64 %258, %9
  br i1 %259, label %521, label %54, !llvm.loop !240

260:                                              ; preds = %34, %464
  %261 = phi i64 [ %465, %464 ], [ 0, %34 ]
  %262 = mul nuw nsw i64 %261, %19
  %263 = getelementptr [4 x i8], ptr %0, i64 %262
  br label %264

264:                                              ; preds = %461, %260
  %265 = phi i64 [ 0, %260 ], [ %462, %461 ]
  %266 = getelementptr [4 x i8], ptr %263, i64 %265
  %267 = load float, ptr %266, align 4, !tbaa !111
  br label %268

268:                                              ; preds = %457, %264
  %269 = phi i64 [ 0, %264 ], [ %459, %457 ]
  %270 = phi float [ %267, %264 ], [ %458, %457 ]
  %271 = mul nuw nsw i64 %269, %9
  %272 = add nuw i64 %271, %261
  %273 = mul i64 %272, %22
  %274 = getelementptr [2 x i8], ptr %1, i64 %273
  %275 = mul nuw nsw i64 %269, %19
  %276 = add nuw i64 %275, %265
  %277 = mul i64 %276, %22
  %278 = getelementptr [2 x i8], ptr %2, i64 %277
  br i1 %35, label %410, label %279

279:                                              ; preds = %268
  br i1 %36, label %363, label %280

280:                                              ; preds = %279, %280
  %281 = phi i64 [ %359, %280 ], [ 0, %279 ]
  %282 = phi float [ %358, %280 ], [ %270, %279 ]
  %283 = getelementptr [2 x i8], ptr %274, i64 %281
  %284 = getelementptr i8, ptr %283, i64 16
  %285 = load <8 x i16>, ptr %283, align 2, !tbaa !109
  %286 = load <8 x i16>, ptr %284, align 2, !tbaa !109
  %287 = zext <8 x i16> %285 to <8 x i32>
  %288 = zext <8 x i16> %286 to <8 x i32>
  %289 = and <8 x i32> %287, splat (i32 32640)
  %290 = and <8 x i32> %288, splat (i32 32640)
  %291 = and <8 x i32> %287, splat (i32 127)
  %292 = and <8 x i32> %288, splat (i32 127)
  %293 = icmp eq <8 x i32> %289, splat (i32 32640)
  %294 = icmp eq <8 x i32> %290, splat (i32 32640)
  %295 = icmp eq <8 x i32> %289, zeroinitializer
  %296 = icmp eq <8 x i32> %290, zeroinitializer
  %297 = icmp eq <8 x i32> %291, zeroinitializer
  %298 = icmp eq <8 x i32> %292, zeroinitializer
  %299 = select <8 x i1> %297, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %300 = select <8 x i1> %298, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %301 = shl nuw nsw <8 x i32> %289, splat (i32 16)
  %302 = shl nuw nsw <8 x i32> %290, splat (i32 16)
  %303 = shl nuw nsw <8 x i32> %291, splat (i32 16)
  %304 = shl nuw nsw <8 x i32> %292, splat (i32 16)
  %305 = select <8 x i1> %293, <8 x i32> %299, <8 x i32> %303
  %306 = select <8 x i1> %295, <8 x i32> zeroinitializer, <8 x i32> %305
  %307 = select <8 x i1> %294, <8 x i32> %300, <8 x i32> %304
  %308 = select <8 x i1> %296, <8 x i32> zeroinitializer, <8 x i32> %307
  %309 = sext <8 x i16> %285 to <8 x i32>
  %310 = sext <8 x i16> %286 to <8 x i32>
  %311 = and <8 x i32> %309, splat (i32 -2147483648)
  %312 = and <8 x i32> %310, splat (i32 -2147483648)
  %313 = or disjoint <8 x i32> %306, %311
  %314 = or disjoint <8 x i32> %308, %312
  %315 = or disjoint <8 x i32> %313, %301
  %316 = or disjoint <8 x i32> %314, %302
  %317 = bitcast <8 x i32> %315 to <8 x float>
  %318 = bitcast <8 x i32> %316 to <8 x float>
  %319 = getelementptr [2 x i8], ptr %278, i64 %281
  %320 = getelementptr i8, ptr %319, i64 16
  %321 = load <8 x i16>, ptr %319, align 2, !tbaa !109
  %322 = load <8 x i16>, ptr %320, align 2, !tbaa !109
  %323 = zext <8 x i16> %321 to <8 x i32>
  %324 = zext <8 x i16> %322 to <8 x i32>
  %325 = and <8 x i32> %323, splat (i32 32640)
  %326 = and <8 x i32> %324, splat (i32 32640)
  %327 = and <8 x i32> %323, splat (i32 127)
  %328 = and <8 x i32> %324, splat (i32 127)
  %329 = icmp eq <8 x i32> %325, splat (i32 32640)
  %330 = icmp eq <8 x i32> %326, splat (i32 32640)
  %331 = icmp eq <8 x i32> %325, zeroinitializer
  %332 = icmp eq <8 x i32> %326, zeroinitializer
  %333 = icmp eq <8 x i32> %327, zeroinitializer
  %334 = icmp eq <8 x i32> %328, zeroinitializer
  %335 = select <8 x i1> %333, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %336 = select <8 x i1> %334, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %337 = shl nuw nsw <8 x i32> %325, splat (i32 16)
  %338 = shl nuw nsw <8 x i32> %326, splat (i32 16)
  %339 = shl nuw nsw <8 x i32> %327, splat (i32 16)
  %340 = shl nuw nsw <8 x i32> %328, splat (i32 16)
  %341 = select <8 x i1> %329, <8 x i32> %335, <8 x i32> %339
  %342 = select <8 x i1> %331, <8 x i32> zeroinitializer, <8 x i32> %341
  %343 = select <8 x i1> %330, <8 x i32> %336, <8 x i32> %340
  %344 = select <8 x i1> %332, <8 x i32> zeroinitializer, <8 x i32> %343
  %345 = sext <8 x i16> %321 to <8 x i32>
  %346 = sext <8 x i16> %322 to <8 x i32>
  %347 = and <8 x i32> %345, splat (i32 -2147483648)
  %348 = and <8 x i32> %346, splat (i32 -2147483648)
  %349 = or disjoint <8 x i32> %342, %347
  %350 = or disjoint <8 x i32> %344, %348
  %351 = or disjoint <8 x i32> %349, %337
  %352 = or disjoint <8 x i32> %350, %338
  %353 = bitcast <8 x i32> %351 to <8 x float>
  %354 = bitcast <8 x i32> %352 to <8 x float>
  %355 = fmul <8 x float> %317, %353
  %356 = fmul <8 x float> %318, %354
  %357 = tail call float @llvm.vector.reduce.fadd.v8f32(float %282, <8 x float> %355)
  %358 = tail call float @llvm.vector.reduce.fadd.v8f32(float %357, <8 x float> %356)
  %359 = add nuw i64 %281, 16
  %360 = icmp eq i64 %359, %38
  br i1 %360, label %361, label %280, !llvm.loop !241

361:                                              ; preds = %280
  br i1 %39, label %457, label %362

362:                                              ; preds = %361
  br i1 %40, label %410, label %363, !prof !167

363:                                              ; preds = %279, %362
  %364 = phi i64 [ %38, %362 ], [ 0, %279 ]
  %365 = phi float [ %358, %362 ], [ %270, %279 ]
  br label %366

366:                                              ; preds = %366, %363
  %367 = phi i64 [ %364, %363 ], [ %407, %366 ]
  %368 = phi float [ %365, %363 ], [ %406, %366 ]
  %369 = getelementptr [2 x i8], ptr %274, i64 %367
  %370 = load <8 x i16>, ptr %369, align 2, !tbaa !109
  %371 = zext <8 x i16> %370 to <8 x i32>
  %372 = and <8 x i32> %371, splat (i32 32640)
  %373 = and <8 x i32> %371, splat (i32 127)
  %374 = icmp eq <8 x i32> %372, splat (i32 32640)
  %375 = icmp eq <8 x i32> %372, zeroinitializer
  %376 = icmp eq <8 x i32> %373, zeroinitializer
  %377 = select <8 x i1> %376, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %378 = shl nuw nsw <8 x i32> %372, splat (i32 16)
  %379 = shl nuw nsw <8 x i32> %373, splat (i32 16)
  %380 = select <8 x i1> %374, <8 x i32> %377, <8 x i32> %379
  %381 = select <8 x i1> %375, <8 x i32> zeroinitializer, <8 x i32> %380
  %382 = sext <8 x i16> %370 to <8 x i32>
  %383 = and <8 x i32> %382, splat (i32 -2147483648)
  %384 = or disjoint <8 x i32> %381, %383
  %385 = or disjoint <8 x i32> %384, %378
  %386 = bitcast <8 x i32> %385 to <8 x float>
  %387 = getelementptr [2 x i8], ptr %278, i64 %367
  %388 = load <8 x i16>, ptr %387, align 2, !tbaa !109
  %389 = zext <8 x i16> %388 to <8 x i32>
  %390 = and <8 x i32> %389, splat (i32 32640)
  %391 = and <8 x i32> %389, splat (i32 127)
  %392 = icmp eq <8 x i32> %390, splat (i32 32640)
  %393 = icmp eq <8 x i32> %390, zeroinitializer
  %394 = icmp eq <8 x i32> %391, zeroinitializer
  %395 = select <8 x i1> %394, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8388607)
  %396 = shl nuw nsw <8 x i32> %390, splat (i32 16)
  %397 = shl nuw nsw <8 x i32> %391, splat (i32 16)
  %398 = select <8 x i1> %392, <8 x i32> %395, <8 x i32> %397
  %399 = select <8 x i1> %393, <8 x i32> zeroinitializer, <8 x i32> %398
  %400 = sext <8 x i16> %388 to <8 x i32>
  %401 = and <8 x i32> %400, splat (i32 -2147483648)
  %402 = or disjoint <8 x i32> %399, %401
  %403 = or disjoint <8 x i32> %402, %396
  %404 = bitcast <8 x i32> %403 to <8 x float>
  %405 = fmul <8 x float> %386, %404
  %406 = tail call float @llvm.vector.reduce.fadd.v8f32(float %368, <8 x float> %405)
  %407 = add nuw i64 %367, 8
  %408 = icmp eq i64 %407, %42
  br i1 %408, label %409, label %366, !llvm.loop !242

409:                                              ; preds = %366
  br i1 %43, label %457, label %410

410:                                              ; preds = %268, %362, %409
  %411 = phi i64 [ 0, %268 ], [ %38, %362 ], [ %42, %409 ]
  %412 = phi float [ %270, %268 ], [ %358, %362 ], [ %406, %409 ]
  br label %413

413:                                              ; preds = %410, %446
  %414 = phi i64 [ %455, %446 ], [ %411, %410 ]
  %415 = phi float [ %454, %446 ], [ %412, %410 ]
  %416 = getelementptr [2 x i8], ptr %274, i64 %414
  %417 = load i16, ptr %416, align 2, !tbaa !109
  %418 = zext i16 %417 to i32
  %419 = and i32 %418, 32640
  %420 = and i32 %418, 127
  switch i32 %419, label %424 [
    i32 32640, label %421
    i32 0, label %427
  ]

421:                                              ; preds = %413
  %422 = icmp eq i32 %420, 0
  %423 = select i1 %422, i32 0, i32 8388607
  br label %427

424:                                              ; preds = %413
  %425 = shl nuw nsw i32 %419, 16
  %426 = shl nuw nsw i32 %420, 16
  br label %427

427:                                              ; preds = %424, %421, %413
  %428 = phi i32 [ %426, %424 ], [ %423, %421 ], [ %419, %413 ]
  %429 = phi i32 [ %425, %424 ], [ 2139095040, %421 ], [ %419, %413 ]
  %430 = sext i16 %417 to i32
  %431 = and i32 %430, -2147483648
  %432 = or disjoint i32 %428, %431
  %433 = or i32 %432, %429
  %434 = bitcast i32 %433 to float
  %435 = getelementptr [2 x i8], ptr %278, i64 %414
  %436 = load i16, ptr %435, align 2, !tbaa !109
  %437 = zext i16 %436 to i32
  %438 = and i32 %437, 32640
  %439 = and i32 %437, 127
  switch i32 %438, label %443 [
    i32 32640, label %440
    i32 0, label %446
  ]

440:                                              ; preds = %427
  %441 = icmp eq i32 %439, 0
  %442 = select i1 %441, i32 0, i32 8388607
  br label %446

443:                                              ; preds = %427
  %444 = shl nuw nsw i32 %438, 16
  %445 = shl nuw nsw i32 %439, 16
  br label %446

446:                                              ; preds = %443, %440, %427
  %447 = phi i32 [ %445, %443 ], [ %442, %440 ], [ %438, %427 ]
  %448 = phi i32 [ %444, %443 ], [ 2139095040, %440 ], [ %438, %427 ]
  %449 = sext i16 %436 to i32
  %450 = and i32 %449, -2147483648
  %451 = or disjoint i32 %447, %450
  %452 = or i32 %451, %448
  %453 = bitcast i32 %452 to float
  %454 = tail call float @llvm.fmuladd.f32(float %434, float %453, float %415)
  %455 = add nuw nsw i64 %414, 1
  %456 = icmp eq i64 %455, %22
  br i1 %456, label %457, label %413, !llvm.loop !243

457:                                              ; preds = %446, %409, %361
  %458 = phi float [ %406, %409 ], [ %358, %361 ], [ %454, %446 ]
  %459 = add nuw nsw i64 %269, 1
  %460 = icmp eq i64 %459, %30
  br i1 %460, label %461, label %268, !llvm.loop !238

461:                                              ; preds = %457
  store float %458, ptr %266, align 4, !tbaa !111
  %462 = add nuw nsw i64 %265, 1
  %463 = icmp eq i64 %462, %19
  br i1 %463, label %464, label %264, !llvm.loop !239

464:                                              ; preds = %461
  %465 = add nuw nsw i64 %261, 1
  %466 = icmp eq i64 %465, %9
  br i1 %466, label %521, label %260, !llvm.loop !240

467:                                              ; preds = %32
  br i1 %29, label %468, label %521

468:                                              ; preds = %467
  %469 = icmp ult i64 %19, 8
  %470 = and i64 %17, 7
  %471 = sub nuw nsw i64 %19, %470
  %472 = icmp eq i64 %470, 0
  br label %473

473:                                              ; preds = %468, %491
  %474 = phi i64 [ %492, %491 ], [ 0, %468 ]
  %475 = mul nuw nsw i64 %474, %19
  %476 = getelementptr [4 x i8], ptr %0, i64 %475
  br i1 %469, label %484, label %477

477:                                              ; preds = %473, %477
  %478 = phi i64 [ %481, %477 ], [ 0, %473 ]
  %479 = getelementptr [4 x i8], ptr %476, i64 %478
  %480 = getelementptr i8, ptr %479, i64 16
  store <4 x float> zeroinitializer, ptr %479, align 4, !tbaa !111
  store <4 x float> zeroinitializer, ptr %480, align 4, !tbaa !111
  %481 = add nuw i64 %478, 8
  %482 = icmp eq i64 %481, %471
  br i1 %482, label %483, label %477, !llvm.loop !244

483:                                              ; preds = %477
  br i1 %472, label %491, label %484

484:                                              ; preds = %473, %483
  %485 = phi i64 [ 0, %473 ], [ %471, %483 ]
  br label %486

486:                                              ; preds = %484, %486
  %487 = phi i64 [ %489, %486 ], [ %485, %484 ]
  %488 = getelementptr [4 x i8], ptr %476, i64 %487
  store float 0.000000e+00, ptr %488, align 4, !tbaa !111
  %489 = add nuw nsw i64 %487, 1
  %490 = icmp eq i64 %489, %19
  br i1 %490, label %491, label %486, !llvm.loop !245

491:                                              ; preds = %486, %483
  %492 = add nuw nsw i64 %474, 1
  %493 = icmp eq i64 %492, %9
  br i1 %493, label %521, label %473, !llvm.loop !240

494:                                              ; preds = %24
  br i1 %29, label %495, label %521

495:                                              ; preds = %494
  %496 = icmp ult i64 %19, 8
  %497 = and i64 %17, 7
  %498 = sub nuw nsw i64 %19, %497
  %499 = icmp eq i64 %497, 0
  br label %500

500:                                              ; preds = %495, %518
  %501 = phi i64 [ %519, %518 ], [ 0, %495 ]
  %502 = mul nuw nsw i64 %501, %19
  %503 = getelementptr [4 x i8], ptr %0, i64 %502
  br i1 %496, label %511, label %504

504:                                              ; preds = %500, %504
  %505 = phi i64 [ %508, %504 ], [ 0, %500 ]
  %506 = getelementptr [4 x i8], ptr %503, i64 %505
  %507 = getelementptr i8, ptr %506, i64 16
  store <4 x float> zeroinitializer, ptr %506, align 4, !tbaa !111
  store <4 x float> zeroinitializer, ptr %507, align 4, !tbaa !111
  %508 = add nuw i64 %505, 8
  %509 = icmp eq i64 %508, %498
  br i1 %509, label %510, label %504, !llvm.loop !246

510:                                              ; preds = %504
  br i1 %499, label %518, label %511

511:                                              ; preds = %500, %510
  %512 = phi i64 [ 0, %500 ], [ %498, %510 ]
  br label %513

513:                                              ; preds = %511, %513
  %514 = phi i64 [ %516, %513 ], [ %512, %511 ]
  %515 = getelementptr [4 x i8], ptr %503, i64 %514
  store float 0.000000e+00, ptr %515, align 4, !tbaa !111
  %516 = add nuw nsw i64 %514, 1
  %517 = icmp eq i64 %516, %19
  br i1 %517, label %518, label %513, !llvm.loop !247

518:                                              ; preds = %513, %510
  %519 = add nuw nsw i64 %501, 1
  %520 = icmp eq i64 %519, %9
  br i1 %520, label %521, label %500, !llvm.loop !240

521:                                              ; preds = %518, %491, %464, %257, %494, %467, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_generic(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #11 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !143
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %180

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !145
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %16 = load i32, ptr %15, align 4, !tbaa !144
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 48
  %19 = ashr exact i64 %18, 48
  %20 = icmp sgt i64 %19, 0
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %22 = shl i64 %14, 48
  %23 = ashr exact i64 %22, 48
  %24 = icmp sgt i64 %23, 0
  br i1 %20, label %25, label %180

25:                                               ; preds = %11
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %27 = load i64, ptr %26, align 8, !tbaa !142
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %160

29:                                               ; preds = %25
  br i1 %24, label %30, label %140

30:                                               ; preds = %29
  %31 = icmp ult i64 %23, 8
  %32 = icmp ult i64 %23, 32
  %33 = and i64 %14, 31
  %34 = sub nuw nsw i64 %23, %33
  %35 = icmp eq i64 %33, 0
  %36 = icmp samesign ult i64 %33, 8
  %37 = and i64 %14, 7
  %38 = sub nsw i64 %23, %37
  %39 = icmp eq i64 %37, 0
  br label %40

40:                                               ; preds = %30, %137
  %41 = phi i64 [ %138, %137 ], [ 0, %30 ]
  %42 = mul nuw nsw i64 %41, %19
  %43 = getelementptr [4 x i8], ptr %0, i64 %42
  br label %44

44:                                               ; preds = %133, %40
  %45 = phi i64 [ 0, %40 ], [ %135, %133 ]
  %46 = load i32, ptr %21, align 4, !tbaa !146
  %47 = and i32 %46, 256
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = getelementptr [4 x i8], ptr %43, i64 %45
  %51 = load i32, ptr %50, align 4, !tbaa !11
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi i32 [ 0, %44 ], [ %51, %49 ]
  br label %54

54:                                               ; preds = %52, %129
  %55 = phi i64 [ %131, %129 ], [ 0, %52 ]
  %56 = phi i32 [ %130, %129 ], [ %53, %52 ]
  %57 = mul nuw nsw i64 %55, %9
  %58 = add nuw i64 %57, %41
  %59 = mul i64 %58, %23
  %60 = getelementptr i8, ptr %1, i64 %59
  %61 = mul nuw nsw i64 %55, %19
  %62 = add nuw i64 %61, %45
  %63 = mul i64 %62, %23
  %64 = getelementptr i8, ptr %2, i64 %63
  br i1 %31, label %113, label %65

65:                                               ; preds = %54
  br i1 %32, label %94, label %66

66:                                               ; preds = %65
  %67 = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %56, i64 0
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi i64 [ 0, %66 ], [ %88, %68 ]
  %70 = phi <16 x i32> [ %67, %66 ], [ %86, %68 ]
  %71 = phi <16 x i32> [ zeroinitializer, %66 ], [ %87, %68 ]
  %72 = getelementptr i8, ptr %60, i64 %69
  %73 = getelementptr i8, ptr %72, i64 16
  %74 = load <16 x i8>, ptr %72, align 1, !tbaa !199
  %75 = load <16 x i8>, ptr %73, align 1, !tbaa !199
  %76 = sext <16 x i8> %74 to <16 x i32>
  %77 = sext <16 x i8> %75 to <16 x i32>
  %78 = getelementptr i8, ptr %64, i64 %69
  %79 = getelementptr i8, ptr %78, i64 16
  %80 = load <16 x i8>, ptr %78, align 1, !tbaa !199
  %81 = load <16 x i8>, ptr %79, align 1, !tbaa !199
  %82 = sext <16 x i8> %80 to <16 x i32>
  %83 = sext <16 x i8> %81 to <16 x i32>
  %84 = mul nsw <16 x i32> %82, %76
  %85 = mul nsw <16 x i32> %83, %77
  %86 = add <16 x i32> %84, %70
  %87 = add <16 x i32> %85, %71
  %88 = add nuw i64 %69, 32
  %89 = icmp eq i64 %88, %34
  br i1 %89, label %90, label %68, !llvm.loop !248

90:                                               ; preds = %68
  %91 = add <16 x i32> %87, %86
  %92 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %91)
  br i1 %35, label %129, label %93

93:                                               ; preds = %90
  br i1 %36, label %113, label %94, !prof !249

94:                                               ; preds = %65, %93
  %95 = phi i64 [ %34, %93 ], [ 0, %65 ]
  %96 = phi i32 [ %92, %93 ], [ %56, %65 ]
  %97 = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %96, i64 0
  br label %98

98:                                               ; preds = %98, %94
  %99 = phi i64 [ %95, %94 ], [ %109, %98 ]
  %100 = phi <8 x i32> [ %97, %94 ], [ %108, %98 ]
  %101 = getelementptr i8, ptr %60, i64 %99
  %102 = load <8 x i8>, ptr %101, align 1, !tbaa !199
  %103 = sext <8 x i8> %102 to <8 x i32>
  %104 = getelementptr i8, ptr %64, i64 %99
  %105 = load <8 x i8>, ptr %104, align 1, !tbaa !199
  %106 = sext <8 x i8> %105 to <8 x i32>
  %107 = mul nsw <8 x i32> %106, %103
  %108 = add <8 x i32> %107, %100
  %109 = add nuw i64 %99, 8
  %110 = icmp eq i64 %109, %38
  br i1 %110, label %111, label %98, !llvm.loop !250

111:                                              ; preds = %98
  %112 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %108)
  br i1 %39, label %129, label %113

113:                                              ; preds = %54, %93, %111
  %114 = phi i64 [ 0, %54 ], [ %34, %93 ], [ %38, %111 ]
  %115 = phi i32 [ %56, %54 ], [ %92, %93 ], [ %112, %111 ]
  br label %116

116:                                              ; preds = %113, %116
  %117 = phi i64 [ %127, %116 ], [ %114, %113 ]
  %118 = phi i32 [ %126, %116 ], [ %115, %113 ]
  %119 = getelementptr i8, ptr %60, i64 %117
  %120 = load i8, ptr %119, align 1, !tbaa !199
  %121 = sext i8 %120 to i32
  %122 = getelementptr i8, ptr %64, i64 %117
  %123 = load i8, ptr %122, align 1, !tbaa !199
  %124 = sext i8 %123 to i32
  %125 = mul nsw i32 %124, %121
  %126 = add nsw i32 %125, %118
  %127 = add nuw nsw i64 %117, 1
  %128 = icmp eq i64 %127, %23
  br i1 %128, label %129, label %116, !llvm.loop !251

129:                                              ; preds = %116, %111, %90
  %130 = phi i32 [ %112, %111 ], [ %92, %90 ], [ %126, %116 ]
  %131 = add nuw nsw i64 %55, 1
  %132 = icmp eq i64 %131, %27
  br i1 %132, label %133, label %54, !llvm.loop !252

133:                                              ; preds = %129
  %134 = getelementptr [4 x i8], ptr %43, i64 %45
  store i32 %130, ptr %134, align 4, !tbaa !11
  %135 = add nuw nsw i64 %45, 1
  %136 = icmp eq i64 %135, %19
  br i1 %136, label %137, label %44, !llvm.loop !253

137:                                              ; preds = %133
  %138 = add nuw nsw i64 %41, 1
  %139 = icmp eq i64 %138, %9
  br i1 %139, label %180, label %40, !llvm.loop !254

140:                                              ; preds = %29, %157
  %141 = phi i64 [ %158, %157 ], [ 0, %29 ]
  %142 = mul nuw nsw i64 %141, %19
  %143 = getelementptr [4 x i8], ptr %0, i64 %142
  br label %144

144:                                              ; preds = %140, %152
  %145 = phi i64 [ 0, %140 ], [ %155, %152 ]
  %146 = load i32, ptr %21, align 4, !tbaa !146
  %147 = and i32 %146, 256
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %144
  %150 = getelementptr [4 x i8], ptr %143, i64 %145
  %151 = load i32, ptr %150, align 4, !tbaa !11
  br label %152

152:                                              ; preds = %149, %144
  %153 = phi i32 [ %151, %149 ], [ 0, %144 ]
  %154 = getelementptr [4 x i8], ptr %143, i64 %145
  store i32 %153, ptr %154, align 4, !tbaa !11
  %155 = add nuw nsw i64 %145, 1
  %156 = icmp eq i64 %155, %19
  br i1 %156, label %157, label %144, !llvm.loop !253

157:                                              ; preds = %152
  %158 = add nuw nsw i64 %141, 1
  %159 = icmp eq i64 %158, %9
  br i1 %159, label %180, label %140, !llvm.loop !254

160:                                              ; preds = %25, %177
  %161 = phi i64 [ %178, %177 ], [ 0, %25 ]
  %162 = mul nuw nsw i64 %161, %19
  %163 = getelementptr [4 x i8], ptr %0, i64 %162
  br label %164

164:                                              ; preds = %160, %172
  %165 = phi i64 [ 0, %160 ], [ %175, %172 ]
  %166 = load i32, ptr %21, align 4, !tbaa !146
  %167 = and i32 %166, 256
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %164
  %170 = getelementptr [4 x i8], ptr %163, i64 %165
  %171 = load i32, ptr %170, align 4, !tbaa !11
  br label %172

172:                                              ; preds = %169, %164
  %173 = phi i32 [ %171, %169 ], [ 0, %164 ]
  %174 = getelementptr [4 x i8], ptr %163, i64 %165
  store i32 %173, ptr %174, align 4, !tbaa !11
  %175 = add nuw nsw i64 %165, 1
  %176 = icmp eq i64 %175, %19
  br i1 %176, label %177, label %164, !llvm.loop !253

177:                                              ; preds = %172
  %178 = add nuw nsw i64 %161, 1
  %179 = icmp eq i64 %178, %9
  br i1 %179, label %180, label %160, !llvm.loop !254

180:                                              ; preds = %177, %157, %137, %11, %4
  ret void
}

; Function Attrs: alwaysinline nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #12

; Function Attrs: alwaysinline nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #12

; Function Attrs: alwaysinline nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #12

; Function Attrs: alwaysinline nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: alwaysinline nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: alwaysinline nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #12

; Function Attrs: alwaysinline nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #12

; Function Attrs: alwaysinline nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #13

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f32f32f32_1x8x1_arm_64(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !262
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load <4 x float>, ptr %0, align 4, !alias.scope !255, !noalias !263
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <4 x float>, ptr %11, align 4, !alias.scope !255, !noalias !263
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi <4 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %15 = phi <4 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %17 = load i64, ptr %16, align 8, !tbaa !142, !noalias !262
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %23, %13
  %20 = phi <4 x float> [ %15, %13 ], [ %38, %23 ]
  %21 = phi <4 x float> [ %14, %13 ], [ %37, %23 ]
  store <4 x float> %21, ptr %0, align 4, !alias.scope !255, !noalias !263
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %20, ptr %22, align 4, !alias.scope !255, !noalias !263
  ret void

23:                                               ; preds = %13, %23
  %24 = phi i64 [ %39, %23 ], [ 0, %13 ]
  %25 = phi <4 x float> [ %38, %23 ], [ %15, %13 ]
  %26 = phi ptr [ %33, %23 ], [ %1, %13 ]
  %27 = phi ptr [ %32, %23 ], [ %2, %13 ]
  %28 = phi <4 x float> [ %37, %23 ], [ %14, %13 ]
  %29 = load <4 x float>, ptr %27, align 4, !alias.scope !260, !noalias !264
  %30 = getelementptr inbounds nuw i8, ptr %27, i64 16
  %31 = load <4 x float>, ptr %30, align 4, !alias.scope !260, !noalias !264
  %32 = getelementptr inbounds nuw i8, ptr %27, i64 32
  %33 = getelementptr inbounds nuw i8, ptr %26, i64 4
  %34 = load float, ptr %26, align 4, !tbaa !111, !alias.scope !258, !noalias !265
  %35 = insertelement <4 x float> poison, float %34, i64 0
  %36 = shufflevector <4 x float> %35, <4 x float> poison, <4 x i32> zeroinitializer
  %37 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %29, <4 x float> %36, <4 x float> %28)
  %38 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %31, <4 x float> %36, <4 x float> %25)
  %39 = add nuw nsw i64 %24, 1
  %40 = icmp eq i64 %39, %17
  br i1 %40, label %19, label %23, !llvm.loop !266
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f32f32f32_2x8x1_arm_64(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !274
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load <4 x float>, ptr %0, align 4, !alias.scope !267, !noalias !275
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <4 x float>, ptr %11, align 4, !alias.scope !267, !noalias !275
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load <4 x float>, ptr %13, align 4, !alias.scope !267, !noalias !275
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %16 = load <4 x float>, ptr %15, align 4, !alias.scope !267, !noalias !275
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi <4 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %19 = phi <4 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %20 = phi <4 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %21 = phi <4 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %23 = load i64, ptr %22, align 8, !tbaa !142, !noalias !274
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %33, %17
  %26 = phi <4 x float> [ %18, %17 ], [ %49, %33 ]
  %27 = phi <4 x float> [ %20, %17 ], [ %51, %33 ]
  %28 = phi <4 x float> [ %21, %17 ], [ %52, %33 ]
  %29 = phi <4 x float> [ %19, %17 ], [ %48, %33 ]
  store <4 x float> %29, ptr %0, align 4, !alias.scope !267, !noalias !275
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %26, ptr %30, align 4, !alias.scope !267, !noalias !275
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %27, ptr %31, align 4, !alias.scope !267, !noalias !275
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %28, ptr %32, align 4, !alias.scope !267, !noalias !275
  ret void

33:                                               ; preds = %17, %33
  %34 = phi i64 [ %53, %33 ], [ 0, %17 ]
  %35 = phi <4 x float> [ %52, %33 ], [ %21, %17 ]
  %36 = phi <4 x float> [ %51, %33 ], [ %20, %17 ]
  %37 = phi <4 x float> [ %49, %33 ], [ %18, %17 ]
  %38 = phi ptr [ %46, %33 ], [ %1, %17 ]
  %39 = phi ptr [ %44, %33 ], [ %2, %17 ]
  %40 = phi <4 x float> [ %48, %33 ], [ %19, %17 ]
  %41 = load <4 x float>, ptr %39, align 4, !alias.scope !272, !noalias !276
  %42 = getelementptr inbounds nuw i8, ptr %39, i64 16
  %43 = load <4 x float>, ptr %42, align 4, !alias.scope !272, !noalias !276
  %44 = getelementptr inbounds nuw i8, ptr %39, i64 32
  %45 = load <2 x float>, ptr %38, align 4, !alias.scope !270, !noalias !277
  %46 = getelementptr inbounds nuw i8, ptr %38, i64 8
  %47 = shufflevector <2 x float> %45, <2 x float> poison, <4 x i32> zeroinitializer
  %48 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %41, <4 x float> %47, <4 x float> %40)
  %49 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %43, <4 x float> %47, <4 x float> %37)
  %50 = shufflevector <2 x float> %45, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %51 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %41, <4 x float> %50, <4 x float> %36)
  %52 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %43, <4 x float> %50, <4 x float> %35)
  %53 = add nuw nsw i64 %34, 1
  %54 = icmp eq i64 %53, %23
  br i1 %54, label %25, label %33, !llvm.loop !266
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f32f32f32_4x8x1_arm_64(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !285
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = load <4 x float>, ptr %0, align 4, !alias.scope !278, !noalias !286
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <4 x float>, ptr %11, align 4, !alias.scope !278, !noalias !286
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load <4 x float>, ptr %13, align 4, !alias.scope !278, !noalias !286
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %16 = load <4 x float>, ptr %15, align 4, !alias.scope !278, !noalias !286
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %18 = load <4 x float>, ptr %17, align 4, !alias.scope !278, !noalias !286
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %20 = load <4 x float>, ptr %19, align 4, !alias.scope !278, !noalias !286
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %22 = load <4 x float>, ptr %21, align 4, !alias.scope !278, !noalias !286
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load <4 x float>, ptr %23, align 4, !alias.scope !278, !noalias !286
  br label %25

25:                                               ; preds = %4, %9
  %26 = phi <4 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %27 = phi <4 x float> [ %18, %9 ], [ zeroinitializer, %4 ]
  %28 = phi <4 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %29 = phi <4 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %30 = phi <4 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %31 = phi <4 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %32 = phi <4 x float> [ %22, %9 ], [ zeroinitializer, %4 ]
  %33 = phi <4 x float> [ %24, %9 ], [ zeroinitializer, %4 ]
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %35 = load i64, ptr %34, align 8, !tbaa !142, !noalias !285
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %53, %25
  %38 = phi <4 x float> [ %26, %25 ], [ %79, %53 ]
  %39 = phi <4 x float> [ %27, %25 ], [ %78, %53 ]
  %40 = phi <4 x float> [ %28, %25 ], [ %76, %53 ]
  %41 = phi <4 x float> [ %29, %25 ], [ %75, %53 ]
  %42 = phi <4 x float> [ %30, %25 ], [ %73, %53 ]
  %43 = phi <4 x float> [ %32, %25 ], [ %81, %53 ]
  %44 = phi <4 x float> [ %33, %25 ], [ %82, %53 ]
  %45 = phi <4 x float> [ %31, %25 ], [ %72, %53 ]
  store <4 x float> %45, ptr %0, align 4, !alias.scope !278, !noalias !286
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %42, ptr %46, align 4, !alias.scope !278, !noalias !286
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %41, ptr %47, align 4, !alias.scope !278, !noalias !286
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %40, ptr %48, align 4, !alias.scope !278, !noalias !286
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> %39, ptr %49, align 4, !alias.scope !278, !noalias !286
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x float> %38, ptr %50, align 4, !alias.scope !278, !noalias !286
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x float> %43, ptr %51, align 4, !alias.scope !278, !noalias !286
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x float> %44, ptr %52, align 4, !alias.scope !278, !noalias !286
  ret void

53:                                               ; preds = %25, %53
  %54 = phi i64 [ %83, %53 ], [ 0, %25 ]
  %55 = phi <4 x float> [ %82, %53 ], [ %33, %25 ]
  %56 = phi <4 x float> [ %81, %53 ], [ %32, %25 ]
  %57 = phi <4 x float> [ %79, %53 ], [ %26, %25 ]
  %58 = phi <4 x float> [ %78, %53 ], [ %27, %25 ]
  %59 = phi <4 x float> [ %76, %53 ], [ %28, %25 ]
  %60 = phi <4 x float> [ %75, %53 ], [ %29, %25 ]
  %61 = phi <4 x float> [ %73, %53 ], [ %30, %25 ]
  %62 = phi ptr [ %70, %53 ], [ %1, %25 ]
  %63 = phi ptr [ %68, %53 ], [ %2, %25 ]
  %64 = phi <4 x float> [ %72, %53 ], [ %31, %25 ]
  %65 = load <4 x float>, ptr %63, align 4, !alias.scope !283, !noalias !287
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 16
  %67 = load <4 x float>, ptr %66, align 4, !alias.scope !283, !noalias !287
  %68 = getelementptr inbounds nuw i8, ptr %63, i64 32
  %69 = load <4 x float>, ptr %62, align 4, !alias.scope !281, !noalias !288
  %70 = getelementptr inbounds nuw i8, ptr %62, i64 16
  %71 = shufflevector <4 x float> %69, <4 x float> poison, <4 x i32> zeroinitializer
  %72 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %65, <4 x float> %71, <4 x float> %64)
  %73 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %67, <4 x float> %71, <4 x float> %61)
  %74 = shufflevector <4 x float> %69, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %75 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %65, <4 x float> %74, <4 x float> %60)
  %76 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %67, <4 x float> %74, <4 x float> %59)
  %77 = shufflevector <4 x float> %69, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %78 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %65, <4 x float> %77, <4 x float> %58)
  %79 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %67, <4 x float> %77, <4 x float> %57)
  %80 = shufflevector <4 x float> %69, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %81 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %65, <4 x float> %80, <4 x float> %56)
  %82 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %67, <4 x float> %80, <4 x float> %55)
  %83 = add nuw nsw i64 %54, 1
  %84 = icmp eq i64 %83, %35
  br i1 %84, label %37, label %53, !llvm.loop !266
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f32f32f32_8x8x1_arm_64(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !296
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %4
  %10 = load <4 x float>, ptr %0, align 4, !alias.scope !289, !noalias !297
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <4 x float>, ptr %11, align 4, !alias.scope !289, !noalias !297
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load <4 x float>, ptr %13, align 4, !alias.scope !289, !noalias !297
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %16 = load <4 x float>, ptr %15, align 4, !alias.scope !289, !noalias !297
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %18 = load <4 x float>, ptr %17, align 4, !alias.scope !289, !noalias !297
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %20 = load <4 x float>, ptr %19, align 4, !alias.scope !289, !noalias !297
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %22 = load <4 x float>, ptr %21, align 4, !alias.scope !289, !noalias !297
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load <4 x float>, ptr %23, align 4, !alias.scope !289, !noalias !297
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %26 = load <4 x float>, ptr %25, align 4, !alias.scope !289, !noalias !297
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %28 = load <4 x float>, ptr %27, align 4, !alias.scope !289, !noalias !297
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %30 = load <4 x float>, ptr %29, align 4, !alias.scope !289, !noalias !297
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %32 = load <4 x float>, ptr %31, align 4, !alias.scope !289, !noalias !297
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %34 = load <4 x float>, ptr %33, align 4, !alias.scope !289, !noalias !297
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %36 = load <4 x float>, ptr %35, align 4, !alias.scope !289, !noalias !297
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %38 = load <4 x float>, ptr %37, align 4, !alias.scope !289, !noalias !297
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %40 = load <4 x float>, ptr %39, align 4, !alias.scope !289, !noalias !297
  br label %41

41:                                               ; preds = %4, %9
  %42 = phi <4 x float> [ %32, %9 ], [ zeroinitializer, %4 ]
  %43 = phi <4 x float> [ %30, %9 ], [ zeroinitializer, %4 ]
  %44 = phi <4 x float> [ %28, %9 ], [ zeroinitializer, %4 ]
  %45 = phi <4 x float> [ %26, %9 ], [ zeroinitializer, %4 ]
  %46 = phi <4 x float> [ %24, %9 ], [ zeroinitializer, %4 ]
  %47 = phi <4 x float> [ %22, %9 ], [ zeroinitializer, %4 ]
  %48 = phi <4 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %49 = phi <4 x float> [ %18, %9 ], [ zeroinitializer, %4 ]
  %50 = phi <4 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %51 = phi <4 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %52 = phi <4 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %53 = phi <4 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %54 = phi <4 x float> [ %34, %9 ], [ zeroinitializer, %4 ]
  %55 = phi <4 x float> [ %36, %9 ], [ zeroinitializer, %4 ]
  %56 = phi <4 x float> [ %38, %9 ], [ zeroinitializer, %4 ]
  %57 = phi <4 x float> [ %40, %9 ], [ zeroinitializer, %4 ]
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %59 = load i64, ptr %58, align 8, !tbaa !142, !noalias !296
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %93, label %61

61:                                               ; preds = %93, %41
  %62 = phi <4 x float> [ %42, %41 ], [ %138, %93 ]
  %63 = phi <4 x float> [ %43, %41 ], [ %137, %93 ]
  %64 = phi <4 x float> [ %44, %41 ], [ %135, %93 ]
  %65 = phi <4 x float> [ %45, %41 ], [ %134, %93 ]
  %66 = phi <4 x float> [ %46, %41 ], [ %132, %93 ]
  %67 = phi <4 x float> [ %47, %41 ], [ %131, %93 ]
  %68 = phi <4 x float> [ %48, %41 ], [ %129, %93 ]
  %69 = phi <4 x float> [ %49, %41 ], [ %128, %93 ]
  %70 = phi <4 x float> [ %50, %41 ], [ %126, %93 ]
  %71 = phi <4 x float> [ %51, %41 ], [ %125, %93 ]
  %72 = phi <4 x float> [ %52, %41 ], [ %123, %93 ]
  %73 = phi <4 x float> [ %54, %41 ], [ %140, %93 ]
  %74 = phi <4 x float> [ %55, %41 ], [ %141, %93 ]
  %75 = phi <4 x float> [ %56, %41 ], [ %143, %93 ]
  %76 = phi <4 x float> [ %57, %41 ], [ %144, %93 ]
  %77 = phi <4 x float> [ %53, %41 ], [ %122, %93 ]
  store <4 x float> %77, ptr %0, align 4, !alias.scope !289, !noalias !297
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %72, ptr %78, align 4, !alias.scope !289, !noalias !297
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %71, ptr %79, align 4, !alias.scope !289, !noalias !297
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %70, ptr %80, align 4, !alias.scope !289, !noalias !297
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> %69, ptr %81, align 4, !alias.scope !289, !noalias !297
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x float> %68, ptr %82, align 4, !alias.scope !289, !noalias !297
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x float> %67, ptr %83, align 4, !alias.scope !289, !noalias !297
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x float> %66, ptr %84, align 4, !alias.scope !289, !noalias !297
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <4 x float> %65, ptr %85, align 4, !alias.scope !289, !noalias !297
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <4 x float> %64, ptr %86, align 4, !alias.scope !289, !noalias !297
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <4 x float> %63, ptr %87, align 4, !alias.scope !289, !noalias !297
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <4 x float> %62, ptr %88, align 4, !alias.scope !289, !noalias !297
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <4 x float> %73, ptr %89, align 4, !alias.scope !289, !noalias !297
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x float> %74, ptr %90, align 4, !alias.scope !289, !noalias !297
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <4 x float> %75, ptr %91, align 4, !alias.scope !289, !noalias !297
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <4 x float> %76, ptr %92, align 4, !alias.scope !289, !noalias !297
  ret void

93:                                               ; preds = %41, %93
  %94 = phi i64 [ %145, %93 ], [ 0, %41 ]
  %95 = phi <4 x float> [ %144, %93 ], [ %57, %41 ]
  %96 = phi <4 x float> [ %143, %93 ], [ %56, %41 ]
  %97 = phi <4 x float> [ %141, %93 ], [ %55, %41 ]
  %98 = phi <4 x float> [ %140, %93 ], [ %54, %41 ]
  %99 = phi <4 x float> [ %138, %93 ], [ %42, %41 ]
  %100 = phi <4 x float> [ %137, %93 ], [ %43, %41 ]
  %101 = phi <4 x float> [ %135, %93 ], [ %44, %41 ]
  %102 = phi <4 x float> [ %134, %93 ], [ %45, %41 ]
  %103 = phi <4 x float> [ %132, %93 ], [ %46, %41 ]
  %104 = phi <4 x float> [ %131, %93 ], [ %47, %41 ]
  %105 = phi <4 x float> [ %129, %93 ], [ %48, %41 ]
  %106 = phi <4 x float> [ %128, %93 ], [ %49, %41 ]
  %107 = phi <4 x float> [ %126, %93 ], [ %50, %41 ]
  %108 = phi <4 x float> [ %125, %93 ], [ %51, %41 ]
  %109 = phi <4 x float> [ %123, %93 ], [ %52, %41 ]
  %110 = phi ptr [ %120, %93 ], [ %1, %41 ]
  %111 = phi ptr [ %119, %93 ], [ %2, %41 ]
  %112 = phi <4 x float> [ %122, %93 ], [ %53, %41 ]
  %113 = load <4 x float>, ptr %111, align 4, !alias.scope !294, !noalias !298
  %114 = getelementptr inbounds nuw i8, ptr %111, i64 16
  %115 = load <4 x float>, ptr %114, align 4, !alias.scope !294, !noalias !298
  %116 = load <4 x float>, ptr %110, align 4, !alias.scope !292, !noalias !299
  %117 = getelementptr inbounds nuw i8, ptr %110, i64 16
  %118 = load <4 x float>, ptr %117, align 4, !alias.scope !292, !noalias !299
  %119 = getelementptr inbounds nuw i8, ptr %111, i64 32
  %120 = getelementptr inbounds nuw i8, ptr %110, i64 32
  %121 = shufflevector <4 x float> %116, <4 x float> poison, <4 x i32> zeroinitializer
  %122 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %113, <4 x float> %121, <4 x float> %112)
  %123 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %115, <4 x float> %121, <4 x float> %109)
  %124 = shufflevector <4 x float> %116, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %125 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %113, <4 x float> %124, <4 x float> %108)
  %126 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %115, <4 x float> %124, <4 x float> %107)
  %127 = shufflevector <4 x float> %116, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %128 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %113, <4 x float> %127, <4 x float> %106)
  %129 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %115, <4 x float> %127, <4 x float> %105)
  %130 = shufflevector <4 x float> %116, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %131 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %113, <4 x float> %130, <4 x float> %104)
  %132 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %115, <4 x float> %130, <4 x float> %103)
  %133 = shufflevector <4 x float> %118, <4 x float> poison, <4 x i32> zeroinitializer
  %134 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %113, <4 x float> %133, <4 x float> %102)
  %135 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %115, <4 x float> %133, <4 x float> %101)
  %136 = shufflevector <4 x float> %118, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %137 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %113, <4 x float> %136, <4 x float> %100)
  %138 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %115, <4 x float> %136, <4 x float> %99)
  %139 = shufflevector <4 x float> %118, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %140 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %113, <4 x float> %139, <4 x float> %98)
  %141 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %115, <4 x float> %139, <4 x float> %97)
  %142 = shufflevector <4 x float> %118, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %143 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %113, <4 x float> %142, <4 x float> %96)
  %144 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %115, <4 x float> %142, <4 x float> %95)
  %145 = add nuw nsw i64 %94, 1
  %146 = icmp eq i64 %145, %59
  br i1 %146, label %61, label %93, !llvm.loop !266
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f32_1x8x1_arm_64(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !307
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load <4 x float>, ptr %0, align 4, !alias.scope !300, !noalias !308
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <4 x float>, ptr %11, align 4, !alias.scope !300, !noalias !308
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi <4 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %15 = phi <4 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %17 = load i64, ptr %16, align 8, !tbaa !142, !noalias !307
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %23, %13
  %20 = phi <4 x float> [ %15, %13 ], [ %41, %23 ]
  %21 = phi <4 x float> [ %14, %13 ], [ %40, %23 ]
  store <4 x float> %21, ptr %0, align 4, !alias.scope !300, !noalias !308
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %20, ptr %22, align 4, !alias.scope !300, !noalias !308
  ret void

23:                                               ; preds = %13, %23
  %24 = phi i64 [ %42, %23 ], [ 0, %13 ]
  %25 = phi <4 x float> [ %41, %23 ], [ %15, %13 ]
  %26 = phi ptr [ %35, %23 ], [ %1, %13 ]
  %27 = phi ptr [ %34, %23 ], [ %2, %13 ]
  %28 = phi <4 x float> [ %40, %23 ], [ %14, %13 ]
  %29 = load <4 x i16>, ptr %27, align 2, !alias.scope !305, !noalias !309
  %30 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %29)
  %31 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %32 = load <4 x i16>, ptr %31, align 2, !alias.scope !305, !noalias !309
  %33 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %32)
  %34 = getelementptr inbounds nuw i8, ptr %27, i64 16
  %35 = getelementptr inbounds nuw i8, ptr %26, i64 2
  %36 = load half, ptr %26, align 2, !tbaa !310, !alias.scope !303, !noalias !312
  %37 = fpext half %36 to float
  %38 = insertelement <4 x float> poison, float %37, i64 0
  %39 = shufflevector <4 x float> %38, <4 x float> poison, <4 x i32> zeroinitializer
  %40 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %30, <4 x float> %39, <4 x float> %28)
  %41 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %33, <4 x float> %39, <4 x float> %25)
  %42 = add nuw nsw i64 %24, 1
  %43 = icmp eq i64 %42, %17
  br i1 %43, label %19, label %23, !llvm.loop !313
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f32_2x8x1_arm_64(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !321
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load <4 x float>, ptr %0, align 4, !alias.scope !314, !noalias !322
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <4 x float>, ptr %11, align 4, !alias.scope !314, !noalias !322
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load <4 x float>, ptr %13, align 4, !alias.scope !314, !noalias !322
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %16 = load <4 x float>, ptr %15, align 4, !alias.scope !314, !noalias !322
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi <4 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %19 = phi <4 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %20 = phi <4 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %21 = phi <4 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %23 = load i64, ptr %22, align 8, !tbaa !142, !noalias !321
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %33, %17
  %26 = phi <4 x float> [ %18, %17 ], [ %58, %33 ]
  %27 = phi <4 x float> [ %20, %17 ], [ %60, %33 ]
  %28 = phi <4 x float> [ %21, %17 ], [ %61, %33 ]
  %29 = phi <4 x float> [ %19, %17 ], [ %57, %33 ]
  store <4 x float> %29, ptr %0, align 4, !alias.scope !314, !noalias !322
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %26, ptr %30, align 4, !alias.scope !314, !noalias !322
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %27, ptr %31, align 4, !alias.scope !314, !noalias !322
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %28, ptr %32, align 4, !alias.scope !314, !noalias !322
  ret void

33:                                               ; preds = %17, %33
  %34 = phi i64 [ %62, %33 ], [ 0, %17 ]
  %35 = phi <4 x float> [ %61, %33 ], [ %21, %17 ]
  %36 = phi <4 x float> [ %60, %33 ], [ %20, %17 ]
  %37 = phi <4 x float> [ %58, %33 ], [ %18, %17 ]
  %38 = phi ptr [ %53, %33 ], [ %1, %17 ]
  %39 = phi ptr [ %46, %33 ], [ %2, %17 ]
  %40 = phi <4 x float> [ %57, %33 ], [ %19, %17 ]
  %41 = load <4 x i16>, ptr %39, align 2, !alias.scope !319, !noalias !323
  %42 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %41)
  %43 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %44 = load <4 x i16>, ptr %43, align 2, !alias.scope !319, !noalias !323
  %45 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %44)
  %46 = getelementptr inbounds nuw i8, ptr %39, i64 16
  %47 = load half, ptr %38, align 2, !alias.scope !317, !noalias !324
  %48 = insertelement <4 x half> poison, half %47, i64 0
  %49 = getelementptr inbounds nuw i8, ptr %38, i64 2
  %50 = shufflevector <4 x half> %48, <4 x half> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0>
  %51 = load half, ptr %49, align 2, !alias.scope !317, !noalias !324
  %52 = insertelement <4 x half> %50, half %51, i64 1
  %53 = getelementptr inbounds nuw i8, ptr %38, i64 4
  %54 = bitcast <4 x half> %52 to <4 x i16>
  %55 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %54)
  %56 = shufflevector <4 x float> %55, <4 x float> poison, <4 x i32> zeroinitializer
  %57 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %42, <4 x float> %56, <4 x float> %40)
  %58 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %45, <4 x float> %56, <4 x float> %37)
  %59 = shufflevector <4 x float> %55, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %60 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %42, <4 x float> %59, <4 x float> %36)
  %61 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %45, <4 x float> %59, <4 x float> %35)
  %62 = add nuw nsw i64 %34, 1
  %63 = icmp eq i64 %62, %23
  br i1 %63, label %25, label %33, !llvm.loop !313
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f32_4x8x1_arm_64(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !332
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = load <4 x float>, ptr %0, align 4, !alias.scope !325, !noalias !333
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <4 x float>, ptr %11, align 4, !alias.scope !325, !noalias !333
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load <4 x float>, ptr %13, align 4, !alias.scope !325, !noalias !333
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %16 = load <4 x float>, ptr %15, align 4, !alias.scope !325, !noalias !333
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %18 = load <4 x float>, ptr %17, align 4, !alias.scope !325, !noalias !333
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %20 = load <4 x float>, ptr %19, align 4, !alias.scope !325, !noalias !333
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %22 = load <4 x float>, ptr %21, align 4, !alias.scope !325, !noalias !333
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load <4 x float>, ptr %23, align 4, !alias.scope !325, !noalias !333
  br label %25

25:                                               ; preds = %4, %9
  %26 = phi <4 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %27 = phi <4 x float> [ %18, %9 ], [ zeroinitializer, %4 ]
  %28 = phi <4 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %29 = phi <4 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %30 = phi <4 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %31 = phi <4 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %32 = phi <4 x float> [ %22, %9 ], [ zeroinitializer, %4 ]
  %33 = phi <4 x float> [ %24, %9 ], [ zeroinitializer, %4 ]
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %35 = load i64, ptr %34, align 8, !tbaa !142, !noalias !332
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %53, %25
  %38 = phi <4 x float> [ %26, %25 ], [ %82, %53 ]
  %39 = phi <4 x float> [ %27, %25 ], [ %81, %53 ]
  %40 = phi <4 x float> [ %28, %25 ], [ %79, %53 ]
  %41 = phi <4 x float> [ %29, %25 ], [ %78, %53 ]
  %42 = phi <4 x float> [ %30, %25 ], [ %76, %53 ]
  %43 = phi <4 x float> [ %32, %25 ], [ %84, %53 ]
  %44 = phi <4 x float> [ %33, %25 ], [ %85, %53 ]
  %45 = phi <4 x float> [ %31, %25 ], [ %75, %53 ]
  store <4 x float> %45, ptr %0, align 4, !alias.scope !325, !noalias !333
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %42, ptr %46, align 4, !alias.scope !325, !noalias !333
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %41, ptr %47, align 4, !alias.scope !325, !noalias !333
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %40, ptr %48, align 4, !alias.scope !325, !noalias !333
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> %39, ptr %49, align 4, !alias.scope !325, !noalias !333
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x float> %38, ptr %50, align 4, !alias.scope !325, !noalias !333
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x float> %43, ptr %51, align 4, !alias.scope !325, !noalias !333
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x float> %44, ptr %52, align 4, !alias.scope !325, !noalias !333
  ret void

53:                                               ; preds = %25, %53
  %54 = phi i64 [ %86, %53 ], [ 0, %25 ]
  %55 = phi <4 x float> [ %85, %53 ], [ %33, %25 ]
  %56 = phi <4 x float> [ %84, %53 ], [ %32, %25 ]
  %57 = phi <4 x float> [ %82, %53 ], [ %26, %25 ]
  %58 = phi <4 x float> [ %81, %53 ], [ %27, %25 ]
  %59 = phi <4 x float> [ %79, %53 ], [ %28, %25 ]
  %60 = phi <4 x float> [ %78, %53 ], [ %29, %25 ]
  %61 = phi <4 x float> [ %76, %53 ], [ %30, %25 ]
  %62 = phi ptr [ %73, %53 ], [ %1, %25 ]
  %63 = phi ptr [ %70, %53 ], [ %2, %25 ]
  %64 = phi <4 x float> [ %75, %53 ], [ %31, %25 ]
  %65 = load <4 x i16>, ptr %63, align 2, !alias.scope !330, !noalias !334
  %66 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %65)
  %67 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %68 = load <4 x i16>, ptr %67, align 2, !alias.scope !330, !noalias !334
  %69 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %68)
  %70 = getelementptr inbounds nuw i8, ptr %63, i64 16
  %71 = load <4 x i16>, ptr %62, align 2, !alias.scope !328, !noalias !335
  %72 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %71)
  %73 = getelementptr inbounds nuw i8, ptr %62, i64 8
  %74 = shufflevector <4 x float> %72, <4 x float> poison, <4 x i32> zeroinitializer
  %75 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %66, <4 x float> %74, <4 x float> %64)
  %76 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %69, <4 x float> %74, <4 x float> %61)
  %77 = shufflevector <4 x float> %72, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %78 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %66, <4 x float> %77, <4 x float> %60)
  %79 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %69, <4 x float> %77, <4 x float> %59)
  %80 = shufflevector <4 x float> %72, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %81 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %66, <4 x float> %80, <4 x float> %58)
  %82 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %69, <4 x float> %80, <4 x float> %57)
  %83 = shufflevector <4 x float> %72, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %84 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %66, <4 x float> %83, <4 x float> %56)
  %85 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %69, <4 x float> %83, <4 x float> %55)
  %86 = add nuw nsw i64 %54, 1
  %87 = icmp eq i64 %86, %35
  br i1 %87, label %37, label %53, !llvm.loop !313
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f32_8x8x1_arm_64(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !343
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %4
  %10 = load <4 x float>, ptr %0, align 4, !alias.scope !336, !noalias !344
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <4 x float>, ptr %11, align 4, !alias.scope !336, !noalias !344
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load <4 x float>, ptr %13, align 4, !alias.scope !336, !noalias !344
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %16 = load <4 x float>, ptr %15, align 4, !alias.scope !336, !noalias !344
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %18 = load <4 x float>, ptr %17, align 4, !alias.scope !336, !noalias !344
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %20 = load <4 x float>, ptr %19, align 4, !alias.scope !336, !noalias !344
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %22 = load <4 x float>, ptr %21, align 4, !alias.scope !336, !noalias !344
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load <4 x float>, ptr %23, align 4, !alias.scope !336, !noalias !344
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %26 = load <4 x float>, ptr %25, align 4, !alias.scope !336, !noalias !344
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %28 = load <4 x float>, ptr %27, align 4, !alias.scope !336, !noalias !344
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %30 = load <4 x float>, ptr %29, align 4, !alias.scope !336, !noalias !344
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %32 = load <4 x float>, ptr %31, align 4, !alias.scope !336, !noalias !344
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %34 = load <4 x float>, ptr %33, align 4, !alias.scope !336, !noalias !344
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %36 = load <4 x float>, ptr %35, align 4, !alias.scope !336, !noalias !344
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %38 = load <4 x float>, ptr %37, align 4, !alias.scope !336, !noalias !344
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %40 = load <4 x float>, ptr %39, align 4, !alias.scope !336, !noalias !344
  br label %41

41:                                               ; preds = %4, %9
  %42 = phi <4 x float> [ %32, %9 ], [ zeroinitializer, %4 ]
  %43 = phi <4 x float> [ %30, %9 ], [ zeroinitializer, %4 ]
  %44 = phi <4 x float> [ %28, %9 ], [ zeroinitializer, %4 ]
  %45 = phi <4 x float> [ %26, %9 ], [ zeroinitializer, %4 ]
  %46 = phi <4 x float> [ %24, %9 ], [ zeroinitializer, %4 ]
  %47 = phi <4 x float> [ %22, %9 ], [ zeroinitializer, %4 ]
  %48 = phi <4 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %49 = phi <4 x float> [ %18, %9 ], [ zeroinitializer, %4 ]
  %50 = phi <4 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %51 = phi <4 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %52 = phi <4 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %53 = phi <4 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %54 = phi <4 x float> [ %34, %9 ], [ zeroinitializer, %4 ]
  %55 = phi <4 x float> [ %36, %9 ], [ zeroinitializer, %4 ]
  %56 = phi <4 x float> [ %38, %9 ], [ zeroinitializer, %4 ]
  %57 = phi <4 x float> [ %40, %9 ], [ zeroinitializer, %4 ]
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %59 = load i64, ptr %58, align 8, !tbaa !142, !noalias !343
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %93, label %61

61:                                               ; preds = %93, %41
  %62 = phi <4 x float> [ %42, %41 ], [ %142, %93 ]
  %63 = phi <4 x float> [ %43, %41 ], [ %141, %93 ]
  %64 = phi <4 x float> [ %44, %41 ], [ %139, %93 ]
  %65 = phi <4 x float> [ %45, %41 ], [ %138, %93 ]
  %66 = phi <4 x float> [ %46, %41 ], [ %136, %93 ]
  %67 = phi <4 x float> [ %47, %41 ], [ %135, %93 ]
  %68 = phi <4 x float> [ %48, %41 ], [ %133, %93 ]
  %69 = phi <4 x float> [ %49, %41 ], [ %132, %93 ]
  %70 = phi <4 x float> [ %50, %41 ], [ %130, %93 ]
  %71 = phi <4 x float> [ %51, %41 ], [ %129, %93 ]
  %72 = phi <4 x float> [ %52, %41 ], [ %127, %93 ]
  %73 = phi <4 x float> [ %54, %41 ], [ %144, %93 ]
  %74 = phi <4 x float> [ %55, %41 ], [ %145, %93 ]
  %75 = phi <4 x float> [ %56, %41 ], [ %147, %93 ]
  %76 = phi <4 x float> [ %57, %41 ], [ %148, %93 ]
  %77 = phi <4 x float> [ %53, %41 ], [ %126, %93 ]
  store <4 x float> %77, ptr %0, align 4, !alias.scope !336, !noalias !344
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %72, ptr %78, align 4, !alias.scope !336, !noalias !344
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %71, ptr %79, align 4, !alias.scope !336, !noalias !344
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %70, ptr %80, align 4, !alias.scope !336, !noalias !344
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> %69, ptr %81, align 4, !alias.scope !336, !noalias !344
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x float> %68, ptr %82, align 4, !alias.scope !336, !noalias !344
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x float> %67, ptr %83, align 4, !alias.scope !336, !noalias !344
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x float> %66, ptr %84, align 4, !alias.scope !336, !noalias !344
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <4 x float> %65, ptr %85, align 4, !alias.scope !336, !noalias !344
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <4 x float> %64, ptr %86, align 4, !alias.scope !336, !noalias !344
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <4 x float> %63, ptr %87, align 4, !alias.scope !336, !noalias !344
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <4 x float> %62, ptr %88, align 4, !alias.scope !336, !noalias !344
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <4 x float> %73, ptr %89, align 4, !alias.scope !336, !noalias !344
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x float> %74, ptr %90, align 4, !alias.scope !336, !noalias !344
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <4 x float> %75, ptr %91, align 4, !alias.scope !336, !noalias !344
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <4 x float> %76, ptr %92, align 4, !alias.scope !336, !noalias !344
  ret void

93:                                               ; preds = %41, %93
  %94 = phi i64 [ %149, %93 ], [ 0, %41 ]
  %95 = phi <4 x float> [ %148, %93 ], [ %57, %41 ]
  %96 = phi <4 x float> [ %147, %93 ], [ %56, %41 ]
  %97 = phi <4 x float> [ %145, %93 ], [ %55, %41 ]
  %98 = phi <4 x float> [ %144, %93 ], [ %54, %41 ]
  %99 = phi <4 x float> [ %142, %93 ], [ %42, %41 ]
  %100 = phi <4 x float> [ %141, %93 ], [ %43, %41 ]
  %101 = phi <4 x float> [ %139, %93 ], [ %44, %41 ]
  %102 = phi <4 x float> [ %138, %93 ], [ %45, %41 ]
  %103 = phi <4 x float> [ %136, %93 ], [ %46, %41 ]
  %104 = phi <4 x float> [ %135, %93 ], [ %47, %41 ]
  %105 = phi <4 x float> [ %133, %93 ], [ %48, %41 ]
  %106 = phi <4 x float> [ %132, %93 ], [ %49, %41 ]
  %107 = phi <4 x float> [ %130, %93 ], [ %50, %41 ]
  %108 = phi <4 x float> [ %129, %93 ], [ %51, %41 ]
  %109 = phi <4 x float> [ %127, %93 ], [ %52, %41 ]
  %110 = phi ptr [ %124, %93 ], [ %1, %41 ]
  %111 = phi ptr [ %123, %93 ], [ %2, %41 ]
  %112 = phi <4 x float> [ %126, %93 ], [ %53, %41 ]
  %113 = load <4 x i16>, ptr %111, align 2, !alias.scope !341, !noalias !345
  %114 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %113)
  %115 = getelementptr inbounds nuw i8, ptr %111, i64 8
  %116 = load <4 x i16>, ptr %115, align 2, !alias.scope !341, !noalias !345
  %117 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %116)
  %118 = load <4 x i16>, ptr %110, align 2, !alias.scope !339, !noalias !346
  %119 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %118)
  %120 = getelementptr inbounds nuw i8, ptr %110, i64 8
  %121 = load <4 x i16>, ptr %120, align 2, !alias.scope !339, !noalias !346
  %122 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %121)
  %123 = getelementptr inbounds nuw i8, ptr %111, i64 16
  %124 = getelementptr inbounds nuw i8, ptr %110, i64 16
  %125 = shufflevector <4 x float> %119, <4 x float> poison, <4 x i32> zeroinitializer
  %126 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %114, <4 x float> %125, <4 x float> %112)
  %127 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %117, <4 x float> %125, <4 x float> %109)
  %128 = shufflevector <4 x float> %119, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %129 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %114, <4 x float> %128, <4 x float> %108)
  %130 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %117, <4 x float> %128, <4 x float> %107)
  %131 = shufflevector <4 x float> %119, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %132 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %114, <4 x float> %131, <4 x float> %106)
  %133 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %117, <4 x float> %131, <4 x float> %105)
  %134 = shufflevector <4 x float> %119, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %135 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %114, <4 x float> %134, <4 x float> %104)
  %136 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %117, <4 x float> %134, <4 x float> %103)
  %137 = shufflevector <4 x float> %122, <4 x float> poison, <4 x i32> zeroinitializer
  %138 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %114, <4 x float> %137, <4 x float> %102)
  %139 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %117, <4 x float> %137, <4 x float> %101)
  %140 = shufflevector <4 x float> %122, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %141 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %114, <4 x float> %140, <4 x float> %100)
  %142 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %117, <4 x float> %140, <4 x float> %99)
  %143 = shufflevector <4 x float> %122, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %144 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %114, <4 x float> %143, <4 x float> %98)
  %145 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %117, <4 x float> %143, <4 x float> %97)
  %146 = shufflevector <4 x float> %122, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %147 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %114, <4 x float> %146, <4 x float> %96)
  %148 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %117, <4 x float> %146, <4 x float> %95)
  %149 = add nuw nsw i64 %94, 1
  %150 = icmp eq i64 %149, %59
  br i1 %150, label %61, label %93, !llvm.loop !313
}

; Function Attrs: alwaysinline nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f32_1x8x1_arm_64_fp16fml(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #15 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !354
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load <4 x float>, ptr %0, align 4, !alias.scope !347, !noalias !355
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <4 x float>, ptr %11, align 4, !alias.scope !347, !noalias !355
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi <4 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %15 = phi <4 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %17 = load i64, ptr %16, align 8, !tbaa !142, !noalias !354
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %23, %13
  %20 = phi <4 x float> [ %14, %13 ], [ %36, %23 ]
  %21 = phi <4 x float> [ %15, %13 ], [ %35, %23 ]
  store <4 x float> %21, ptr %0, align 4, !alias.scope !347, !noalias !355
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %20, ptr %22, align 4, !alias.scope !347, !noalias !355
  ret void

23:                                               ; preds = %13, %23
  %24 = phi i64 [ %37, %23 ], [ 0, %13 ]
  %25 = phi <4 x float> [ %36, %23 ], [ %14, %13 ]
  %26 = phi ptr [ %34, %23 ], [ %1, %13 ]
  %27 = phi ptr [ %30, %23 ], [ %2, %13 ]
  %28 = phi <4 x float> [ %35, %23 ], [ %15, %13 ]
  %29 = load <8 x half>, ptr %27, align 2, !alias.scope !352, !noalias !356
  %30 = getelementptr inbounds nuw i8, ptr %27, i64 16
  %31 = load half, ptr %26, align 2, !alias.scope !350, !noalias !357
  %32 = insertelement <8 x half> poison, half %31, i64 0
  %33 = shufflevector <8 x half> %32, <8 x half> poison, <8 x i32> zeroinitializer
  %34 = getelementptr inbounds nuw i8, ptr %26, i64 2
  %35 = tail call <4 x float> asm "fmlal $0.4s, $1.4h, $2.h[0]", "=w,w,x,0"(<8 x half> %29, <8 x half> %33, <4 x float> %28) #27, !srcloc !358
  %36 = tail call <4 x float> asm "fmlal2 $0.4s, $1.4h, $2.h[0]", "=w,w,x,0"(<8 x half> %29, <8 x half> %33, <4 x float> %25) #27, !srcloc !359
  %37 = add nuw nsw i64 %24, 1
  %38 = icmp eq i64 %37, %17
  br i1 %38, label %19, label %23, !llvm.loop !360
}

; Function Attrs: alwaysinline nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f32_2x8x1_arm_64_fp16fml(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #15 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !368
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load <4 x float>, ptr %0, align 4, !alias.scope !361, !noalias !369
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <4 x float>, ptr %11, align 4, !alias.scope !361, !noalias !369
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load <4 x float>, ptr %13, align 4, !alias.scope !361, !noalias !369
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %16 = load <4 x float>, ptr %15, align 4, !alias.scope !361, !noalias !369
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi <4 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %19 = phi <4 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %20 = phi <4 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %21 = phi <4 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %23 = load i64, ptr %22, align 8, !tbaa !142, !noalias !368
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %33, %17
  %26 = phi <4 x float> [ %18, %17 ], [ %53, %33 ]
  %27 = phi <4 x float> [ %19, %17 ], [ %52, %33 ]
  %28 = phi <4 x float> [ %20, %17 ], [ %51, %33 ]
  %29 = phi <4 x float> [ %21, %17 ], [ %50, %33 ]
  store <4 x float> %29, ptr %0, align 4, !alias.scope !361, !noalias !369
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %28, ptr %30, align 4, !alias.scope !361, !noalias !369
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %27, ptr %31, align 4, !alias.scope !361, !noalias !369
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %26, ptr %32, align 4, !alias.scope !361, !noalias !369
  ret void

33:                                               ; preds = %17, %33
  %34 = phi i64 [ %54, %33 ], [ 0, %17 ]
  %35 = phi <4 x float> [ %53, %33 ], [ %18, %17 ]
  %36 = phi <4 x float> [ %52, %33 ], [ %19, %17 ]
  %37 = phi <4 x float> [ %51, %33 ], [ %20, %17 ]
  %38 = phi ptr [ %49, %33 ], [ %1, %17 ]
  %39 = phi ptr [ %42, %33 ], [ %2, %17 ]
  %40 = phi <4 x float> [ %50, %33 ], [ %21, %17 ]
  %41 = load <8 x half>, ptr %39, align 2, !alias.scope !366, !noalias !370
  %42 = getelementptr inbounds nuw i8, ptr %39, i64 16
  %43 = load half, ptr %38, align 2, !alias.scope !364, !noalias !371
  %44 = insertelement <8 x half> poison, half %43, i64 0
  %45 = shufflevector <8 x half> %44, <8 x half> poison, <8 x i32> <i32 0, i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  %46 = getelementptr inbounds nuw i8, ptr %38, i64 2
  %47 = load half, ptr %46, align 2, !alias.scope !364, !noalias !371
  %48 = insertelement <8 x half> %45, half %47, i64 1
  %49 = getelementptr inbounds nuw i8, ptr %38, i64 4
  %50 = tail call <4 x float> asm "fmlal $0.4s, $1.4h, $2.h[0]", "=w,w,x,0"(<8 x half> %41, <8 x half> %48, <4 x float> %40) #27, !srcloc !358
  %51 = tail call <4 x float> asm "fmlal2 $0.4s, $1.4h, $2.h[0]", "=w,w,x,0"(<8 x half> %41, <8 x half> %48, <4 x float> %37) #27, !srcloc !359
  %52 = tail call <4 x float> asm "fmlal $0.4s, $1.4h, $2.h[1]", "=w,w,x,0"(<8 x half> %41, <8 x half> %48, <4 x float> %36) #27, !srcloc !372
  %53 = tail call <4 x float> asm "fmlal2 $0.4s, $1.4h, $2.h[1]", "=w,w,x,0"(<8 x half> %41, <8 x half> %48, <4 x float> %35) #27, !srcloc !373
  %54 = add nuw nsw i64 %34, 1
  %55 = icmp eq i64 %54, %23
  br i1 %55, label %25, label %33, !llvm.loop !360
}

; Function Attrs: alwaysinline nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f32_4x8x1_arm_64_fp16fml(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #15 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !381
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = load <4 x float>, ptr %0, align 4, !alias.scope !374, !noalias !382
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <4 x float>, ptr %11, align 4, !alias.scope !374, !noalias !382
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load <4 x float>, ptr %13, align 4, !alias.scope !374, !noalias !382
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %16 = load <4 x float>, ptr %15, align 4, !alias.scope !374, !noalias !382
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %18 = load <4 x float>, ptr %17, align 4, !alias.scope !374, !noalias !382
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %20 = load <4 x float>, ptr %19, align 4, !alias.scope !374, !noalias !382
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %22 = load <4 x float>, ptr %21, align 4, !alias.scope !374, !noalias !382
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load <4 x float>, ptr %23, align 4, !alias.scope !374, !noalias !382
  br label %25

25:                                               ; preds = %4, %9
  %26 = phi <4 x float> [ %24, %9 ], [ zeroinitializer, %4 ]
  %27 = phi <4 x float> [ %22, %9 ], [ zeroinitializer, %4 ]
  %28 = phi <4 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %29 = phi <4 x float> [ %18, %9 ], [ zeroinitializer, %4 ]
  %30 = phi <4 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %31 = phi <4 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %32 = phi <4 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %33 = phi <4 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %35 = load i64, ptr %34, align 8, !tbaa !142, !noalias !381
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %53, %25
  %38 = phi <4 x float> [ %26, %25 ], [ %77, %53 ]
  %39 = phi <4 x float> [ %27, %25 ], [ %76, %53 ]
  %40 = phi <4 x float> [ %28, %25 ], [ %75, %53 ]
  %41 = phi <4 x float> [ %29, %25 ], [ %74, %53 ]
  %42 = phi <4 x float> [ %30, %25 ], [ %73, %53 ]
  %43 = phi <4 x float> [ %31, %25 ], [ %72, %53 ]
  %44 = phi <4 x float> [ %32, %25 ], [ %71, %53 ]
  %45 = phi <4 x float> [ %33, %25 ], [ %70, %53 ]
  store <4 x float> %45, ptr %0, align 4, !alias.scope !374, !noalias !382
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %44, ptr %46, align 4, !alias.scope !374, !noalias !382
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %43, ptr %47, align 4, !alias.scope !374, !noalias !382
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %42, ptr %48, align 4, !alias.scope !374, !noalias !382
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> %41, ptr %49, align 4, !alias.scope !374, !noalias !382
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x float> %40, ptr %50, align 4, !alias.scope !374, !noalias !382
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x float> %39, ptr %51, align 4, !alias.scope !374, !noalias !382
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x float> %38, ptr %52, align 4, !alias.scope !374, !noalias !382
  ret void

53:                                               ; preds = %25, %53
  %54 = phi i64 [ %78, %53 ], [ 0, %25 ]
  %55 = phi <4 x float> [ %77, %53 ], [ %26, %25 ]
  %56 = phi <4 x float> [ %76, %53 ], [ %27, %25 ]
  %57 = phi <4 x float> [ %75, %53 ], [ %28, %25 ]
  %58 = phi <4 x float> [ %74, %53 ], [ %29, %25 ]
  %59 = phi <4 x float> [ %73, %53 ], [ %30, %25 ]
  %60 = phi <4 x float> [ %72, %53 ], [ %31, %25 ]
  %61 = phi <4 x float> [ %71, %53 ], [ %32, %25 ]
  %62 = phi ptr [ %69, %53 ], [ %1, %25 ]
  %63 = phi ptr [ %66, %53 ], [ %2, %25 ]
  %64 = phi <4 x float> [ %70, %53 ], [ %33, %25 ]
  %65 = load <8 x half>, ptr %63, align 2, !alias.scope !379, !noalias !383
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 16
  %67 = load <4 x half>, ptr %62, align 2, !alias.scope !377, !noalias !384
  %68 = shufflevector <4 x half> %67, <4 x half> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %69 = getelementptr inbounds nuw i8, ptr %62, i64 8
  %70 = tail call <4 x float> asm "fmlal $0.4s, $1.4h, $2.h[0]", "=w,w,x,0"(<8 x half> %65, <8 x half> %68, <4 x float> %64) #27, !srcloc !358
  %71 = tail call <4 x float> asm "fmlal2 $0.4s, $1.4h, $2.h[0]", "=w,w,x,0"(<8 x half> %65, <8 x half> %68, <4 x float> %61) #27, !srcloc !359
  %72 = tail call <4 x float> asm "fmlal $0.4s, $1.4h, $2.h[1]", "=w,w,x,0"(<8 x half> %65, <8 x half> %68, <4 x float> %60) #27, !srcloc !372
  %73 = tail call <4 x float> asm "fmlal2 $0.4s, $1.4h, $2.h[1]", "=w,w,x,0"(<8 x half> %65, <8 x half> %68, <4 x float> %59) #27, !srcloc !373
  %74 = tail call <4 x float> asm "fmlal $0.4s, $1.4h, $2.h[2]", "=w,w,x,0"(<8 x half> %65, <8 x half> %68, <4 x float> %58) #27, !srcloc !385
  %75 = tail call <4 x float> asm "fmlal2 $0.4s, $1.4h, $2.h[2]", "=w,w,x,0"(<8 x half> %65, <8 x half> %68, <4 x float> %57) #27, !srcloc !386
  %76 = tail call <4 x float> asm "fmlal $0.4s, $1.4h, $2.h[3]", "=w,w,x,0"(<8 x half> %65, <8 x half> %68, <4 x float> %56) #27, !srcloc !387
  %77 = tail call <4 x float> asm "fmlal2 $0.4s, $1.4h, $2.h[3]", "=w,w,x,0"(<8 x half> %65, <8 x half> %68, <4 x float> %55) #27, !srcloc !388
  %78 = add nuw nsw i64 %54, 1
  %79 = icmp eq i64 %78, %35
  br i1 %79, label %37, label %53, !llvm.loop !360
}

; Function Attrs: alwaysinline nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f32_8x8x1_arm_64_fp16fml(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #15 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !396
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %4
  %10 = load <4 x float>, ptr %0, align 4, !alias.scope !389, !noalias !397
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <4 x float>, ptr %11, align 4, !alias.scope !389, !noalias !397
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load <4 x float>, ptr %13, align 4, !alias.scope !389, !noalias !397
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %16 = load <4 x float>, ptr %15, align 4, !alias.scope !389, !noalias !397
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %18 = load <4 x float>, ptr %17, align 4, !alias.scope !389, !noalias !397
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %20 = load <4 x float>, ptr %19, align 4, !alias.scope !389, !noalias !397
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %22 = load <4 x float>, ptr %21, align 4, !alias.scope !389, !noalias !397
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load <4 x float>, ptr %23, align 4, !alias.scope !389, !noalias !397
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %26 = load <4 x float>, ptr %25, align 4, !alias.scope !389, !noalias !397
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %28 = load <4 x float>, ptr %27, align 4, !alias.scope !389, !noalias !397
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %30 = load <4 x float>, ptr %29, align 4, !alias.scope !389, !noalias !397
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %32 = load <4 x float>, ptr %31, align 4, !alias.scope !389, !noalias !397
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %34 = load <4 x float>, ptr %33, align 4, !alias.scope !389, !noalias !397
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %36 = load <4 x float>, ptr %35, align 4, !alias.scope !389, !noalias !397
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %38 = load <4 x float>, ptr %37, align 4, !alias.scope !389, !noalias !397
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %40 = load <4 x float>, ptr %39, align 4, !alias.scope !389, !noalias !397
  br label %41

41:                                               ; preds = %4, %9
  %42 = phi <4 x float> [ %40, %9 ], [ zeroinitializer, %4 ]
  %43 = phi <4 x float> [ %38, %9 ], [ zeroinitializer, %4 ]
  %44 = phi <4 x float> [ %36, %9 ], [ zeroinitializer, %4 ]
  %45 = phi <4 x float> [ %34, %9 ], [ zeroinitializer, %4 ]
  %46 = phi <4 x float> [ %32, %9 ], [ zeroinitializer, %4 ]
  %47 = phi <4 x float> [ %30, %9 ], [ zeroinitializer, %4 ]
  %48 = phi <4 x float> [ %28, %9 ], [ zeroinitializer, %4 ]
  %49 = phi <4 x float> [ %26, %9 ], [ zeroinitializer, %4 ]
  %50 = phi <4 x float> [ %24, %9 ], [ zeroinitializer, %4 ]
  %51 = phi <4 x float> [ %22, %9 ], [ zeroinitializer, %4 ]
  %52 = phi <4 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %53 = phi <4 x float> [ %18, %9 ], [ zeroinitializer, %4 ]
  %54 = phi <4 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %55 = phi <4 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %56 = phi <4 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %57 = phi <4 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %59 = load i64, ptr %58, align 8, !tbaa !142, !noalias !396
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %93, label %61

61:                                               ; preds = %93, %41
  %62 = phi <4 x float> [ %42, %41 ], [ %132, %93 ]
  %63 = phi <4 x float> [ %43, %41 ], [ %131, %93 ]
  %64 = phi <4 x float> [ %44, %41 ], [ %130, %93 ]
  %65 = phi <4 x float> [ %45, %41 ], [ %129, %93 ]
  %66 = phi <4 x float> [ %46, %41 ], [ %128, %93 ]
  %67 = phi <4 x float> [ %47, %41 ], [ %127, %93 ]
  %68 = phi <4 x float> [ %48, %41 ], [ %126, %93 ]
  %69 = phi <4 x float> [ %49, %41 ], [ %125, %93 ]
  %70 = phi <4 x float> [ %50, %41 ], [ %124, %93 ]
  %71 = phi <4 x float> [ %51, %41 ], [ %123, %93 ]
  %72 = phi <4 x float> [ %52, %41 ], [ %122, %93 ]
  %73 = phi <4 x float> [ %53, %41 ], [ %121, %93 ]
  %74 = phi <4 x float> [ %54, %41 ], [ %120, %93 ]
  %75 = phi <4 x float> [ %55, %41 ], [ %119, %93 ]
  %76 = phi <4 x float> [ %56, %41 ], [ %118, %93 ]
  %77 = phi <4 x float> [ %57, %41 ], [ %117, %93 ]
  store <4 x float> %77, ptr %0, align 4, !alias.scope !389, !noalias !397
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %76, ptr %78, align 4, !alias.scope !389, !noalias !397
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %75, ptr %79, align 4, !alias.scope !389, !noalias !397
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %74, ptr %80, align 4, !alias.scope !389, !noalias !397
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> %73, ptr %81, align 4, !alias.scope !389, !noalias !397
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x float> %72, ptr %82, align 4, !alias.scope !389, !noalias !397
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x float> %71, ptr %83, align 4, !alias.scope !389, !noalias !397
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x float> %70, ptr %84, align 4, !alias.scope !389, !noalias !397
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <4 x float> %69, ptr %85, align 4, !alias.scope !389, !noalias !397
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <4 x float> %68, ptr %86, align 4, !alias.scope !389, !noalias !397
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <4 x float> %67, ptr %87, align 4, !alias.scope !389, !noalias !397
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <4 x float> %66, ptr %88, align 4, !alias.scope !389, !noalias !397
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <4 x float> %65, ptr %89, align 4, !alias.scope !389, !noalias !397
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x float> %64, ptr %90, align 4, !alias.scope !389, !noalias !397
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <4 x float> %63, ptr %91, align 4, !alias.scope !389, !noalias !397
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <4 x float> %62, ptr %92, align 4, !alias.scope !389, !noalias !397
  ret void

93:                                               ; preds = %41, %93
  %94 = phi i64 [ %133, %93 ], [ 0, %41 ]
  %95 = phi <4 x float> [ %132, %93 ], [ %42, %41 ]
  %96 = phi <4 x float> [ %131, %93 ], [ %43, %41 ]
  %97 = phi <4 x float> [ %130, %93 ], [ %44, %41 ]
  %98 = phi <4 x float> [ %129, %93 ], [ %45, %41 ]
  %99 = phi <4 x float> [ %128, %93 ], [ %46, %41 ]
  %100 = phi <4 x float> [ %127, %93 ], [ %47, %41 ]
  %101 = phi <4 x float> [ %126, %93 ], [ %48, %41 ]
  %102 = phi <4 x float> [ %125, %93 ], [ %49, %41 ]
  %103 = phi <4 x float> [ %124, %93 ], [ %50, %41 ]
  %104 = phi <4 x float> [ %123, %93 ], [ %51, %41 ]
  %105 = phi <4 x float> [ %122, %93 ], [ %52, %41 ]
  %106 = phi <4 x float> [ %121, %93 ], [ %53, %41 ]
  %107 = phi <4 x float> [ %120, %93 ], [ %54, %41 ]
  %108 = phi <4 x float> [ %119, %93 ], [ %55, %41 ]
  %109 = phi <4 x float> [ %118, %93 ], [ %56, %41 ]
  %110 = phi ptr [ %116, %93 ], [ %1, %41 ]
  %111 = phi ptr [ %114, %93 ], [ %2, %41 ]
  %112 = phi <4 x float> [ %117, %93 ], [ %57, %41 ]
  %113 = load <8 x half>, ptr %111, align 2, !alias.scope !394, !noalias !398
  %114 = getelementptr inbounds nuw i8, ptr %111, i64 16
  %115 = load <8 x half>, ptr %110, align 2, !alias.scope !392, !noalias !399
  %116 = getelementptr inbounds nuw i8, ptr %110, i64 16
  %117 = tail call <4 x float> asm "fmlal $0.4s, $1.4h, $2.h[0]", "=w,w,x,0"(<8 x half> %113, <8 x half> %115, <4 x float> %112) #27, !srcloc !358
  %118 = tail call <4 x float> asm "fmlal2 $0.4s, $1.4h, $2.h[0]", "=w,w,x,0"(<8 x half> %113, <8 x half> %115, <4 x float> %109) #27, !srcloc !359
  %119 = tail call <4 x float> asm "fmlal $0.4s, $1.4h, $2.h[1]", "=w,w,x,0"(<8 x half> %113, <8 x half> %115, <4 x float> %108) #27, !srcloc !372
  %120 = tail call <4 x float> asm "fmlal2 $0.4s, $1.4h, $2.h[1]", "=w,w,x,0"(<8 x half> %113, <8 x half> %115, <4 x float> %107) #27, !srcloc !373
  %121 = tail call <4 x float> asm "fmlal $0.4s, $1.4h, $2.h[2]", "=w,w,x,0"(<8 x half> %113, <8 x half> %115, <4 x float> %106) #27, !srcloc !385
  %122 = tail call <4 x float> asm "fmlal2 $0.4s, $1.4h, $2.h[2]", "=w,w,x,0"(<8 x half> %113, <8 x half> %115, <4 x float> %105) #27, !srcloc !386
  %123 = tail call <4 x float> asm "fmlal $0.4s, $1.4h, $2.h[3]", "=w,w,x,0"(<8 x half> %113, <8 x half> %115, <4 x float> %104) #27, !srcloc !387
  %124 = tail call <4 x float> asm "fmlal2 $0.4s, $1.4h, $2.h[3]", "=w,w,x,0"(<8 x half> %113, <8 x half> %115, <4 x float> %103) #27, !srcloc !388
  %125 = tail call <4 x float> asm "fmlal $0.4s, $1.4h, $2.h[4]", "=w,w,x,0"(<8 x half> %113, <8 x half> %115, <4 x float> %102) #27, !srcloc !400
  %126 = tail call <4 x float> asm "fmlal2 $0.4s, $1.4h, $2.h[4]", "=w,w,x,0"(<8 x half> %113, <8 x half> %115, <4 x float> %101) #27, !srcloc !401
  %127 = tail call <4 x float> asm "fmlal $0.4s, $1.4h, $2.h[5]", "=w,w,x,0"(<8 x half> %113, <8 x half> %115, <4 x float> %100) #27, !srcloc !402
  %128 = tail call <4 x float> asm "fmlal2 $0.4s, $1.4h, $2.h[5]", "=w,w,x,0"(<8 x half> %113, <8 x half> %115, <4 x float> %99) #27, !srcloc !403
  %129 = tail call <4 x float> asm "fmlal $0.4s, $1.4h, $2.h[6]", "=w,w,x,0"(<8 x half> %113, <8 x half> %115, <4 x float> %98) #27, !srcloc !404
  %130 = tail call <4 x float> asm "fmlal2 $0.4s, $1.4h, $2.h[6]", "=w,w,x,0"(<8 x half> %113, <8 x half> %115, <4 x float> %97) #27, !srcloc !405
  %131 = tail call <4 x float> asm "fmlal $0.4s, $1.4h, $2.h[7]", "=w,w,x,0"(<8 x half> %113, <8 x half> %115, <4 x float> %96) #27, !srcloc !406
  %132 = tail call <4 x float> asm "fmlal2 $0.4s, $1.4h, $2.h[7]", "=w,w,x,0"(<8 x half> %113, <8 x half> %115, <4 x float> %95) #27, !srcloc !407
  %133 = add nuw nsw i64 %94, 1
  %134 = icmp eq i64 %133, %59
  br i1 %134, label %61, label %93, !llvm.loop !360
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f16_1x8x1_arm_64(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !415
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = load <4 x i16>, ptr %0, align 2, !alias.scope !408, !noalias !416
  %11 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %10)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = load <4 x i16>, ptr %12, align 2, !alias.scope !408, !noalias !416
  %14 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %13)
  br label %15

15:                                               ; preds = %4, %9
  %16 = phi <4 x float> [ %11, %9 ], [ zeroinitializer, %4 ]
  %17 = phi <4 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %19 = load i64, ptr %18, align 8, !tbaa !142, !noalias !415
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %27, %15
  %22 = phi <4 x float> [ %17, %15 ], [ %45, %27 ]
  %23 = phi <4 x float> [ %16, %15 ], [ %44, %27 ]
  %24 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %23)
  store <4 x i16> %24, ptr %0, align 2, !alias.scope !408, !noalias !416
  %25 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %22)
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i16> %25, ptr %26, align 2, !alias.scope !408, !noalias !416
  ret void

27:                                               ; preds = %15, %27
  %28 = phi i64 [ %46, %27 ], [ 0, %15 ]
  %29 = phi <4 x float> [ %45, %27 ], [ %17, %15 ]
  %30 = phi ptr [ %39, %27 ], [ %1, %15 ]
  %31 = phi ptr [ %38, %27 ], [ %2, %15 ]
  %32 = phi <4 x float> [ %44, %27 ], [ %16, %15 ]
  %33 = load <4 x i16>, ptr %31, align 2, !alias.scope !413, !noalias !417
  %34 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %33)
  %35 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %36 = load <4 x i16>, ptr %35, align 2, !alias.scope !413, !noalias !417
  %37 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %36)
  %38 = getelementptr inbounds nuw i8, ptr %31, i64 16
  %39 = getelementptr inbounds nuw i8, ptr %30, i64 2
  %40 = load half, ptr %30, align 2, !tbaa !310, !alias.scope !411, !noalias !418
  %41 = fpext half %40 to float
  %42 = insertelement <4 x float> poison, float %41, i64 0
  %43 = shufflevector <4 x float> %42, <4 x float> poison, <4 x i32> zeroinitializer
  %44 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %34, <4 x float> %43, <4 x float> %32)
  %45 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %37, <4 x float> %43, <4 x float> %29)
  %46 = add nuw nsw i64 %28, 1
  %47 = icmp eq i64 %46, %19
  br i1 %47, label %21, label %27, !llvm.loop !313
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f16_2x8x1_arm_64(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !426
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = load <4 x i16>, ptr %0, align 2, !alias.scope !419, !noalias !427
  %11 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %10)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = load <4 x i16>, ptr %12, align 2, !alias.scope !419, !noalias !427
  %14 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %13)
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load <4 x i16>, ptr %15, align 2, !alias.scope !419, !noalias !427
  %17 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %16)
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %19 = load <4 x i16>, ptr %18, align 2, !alias.scope !419, !noalias !427
  %20 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %19)
  br label %21

21:                                               ; preds = %4, %9
  %22 = phi <4 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %23 = phi <4 x float> [ %11, %9 ], [ zeroinitializer, %4 ]
  %24 = phi <4 x float> [ %17, %9 ], [ zeroinitializer, %4 ]
  %25 = phi <4 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %27 = load i64, ptr %26, align 8, !tbaa !142, !noalias !426
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %41, %21
  %30 = phi <4 x float> [ %22, %21 ], [ %66, %41 ]
  %31 = phi <4 x float> [ %24, %21 ], [ %68, %41 ]
  %32 = phi <4 x float> [ %25, %21 ], [ %69, %41 ]
  %33 = phi <4 x float> [ %23, %21 ], [ %65, %41 ]
  %34 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %33)
  store <4 x i16> %34, ptr %0, align 2, !alias.scope !419, !noalias !427
  %35 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %30)
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i16> %35, ptr %36, align 2, !alias.scope !419, !noalias !427
  %37 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %31)
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i16> %37, ptr %38, align 2, !alias.scope !419, !noalias !427
  %39 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %32)
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <4 x i16> %39, ptr %40, align 2, !alias.scope !419, !noalias !427
  ret void

41:                                               ; preds = %21, %41
  %42 = phi i64 [ %70, %41 ], [ 0, %21 ]
  %43 = phi <4 x float> [ %69, %41 ], [ %25, %21 ]
  %44 = phi <4 x float> [ %68, %41 ], [ %24, %21 ]
  %45 = phi <4 x float> [ %66, %41 ], [ %22, %21 ]
  %46 = phi ptr [ %61, %41 ], [ %1, %21 ]
  %47 = phi ptr [ %54, %41 ], [ %2, %21 ]
  %48 = phi <4 x float> [ %65, %41 ], [ %23, %21 ]
  %49 = load <4 x i16>, ptr %47, align 2, !alias.scope !424, !noalias !428
  %50 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %49)
  %51 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %52 = load <4 x i16>, ptr %51, align 2, !alias.scope !424, !noalias !428
  %53 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %52)
  %54 = getelementptr inbounds nuw i8, ptr %47, i64 16
  %55 = load half, ptr %46, align 2, !alias.scope !422, !noalias !429
  %56 = insertelement <4 x half> poison, half %55, i64 0
  %57 = getelementptr inbounds nuw i8, ptr %46, i64 2
  %58 = shufflevector <4 x half> %56, <4 x half> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0>
  %59 = load half, ptr %57, align 2, !alias.scope !422, !noalias !429
  %60 = insertelement <4 x half> %58, half %59, i64 1
  %61 = getelementptr inbounds nuw i8, ptr %46, i64 4
  %62 = bitcast <4 x half> %60 to <4 x i16>
  %63 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %62)
  %64 = shufflevector <4 x float> %63, <4 x float> poison, <4 x i32> zeroinitializer
  %65 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %50, <4 x float> %64, <4 x float> %48)
  %66 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %53, <4 x float> %64, <4 x float> %45)
  %67 = shufflevector <4 x float> %63, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %68 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %50, <4 x float> %67, <4 x float> %44)
  %69 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %53, <4 x float> %67, <4 x float> %43)
  %70 = add nuw nsw i64 %42, 1
  %71 = icmp eq i64 %70, %27
  br i1 %71, label %29, label %41, !llvm.loop !313
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f16_4x8x1_arm_64(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !437
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  %10 = load <4 x i16>, ptr %0, align 2, !alias.scope !430, !noalias !438
  %11 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %10)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = load <4 x i16>, ptr %12, align 2, !alias.scope !430, !noalias !438
  %14 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %13)
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load <4 x i16>, ptr %15, align 2, !alias.scope !430, !noalias !438
  %17 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %16)
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %19 = load <4 x i16>, ptr %18, align 2, !alias.scope !430, !noalias !438
  %20 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %19)
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %22 = load <4 x i16>, ptr %21, align 2, !alias.scope !430, !noalias !438
  %23 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %22)
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %25 = load <4 x i16>, ptr %24, align 2, !alias.scope !430, !noalias !438
  %26 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %25)
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %28 = load <4 x i16>, ptr %27, align 2, !alias.scope !430, !noalias !438
  %29 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %28)
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %31 = load <4 x i16>, ptr %30, align 2, !alias.scope !430, !noalias !438
  %32 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %31)
  br label %33

33:                                               ; preds = %4, %9
  %34 = phi <4 x float> [ %26, %9 ], [ zeroinitializer, %4 ]
  %35 = phi <4 x float> [ %23, %9 ], [ zeroinitializer, %4 ]
  %36 = phi <4 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %37 = phi <4 x float> [ %17, %9 ], [ zeroinitializer, %4 ]
  %38 = phi <4 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %39 = phi <4 x float> [ %11, %9 ], [ zeroinitializer, %4 ]
  %40 = phi <4 x float> [ %29, %9 ], [ zeroinitializer, %4 ]
  %41 = phi <4 x float> [ %32, %9 ], [ zeroinitializer, %4 ]
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %43 = load i64, ptr %42, align 8, !tbaa !142, !noalias !437
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %69, %33
  %46 = phi <4 x float> [ %34, %33 ], [ %98, %69 ]
  %47 = phi <4 x float> [ %35, %33 ], [ %97, %69 ]
  %48 = phi <4 x float> [ %36, %33 ], [ %95, %69 ]
  %49 = phi <4 x float> [ %37, %33 ], [ %94, %69 ]
  %50 = phi <4 x float> [ %38, %33 ], [ %92, %69 ]
  %51 = phi <4 x float> [ %40, %33 ], [ %100, %69 ]
  %52 = phi <4 x float> [ %41, %33 ], [ %101, %69 ]
  %53 = phi <4 x float> [ %39, %33 ], [ %91, %69 ]
  %54 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %53)
  store <4 x i16> %54, ptr %0, align 2, !alias.scope !430, !noalias !438
  %55 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %50)
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i16> %55, ptr %56, align 2, !alias.scope !430, !noalias !438
  %57 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %49)
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i16> %57, ptr %58, align 2, !alias.scope !430, !noalias !438
  %59 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %48)
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <4 x i16> %59, ptr %60, align 2, !alias.scope !430, !noalias !438
  %61 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %47)
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i16> %61, ptr %62, align 2, !alias.scope !430, !noalias !438
  %63 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %46)
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <4 x i16> %63, ptr %64, align 2, !alias.scope !430, !noalias !438
  %65 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %51)
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i16> %65, ptr %66, align 2, !alias.scope !430, !noalias !438
  %67 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %52)
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <4 x i16> %67, ptr %68, align 2, !alias.scope !430, !noalias !438
  ret void

69:                                               ; preds = %33, %69
  %70 = phi i64 [ %102, %69 ], [ 0, %33 ]
  %71 = phi <4 x float> [ %101, %69 ], [ %41, %33 ]
  %72 = phi <4 x float> [ %100, %69 ], [ %40, %33 ]
  %73 = phi <4 x float> [ %98, %69 ], [ %34, %33 ]
  %74 = phi <4 x float> [ %97, %69 ], [ %35, %33 ]
  %75 = phi <4 x float> [ %95, %69 ], [ %36, %33 ]
  %76 = phi <4 x float> [ %94, %69 ], [ %37, %33 ]
  %77 = phi <4 x float> [ %92, %69 ], [ %38, %33 ]
  %78 = phi ptr [ %89, %69 ], [ %1, %33 ]
  %79 = phi ptr [ %86, %69 ], [ %2, %33 ]
  %80 = phi <4 x float> [ %91, %69 ], [ %39, %33 ]
  %81 = load <4 x i16>, ptr %79, align 2, !alias.scope !435, !noalias !439
  %82 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %81)
  %83 = getelementptr inbounds nuw i8, ptr %79, i64 8
  %84 = load <4 x i16>, ptr %83, align 2, !alias.scope !435, !noalias !439
  %85 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %84)
  %86 = getelementptr inbounds nuw i8, ptr %79, i64 16
  %87 = load <4 x i16>, ptr %78, align 2, !alias.scope !433, !noalias !440
  %88 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %87)
  %89 = getelementptr inbounds nuw i8, ptr %78, i64 8
  %90 = shufflevector <4 x float> %88, <4 x float> poison, <4 x i32> zeroinitializer
  %91 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %82, <4 x float> %90, <4 x float> %80)
  %92 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %85, <4 x float> %90, <4 x float> %77)
  %93 = shufflevector <4 x float> %88, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %94 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %82, <4 x float> %93, <4 x float> %76)
  %95 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %85, <4 x float> %93, <4 x float> %75)
  %96 = shufflevector <4 x float> %88, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %97 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %82, <4 x float> %96, <4 x float> %74)
  %98 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %85, <4 x float> %96, <4 x float> %73)
  %99 = shufflevector <4 x float> %88, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %100 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %82, <4 x float> %99, <4 x float> %72)
  %101 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %85, <4 x float> %99, <4 x float> %71)
  %102 = add nuw nsw i64 %70, 1
  %103 = icmp eq i64 %102, %43
  br i1 %103, label %45, label %69, !llvm.loop !313
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f16_8x8x1_arm_64(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !448
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %57, label %9

9:                                                ; preds = %4
  %10 = load <4 x i16>, ptr %0, align 2, !alias.scope !441, !noalias !449
  %11 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %10)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = load <4 x i16>, ptr %12, align 2, !alias.scope !441, !noalias !449
  %14 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %13)
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load <4 x i16>, ptr %15, align 2, !alias.scope !441, !noalias !449
  %17 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %16)
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %19 = load <4 x i16>, ptr %18, align 2, !alias.scope !441, !noalias !449
  %20 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %19)
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %22 = load <4 x i16>, ptr %21, align 2, !alias.scope !441, !noalias !449
  %23 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %22)
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %25 = load <4 x i16>, ptr %24, align 2, !alias.scope !441, !noalias !449
  %26 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %25)
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %28 = load <4 x i16>, ptr %27, align 2, !alias.scope !441, !noalias !449
  %29 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %28)
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %31 = load <4 x i16>, ptr %30, align 2, !alias.scope !441, !noalias !449
  %32 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %31)
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %34 = load <4 x i16>, ptr %33, align 2, !alias.scope !441, !noalias !449
  %35 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %34)
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %37 = load <4 x i16>, ptr %36, align 2, !alias.scope !441, !noalias !449
  %38 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %37)
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %40 = load <4 x i16>, ptr %39, align 2, !alias.scope !441, !noalias !449
  %41 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %40)
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %43 = load <4 x i16>, ptr %42, align 2, !alias.scope !441, !noalias !449
  %44 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %43)
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %46 = load <4 x i16>, ptr %45, align 2, !alias.scope !441, !noalias !449
  %47 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %46)
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %49 = load <4 x i16>, ptr %48, align 2, !alias.scope !441, !noalias !449
  %50 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %49)
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %52 = load <4 x i16>, ptr %51, align 2, !alias.scope !441, !noalias !449
  %53 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %52)
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %55 = load <4 x i16>, ptr %54, align 2, !alias.scope !441, !noalias !449
  %56 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %55)
  br label %57

57:                                               ; preds = %4, %9
  %58 = phi <4 x float> [ %44, %9 ], [ zeroinitializer, %4 ]
  %59 = phi <4 x float> [ %41, %9 ], [ zeroinitializer, %4 ]
  %60 = phi <4 x float> [ %38, %9 ], [ zeroinitializer, %4 ]
  %61 = phi <4 x float> [ %35, %9 ], [ zeroinitializer, %4 ]
  %62 = phi <4 x float> [ %32, %9 ], [ zeroinitializer, %4 ]
  %63 = phi <4 x float> [ %29, %9 ], [ zeroinitializer, %4 ]
  %64 = phi <4 x float> [ %26, %9 ], [ zeroinitializer, %4 ]
  %65 = phi <4 x float> [ %23, %9 ], [ zeroinitializer, %4 ]
  %66 = phi <4 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %67 = phi <4 x float> [ %17, %9 ], [ zeroinitializer, %4 ]
  %68 = phi <4 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %69 = phi <4 x float> [ %11, %9 ], [ zeroinitializer, %4 ]
  %70 = phi <4 x float> [ %47, %9 ], [ zeroinitializer, %4 ]
  %71 = phi <4 x float> [ %50, %9 ], [ zeroinitializer, %4 ]
  %72 = phi <4 x float> [ %53, %9 ], [ zeroinitializer, %4 ]
  %73 = phi <4 x float> [ %56, %9 ], [ zeroinitializer, %4 ]
  %74 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %75 = load i64, ptr %74, align 8, !tbaa !142, !noalias !448
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %125, label %77

77:                                               ; preds = %125, %57
  %78 = phi <4 x float> [ %58, %57 ], [ %174, %125 ]
  %79 = phi <4 x float> [ %59, %57 ], [ %173, %125 ]
  %80 = phi <4 x float> [ %60, %57 ], [ %171, %125 ]
  %81 = phi <4 x float> [ %61, %57 ], [ %170, %125 ]
  %82 = phi <4 x float> [ %62, %57 ], [ %168, %125 ]
  %83 = phi <4 x float> [ %63, %57 ], [ %167, %125 ]
  %84 = phi <4 x float> [ %64, %57 ], [ %165, %125 ]
  %85 = phi <4 x float> [ %65, %57 ], [ %164, %125 ]
  %86 = phi <4 x float> [ %66, %57 ], [ %162, %125 ]
  %87 = phi <4 x float> [ %67, %57 ], [ %161, %125 ]
  %88 = phi <4 x float> [ %68, %57 ], [ %159, %125 ]
  %89 = phi <4 x float> [ %70, %57 ], [ %176, %125 ]
  %90 = phi <4 x float> [ %71, %57 ], [ %177, %125 ]
  %91 = phi <4 x float> [ %72, %57 ], [ %179, %125 ]
  %92 = phi <4 x float> [ %73, %57 ], [ %180, %125 ]
  %93 = phi <4 x float> [ %69, %57 ], [ %158, %125 ]
  %94 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %93)
  store <4 x i16> %94, ptr %0, align 2, !alias.scope !441, !noalias !449
  %95 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %88)
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i16> %95, ptr %96, align 2, !alias.scope !441, !noalias !449
  %97 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %87)
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i16> %97, ptr %98, align 2, !alias.scope !441, !noalias !449
  %99 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %86)
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <4 x i16> %99, ptr %100, align 2, !alias.scope !441, !noalias !449
  %101 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %85)
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i16> %101, ptr %102, align 2, !alias.scope !441, !noalias !449
  %103 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %84)
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <4 x i16> %103, ptr %104, align 2, !alias.scope !441, !noalias !449
  %105 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %83)
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i16> %105, ptr %106, align 2, !alias.scope !441, !noalias !449
  %107 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %82)
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <4 x i16> %107, ptr %108, align 2, !alias.scope !441, !noalias !449
  %109 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %81)
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i16> %109, ptr %110, align 2, !alias.scope !441, !noalias !449
  %111 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %80)
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <4 x i16> %111, ptr %112, align 2, !alias.scope !441, !noalias !449
  %113 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %79)
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i16> %113, ptr %114, align 2, !alias.scope !441, !noalias !449
  %115 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %78)
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store <4 x i16> %115, ptr %116, align 2, !alias.scope !441, !noalias !449
  %117 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %89)
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i16> %117, ptr %118, align 2, !alias.scope !441, !noalias !449
  %119 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %90)
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <4 x i16> %119, ptr %120, align 2, !alias.scope !441, !noalias !449
  %121 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %91)
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x i16> %121, ptr %122, align 2, !alias.scope !441, !noalias !449
  %123 = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %92)
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store <4 x i16> %123, ptr %124, align 2, !alias.scope !441, !noalias !449
  ret void

125:                                              ; preds = %57, %125
  %126 = phi i64 [ %181, %125 ], [ 0, %57 ]
  %127 = phi <4 x float> [ %180, %125 ], [ %73, %57 ]
  %128 = phi <4 x float> [ %179, %125 ], [ %72, %57 ]
  %129 = phi <4 x float> [ %177, %125 ], [ %71, %57 ]
  %130 = phi <4 x float> [ %176, %125 ], [ %70, %57 ]
  %131 = phi <4 x float> [ %174, %125 ], [ %58, %57 ]
  %132 = phi <4 x float> [ %173, %125 ], [ %59, %57 ]
  %133 = phi <4 x float> [ %171, %125 ], [ %60, %57 ]
  %134 = phi <4 x float> [ %170, %125 ], [ %61, %57 ]
  %135 = phi <4 x float> [ %168, %125 ], [ %62, %57 ]
  %136 = phi <4 x float> [ %167, %125 ], [ %63, %57 ]
  %137 = phi <4 x float> [ %165, %125 ], [ %64, %57 ]
  %138 = phi <4 x float> [ %164, %125 ], [ %65, %57 ]
  %139 = phi <4 x float> [ %162, %125 ], [ %66, %57 ]
  %140 = phi <4 x float> [ %161, %125 ], [ %67, %57 ]
  %141 = phi <4 x float> [ %159, %125 ], [ %68, %57 ]
  %142 = phi ptr [ %156, %125 ], [ %1, %57 ]
  %143 = phi ptr [ %155, %125 ], [ %2, %57 ]
  %144 = phi <4 x float> [ %158, %125 ], [ %69, %57 ]
  %145 = load <4 x i16>, ptr %143, align 2, !alias.scope !446, !noalias !450
  %146 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %145)
  %147 = getelementptr inbounds nuw i8, ptr %143, i64 8
  %148 = load <4 x i16>, ptr %147, align 2, !alias.scope !446, !noalias !450
  %149 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %148)
  %150 = load <4 x i16>, ptr %142, align 2, !alias.scope !444, !noalias !451
  %151 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %150)
  %152 = getelementptr inbounds nuw i8, ptr %142, i64 8
  %153 = load <4 x i16>, ptr %152, align 2, !alias.scope !444, !noalias !451
  %154 = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %153)
  %155 = getelementptr inbounds nuw i8, ptr %143, i64 16
  %156 = getelementptr inbounds nuw i8, ptr %142, i64 16
  %157 = shufflevector <4 x float> %151, <4 x float> poison, <4 x i32> zeroinitializer
  %158 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %146, <4 x float> %157, <4 x float> %144)
  %159 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %149, <4 x float> %157, <4 x float> %141)
  %160 = shufflevector <4 x float> %151, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %161 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %146, <4 x float> %160, <4 x float> %140)
  %162 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %149, <4 x float> %160, <4 x float> %139)
  %163 = shufflevector <4 x float> %151, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %164 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %146, <4 x float> %163, <4 x float> %138)
  %165 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %149, <4 x float> %163, <4 x float> %137)
  %166 = shufflevector <4 x float> %151, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %167 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %146, <4 x float> %166, <4 x float> %136)
  %168 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %149, <4 x float> %166, <4 x float> %135)
  %169 = shufflevector <4 x float> %154, <4 x float> poison, <4 x i32> zeroinitializer
  %170 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %146, <4 x float> %169, <4 x float> %134)
  %171 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %149, <4 x float> %169, <4 x float> %133)
  %172 = shufflevector <4 x float> %154, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %173 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %146, <4 x float> %172, <4 x float> %132)
  %174 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %149, <4 x float> %172, <4 x float> %131)
  %175 = shufflevector <4 x float> %154, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %176 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %146, <4 x float> %175, <4 x float> %130)
  %177 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %149, <4 x float> %175, <4 x float> %129)
  %178 = shufflevector <4 x float> %154, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %179 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %146, <4 x float> %178, <4 x float> %128)
  %180 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %149, <4 x float> %178, <4 x float> %127)
  %181 = add nuw nsw i64 %126, 1
  %182 = icmp eq i64 %181, %75
  br i1 %182, label %77, label %125, !llvm.loop !313
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f16_1x8x1_arm_64_fullfp16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #16 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !459
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load <8 x half>, ptr %0, align 2, !alias.scope !452, !noalias !460
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi <8 x half> [ %10, %9 ], [ zeroinitializer, %4 ]
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %14 = load i64, ptr %13, align 8, !tbaa !142, !noalias !459
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %11, %16
  %17 = phi <8 x half> [ %27, %16 ], [ %12, %11 ]
  %18 = phi i64 [ %28, %16 ], [ 0, %11 ]
  %19 = phi ptr [ %23, %16 ], [ %1, %11 ]
  %20 = phi ptr [ %22, %16 ], [ %2, %11 ]
  %21 = load <8 x half>, ptr %20, align 2, !alias.scope !457, !noalias !461
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %23 = getelementptr inbounds nuw i8, ptr %19, i64 2
  %24 = load half, ptr %19, align 2, !tbaa !310, !alias.scope !455, !noalias !462
  %25 = insertelement <8 x half> poison, half %24, i64 0
  %26 = shufflevector <8 x half> %25, <8 x half> poison, <8 x i32> zeroinitializer
  %27 = tail call <8 x half> @llvm.fma.v8f16(<8 x half> %21, <8 x half> %26, <8 x half> %17)
  %28 = add nuw nsw i64 %18, 1
  %29 = icmp eq i64 %28, %14
  br i1 %29, label %30, label %16, !llvm.loop !463

30:                                               ; preds = %16, %11
  %31 = phi <8 x half> [ %12, %11 ], [ %27, %16 ]
  store <8 x half> %31, ptr %0, align 2, !alias.scope !452, !noalias !460
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f16_2x8x1_arm_64_fullfp16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #16 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !471
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load <8 x half>, ptr %0, align 2, !alias.scope !464, !noalias !472
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <8 x half>, ptr %11, align 2, !alias.scope !464, !noalias !472
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi <8 x half> [ %12, %9 ], [ zeroinitializer, %4 ]
  %15 = phi <8 x half> [ %10, %9 ], [ zeroinitializer, %4 ]
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %17 = load i64, ptr %16, align 8, !tbaa !142, !noalias !471
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %23, %13
  %20 = phi <8 x half> [ %14, %13 ], [ %39, %23 ]
  %21 = phi <8 x half> [ %15, %13 ], [ %34, %23 ]
  store <8 x half> %21, ptr %0, align 2, !alias.scope !464, !noalias !472
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x half> %20, ptr %22, align 2, !alias.scope !464, !noalias !472
  ret void

23:                                               ; preds = %13, %23
  %24 = phi <8 x half> [ %39, %23 ], [ %14, %13 ]
  %25 = phi <8 x half> [ %34, %23 ], [ %15, %13 ]
  %26 = phi i64 [ %41, %23 ], [ 0, %13 ]
  %27 = phi ptr [ %35, %23 ], [ %1, %13 ]
  %28 = phi ptr [ %40, %23 ], [ %2, %13 ]
  %29 = load <8 x half>, ptr %28, align 2, !alias.scope !469, !noalias !473
  %30 = getelementptr inbounds nuw i8, ptr %27, i64 2
  %31 = load half, ptr %27, align 2, !tbaa !310, !alias.scope !467, !noalias !474
  %32 = insertelement <8 x half> poison, half %31, i64 0
  %33 = shufflevector <8 x half> %32, <8 x half> poison, <8 x i32> zeroinitializer
  %34 = tail call <8 x half> @llvm.fma.v8f16(<8 x half> %29, <8 x half> %33, <8 x half> %25)
  %35 = getelementptr inbounds nuw i8, ptr %27, i64 4
  %36 = load half, ptr %30, align 2, !tbaa !310, !alias.scope !467, !noalias !474
  %37 = insertelement <8 x half> poison, half %36, i64 0
  %38 = shufflevector <8 x half> %37, <8 x half> poison, <8 x i32> zeroinitializer
  %39 = tail call <8 x half> @llvm.fma.v8f16(<8 x half> %29, <8 x half> %38, <8 x half> %24)
  %40 = getelementptr inbounds nuw i8, ptr %28, i64 16
  %41 = add nuw nsw i64 %26, 1
  %42 = icmp eq i64 %41, %17
  br i1 %42, label %19, label %23, !llvm.loop !463
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f16_4x8x1_arm_64_fullfp16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #16 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !482
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load <8 x half>, ptr %0, align 2, !alias.scope !475, !noalias !483
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <8 x half>, ptr %11, align 2, !alias.scope !475, !noalias !483
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load <8 x half>, ptr %13, align 2, !alias.scope !475, !noalias !483
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %16 = load <8 x half>, ptr %15, align 2, !alias.scope !475, !noalias !483
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi <8 x half> [ %16, %9 ], [ zeroinitializer, %4 ]
  %19 = phi <8 x half> [ %14, %9 ], [ zeroinitializer, %4 ]
  %20 = phi <8 x half> [ %12, %9 ], [ zeroinitializer, %4 ]
  %21 = phi <8 x half> [ %10, %9 ], [ zeroinitializer, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %23 = load i64, ptr %22, align 8, !tbaa !142, !noalias !482
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %33, %17
  %26 = phi <8 x half> [ %18, %17 ], [ %52, %33 ]
  %27 = phi <8 x half> [ %19, %17 ], [ %50, %33 ]
  %28 = phi <8 x half> [ %20, %17 ], [ %48, %33 ]
  %29 = phi <8 x half> [ %21, %17 ], [ %46, %33 ]
  store <8 x half> %29, ptr %0, align 2, !alias.scope !475, !noalias !483
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x half> %28, ptr %30, align 2, !alias.scope !475, !noalias !483
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x half> %27, ptr %31, align 2, !alias.scope !475, !noalias !483
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x half> %26, ptr %32, align 2, !alias.scope !475, !noalias !483
  ret void

33:                                               ; preds = %17, %33
  %34 = phi i64 [ %53, %33 ], [ 0, %17 ]
  %35 = phi <8 x half> [ %52, %33 ], [ %18, %17 ]
  %36 = phi <8 x half> [ %50, %33 ], [ %19, %17 ]
  %37 = phi <8 x half> [ %48, %33 ], [ %20, %17 ]
  %38 = phi ptr [ %44, %33 ], [ %1, %17 ]
  %39 = phi ptr [ %42, %33 ], [ %2, %17 ]
  %40 = phi <8 x half> [ %46, %33 ], [ %21, %17 ]
  %41 = load <8 x half>, ptr %39, align 2, !alias.scope !480, !noalias !484
  %42 = getelementptr inbounds nuw i8, ptr %39, i64 16
  %43 = load <4 x half>, ptr %38, align 2, !alias.scope !478, !noalias !485
  %44 = getelementptr inbounds nuw i8, ptr %38, i64 8
  %45 = shufflevector <4 x half> %43, <4 x half> poison, <8 x i32> zeroinitializer
  %46 = tail call <8 x half> @llvm.fma.v8f16(<8 x half> %41, <8 x half> %45, <8 x half> %40)
  %47 = shufflevector <4 x half> %43, <4 x half> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %48 = tail call <8 x half> @llvm.fma.v8f16(<8 x half> %41, <8 x half> %47, <8 x half> %37)
  %49 = shufflevector <4 x half> %43, <4 x half> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %50 = tail call <8 x half> @llvm.fma.v8f16(<8 x half> %41, <8 x half> %49, <8 x half> %36)
  %51 = shufflevector <4 x half> %43, <4 x half> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %52 = tail call <8 x half> @llvm.fma.v8f16(<8 x half> %41, <8 x half> %51, <8 x half> %35)
  %53 = add nuw nsw i64 %34, 1
  %54 = icmp eq i64 %53, %23
  br i1 %54, label %25, label %33, !llvm.loop !463
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f16_8x8x1_arm_64_fullfp16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #16 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !493
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = load <8 x half>, ptr %0, align 2, !alias.scope !486, !noalias !494
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <8 x half>, ptr %11, align 2, !alias.scope !486, !noalias !494
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load <8 x half>, ptr %13, align 2, !alias.scope !486, !noalias !494
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %16 = load <8 x half>, ptr %15, align 2, !alias.scope !486, !noalias !494
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %18 = load <8 x half>, ptr %17, align 2, !alias.scope !486, !noalias !494
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %20 = load <8 x half>, ptr %19, align 2, !alias.scope !486, !noalias !494
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %22 = load <8 x half>, ptr %21, align 2, !alias.scope !486, !noalias !494
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load <8 x half>, ptr %23, align 2, !alias.scope !486, !noalias !494
  br label %25

25:                                               ; preds = %4, %9
  %26 = phi <8 x half> [ %24, %9 ], [ zeroinitializer, %4 ]
  %27 = phi <8 x half> [ %22, %9 ], [ zeroinitializer, %4 ]
  %28 = phi <8 x half> [ %20, %9 ], [ zeroinitializer, %4 ]
  %29 = phi <8 x half> [ %18, %9 ], [ zeroinitializer, %4 ]
  %30 = phi <8 x half> [ %16, %9 ], [ zeroinitializer, %4 ]
  %31 = phi <8 x half> [ %14, %9 ], [ zeroinitializer, %4 ]
  %32 = phi <8 x half> [ %12, %9 ], [ zeroinitializer, %4 ]
  %33 = phi <8 x half> [ %10, %9 ], [ zeroinitializer, %4 ]
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %35 = load i64, ptr %34, align 8, !tbaa !142, !noalias !493
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %53, %25
  %38 = phi <8 x half> [ %26, %25 ], [ %85, %53 ]
  %39 = phi <8 x half> [ %27, %25 ], [ %83, %53 ]
  %40 = phi <8 x half> [ %28, %25 ], [ %81, %53 ]
  %41 = phi <8 x half> [ %29, %25 ], [ %79, %53 ]
  %42 = phi <8 x half> [ %30, %25 ], [ %75, %53 ]
  %43 = phi <8 x half> [ %31, %25 ], [ %73, %53 ]
  %44 = phi <8 x half> [ %32, %25 ], [ %71, %53 ]
  %45 = phi <8 x half> [ %33, %25 ], [ %69, %53 ]
  store <8 x half> %45, ptr %0, align 2, !alias.scope !486, !noalias !494
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x half> %44, ptr %46, align 2, !alias.scope !486, !noalias !494
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x half> %43, ptr %47, align 2, !alias.scope !486, !noalias !494
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x half> %42, ptr %48, align 2, !alias.scope !486, !noalias !494
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x half> %41, ptr %49, align 2, !alias.scope !486, !noalias !494
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <8 x half> %40, ptr %50, align 2, !alias.scope !486, !noalias !494
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x half> %39, ptr %51, align 2, !alias.scope !486, !noalias !494
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <8 x half> %38, ptr %52, align 2, !alias.scope !486, !noalias !494
  ret void

53:                                               ; preds = %25, %53
  %54 = phi <8 x half> [ %85, %53 ], [ %26, %25 ]
  %55 = phi <8 x half> [ %83, %53 ], [ %27, %25 ]
  %56 = phi <8 x half> [ %81, %53 ], [ %28, %25 ]
  %57 = phi <8 x half> [ %79, %53 ], [ %29, %25 ]
  %58 = phi <8 x half> [ %75, %53 ], [ %30, %25 ]
  %59 = phi <8 x half> [ %73, %53 ], [ %31, %25 ]
  %60 = phi <8 x half> [ %71, %53 ], [ %32, %25 ]
  %61 = phi <8 x half> [ %69, %53 ], [ %33, %25 ]
  %62 = phi i64 [ %87, %53 ], [ 0, %25 ]
  %63 = phi ptr [ %77, %53 ], [ %1, %25 ]
  %64 = phi ptr [ %86, %53 ], [ %2, %25 ]
  %65 = load <8 x half>, ptr %64, align 2, !alias.scope !491, !noalias !495
  %66 = load <4 x half>, ptr %63, align 2, !alias.scope !489, !noalias !496
  %67 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %68 = shufflevector <4 x half> %66, <4 x half> poison, <8 x i32> zeroinitializer
  %69 = tail call <8 x half> @llvm.fma.v8f16(<8 x half> %65, <8 x half> %68, <8 x half> %61)
  %70 = shufflevector <4 x half> %66, <4 x half> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %71 = tail call <8 x half> @llvm.fma.v8f16(<8 x half> %65, <8 x half> %70, <8 x half> %60)
  %72 = shufflevector <4 x half> %66, <4 x half> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %73 = tail call <8 x half> @llvm.fma.v8f16(<8 x half> %65, <8 x half> %72, <8 x half> %59)
  %74 = shufflevector <4 x half> %66, <4 x half> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %75 = tail call <8 x half> @llvm.fma.v8f16(<8 x half> %65, <8 x half> %74, <8 x half> %58)
  %76 = load <4 x half>, ptr %67, align 2, !alias.scope !489, !noalias !496
  %77 = getelementptr inbounds nuw i8, ptr %63, i64 16
  %78 = shufflevector <4 x half> %76, <4 x half> poison, <8 x i32> zeroinitializer
  %79 = tail call <8 x half> @llvm.fma.v8f16(<8 x half> %65, <8 x half> %78, <8 x half> %57)
  %80 = shufflevector <4 x half> %76, <4 x half> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %81 = tail call <8 x half> @llvm.fma.v8f16(<8 x half> %65, <8 x half> %80, <8 x half> %56)
  %82 = shufflevector <4 x half> %76, <4 x half> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %83 = tail call <8 x half> @llvm.fma.v8f16(<8 x half> %65, <8 x half> %82, <8 x half> %55)
  %84 = shufflevector <4 x half> %76, <4 x half> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %85 = tail call <8 x half> @llvm.fma.v8f16(<8 x half> %65, <8 x half> %84, <8 x half> %54)
  %86 = getelementptr inbounds nuw i8, ptr %64, i64 16
  %87 = add nuw nsw i64 %62, 1
  %88 = icmp eq i64 %87, %35
  br i1 %88, label %37, label %53, !llvm.loop !463
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16f32_1x8x4_arm_64_bf16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !504
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load <2 x i64>, ptr %0, align 4, !alias.scope !497, !noalias !505
  %11 = insertelement <2 x i64> %10, i64 0, i64 1
  %12 = shufflevector <2 x i64> %10, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 1, i32 3>
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %14 = load <2 x i64>, ptr %13, align 4, !alias.scope !497, !noalias !505
  %15 = insertelement <2 x i64> %14, i64 0, i64 1
  %16 = shufflevector <2 x i64> %14, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 1, i32 3>
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi <2 x i64> [ %11, %9 ], [ zeroinitializer, %4 ]
  %19 = phi <2 x i64> [ %12, %9 ], [ zeroinitializer, %4 ]
  %20 = phi <2 x i64> [ %15, %9 ], [ zeroinitializer, %4 ]
  %21 = phi <2 x i64> [ %16, %9 ], [ zeroinitializer, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %23 = load i64, ptr %22, align 8, !tbaa !142, !noalias !504
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %17
  %26 = bitcast <2 x i64> %18 to <4 x float>
  %27 = bitcast <2 x i64> %19 to <4 x float>
  %28 = bitcast <2 x i64> %20 to <4 x float>
  %29 = bitcast <2 x i64> %21 to <4 x float>
  br label %35

30:                                               ; preds = %35
  %31 = bitcast <4 x float> %55 to <2 x i64>
  %32 = bitcast <4 x float> %54 to <2 x i64>
  %33 = bitcast <4 x float> %53 to <2 x i64>
  %34 = bitcast <4 x float> %52 to <2 x i64>
  br label %60

35:                                               ; preds = %25, %35
  %36 = phi <4 x float> [ %26, %25 ], [ %52, %35 ]
  %37 = phi <4 x float> [ %27, %25 ], [ %53, %35 ]
  %38 = phi <4 x float> [ %28, %25 ], [ %54, %35 ]
  %39 = phi <4 x float> [ %29, %25 ], [ %55, %35 ]
  %40 = phi i64 [ 0, %25 ], [ %58, %35 ]
  %41 = phi ptr [ %1, %25 ], [ %57, %35 ]
  %42 = phi ptr [ %2, %25 ], [ %56, %35 ]
  %43 = load <8 x bfloat>, ptr %42, align 2, !alias.scope !502, !noalias !506
  %44 = getelementptr inbounds nuw i8, ptr %42, i64 16
  %45 = load <8 x bfloat>, ptr %44, align 2, !alias.scope !502, !noalias !506
  %46 = getelementptr inbounds nuw i8, ptr %42, i64 32
  %47 = load <8 x bfloat>, ptr %46, align 2, !alias.scope !502, !noalias !506
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 48
  %49 = load <8 x bfloat>, ptr %48, align 2, !alias.scope !502, !noalias !506
  %50 = load <4 x bfloat>, ptr %41, align 2, !alias.scope !500, !noalias !507
  %51 = shufflevector <4 x bfloat> %50, <4 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %52 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %36, <8 x bfloat> %51, <8 x bfloat> %43)
  %53 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %37, <8 x bfloat> %51, <8 x bfloat> %45)
  %54 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %38, <8 x bfloat> %51, <8 x bfloat> %47)
  %55 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %39, <8 x bfloat> %51, <8 x bfloat> %49)
  %56 = getelementptr inbounds nuw i8, ptr %42, i64 64
  %57 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %58 = add nuw nsw i64 %40, 1
  %59 = icmp eq i64 %58, %23
  br i1 %59, label %30, label %35, !llvm.loop !508

60:                                               ; preds = %17, %30
  %61 = phi <2 x i64> [ %34, %30 ], [ %18, %17 ]
  %62 = phi <2 x i64> [ %33, %30 ], [ %19, %17 ]
  %63 = phi <2 x i64> [ %32, %30 ], [ %20, %17 ]
  %64 = phi <2 x i64> [ %31, %30 ], [ %21, %17 ]
  %65 = shufflevector <2 x i64> %61, <2 x i64> %62, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %65, ptr %0, align 4, !alias.scope !497, !noalias !505
  %66 = shufflevector <2 x i64> %63, <2 x i64> %64, <2 x i32> <i32 0, i32 2>
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %66, ptr %67, align 4, !alias.scope !497, !noalias !505
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16f32_2x8x4_arm_64_bf16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !516
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i64 32
  %11 = load <2 x i64>, ptr %0, align 4, !alias.scope !509, !noalias !517
  %12 = load <2 x i64>, ptr %10, align 4, !alias.scope !509, !noalias !517
  %13 = shufflevector <2 x i64> %11, <2 x i64> %12, <2 x i32> <i32 0, i32 2>
  %14 = shufflevector <2 x i64> %11, <2 x i64> %12, <2 x i32> <i32 1, i32 3>
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load <2 x i64>, ptr %15, align 4, !alias.scope !509, !noalias !517
  %17 = getelementptr i8, ptr %0, i64 48
  %18 = load <2 x i64>, ptr %17, align 4, !alias.scope !509, !noalias !517
  %19 = shufflevector <2 x i64> %16, <2 x i64> %18, <2 x i32> <i32 0, i32 2>
  %20 = shufflevector <2 x i64> %16, <2 x i64> %18, <2 x i32> <i32 1, i32 3>
  br label %21

21:                                               ; preds = %4, %9
  %22 = phi <2 x i64> [ %13, %9 ], [ zeroinitializer, %4 ]
  %23 = phi <2 x i64> [ %14, %9 ], [ zeroinitializer, %4 ]
  %24 = phi <2 x i64> [ %19, %9 ], [ zeroinitializer, %4 ]
  %25 = phi <2 x i64> [ %20, %9 ], [ zeroinitializer, %4 ]
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %27 = load i64, ptr %26, align 8, !tbaa !142, !noalias !516
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %21
  %30 = bitcast <2 x i64> %22 to <4 x float>
  %31 = bitcast <2 x i64> %23 to <4 x float>
  %32 = bitcast <2 x i64> %24 to <4 x float>
  %33 = bitcast <2 x i64> %25 to <4 x float>
  br label %39

34:                                               ; preds = %39
  %35 = bitcast <4 x float> %58 to <2 x i64>
  %36 = bitcast <4 x float> %57 to <2 x i64>
  %37 = bitcast <4 x float> %56 to <2 x i64>
  %38 = bitcast <4 x float> %55 to <2 x i64>
  br label %63

39:                                               ; preds = %29, %39
  %40 = phi <4 x float> [ %30, %29 ], [ %55, %39 ]
  %41 = phi <4 x float> [ %31, %29 ], [ %56, %39 ]
  %42 = phi <4 x float> [ %32, %29 ], [ %57, %39 ]
  %43 = phi <4 x float> [ %33, %29 ], [ %58, %39 ]
  %44 = phi i64 [ 0, %29 ], [ %61, %39 ]
  %45 = phi ptr [ %1, %29 ], [ %60, %39 ]
  %46 = phi ptr [ %2, %29 ], [ %59, %39 ]
  %47 = load <8 x bfloat>, ptr %46, align 2, !alias.scope !514, !noalias !518
  %48 = getelementptr inbounds nuw i8, ptr %46, i64 16
  %49 = load <8 x bfloat>, ptr %48, align 2, !alias.scope !514, !noalias !518
  %50 = getelementptr inbounds nuw i8, ptr %46, i64 32
  %51 = load <8 x bfloat>, ptr %50, align 2, !alias.scope !514, !noalias !518
  %52 = getelementptr inbounds nuw i8, ptr %46, i64 48
  %53 = load <8 x bfloat>, ptr %52, align 2, !alias.scope !514, !noalias !518
  %54 = load <8 x bfloat>, ptr %45, align 2, !alias.scope !512, !noalias !519
  %55 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %40, <8 x bfloat> %54, <8 x bfloat> %47)
  %56 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %41, <8 x bfloat> %54, <8 x bfloat> %49)
  %57 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %42, <8 x bfloat> %54, <8 x bfloat> %51)
  %58 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %43, <8 x bfloat> %54, <8 x bfloat> %53)
  %59 = getelementptr inbounds nuw i8, ptr %46, i64 64
  %60 = getelementptr inbounds nuw i8, ptr %45, i64 16
  %61 = add nuw nsw i64 %44, 1
  %62 = icmp eq i64 %61, %27
  br i1 %62, label %34, label %39, !llvm.loop !508

63:                                               ; preds = %21, %34
  %64 = phi <2 x i64> [ %38, %34 ], [ %22, %21 ]
  %65 = phi <2 x i64> [ %37, %34 ], [ %23, %21 ]
  %66 = phi <2 x i64> [ %36, %34 ], [ %24, %21 ]
  %67 = phi <2 x i64> [ %35, %34 ], [ %25, %21 ]
  %68 = getelementptr i8, ptr %0, i64 32
  %69 = shufflevector <2 x i64> %64, <2 x i64> %65, <2 x i32> <i32 0, i32 2>
  %70 = shufflevector <2 x i64> %64, <2 x i64> %65, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %69, ptr %0, align 4, !alias.scope !509, !noalias !517
  store <2 x i64> %70, ptr %68, align 4, !alias.scope !509, !noalias !517
  %71 = shufflevector <2 x i64> %66, <2 x i64> %67, <2 x i32> <i32 0, i32 2>
  %72 = shufflevector <2 x i64> %66, <2 x i64> %67, <2 x i32> <i32 1, i32 3>
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %71, ptr %73, align 4, !alias.scope !509, !noalias !517
  %74 = getelementptr i8, ptr %0, i64 48
  store <2 x i64> %72, ptr %74, align 4, !alias.scope !509, !noalias !517
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16f32_4x8x4_arm_64_bf16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !527
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i64 32
  %11 = load <2 x i64>, ptr %0, align 4, !alias.scope !520, !noalias !528
  %12 = load <2 x i64>, ptr %10, align 4, !alias.scope !520, !noalias !528
  %13 = shufflevector <2 x i64> %11, <2 x i64> %12, <2 x i32> <i32 0, i32 2>
  %14 = shufflevector <2 x i64> %11, <2 x i64> %12, <2 x i32> <i32 1, i32 3>
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load <2 x i64>, ptr %15, align 4, !alias.scope !520, !noalias !528
  %17 = getelementptr i8, ptr %0, i64 48
  %18 = load <2 x i64>, ptr %17, align 4, !alias.scope !520, !noalias !528
  %19 = shufflevector <2 x i64> %16, <2 x i64> %18, <2 x i32> <i32 0, i32 2>
  %20 = shufflevector <2 x i64> %16, <2 x i64> %18, <2 x i32> <i32 1, i32 3>
  %21 = getelementptr i8, ptr %0, i64 64
  %22 = getelementptr i8, ptr %0, i64 96
  %23 = load <2 x i64>, ptr %21, align 4, !alias.scope !520, !noalias !528
  %24 = load <2 x i64>, ptr %22, align 4, !alias.scope !520, !noalias !528
  %25 = shufflevector <2 x i64> %23, <2 x i64> %24, <2 x i32> <i32 0, i32 2>
  %26 = shufflevector <2 x i64> %23, <2 x i64> %24, <2 x i32> <i32 1, i32 3>
  %27 = getelementptr i8, ptr %0, i64 80
  %28 = load <2 x i64>, ptr %27, align 4, !alias.scope !520, !noalias !528
  %29 = getelementptr i8, ptr %0, i64 112
  %30 = load <2 x i64>, ptr %29, align 4, !alias.scope !520, !noalias !528
  %31 = shufflevector <2 x i64> %28, <2 x i64> %30, <2 x i32> <i32 0, i32 2>
  %32 = shufflevector <2 x i64> %28, <2 x i64> %30, <2 x i32> <i32 1, i32 3>
  br label %33

33:                                               ; preds = %4, %9
  %34 = phi <2 x i64> [ %13, %9 ], [ zeroinitializer, %4 ]
  %35 = phi <2 x i64> [ %14, %9 ], [ zeroinitializer, %4 ]
  %36 = phi <2 x i64> [ %19, %9 ], [ zeroinitializer, %4 ]
  %37 = phi <2 x i64> [ %20, %9 ], [ zeroinitializer, %4 ]
  %38 = phi <2 x i64> [ %25, %9 ], [ zeroinitializer, %4 ]
  %39 = phi <2 x i64> [ %26, %9 ], [ zeroinitializer, %4 ]
  %40 = phi <2 x i64> [ %31, %9 ], [ zeroinitializer, %4 ]
  %41 = phi <2 x i64> [ %32, %9 ], [ zeroinitializer, %4 ]
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %43 = load i64, ptr %42, align 8, !tbaa !142, !noalias !527
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %33
  %46 = bitcast <2 x i64> %34 to <4 x float>
  %47 = bitcast <2 x i64> %35 to <4 x float>
  %48 = bitcast <2 x i64> %36 to <4 x float>
  %49 = bitcast <2 x i64> %37 to <4 x float>
  %50 = bitcast <2 x i64> %38 to <4 x float>
  %51 = bitcast <2 x i64> %39 to <4 x float>
  %52 = bitcast <2 x i64> %40 to <4 x float>
  %53 = bitcast <2 x i64> %41 to <4 x float>
  br label %87

54:                                               ; preds = %87
  %55 = bitcast <4 x float> %116 to <2 x i64>
  %56 = bitcast <4 x float> %115 to <2 x i64>
  %57 = bitcast <4 x float> %114 to <2 x i64>
  %58 = bitcast <4 x float> %113 to <2 x i64>
  %59 = bitcast <4 x float> %112 to <2 x i64>
  %60 = bitcast <4 x float> %111 to <2 x i64>
  %61 = bitcast <4 x float> %110 to <2 x i64>
  %62 = bitcast <4 x float> %109 to <2 x i64>
  br label %63

63:                                               ; preds = %54, %33
  %64 = phi <2 x i64> [ %62, %54 ], [ %34, %33 ]
  %65 = phi <2 x i64> [ %61, %54 ], [ %35, %33 ]
  %66 = phi <2 x i64> [ %60, %54 ], [ %36, %33 ]
  %67 = phi <2 x i64> [ %59, %54 ], [ %37, %33 ]
  %68 = phi <2 x i64> [ %58, %54 ], [ %38, %33 ]
  %69 = phi <2 x i64> [ %57, %54 ], [ %39, %33 ]
  %70 = phi <2 x i64> [ %56, %54 ], [ %40, %33 ]
  %71 = phi <2 x i64> [ %55, %54 ], [ %41, %33 ]
  %72 = getelementptr i8, ptr %0, i64 32
  %73 = shufflevector <2 x i64> %64, <2 x i64> %65, <2 x i32> <i32 0, i32 2>
  %74 = shufflevector <2 x i64> %64, <2 x i64> %65, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %73, ptr %0, align 4, !alias.scope !520, !noalias !528
  store <2 x i64> %74, ptr %72, align 4, !alias.scope !520, !noalias !528
  %75 = shufflevector <2 x i64> %66, <2 x i64> %67, <2 x i32> <i32 0, i32 2>
  %76 = shufflevector <2 x i64> %66, <2 x i64> %67, <2 x i32> <i32 1, i32 3>
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %75, ptr %77, align 4, !alias.scope !520, !noalias !528
  %78 = getelementptr i8, ptr %0, i64 48
  store <2 x i64> %76, ptr %78, align 4, !alias.scope !520, !noalias !528
  %79 = getelementptr i8, ptr %0, i64 64
  %80 = getelementptr i8, ptr %0, i64 96
  %81 = shufflevector <2 x i64> %68, <2 x i64> %69, <2 x i32> <i32 0, i32 2>
  %82 = shufflevector <2 x i64> %68, <2 x i64> %69, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %81, ptr %79, align 4, !alias.scope !520, !noalias !528
  store <2 x i64> %82, ptr %80, align 4, !alias.scope !520, !noalias !528
  %83 = shufflevector <2 x i64> %70, <2 x i64> %71, <2 x i32> <i32 0, i32 2>
  %84 = shufflevector <2 x i64> %70, <2 x i64> %71, <2 x i32> <i32 1, i32 3>
  %85 = getelementptr i8, ptr %0, i64 80
  store <2 x i64> %83, ptr %85, align 4, !alias.scope !520, !noalias !528
  %86 = getelementptr i8, ptr %0, i64 112
  store <2 x i64> %84, ptr %86, align 4, !alias.scope !520, !noalias !528
  ret void

87:                                               ; preds = %45, %87
  %88 = phi <4 x float> [ %46, %45 ], [ %109, %87 ]
  %89 = phi <4 x float> [ %47, %45 ], [ %110, %87 ]
  %90 = phi <4 x float> [ %48, %45 ], [ %111, %87 ]
  %91 = phi <4 x float> [ %49, %45 ], [ %112, %87 ]
  %92 = phi <4 x float> [ %50, %45 ], [ %113, %87 ]
  %93 = phi <4 x float> [ %51, %45 ], [ %114, %87 ]
  %94 = phi <4 x float> [ %52, %45 ], [ %115, %87 ]
  %95 = phi <4 x float> [ %53, %45 ], [ %116, %87 ]
  %96 = phi i64 [ 0, %45 ], [ %119, %87 ]
  %97 = phi ptr [ %1, %45 ], [ %117, %87 ]
  %98 = phi ptr [ %2, %45 ], [ %118, %87 ]
  %99 = load <8 x bfloat>, ptr %98, align 2, !alias.scope !525, !noalias !529
  %100 = getelementptr inbounds nuw i8, ptr %98, i64 16
  %101 = load <8 x bfloat>, ptr %100, align 2, !alias.scope !525, !noalias !529
  %102 = getelementptr inbounds nuw i8, ptr %98, i64 32
  %103 = load <8 x bfloat>, ptr %102, align 2, !alias.scope !525, !noalias !529
  %104 = getelementptr inbounds nuw i8, ptr %98, i64 48
  %105 = load <8 x bfloat>, ptr %104, align 2, !alias.scope !525, !noalias !529
  %106 = load <8 x bfloat>, ptr %97, align 2, !alias.scope !523, !noalias !530
  %107 = getelementptr inbounds nuw i8, ptr %97, i64 16
  %108 = load <8 x bfloat>, ptr %107, align 2, !alias.scope !523, !noalias !530
  %109 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %88, <8 x bfloat> %106, <8 x bfloat> %99)
  %110 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %89, <8 x bfloat> %106, <8 x bfloat> %101)
  %111 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %90, <8 x bfloat> %106, <8 x bfloat> %103)
  %112 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %91, <8 x bfloat> %106, <8 x bfloat> %105)
  %113 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %92, <8 x bfloat> %108, <8 x bfloat> %99)
  %114 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %93, <8 x bfloat> %108, <8 x bfloat> %101)
  %115 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %94, <8 x bfloat> %108, <8 x bfloat> %103)
  %116 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %95, <8 x bfloat> %108, <8 x bfloat> %105)
  %117 = getelementptr inbounds nuw i8, ptr %97, i64 32
  %118 = getelementptr inbounds nuw i8, ptr %98, i64 64
  %119 = add nuw nsw i64 %96, 1
  %120 = icmp eq i64 %119, %43
  br i1 %120, label %54, label %87, !llvm.loop !508
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16f32_8x8x4_arm_64_bf16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !538
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %57, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i64 32
  %11 = load <2 x i64>, ptr %0, align 4, !alias.scope !531, !noalias !539
  %12 = load <2 x i64>, ptr %10, align 4, !alias.scope !531, !noalias !539
  %13 = shufflevector <2 x i64> %11, <2 x i64> %12, <2 x i32> <i32 0, i32 2>
  %14 = shufflevector <2 x i64> %11, <2 x i64> %12, <2 x i32> <i32 1, i32 3>
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load <2 x i64>, ptr %15, align 4, !alias.scope !531, !noalias !539
  %17 = getelementptr i8, ptr %0, i64 48
  %18 = load <2 x i64>, ptr %17, align 4, !alias.scope !531, !noalias !539
  %19 = shufflevector <2 x i64> %16, <2 x i64> %18, <2 x i32> <i32 0, i32 2>
  %20 = shufflevector <2 x i64> %16, <2 x i64> %18, <2 x i32> <i32 1, i32 3>
  %21 = getelementptr i8, ptr %0, i64 64
  %22 = getelementptr i8, ptr %0, i64 96
  %23 = load <2 x i64>, ptr %21, align 4, !alias.scope !531, !noalias !539
  %24 = load <2 x i64>, ptr %22, align 4, !alias.scope !531, !noalias !539
  %25 = shufflevector <2 x i64> %23, <2 x i64> %24, <2 x i32> <i32 0, i32 2>
  %26 = shufflevector <2 x i64> %23, <2 x i64> %24, <2 x i32> <i32 1, i32 3>
  %27 = getelementptr i8, ptr %0, i64 80
  %28 = load <2 x i64>, ptr %27, align 4, !alias.scope !531, !noalias !539
  %29 = getelementptr i8, ptr %0, i64 112
  %30 = load <2 x i64>, ptr %29, align 4, !alias.scope !531, !noalias !539
  %31 = shufflevector <2 x i64> %28, <2 x i64> %30, <2 x i32> <i32 0, i32 2>
  %32 = shufflevector <2 x i64> %28, <2 x i64> %30, <2 x i32> <i32 1, i32 3>
  %33 = getelementptr i8, ptr %0, i64 128
  %34 = getelementptr i8, ptr %0, i64 160
  %35 = load <2 x i64>, ptr %33, align 4, !alias.scope !531, !noalias !539
  %36 = load <2 x i64>, ptr %34, align 4, !alias.scope !531, !noalias !539
  %37 = shufflevector <2 x i64> %35, <2 x i64> %36, <2 x i32> <i32 0, i32 2>
  %38 = shufflevector <2 x i64> %35, <2 x i64> %36, <2 x i32> <i32 1, i32 3>
  %39 = getelementptr i8, ptr %0, i64 144
  %40 = load <2 x i64>, ptr %39, align 4, !alias.scope !531, !noalias !539
  %41 = getelementptr i8, ptr %0, i64 176
  %42 = load <2 x i64>, ptr %41, align 4, !alias.scope !531, !noalias !539
  %43 = shufflevector <2 x i64> %40, <2 x i64> %42, <2 x i32> <i32 0, i32 2>
  %44 = shufflevector <2 x i64> %40, <2 x i64> %42, <2 x i32> <i32 1, i32 3>
  %45 = getelementptr i8, ptr %0, i64 192
  %46 = getelementptr i8, ptr %0, i64 224
  %47 = load <2 x i64>, ptr %45, align 4, !alias.scope !531, !noalias !539
  %48 = load <2 x i64>, ptr %46, align 4, !alias.scope !531, !noalias !539
  %49 = shufflevector <2 x i64> %47, <2 x i64> %48, <2 x i32> <i32 0, i32 2>
  %50 = shufflevector <2 x i64> %47, <2 x i64> %48, <2 x i32> <i32 1, i32 3>
  %51 = getelementptr i8, ptr %0, i64 208
  %52 = load <2 x i64>, ptr %51, align 4, !alias.scope !531, !noalias !539
  %53 = getelementptr i8, ptr %0, i64 240
  %54 = load <2 x i64>, ptr %53, align 4, !alias.scope !531, !noalias !539
  %55 = shufflevector <2 x i64> %52, <2 x i64> %54, <2 x i32> <i32 0, i32 2>
  %56 = shufflevector <2 x i64> %52, <2 x i64> %54, <2 x i32> <i32 1, i32 3>
  br label %57

57:                                               ; preds = %4, %9
  %58 = phi <2 x i64> [ %32, %9 ], [ zeroinitializer, %4 ]
  %59 = phi <2 x i64> [ %31, %9 ], [ zeroinitializer, %4 ]
  %60 = phi <2 x i64> [ %26, %9 ], [ zeroinitializer, %4 ]
  %61 = phi <2 x i64> [ %25, %9 ], [ zeroinitializer, %4 ]
  %62 = phi <2 x i64> [ %20, %9 ], [ zeroinitializer, %4 ]
  %63 = phi <2 x i64> [ %19, %9 ], [ zeroinitializer, %4 ]
  %64 = phi <2 x i64> [ %14, %9 ], [ zeroinitializer, %4 ]
  %65 = phi <2 x i64> [ %13, %9 ], [ zeroinitializer, %4 ]
  %66 = phi <2 x i64> [ %37, %9 ], [ zeroinitializer, %4 ]
  %67 = phi <2 x i64> [ %38, %9 ], [ zeroinitializer, %4 ]
  %68 = phi <2 x i64> [ %43, %9 ], [ zeroinitializer, %4 ]
  %69 = phi <2 x i64> [ %44, %9 ], [ zeroinitializer, %4 ]
  %70 = phi <2 x i64> [ %49, %9 ], [ zeroinitializer, %4 ]
  %71 = phi <2 x i64> [ %50, %9 ], [ zeroinitializer, %4 ]
  %72 = phi <2 x i64> [ %55, %9 ], [ zeroinitializer, %4 ]
  %73 = phi <2 x i64> [ %56, %9 ], [ zeroinitializer, %4 ]
  %74 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %75 = load i64, ptr %74, align 8, !tbaa !142, !noalias !538
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %111

77:                                               ; preds = %57
  %78 = bitcast <2 x i64> %65 to <4 x float>
  %79 = bitcast <2 x i64> %64 to <4 x float>
  %80 = bitcast <2 x i64> %63 to <4 x float>
  %81 = bitcast <2 x i64> %62 to <4 x float>
  %82 = bitcast <2 x i64> %61 to <4 x float>
  %83 = bitcast <2 x i64> %60 to <4 x float>
  %84 = bitcast <2 x i64> %59 to <4 x float>
  %85 = bitcast <2 x i64> %58 to <4 x float>
  %86 = bitcast <2 x i64> %66 to <4 x float>
  %87 = bitcast <2 x i64> %67 to <4 x float>
  %88 = bitcast <2 x i64> %68 to <4 x float>
  %89 = bitcast <2 x i64> %69 to <4 x float>
  %90 = bitcast <2 x i64> %70 to <4 x float>
  %91 = bitcast <2 x i64> %71 to <4 x float>
  %92 = bitcast <2 x i64> %72 to <4 x float>
  %93 = bitcast <2 x i64> %73 to <4 x float>
  br label %159

94:                                               ; preds = %159
  %95 = bitcast <4 x float> %208 to <2 x i64>
  %96 = bitcast <4 x float> %207 to <2 x i64>
  %97 = bitcast <4 x float> %206 to <2 x i64>
  %98 = bitcast <4 x float> %205 to <2 x i64>
  %99 = bitcast <4 x float> %204 to <2 x i64>
  %100 = bitcast <4 x float> %203 to <2 x i64>
  %101 = bitcast <4 x float> %202 to <2 x i64>
  %102 = bitcast <4 x float> %201 to <2 x i64>
  %103 = bitcast <4 x float> %200 to <2 x i64>
  %104 = bitcast <4 x float> %199 to <2 x i64>
  %105 = bitcast <4 x float> %198 to <2 x i64>
  %106 = bitcast <4 x float> %197 to <2 x i64>
  %107 = bitcast <4 x float> %196 to <2 x i64>
  %108 = bitcast <4 x float> %195 to <2 x i64>
  %109 = bitcast <4 x float> %194 to <2 x i64>
  %110 = bitcast <4 x float> %193 to <2 x i64>
  br label %111

111:                                              ; preds = %94, %57
  %112 = phi <2 x i64> [ %103, %94 ], [ %58, %57 ]
  %113 = phi <2 x i64> [ %104, %94 ], [ %59, %57 ]
  %114 = phi <2 x i64> [ %105, %94 ], [ %60, %57 ]
  %115 = phi <2 x i64> [ %106, %94 ], [ %61, %57 ]
  %116 = phi <2 x i64> [ %107, %94 ], [ %62, %57 ]
  %117 = phi <2 x i64> [ %108, %94 ], [ %63, %57 ]
  %118 = phi <2 x i64> [ %109, %94 ], [ %64, %57 ]
  %119 = phi <2 x i64> [ %110, %94 ], [ %65, %57 ]
  %120 = phi <2 x i64> [ %102, %94 ], [ %66, %57 ]
  %121 = phi <2 x i64> [ %101, %94 ], [ %67, %57 ]
  %122 = phi <2 x i64> [ %100, %94 ], [ %68, %57 ]
  %123 = phi <2 x i64> [ %99, %94 ], [ %69, %57 ]
  %124 = phi <2 x i64> [ %98, %94 ], [ %70, %57 ]
  %125 = phi <2 x i64> [ %97, %94 ], [ %71, %57 ]
  %126 = phi <2 x i64> [ %96, %94 ], [ %72, %57 ]
  %127 = phi <2 x i64> [ %95, %94 ], [ %73, %57 ]
  %128 = getelementptr i8, ptr %0, i64 32
  %129 = shufflevector <2 x i64> %119, <2 x i64> %118, <2 x i32> <i32 0, i32 2>
  %130 = shufflevector <2 x i64> %119, <2 x i64> %118, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %129, ptr %0, align 4, !alias.scope !531, !noalias !539
  store <2 x i64> %130, ptr %128, align 4, !alias.scope !531, !noalias !539
  %131 = shufflevector <2 x i64> %117, <2 x i64> %116, <2 x i32> <i32 0, i32 2>
  %132 = shufflevector <2 x i64> %117, <2 x i64> %116, <2 x i32> <i32 1, i32 3>
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %131, ptr %133, align 4, !alias.scope !531, !noalias !539
  %134 = getelementptr i8, ptr %0, i64 48
  store <2 x i64> %132, ptr %134, align 4, !alias.scope !531, !noalias !539
  %135 = getelementptr i8, ptr %0, i64 64
  %136 = getelementptr i8, ptr %0, i64 96
  %137 = shufflevector <2 x i64> %115, <2 x i64> %114, <2 x i32> <i32 0, i32 2>
  %138 = shufflevector <2 x i64> %115, <2 x i64> %114, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %137, ptr %135, align 4, !alias.scope !531, !noalias !539
  store <2 x i64> %138, ptr %136, align 4, !alias.scope !531, !noalias !539
  %139 = shufflevector <2 x i64> %113, <2 x i64> %112, <2 x i32> <i32 0, i32 2>
  %140 = shufflevector <2 x i64> %113, <2 x i64> %112, <2 x i32> <i32 1, i32 3>
  %141 = getelementptr i8, ptr %0, i64 80
  store <2 x i64> %139, ptr %141, align 4, !alias.scope !531, !noalias !539
  %142 = getelementptr i8, ptr %0, i64 112
  store <2 x i64> %140, ptr %142, align 4, !alias.scope !531, !noalias !539
  %143 = getelementptr i8, ptr %0, i64 128
  %144 = getelementptr i8, ptr %0, i64 160
  %145 = shufflevector <2 x i64> %120, <2 x i64> %121, <2 x i32> <i32 0, i32 2>
  %146 = shufflevector <2 x i64> %120, <2 x i64> %121, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %145, ptr %143, align 4, !alias.scope !531, !noalias !539
  store <2 x i64> %146, ptr %144, align 4, !alias.scope !531, !noalias !539
  %147 = shufflevector <2 x i64> %122, <2 x i64> %123, <2 x i32> <i32 0, i32 2>
  %148 = shufflevector <2 x i64> %122, <2 x i64> %123, <2 x i32> <i32 1, i32 3>
  %149 = getelementptr i8, ptr %0, i64 144
  store <2 x i64> %147, ptr %149, align 4, !alias.scope !531, !noalias !539
  %150 = getelementptr i8, ptr %0, i64 176
  store <2 x i64> %148, ptr %150, align 4, !alias.scope !531, !noalias !539
  %151 = getelementptr i8, ptr %0, i64 192
  %152 = getelementptr i8, ptr %0, i64 224
  %153 = shufflevector <2 x i64> %124, <2 x i64> %125, <2 x i32> <i32 0, i32 2>
  %154 = shufflevector <2 x i64> %124, <2 x i64> %125, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %153, ptr %151, align 4, !alias.scope !531, !noalias !539
  store <2 x i64> %154, ptr %152, align 4, !alias.scope !531, !noalias !539
  %155 = shufflevector <2 x i64> %126, <2 x i64> %127, <2 x i32> <i32 0, i32 2>
  %156 = shufflevector <2 x i64> %126, <2 x i64> %127, <2 x i32> <i32 1, i32 3>
  %157 = getelementptr i8, ptr %0, i64 208
  store <2 x i64> %155, ptr %157, align 4, !alias.scope !531, !noalias !539
  %158 = getelementptr i8, ptr %0, i64 240
  store <2 x i64> %156, ptr %158, align 4, !alias.scope !531, !noalias !539
  ret void

159:                                              ; preds = %77, %159
  %160 = phi <4 x float> [ %85, %77 ], [ %200, %159 ]
  %161 = phi <4 x float> [ %84, %77 ], [ %199, %159 ]
  %162 = phi <4 x float> [ %83, %77 ], [ %198, %159 ]
  %163 = phi <4 x float> [ %82, %77 ], [ %197, %159 ]
  %164 = phi <4 x float> [ %81, %77 ], [ %196, %159 ]
  %165 = phi <4 x float> [ %80, %77 ], [ %195, %159 ]
  %166 = phi <4 x float> [ %79, %77 ], [ %194, %159 ]
  %167 = phi <4 x float> [ %78, %77 ], [ %193, %159 ]
  %168 = phi <4 x float> [ %86, %77 ], [ %201, %159 ]
  %169 = phi <4 x float> [ %87, %77 ], [ %202, %159 ]
  %170 = phi <4 x float> [ %88, %77 ], [ %203, %159 ]
  %171 = phi <4 x float> [ %89, %77 ], [ %204, %159 ]
  %172 = phi <4 x float> [ %90, %77 ], [ %205, %159 ]
  %173 = phi <4 x float> [ %91, %77 ], [ %206, %159 ]
  %174 = phi <4 x float> [ %92, %77 ], [ %207, %159 ]
  %175 = phi <4 x float> [ %93, %77 ], [ %208, %159 ]
  %176 = phi i64 [ 0, %77 ], [ %211, %159 ]
  %177 = phi ptr [ %1, %77 ], [ %209, %159 ]
  %178 = phi ptr [ %2, %77 ], [ %210, %159 ]
  %179 = load <8 x bfloat>, ptr %178, align 2, !alias.scope !536, !noalias !540
  %180 = getelementptr inbounds nuw i8, ptr %178, i64 16
  %181 = load <8 x bfloat>, ptr %180, align 2, !alias.scope !536, !noalias !540
  %182 = getelementptr inbounds nuw i8, ptr %178, i64 32
  %183 = load <8 x bfloat>, ptr %182, align 2, !alias.scope !536, !noalias !540
  %184 = getelementptr inbounds nuw i8, ptr %178, i64 48
  %185 = load <8 x bfloat>, ptr %184, align 2, !alias.scope !536, !noalias !540
  %186 = load <8 x bfloat>, ptr %177, align 2, !alias.scope !534, !noalias !541
  %187 = getelementptr inbounds nuw i8, ptr %177, i64 16
  %188 = load <8 x bfloat>, ptr %187, align 2, !alias.scope !534, !noalias !541
  %189 = getelementptr inbounds nuw i8, ptr %177, i64 32
  %190 = load <8 x bfloat>, ptr %189, align 2, !alias.scope !534, !noalias !541
  %191 = getelementptr inbounds nuw i8, ptr %177, i64 48
  %192 = load <8 x bfloat>, ptr %191, align 2, !alias.scope !534, !noalias !541
  %193 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %167, <8 x bfloat> %186, <8 x bfloat> %179)
  %194 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %166, <8 x bfloat> %186, <8 x bfloat> %181)
  %195 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %165, <8 x bfloat> %186, <8 x bfloat> %183)
  %196 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %164, <8 x bfloat> %186, <8 x bfloat> %185)
  %197 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %163, <8 x bfloat> %188, <8 x bfloat> %179)
  %198 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %162, <8 x bfloat> %188, <8 x bfloat> %181)
  %199 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %161, <8 x bfloat> %188, <8 x bfloat> %183)
  %200 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %160, <8 x bfloat> %188, <8 x bfloat> %185)
  %201 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %168, <8 x bfloat> %190, <8 x bfloat> %179)
  %202 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %169, <8 x bfloat> %190, <8 x bfloat> %181)
  %203 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %170, <8 x bfloat> %190, <8 x bfloat> %183)
  %204 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %171, <8 x bfloat> %190, <8 x bfloat> %185)
  %205 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %172, <8 x bfloat> %192, <8 x bfloat> %179)
  %206 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %173, <8 x bfloat> %192, <8 x bfloat> %181)
  %207 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %174, <8 x bfloat> %192, <8 x bfloat> %183)
  %208 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %175, <8 x bfloat> %192, <8 x bfloat> %185)
  %209 = getelementptr inbounds nuw i8, ptr %177, i64 64
  %210 = getelementptr inbounds nuw i8, ptr %178, i64 64
  %211 = add nuw nsw i64 %176, 1
  %212 = icmp eq i64 %211, %75
  br i1 %212, label %94, label %159, !llvm.loop !508
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16bf16_1x8x4_arm_64_bf16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !549
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %4
  %10 = load <4 x i16>, ptr %0, align 2, !alias.scope !542, !noalias !550
  %11 = zext <4 x i16> %10 to <4 x i32>
  %12 = shl nuw <4 x i32> %11, splat (i32 16)
  %13 = bitcast <4 x i32> %12 to <2 x i64>
  %14 = insertelement <2 x i64> %13, i64 0, i64 1
  %15 = shufflevector <2 x i64> %13, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 1, i32 3>
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %17 = load <4 x i16>, ptr %16, align 2, !alias.scope !542, !noalias !550
  %18 = zext <4 x i16> %17 to <4 x i32>
  %19 = shl nuw <4 x i32> %18, splat (i32 16)
  %20 = bitcast <4 x i32> %19 to <2 x i64>
  %21 = insertelement <2 x i64> %20, i64 0, i64 1
  %22 = shufflevector <2 x i64> %20, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 1, i32 3>
  br label %23

23:                                               ; preds = %4, %9
  %24 = phi <2 x i64> [ %14, %9 ], [ zeroinitializer, %4 ]
  %25 = phi <2 x i64> [ %15, %9 ], [ zeroinitializer, %4 ]
  %26 = phi <2 x i64> [ %21, %9 ], [ zeroinitializer, %4 ]
  %27 = phi <2 x i64> [ %22, %9 ], [ zeroinitializer, %4 ]
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %29 = load i64, ptr %28, align 8, !tbaa !142, !noalias !549
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %23
  %32 = bitcast <2 x i64> %24 to <4 x float>
  %33 = bitcast <2 x i64> %25 to <4 x float>
  %34 = bitcast <2 x i64> %26 to <4 x float>
  %35 = bitcast <2 x i64> %27 to <4 x float>
  br label %41

36:                                               ; preds = %41
  %37 = bitcast <4 x float> %61 to <2 x i64>
  %38 = bitcast <4 x float> %60 to <2 x i64>
  %39 = bitcast <4 x float> %59 to <2 x i64>
  %40 = bitcast <4 x float> %58 to <2 x i64>
  br label %66

41:                                               ; preds = %31, %41
  %42 = phi <4 x float> [ %32, %31 ], [ %58, %41 ]
  %43 = phi <4 x float> [ %33, %31 ], [ %59, %41 ]
  %44 = phi <4 x float> [ %34, %31 ], [ %60, %41 ]
  %45 = phi <4 x float> [ %35, %31 ], [ %61, %41 ]
  %46 = phi i64 [ 0, %31 ], [ %64, %41 ]
  %47 = phi ptr [ %1, %31 ], [ %63, %41 ]
  %48 = phi ptr [ %2, %31 ], [ %62, %41 ]
  %49 = load <8 x bfloat>, ptr %48, align 2, !alias.scope !547, !noalias !551
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 16
  %51 = load <8 x bfloat>, ptr %50, align 2, !alias.scope !547, !noalias !551
  %52 = getelementptr inbounds nuw i8, ptr %48, i64 32
  %53 = load <8 x bfloat>, ptr %52, align 2, !alias.scope !547, !noalias !551
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 48
  %55 = load <8 x bfloat>, ptr %54, align 2, !alias.scope !547, !noalias !551
  %56 = load <4 x bfloat>, ptr %47, align 2, !alias.scope !545, !noalias !552
  %57 = shufflevector <4 x bfloat> %56, <4 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %58 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %42, <8 x bfloat> %57, <8 x bfloat> %49)
  %59 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %43, <8 x bfloat> %57, <8 x bfloat> %51)
  %60 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %44, <8 x bfloat> %57, <8 x bfloat> %53)
  %61 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %45, <8 x bfloat> %57, <8 x bfloat> %55)
  %62 = getelementptr inbounds nuw i8, ptr %48, i64 64
  %63 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %64 = add nuw nsw i64 %46, 1
  %65 = icmp eq i64 %64, %29
  br i1 %65, label %36, label %41, !llvm.loop !508

66:                                               ; preds = %23, %36
  %67 = phi <2 x i64> [ %40, %36 ], [ %24, %23 ]
  %68 = phi <2 x i64> [ %39, %36 ], [ %25, %23 ]
  %69 = phi <2 x i64> [ %38, %36 ], [ %26, %23 ]
  %70 = phi <2 x i64> [ %37, %36 ], [ %27, %23 ]
  %71 = shufflevector <2 x i64> %67, <2 x i64> %68, <2 x i32> <i32 0, i32 2>
  %72 = bitcast <2 x i64> %71 to <4 x float>
  %73 = fptrunc <4 x float> %72 to <4 x bfloat>
  store <4 x bfloat> %73, ptr %0, align 2, !alias.scope !542, !noalias !550
  %74 = shufflevector <2 x i64> %69, <2 x i64> %70, <2 x i32> <i32 0, i32 2>
  %75 = bitcast <2 x i64> %74 to <4 x float>
  %76 = fptrunc <4 x float> %75 to <4 x bfloat>
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x bfloat> %76, ptr %77, align 2, !alias.scope !542, !noalias !550
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16bf16_2x8x4_arm_64_bf16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !560
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i64 16
  %11 = load <4 x i16>, ptr %0, align 2, !alias.scope !553, !noalias !561
  %12 = zext <4 x i16> %11 to <4 x i32>
  %13 = shl nuw <4 x i32> %12, splat (i32 16)
  %14 = load <4 x i16>, ptr %10, align 2, !alias.scope !553, !noalias !561
  %15 = zext <4 x i16> %14 to <4 x i32>
  %16 = shl nuw <4 x i32> %15, splat (i32 16)
  %17 = shufflevector <4 x i32> %13, <4 x i32> %16, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %18 = bitcast <4 x i32> %17 to <2 x i64>
  %19 = shufflevector <4 x i32> %13, <4 x i32> %16, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %20 = bitcast <4 x i32> %19 to <2 x i64>
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %22 = load <4 x i16>, ptr %21, align 2, !alias.scope !553, !noalias !561
  %23 = zext <4 x i16> %22 to <4 x i32>
  %24 = shl nuw <4 x i32> %23, splat (i32 16)
  %25 = getelementptr i8, ptr %0, i64 24
  %26 = load <4 x i16>, ptr %25, align 2, !alias.scope !553, !noalias !561
  %27 = zext <4 x i16> %26 to <4 x i32>
  %28 = shl nuw <4 x i32> %27, splat (i32 16)
  %29 = shufflevector <4 x i32> %24, <4 x i32> %28, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %30 = bitcast <4 x i32> %29 to <2 x i64>
  %31 = shufflevector <4 x i32> %24, <4 x i32> %28, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %32 = bitcast <4 x i32> %31 to <2 x i64>
  br label %33

33:                                               ; preds = %4, %9
  %34 = phi <2 x i64> [ %18, %9 ], [ zeroinitializer, %4 ]
  %35 = phi <2 x i64> [ %20, %9 ], [ zeroinitializer, %4 ]
  %36 = phi <2 x i64> [ %30, %9 ], [ zeroinitializer, %4 ]
  %37 = phi <2 x i64> [ %32, %9 ], [ zeroinitializer, %4 ]
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %39 = load i64, ptr %38, align 8, !tbaa !142, !noalias !560
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %75

41:                                               ; preds = %33
  %42 = bitcast <2 x i64> %34 to <4 x float>
  %43 = bitcast <2 x i64> %35 to <4 x float>
  %44 = bitcast <2 x i64> %36 to <4 x float>
  %45 = bitcast <2 x i64> %37 to <4 x float>
  br label %51

46:                                               ; preds = %51
  %47 = bitcast <4 x float> %70 to <2 x i64>
  %48 = bitcast <4 x float> %69 to <2 x i64>
  %49 = bitcast <4 x float> %68 to <2 x i64>
  %50 = bitcast <4 x float> %67 to <2 x i64>
  br label %75

51:                                               ; preds = %41, %51
  %52 = phi <4 x float> [ %42, %41 ], [ %67, %51 ]
  %53 = phi <4 x float> [ %43, %41 ], [ %68, %51 ]
  %54 = phi <4 x float> [ %44, %41 ], [ %69, %51 ]
  %55 = phi <4 x float> [ %45, %41 ], [ %70, %51 ]
  %56 = phi i64 [ 0, %41 ], [ %73, %51 ]
  %57 = phi ptr [ %1, %41 ], [ %72, %51 ]
  %58 = phi ptr [ %2, %41 ], [ %71, %51 ]
  %59 = load <8 x bfloat>, ptr %58, align 2, !alias.scope !558, !noalias !562
  %60 = getelementptr inbounds nuw i8, ptr %58, i64 16
  %61 = load <8 x bfloat>, ptr %60, align 2, !alias.scope !558, !noalias !562
  %62 = getelementptr inbounds nuw i8, ptr %58, i64 32
  %63 = load <8 x bfloat>, ptr %62, align 2, !alias.scope !558, !noalias !562
  %64 = getelementptr inbounds nuw i8, ptr %58, i64 48
  %65 = load <8 x bfloat>, ptr %64, align 2, !alias.scope !558, !noalias !562
  %66 = load <8 x bfloat>, ptr %57, align 2, !alias.scope !556, !noalias !563
  %67 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %52, <8 x bfloat> %66, <8 x bfloat> %59)
  %68 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %53, <8 x bfloat> %66, <8 x bfloat> %61)
  %69 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %54, <8 x bfloat> %66, <8 x bfloat> %63)
  %70 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %55, <8 x bfloat> %66, <8 x bfloat> %65)
  %71 = getelementptr inbounds nuw i8, ptr %58, i64 64
  %72 = getelementptr inbounds nuw i8, ptr %57, i64 16
  %73 = add nuw nsw i64 %56, 1
  %74 = icmp eq i64 %73, %39
  br i1 %74, label %46, label %51, !llvm.loop !508

75:                                               ; preds = %33, %46
  %76 = phi <2 x i64> [ %50, %46 ], [ %34, %33 ]
  %77 = phi <2 x i64> [ %49, %46 ], [ %35, %33 ]
  %78 = phi <2 x i64> [ %48, %46 ], [ %36, %33 ]
  %79 = phi <2 x i64> [ %47, %46 ], [ %37, %33 ]
  %80 = getelementptr i8, ptr %0, i64 16
  %81 = shufflevector <2 x i64> %76, <2 x i64> %77, <2 x i32> <i32 0, i32 2>
  %82 = bitcast <2 x i64> %81 to <4 x float>
  %83 = shufflevector <2 x i64> %76, <2 x i64> %77, <2 x i32> <i32 1, i32 3>
  %84 = bitcast <2 x i64> %83 to <4 x float>
  %85 = fptrunc <4 x float> %82 to <4 x bfloat>
  store <4 x bfloat> %85, ptr %0, align 2, !alias.scope !553, !noalias !561
  %86 = fptrunc <4 x float> %84 to <4 x bfloat>
  store <4 x bfloat> %86, ptr %80, align 2, !alias.scope !553, !noalias !561
  %87 = shufflevector <2 x i64> %78, <2 x i64> %79, <2 x i32> <i32 0, i32 2>
  %88 = bitcast <2 x i64> %87 to <4 x float>
  %89 = shufflevector <2 x i64> %78, <2 x i64> %79, <2 x i32> <i32 1, i32 3>
  %90 = bitcast <2 x i64> %89 to <4 x float>
  %91 = fptrunc <4 x float> %88 to <4 x bfloat>
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x bfloat> %91, ptr %92, align 2, !alias.scope !553, !noalias !561
  %93 = fptrunc <4 x float> %90 to <4 x bfloat>
  %94 = getelementptr i8, ptr %0, i64 24
  store <4 x bfloat> %93, ptr %94, align 2, !alias.scope !553, !noalias !561
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16bf16_4x8x4_arm_64_bf16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !571
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %57, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i64 16
  %11 = load <4 x i16>, ptr %0, align 2, !alias.scope !564, !noalias !572
  %12 = zext <4 x i16> %11 to <4 x i32>
  %13 = shl nuw <4 x i32> %12, splat (i32 16)
  %14 = load <4 x i16>, ptr %10, align 2, !alias.scope !564, !noalias !572
  %15 = zext <4 x i16> %14 to <4 x i32>
  %16 = shl nuw <4 x i32> %15, splat (i32 16)
  %17 = shufflevector <4 x i32> %13, <4 x i32> %16, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %18 = bitcast <4 x i32> %17 to <2 x i64>
  %19 = shufflevector <4 x i32> %13, <4 x i32> %16, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %20 = bitcast <4 x i32> %19 to <2 x i64>
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %22 = load <4 x i16>, ptr %21, align 2, !alias.scope !564, !noalias !572
  %23 = zext <4 x i16> %22 to <4 x i32>
  %24 = shl nuw <4 x i32> %23, splat (i32 16)
  %25 = getelementptr i8, ptr %0, i64 24
  %26 = load <4 x i16>, ptr %25, align 2, !alias.scope !564, !noalias !572
  %27 = zext <4 x i16> %26 to <4 x i32>
  %28 = shl nuw <4 x i32> %27, splat (i32 16)
  %29 = shufflevector <4 x i32> %24, <4 x i32> %28, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %30 = bitcast <4 x i32> %29 to <2 x i64>
  %31 = shufflevector <4 x i32> %24, <4 x i32> %28, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %32 = bitcast <4 x i32> %31 to <2 x i64>
  %33 = getelementptr i8, ptr %0, i64 32
  %34 = getelementptr i8, ptr %0, i64 48
  %35 = load <4 x i16>, ptr %33, align 2, !alias.scope !564, !noalias !572
  %36 = zext <4 x i16> %35 to <4 x i32>
  %37 = shl nuw <4 x i32> %36, splat (i32 16)
  %38 = load <4 x i16>, ptr %34, align 2, !alias.scope !564, !noalias !572
  %39 = zext <4 x i16> %38 to <4 x i32>
  %40 = shl nuw <4 x i32> %39, splat (i32 16)
  %41 = shufflevector <4 x i32> %37, <4 x i32> %40, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %42 = bitcast <4 x i32> %41 to <2 x i64>
  %43 = shufflevector <4 x i32> %37, <4 x i32> %40, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %44 = bitcast <4 x i32> %43 to <2 x i64>
  %45 = getelementptr i8, ptr %0, i64 40
  %46 = load <4 x i16>, ptr %45, align 2, !alias.scope !564, !noalias !572
  %47 = zext <4 x i16> %46 to <4 x i32>
  %48 = shl nuw <4 x i32> %47, splat (i32 16)
  %49 = getelementptr i8, ptr %0, i64 56
  %50 = load <4 x i16>, ptr %49, align 2, !alias.scope !564, !noalias !572
  %51 = zext <4 x i16> %50 to <4 x i32>
  %52 = shl nuw <4 x i32> %51, splat (i32 16)
  %53 = shufflevector <4 x i32> %48, <4 x i32> %52, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %54 = bitcast <4 x i32> %53 to <2 x i64>
  %55 = shufflevector <4 x i32> %48, <4 x i32> %52, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %56 = bitcast <4 x i32> %55 to <2 x i64>
  br label %57

57:                                               ; preds = %4, %9
  %58 = phi <2 x i64> [ %18, %9 ], [ zeroinitializer, %4 ]
  %59 = phi <2 x i64> [ %20, %9 ], [ zeroinitializer, %4 ]
  %60 = phi <2 x i64> [ %30, %9 ], [ zeroinitializer, %4 ]
  %61 = phi <2 x i64> [ %32, %9 ], [ zeroinitializer, %4 ]
  %62 = phi <2 x i64> [ %42, %9 ], [ zeroinitializer, %4 ]
  %63 = phi <2 x i64> [ %44, %9 ], [ zeroinitializer, %4 ]
  %64 = phi <2 x i64> [ %54, %9 ], [ zeroinitializer, %4 ]
  %65 = phi <2 x i64> [ %56, %9 ], [ zeroinitializer, %4 ]
  %66 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %67 = load i64, ptr %66, align 8, !tbaa !142, !noalias !571
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %57
  %70 = bitcast <2 x i64> %58 to <4 x float>
  %71 = bitcast <2 x i64> %59 to <4 x float>
  %72 = bitcast <2 x i64> %60 to <4 x float>
  %73 = bitcast <2 x i64> %61 to <4 x float>
  %74 = bitcast <2 x i64> %62 to <4 x float>
  %75 = bitcast <2 x i64> %63 to <4 x float>
  %76 = bitcast <2 x i64> %64 to <4 x float>
  %77 = bitcast <2 x i64> %65 to <4 x float>
  br label %127

78:                                               ; preds = %127
  %79 = bitcast <4 x float> %156 to <2 x i64>
  %80 = bitcast <4 x float> %155 to <2 x i64>
  %81 = bitcast <4 x float> %154 to <2 x i64>
  %82 = bitcast <4 x float> %153 to <2 x i64>
  %83 = bitcast <4 x float> %152 to <2 x i64>
  %84 = bitcast <4 x float> %151 to <2 x i64>
  %85 = bitcast <4 x float> %150 to <2 x i64>
  %86 = bitcast <4 x float> %149 to <2 x i64>
  br label %87

87:                                               ; preds = %78, %57
  %88 = phi <2 x i64> [ %86, %78 ], [ %58, %57 ]
  %89 = phi <2 x i64> [ %85, %78 ], [ %59, %57 ]
  %90 = phi <2 x i64> [ %84, %78 ], [ %60, %57 ]
  %91 = phi <2 x i64> [ %83, %78 ], [ %61, %57 ]
  %92 = phi <2 x i64> [ %82, %78 ], [ %62, %57 ]
  %93 = phi <2 x i64> [ %81, %78 ], [ %63, %57 ]
  %94 = phi <2 x i64> [ %80, %78 ], [ %64, %57 ]
  %95 = phi <2 x i64> [ %79, %78 ], [ %65, %57 ]
  %96 = getelementptr i8, ptr %0, i64 16
  %97 = shufflevector <2 x i64> %88, <2 x i64> %89, <2 x i32> <i32 0, i32 2>
  %98 = bitcast <2 x i64> %97 to <4 x float>
  %99 = shufflevector <2 x i64> %88, <2 x i64> %89, <2 x i32> <i32 1, i32 3>
  %100 = bitcast <2 x i64> %99 to <4 x float>
  %101 = fptrunc <4 x float> %98 to <4 x bfloat>
  store <4 x bfloat> %101, ptr %0, align 2, !alias.scope !564, !noalias !572
  %102 = fptrunc <4 x float> %100 to <4 x bfloat>
  store <4 x bfloat> %102, ptr %96, align 2, !alias.scope !564, !noalias !572
  %103 = shufflevector <2 x i64> %90, <2 x i64> %91, <2 x i32> <i32 0, i32 2>
  %104 = bitcast <2 x i64> %103 to <4 x float>
  %105 = shufflevector <2 x i64> %90, <2 x i64> %91, <2 x i32> <i32 1, i32 3>
  %106 = bitcast <2 x i64> %105 to <4 x float>
  %107 = fptrunc <4 x float> %104 to <4 x bfloat>
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x bfloat> %107, ptr %108, align 2, !alias.scope !564, !noalias !572
  %109 = fptrunc <4 x float> %106 to <4 x bfloat>
  %110 = getelementptr i8, ptr %0, i64 24
  store <4 x bfloat> %109, ptr %110, align 2, !alias.scope !564, !noalias !572
  %111 = getelementptr i8, ptr %0, i64 32
  %112 = getelementptr i8, ptr %0, i64 48
  %113 = shufflevector <2 x i64> %92, <2 x i64> %93, <2 x i32> <i32 0, i32 2>
  %114 = bitcast <2 x i64> %113 to <4 x float>
  %115 = shufflevector <2 x i64> %92, <2 x i64> %93, <2 x i32> <i32 1, i32 3>
  %116 = bitcast <2 x i64> %115 to <4 x float>
  %117 = fptrunc <4 x float> %114 to <4 x bfloat>
  store <4 x bfloat> %117, ptr %111, align 2, !alias.scope !564, !noalias !572
  %118 = fptrunc <4 x float> %116 to <4 x bfloat>
  store <4 x bfloat> %118, ptr %112, align 2, !alias.scope !564, !noalias !572
  %119 = shufflevector <2 x i64> %94, <2 x i64> %95, <2 x i32> <i32 0, i32 2>
  %120 = bitcast <2 x i64> %119 to <4 x float>
  %121 = shufflevector <2 x i64> %94, <2 x i64> %95, <2 x i32> <i32 1, i32 3>
  %122 = bitcast <2 x i64> %121 to <4 x float>
  %123 = fptrunc <4 x float> %120 to <4 x bfloat>
  %124 = getelementptr i8, ptr %0, i64 40
  store <4 x bfloat> %123, ptr %124, align 2, !alias.scope !564, !noalias !572
  %125 = fptrunc <4 x float> %122 to <4 x bfloat>
  %126 = getelementptr i8, ptr %0, i64 56
  store <4 x bfloat> %125, ptr %126, align 2, !alias.scope !564, !noalias !572
  ret void

127:                                              ; preds = %69, %127
  %128 = phi <4 x float> [ %70, %69 ], [ %149, %127 ]
  %129 = phi <4 x float> [ %71, %69 ], [ %150, %127 ]
  %130 = phi <4 x float> [ %72, %69 ], [ %151, %127 ]
  %131 = phi <4 x float> [ %73, %69 ], [ %152, %127 ]
  %132 = phi <4 x float> [ %74, %69 ], [ %153, %127 ]
  %133 = phi <4 x float> [ %75, %69 ], [ %154, %127 ]
  %134 = phi <4 x float> [ %76, %69 ], [ %155, %127 ]
  %135 = phi <4 x float> [ %77, %69 ], [ %156, %127 ]
  %136 = phi i64 [ 0, %69 ], [ %159, %127 ]
  %137 = phi ptr [ %1, %69 ], [ %157, %127 ]
  %138 = phi ptr [ %2, %69 ], [ %158, %127 ]
  %139 = load <8 x bfloat>, ptr %138, align 2, !alias.scope !569, !noalias !573
  %140 = getelementptr inbounds nuw i8, ptr %138, i64 16
  %141 = load <8 x bfloat>, ptr %140, align 2, !alias.scope !569, !noalias !573
  %142 = getelementptr inbounds nuw i8, ptr %138, i64 32
  %143 = load <8 x bfloat>, ptr %142, align 2, !alias.scope !569, !noalias !573
  %144 = getelementptr inbounds nuw i8, ptr %138, i64 48
  %145 = load <8 x bfloat>, ptr %144, align 2, !alias.scope !569, !noalias !573
  %146 = load <8 x bfloat>, ptr %137, align 2, !alias.scope !567, !noalias !574
  %147 = getelementptr inbounds nuw i8, ptr %137, i64 16
  %148 = load <8 x bfloat>, ptr %147, align 2, !alias.scope !567, !noalias !574
  %149 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %128, <8 x bfloat> %146, <8 x bfloat> %139)
  %150 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %129, <8 x bfloat> %146, <8 x bfloat> %141)
  %151 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %130, <8 x bfloat> %146, <8 x bfloat> %143)
  %152 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %131, <8 x bfloat> %146, <8 x bfloat> %145)
  %153 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %132, <8 x bfloat> %148, <8 x bfloat> %139)
  %154 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %133, <8 x bfloat> %148, <8 x bfloat> %141)
  %155 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %134, <8 x bfloat> %148, <8 x bfloat> %143)
  %156 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %135, <8 x bfloat> %148, <8 x bfloat> %145)
  %157 = getelementptr inbounds nuw i8, ptr %137, i64 32
  %158 = getelementptr inbounds nuw i8, ptr %138, i64 64
  %159 = add nuw nsw i64 %136, 1
  %160 = icmp eq i64 %159, %67
  br i1 %160, label %78, label %127, !llvm.loop !508
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16bf16_8x8x4_arm_64_bf16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !582
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %105, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i64 16
  %11 = load <4 x i16>, ptr %0, align 2, !alias.scope !575, !noalias !583
  %12 = zext <4 x i16> %11 to <4 x i32>
  %13 = shl nuw <4 x i32> %12, splat (i32 16)
  %14 = load <4 x i16>, ptr %10, align 2, !alias.scope !575, !noalias !583
  %15 = zext <4 x i16> %14 to <4 x i32>
  %16 = shl nuw <4 x i32> %15, splat (i32 16)
  %17 = shufflevector <4 x i32> %13, <4 x i32> %16, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %18 = bitcast <4 x i32> %17 to <2 x i64>
  %19 = shufflevector <4 x i32> %13, <4 x i32> %16, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %20 = bitcast <4 x i32> %19 to <2 x i64>
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %22 = load <4 x i16>, ptr %21, align 2, !alias.scope !575, !noalias !583
  %23 = zext <4 x i16> %22 to <4 x i32>
  %24 = shl nuw <4 x i32> %23, splat (i32 16)
  %25 = getelementptr i8, ptr %0, i64 24
  %26 = load <4 x i16>, ptr %25, align 2, !alias.scope !575, !noalias !583
  %27 = zext <4 x i16> %26 to <4 x i32>
  %28 = shl nuw <4 x i32> %27, splat (i32 16)
  %29 = shufflevector <4 x i32> %24, <4 x i32> %28, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %30 = bitcast <4 x i32> %29 to <2 x i64>
  %31 = shufflevector <4 x i32> %24, <4 x i32> %28, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %32 = bitcast <4 x i32> %31 to <2 x i64>
  %33 = getelementptr i8, ptr %0, i64 32
  %34 = getelementptr i8, ptr %0, i64 48
  %35 = load <4 x i16>, ptr %33, align 2, !alias.scope !575, !noalias !583
  %36 = zext <4 x i16> %35 to <4 x i32>
  %37 = shl nuw <4 x i32> %36, splat (i32 16)
  %38 = load <4 x i16>, ptr %34, align 2, !alias.scope !575, !noalias !583
  %39 = zext <4 x i16> %38 to <4 x i32>
  %40 = shl nuw <4 x i32> %39, splat (i32 16)
  %41 = shufflevector <4 x i32> %37, <4 x i32> %40, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %42 = bitcast <4 x i32> %41 to <2 x i64>
  %43 = shufflevector <4 x i32> %37, <4 x i32> %40, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %44 = bitcast <4 x i32> %43 to <2 x i64>
  %45 = getelementptr i8, ptr %0, i64 40
  %46 = load <4 x i16>, ptr %45, align 2, !alias.scope !575, !noalias !583
  %47 = zext <4 x i16> %46 to <4 x i32>
  %48 = shl nuw <4 x i32> %47, splat (i32 16)
  %49 = getelementptr i8, ptr %0, i64 56
  %50 = load <4 x i16>, ptr %49, align 2, !alias.scope !575, !noalias !583
  %51 = zext <4 x i16> %50 to <4 x i32>
  %52 = shl nuw <4 x i32> %51, splat (i32 16)
  %53 = shufflevector <4 x i32> %48, <4 x i32> %52, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %54 = bitcast <4 x i32> %53 to <2 x i64>
  %55 = shufflevector <4 x i32> %48, <4 x i32> %52, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %56 = bitcast <4 x i32> %55 to <2 x i64>
  %57 = getelementptr i8, ptr %0, i64 64
  %58 = getelementptr i8, ptr %0, i64 80
  %59 = load <4 x i16>, ptr %57, align 2, !alias.scope !575, !noalias !583
  %60 = zext <4 x i16> %59 to <4 x i32>
  %61 = shl nuw <4 x i32> %60, splat (i32 16)
  %62 = load <4 x i16>, ptr %58, align 2, !alias.scope !575, !noalias !583
  %63 = zext <4 x i16> %62 to <4 x i32>
  %64 = shl nuw <4 x i32> %63, splat (i32 16)
  %65 = shufflevector <4 x i32> %61, <4 x i32> %64, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %66 = bitcast <4 x i32> %65 to <2 x i64>
  %67 = shufflevector <4 x i32> %61, <4 x i32> %64, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %68 = bitcast <4 x i32> %67 to <2 x i64>
  %69 = getelementptr i8, ptr %0, i64 72
  %70 = load <4 x i16>, ptr %69, align 2, !alias.scope !575, !noalias !583
  %71 = zext <4 x i16> %70 to <4 x i32>
  %72 = shl nuw <4 x i32> %71, splat (i32 16)
  %73 = getelementptr i8, ptr %0, i64 88
  %74 = load <4 x i16>, ptr %73, align 2, !alias.scope !575, !noalias !583
  %75 = zext <4 x i16> %74 to <4 x i32>
  %76 = shl nuw <4 x i32> %75, splat (i32 16)
  %77 = shufflevector <4 x i32> %72, <4 x i32> %76, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %78 = bitcast <4 x i32> %77 to <2 x i64>
  %79 = shufflevector <4 x i32> %72, <4 x i32> %76, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %80 = bitcast <4 x i32> %79 to <2 x i64>
  %81 = getelementptr i8, ptr %0, i64 96
  %82 = getelementptr i8, ptr %0, i64 112
  %83 = load <4 x i16>, ptr %81, align 2, !alias.scope !575, !noalias !583
  %84 = zext <4 x i16> %83 to <4 x i32>
  %85 = shl nuw <4 x i32> %84, splat (i32 16)
  %86 = load <4 x i16>, ptr %82, align 2, !alias.scope !575, !noalias !583
  %87 = zext <4 x i16> %86 to <4 x i32>
  %88 = shl nuw <4 x i32> %87, splat (i32 16)
  %89 = shufflevector <4 x i32> %85, <4 x i32> %88, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %90 = bitcast <4 x i32> %89 to <2 x i64>
  %91 = shufflevector <4 x i32> %85, <4 x i32> %88, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %92 = bitcast <4 x i32> %91 to <2 x i64>
  %93 = getelementptr i8, ptr %0, i64 104
  %94 = load <4 x i16>, ptr %93, align 2, !alias.scope !575, !noalias !583
  %95 = zext <4 x i16> %94 to <4 x i32>
  %96 = shl nuw <4 x i32> %95, splat (i32 16)
  %97 = getelementptr i8, ptr %0, i64 120
  %98 = load <4 x i16>, ptr %97, align 2, !alias.scope !575, !noalias !583
  %99 = zext <4 x i16> %98 to <4 x i32>
  %100 = shl nuw <4 x i32> %99, splat (i32 16)
  %101 = shufflevector <4 x i32> %96, <4 x i32> %100, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %102 = bitcast <4 x i32> %101 to <2 x i64>
  %103 = shufflevector <4 x i32> %96, <4 x i32> %100, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %104 = bitcast <4 x i32> %103 to <2 x i64>
  br label %105

105:                                              ; preds = %4, %9
  %106 = phi <2 x i64> [ %56, %9 ], [ zeroinitializer, %4 ]
  %107 = phi <2 x i64> [ %54, %9 ], [ zeroinitializer, %4 ]
  %108 = phi <2 x i64> [ %44, %9 ], [ zeroinitializer, %4 ]
  %109 = phi <2 x i64> [ %42, %9 ], [ zeroinitializer, %4 ]
  %110 = phi <2 x i64> [ %32, %9 ], [ zeroinitializer, %4 ]
  %111 = phi <2 x i64> [ %30, %9 ], [ zeroinitializer, %4 ]
  %112 = phi <2 x i64> [ %20, %9 ], [ zeroinitializer, %4 ]
  %113 = phi <2 x i64> [ %18, %9 ], [ zeroinitializer, %4 ]
  %114 = phi <2 x i64> [ %66, %9 ], [ zeroinitializer, %4 ]
  %115 = phi <2 x i64> [ %68, %9 ], [ zeroinitializer, %4 ]
  %116 = phi <2 x i64> [ %78, %9 ], [ zeroinitializer, %4 ]
  %117 = phi <2 x i64> [ %80, %9 ], [ zeroinitializer, %4 ]
  %118 = phi <2 x i64> [ %90, %9 ], [ zeroinitializer, %4 ]
  %119 = phi <2 x i64> [ %92, %9 ], [ zeroinitializer, %4 ]
  %120 = phi <2 x i64> [ %102, %9 ], [ zeroinitializer, %4 ]
  %121 = phi <2 x i64> [ %104, %9 ], [ zeroinitializer, %4 ]
  %122 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %123 = load i64, ptr %122, align 8, !tbaa !142, !noalias !582
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %159

125:                                              ; preds = %105
  %126 = bitcast <2 x i64> %113 to <4 x float>
  %127 = bitcast <2 x i64> %112 to <4 x float>
  %128 = bitcast <2 x i64> %111 to <4 x float>
  %129 = bitcast <2 x i64> %110 to <4 x float>
  %130 = bitcast <2 x i64> %109 to <4 x float>
  %131 = bitcast <2 x i64> %108 to <4 x float>
  %132 = bitcast <2 x i64> %107 to <4 x float>
  %133 = bitcast <2 x i64> %106 to <4 x float>
  %134 = bitcast <2 x i64> %114 to <4 x float>
  %135 = bitcast <2 x i64> %115 to <4 x float>
  %136 = bitcast <2 x i64> %116 to <4 x float>
  %137 = bitcast <2 x i64> %117 to <4 x float>
  %138 = bitcast <2 x i64> %118 to <4 x float>
  %139 = bitcast <2 x i64> %119 to <4 x float>
  %140 = bitcast <2 x i64> %120 to <4 x float>
  %141 = bitcast <2 x i64> %121 to <4 x float>
  br label %239

142:                                              ; preds = %239
  %143 = bitcast <4 x float> %288 to <2 x i64>
  %144 = bitcast <4 x float> %287 to <2 x i64>
  %145 = bitcast <4 x float> %286 to <2 x i64>
  %146 = bitcast <4 x float> %285 to <2 x i64>
  %147 = bitcast <4 x float> %284 to <2 x i64>
  %148 = bitcast <4 x float> %283 to <2 x i64>
  %149 = bitcast <4 x float> %282 to <2 x i64>
  %150 = bitcast <4 x float> %281 to <2 x i64>
  %151 = bitcast <4 x float> %280 to <2 x i64>
  %152 = bitcast <4 x float> %279 to <2 x i64>
  %153 = bitcast <4 x float> %278 to <2 x i64>
  %154 = bitcast <4 x float> %277 to <2 x i64>
  %155 = bitcast <4 x float> %276 to <2 x i64>
  %156 = bitcast <4 x float> %275 to <2 x i64>
  %157 = bitcast <4 x float> %274 to <2 x i64>
  %158 = bitcast <4 x float> %273 to <2 x i64>
  br label %159

159:                                              ; preds = %142, %105
  %160 = phi <2 x i64> [ %151, %142 ], [ %106, %105 ]
  %161 = phi <2 x i64> [ %152, %142 ], [ %107, %105 ]
  %162 = phi <2 x i64> [ %153, %142 ], [ %108, %105 ]
  %163 = phi <2 x i64> [ %154, %142 ], [ %109, %105 ]
  %164 = phi <2 x i64> [ %155, %142 ], [ %110, %105 ]
  %165 = phi <2 x i64> [ %156, %142 ], [ %111, %105 ]
  %166 = phi <2 x i64> [ %157, %142 ], [ %112, %105 ]
  %167 = phi <2 x i64> [ %158, %142 ], [ %113, %105 ]
  %168 = phi <2 x i64> [ %150, %142 ], [ %114, %105 ]
  %169 = phi <2 x i64> [ %149, %142 ], [ %115, %105 ]
  %170 = phi <2 x i64> [ %148, %142 ], [ %116, %105 ]
  %171 = phi <2 x i64> [ %147, %142 ], [ %117, %105 ]
  %172 = phi <2 x i64> [ %146, %142 ], [ %118, %105 ]
  %173 = phi <2 x i64> [ %145, %142 ], [ %119, %105 ]
  %174 = phi <2 x i64> [ %144, %142 ], [ %120, %105 ]
  %175 = phi <2 x i64> [ %143, %142 ], [ %121, %105 ]
  %176 = getelementptr i8, ptr %0, i64 16
  %177 = shufflevector <2 x i64> %167, <2 x i64> %166, <2 x i32> <i32 0, i32 2>
  %178 = bitcast <2 x i64> %177 to <4 x float>
  %179 = shufflevector <2 x i64> %167, <2 x i64> %166, <2 x i32> <i32 1, i32 3>
  %180 = bitcast <2 x i64> %179 to <4 x float>
  %181 = fptrunc <4 x float> %178 to <4 x bfloat>
  store <4 x bfloat> %181, ptr %0, align 2, !alias.scope !575, !noalias !583
  %182 = fptrunc <4 x float> %180 to <4 x bfloat>
  store <4 x bfloat> %182, ptr %176, align 2, !alias.scope !575, !noalias !583
  %183 = shufflevector <2 x i64> %165, <2 x i64> %164, <2 x i32> <i32 0, i32 2>
  %184 = bitcast <2 x i64> %183 to <4 x float>
  %185 = shufflevector <2 x i64> %165, <2 x i64> %164, <2 x i32> <i32 1, i32 3>
  %186 = bitcast <2 x i64> %185 to <4 x float>
  %187 = fptrunc <4 x float> %184 to <4 x bfloat>
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x bfloat> %187, ptr %188, align 2, !alias.scope !575, !noalias !583
  %189 = fptrunc <4 x float> %186 to <4 x bfloat>
  %190 = getelementptr i8, ptr %0, i64 24
  store <4 x bfloat> %189, ptr %190, align 2, !alias.scope !575, !noalias !583
  %191 = getelementptr i8, ptr %0, i64 32
  %192 = getelementptr i8, ptr %0, i64 48
  %193 = shufflevector <2 x i64> %163, <2 x i64> %162, <2 x i32> <i32 0, i32 2>
  %194 = bitcast <2 x i64> %193 to <4 x float>
  %195 = shufflevector <2 x i64> %163, <2 x i64> %162, <2 x i32> <i32 1, i32 3>
  %196 = bitcast <2 x i64> %195 to <4 x float>
  %197 = fptrunc <4 x float> %194 to <4 x bfloat>
  store <4 x bfloat> %197, ptr %191, align 2, !alias.scope !575, !noalias !583
  %198 = fptrunc <4 x float> %196 to <4 x bfloat>
  store <4 x bfloat> %198, ptr %192, align 2, !alias.scope !575, !noalias !583
  %199 = shufflevector <2 x i64> %161, <2 x i64> %160, <2 x i32> <i32 0, i32 2>
  %200 = bitcast <2 x i64> %199 to <4 x float>
  %201 = shufflevector <2 x i64> %161, <2 x i64> %160, <2 x i32> <i32 1, i32 3>
  %202 = bitcast <2 x i64> %201 to <4 x float>
  %203 = fptrunc <4 x float> %200 to <4 x bfloat>
  %204 = getelementptr i8, ptr %0, i64 40
  store <4 x bfloat> %203, ptr %204, align 2, !alias.scope !575, !noalias !583
  %205 = fptrunc <4 x float> %202 to <4 x bfloat>
  %206 = getelementptr i8, ptr %0, i64 56
  store <4 x bfloat> %205, ptr %206, align 2, !alias.scope !575, !noalias !583
  %207 = getelementptr i8, ptr %0, i64 64
  %208 = getelementptr i8, ptr %0, i64 80
  %209 = shufflevector <2 x i64> %168, <2 x i64> %169, <2 x i32> <i32 0, i32 2>
  %210 = bitcast <2 x i64> %209 to <4 x float>
  %211 = shufflevector <2 x i64> %168, <2 x i64> %169, <2 x i32> <i32 1, i32 3>
  %212 = bitcast <2 x i64> %211 to <4 x float>
  %213 = fptrunc <4 x float> %210 to <4 x bfloat>
  store <4 x bfloat> %213, ptr %207, align 2, !alias.scope !575, !noalias !583
  %214 = fptrunc <4 x float> %212 to <4 x bfloat>
  store <4 x bfloat> %214, ptr %208, align 2, !alias.scope !575, !noalias !583
  %215 = shufflevector <2 x i64> %170, <2 x i64> %171, <2 x i32> <i32 0, i32 2>
  %216 = bitcast <2 x i64> %215 to <4 x float>
  %217 = shufflevector <2 x i64> %170, <2 x i64> %171, <2 x i32> <i32 1, i32 3>
  %218 = bitcast <2 x i64> %217 to <4 x float>
  %219 = fptrunc <4 x float> %216 to <4 x bfloat>
  %220 = getelementptr i8, ptr %0, i64 72
  store <4 x bfloat> %219, ptr %220, align 2, !alias.scope !575, !noalias !583
  %221 = fptrunc <4 x float> %218 to <4 x bfloat>
  %222 = getelementptr i8, ptr %0, i64 88
  store <4 x bfloat> %221, ptr %222, align 2, !alias.scope !575, !noalias !583
  %223 = getelementptr i8, ptr %0, i64 96
  %224 = getelementptr i8, ptr %0, i64 112
  %225 = shufflevector <2 x i64> %172, <2 x i64> %173, <2 x i32> <i32 0, i32 2>
  %226 = bitcast <2 x i64> %225 to <4 x float>
  %227 = shufflevector <2 x i64> %172, <2 x i64> %173, <2 x i32> <i32 1, i32 3>
  %228 = bitcast <2 x i64> %227 to <4 x float>
  %229 = fptrunc <4 x float> %226 to <4 x bfloat>
  store <4 x bfloat> %229, ptr %223, align 2, !alias.scope !575, !noalias !583
  %230 = fptrunc <4 x float> %228 to <4 x bfloat>
  store <4 x bfloat> %230, ptr %224, align 2, !alias.scope !575, !noalias !583
  %231 = shufflevector <2 x i64> %174, <2 x i64> %175, <2 x i32> <i32 0, i32 2>
  %232 = bitcast <2 x i64> %231 to <4 x float>
  %233 = shufflevector <2 x i64> %174, <2 x i64> %175, <2 x i32> <i32 1, i32 3>
  %234 = bitcast <2 x i64> %233 to <4 x float>
  %235 = fptrunc <4 x float> %232 to <4 x bfloat>
  %236 = getelementptr i8, ptr %0, i64 104
  store <4 x bfloat> %235, ptr %236, align 2, !alias.scope !575, !noalias !583
  %237 = fptrunc <4 x float> %234 to <4 x bfloat>
  %238 = getelementptr i8, ptr %0, i64 120
  store <4 x bfloat> %237, ptr %238, align 2, !alias.scope !575, !noalias !583
  ret void

239:                                              ; preds = %125, %239
  %240 = phi <4 x float> [ %133, %125 ], [ %280, %239 ]
  %241 = phi <4 x float> [ %132, %125 ], [ %279, %239 ]
  %242 = phi <4 x float> [ %131, %125 ], [ %278, %239 ]
  %243 = phi <4 x float> [ %130, %125 ], [ %277, %239 ]
  %244 = phi <4 x float> [ %129, %125 ], [ %276, %239 ]
  %245 = phi <4 x float> [ %128, %125 ], [ %275, %239 ]
  %246 = phi <4 x float> [ %127, %125 ], [ %274, %239 ]
  %247 = phi <4 x float> [ %126, %125 ], [ %273, %239 ]
  %248 = phi <4 x float> [ %134, %125 ], [ %281, %239 ]
  %249 = phi <4 x float> [ %135, %125 ], [ %282, %239 ]
  %250 = phi <4 x float> [ %136, %125 ], [ %283, %239 ]
  %251 = phi <4 x float> [ %137, %125 ], [ %284, %239 ]
  %252 = phi <4 x float> [ %138, %125 ], [ %285, %239 ]
  %253 = phi <4 x float> [ %139, %125 ], [ %286, %239 ]
  %254 = phi <4 x float> [ %140, %125 ], [ %287, %239 ]
  %255 = phi <4 x float> [ %141, %125 ], [ %288, %239 ]
  %256 = phi i64 [ 0, %125 ], [ %291, %239 ]
  %257 = phi ptr [ %1, %125 ], [ %289, %239 ]
  %258 = phi ptr [ %2, %125 ], [ %290, %239 ]
  %259 = load <8 x bfloat>, ptr %258, align 2, !alias.scope !580, !noalias !584
  %260 = getelementptr inbounds nuw i8, ptr %258, i64 16
  %261 = load <8 x bfloat>, ptr %260, align 2, !alias.scope !580, !noalias !584
  %262 = getelementptr inbounds nuw i8, ptr %258, i64 32
  %263 = load <8 x bfloat>, ptr %262, align 2, !alias.scope !580, !noalias !584
  %264 = getelementptr inbounds nuw i8, ptr %258, i64 48
  %265 = load <8 x bfloat>, ptr %264, align 2, !alias.scope !580, !noalias !584
  %266 = load <8 x bfloat>, ptr %257, align 2, !alias.scope !578, !noalias !585
  %267 = getelementptr inbounds nuw i8, ptr %257, i64 16
  %268 = load <8 x bfloat>, ptr %267, align 2, !alias.scope !578, !noalias !585
  %269 = getelementptr inbounds nuw i8, ptr %257, i64 32
  %270 = load <8 x bfloat>, ptr %269, align 2, !alias.scope !578, !noalias !585
  %271 = getelementptr inbounds nuw i8, ptr %257, i64 48
  %272 = load <8 x bfloat>, ptr %271, align 2, !alias.scope !578, !noalias !585
  %273 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %247, <8 x bfloat> %266, <8 x bfloat> %259)
  %274 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %246, <8 x bfloat> %266, <8 x bfloat> %261)
  %275 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %245, <8 x bfloat> %266, <8 x bfloat> %263)
  %276 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %244, <8 x bfloat> %266, <8 x bfloat> %265)
  %277 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %243, <8 x bfloat> %268, <8 x bfloat> %259)
  %278 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %242, <8 x bfloat> %268, <8 x bfloat> %261)
  %279 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %241, <8 x bfloat> %268, <8 x bfloat> %263)
  %280 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %240, <8 x bfloat> %268, <8 x bfloat> %265)
  %281 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %248, <8 x bfloat> %270, <8 x bfloat> %259)
  %282 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %249, <8 x bfloat> %270, <8 x bfloat> %261)
  %283 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %250, <8 x bfloat> %270, <8 x bfloat> %263)
  %284 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %251, <8 x bfloat> %270, <8 x bfloat> %265)
  %285 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %252, <8 x bfloat> %272, <8 x bfloat> %259)
  %286 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %253, <8 x bfloat> %272, <8 x bfloat> %261)
  %287 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %254, <8 x bfloat> %272, <8 x bfloat> %263)
  %288 = tail call <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float> %255, <8 x bfloat> %272, <8 x bfloat> %265)
  %289 = getelementptr inbounds nuw i8, ptr %257, i64 64
  %290 = getelementptr inbounds nuw i8, ptr %258, i64 64
  %291 = add nuw nsw i64 %256, 1
  %292 = icmp eq i64 %291, %123
  br i1 %292, label %142, label %239, !llvm.loop !508
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_1x8x1_arm_64(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !593
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load <4 x i32>, ptr %0, align 4, !alias.scope !586, !noalias !594
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <4 x i32>, ptr %11, align 4, !alias.scope !586, !noalias !594
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi <4 x i32> [ %12, %9 ], [ zeroinitializer, %4 ]
  %15 = phi <4 x i32> [ %10, %9 ], [ zeroinitializer, %4 ]
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %17 = load i64, ptr %16, align 8, !tbaa !142, !noalias !593
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %23, %13
  %20 = phi <4 x i32> [ %14, %13 ], [ %42, %23 ]
  %21 = phi <4 x i32> [ %15, %13 ], [ %40, %23 ]
  store <4 x i32> %21, ptr %0, align 4, !alias.scope !586, !noalias !594
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %20, ptr %22, align 4, !alias.scope !586, !noalias !594
  ret void

23:                                               ; preds = %13, %23
  %24 = phi <4 x i32> [ %42, %23 ], [ %14, %13 ]
  %25 = phi <4 x i32> [ %40, %23 ], [ %15, %13 ]
  %26 = phi i64 [ %43, %23 ], [ 0, %13 ]
  %27 = phi ptr [ %34, %23 ], [ %1, %13 ]
  %28 = phi ptr [ %31, %23 ], [ %2, %13 ]
  %29 = load <8 x i8>, ptr %28, align 1, !alias.scope !591, !noalias !595
  %30 = sext <8 x i8> %29 to <8 x i16>
  %31 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %32 = shufflevector <8 x i16> %30, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %33 = shufflevector <8 x i16> %30, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %34 = getelementptr inbounds nuw i8, ptr %27, i64 1
  %35 = load i8, ptr %27, align 1, !tbaa !199, !alias.scope !589, !noalias !596
  %36 = sext i8 %35 to i16
  %37 = insertelement <4 x i16> poison, i16 %36, i64 0
  %38 = shufflevector <4 x i16> %37, <4 x i16> poison, <4 x i32> zeroinitializer
  %39 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %32, <4 x i16> %38)
  %40 = add <4 x i32> %39, %25
  %41 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %33, <4 x i16> %38)
  %42 = add <4 x i32> %41, %24
  %43 = add nuw nsw i64 %26, 1
  %44 = icmp eq i64 %43, %17
  br i1 %44, label %19, label %23, !llvm.loop !597
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_2x8x1_arm_64(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !605
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load <4 x i32>, ptr %0, align 4, !alias.scope !598, !noalias !606
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <4 x i32>, ptr %11, align 4, !alias.scope !598, !noalias !606
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load <4 x i32>, ptr %13, align 4, !alias.scope !598, !noalias !606
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %16 = load <4 x i32>, ptr %15, align 4, !alias.scope !598, !noalias !606
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi <4 x i32> [ %16, %9 ], [ zeroinitializer, %4 ]
  %19 = phi <4 x i32> [ %14, %9 ], [ zeroinitializer, %4 ]
  %20 = phi <4 x i32> [ %12, %9 ], [ zeroinitializer, %4 ]
  %21 = phi <4 x i32> [ %10, %9 ], [ zeroinitializer, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %23 = load i64, ptr %22, align 8, !tbaa !142, !noalias !605
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %33, %17
  %26 = phi <4 x i32> [ %18, %17 ], [ %62, %33 ]
  %27 = phi <4 x i32> [ %19, %17 ], [ %60, %33 ]
  %28 = phi <4 x i32> [ %20, %17 ], [ %53, %33 ]
  %29 = phi <4 x i32> [ %21, %17 ], [ %51, %33 ]
  store <4 x i32> %29, ptr %0, align 4, !alias.scope !598, !noalias !606
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %28, ptr %30, align 4, !alias.scope !598, !noalias !606
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> %27, ptr %31, align 4, !alias.scope !598, !noalias !606
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> %26, ptr %32, align 4, !alias.scope !598, !noalias !606
  ret void

33:                                               ; preds = %17, %33
  %34 = phi <4 x i32> [ %62, %33 ], [ %18, %17 ]
  %35 = phi <4 x i32> [ %60, %33 ], [ %19, %17 ]
  %36 = phi <4 x i32> [ %53, %33 ], [ %20, %17 ]
  %37 = phi <4 x i32> [ %51, %33 ], [ %21, %17 ]
  %38 = phi i64 [ %64, %33 ], [ 0, %17 ]
  %39 = phi ptr [ %54, %33 ], [ %1, %17 ]
  %40 = phi ptr [ %63, %33 ], [ %2, %17 ]
  %41 = load <8 x i8>, ptr %40, align 1, !alias.scope !603, !noalias !607
  %42 = sext <8 x i8> %41 to <8 x i16>
  %43 = shufflevector <8 x i16> %42, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %44 = shufflevector <8 x i16> %42, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %45 = getelementptr inbounds nuw i8, ptr %39, i64 1
  %46 = load i8, ptr %39, align 1, !tbaa !199, !alias.scope !601, !noalias !608
  %47 = sext i8 %46 to i16
  %48 = insertelement <4 x i16> poison, i16 %47, i64 0
  %49 = shufflevector <4 x i16> %48, <4 x i16> poison, <4 x i32> zeroinitializer
  %50 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %43, <4 x i16> %49)
  %51 = add <4 x i32> %50, %37
  %52 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %44, <4 x i16> %49)
  %53 = add <4 x i32> %52, %36
  %54 = getelementptr inbounds nuw i8, ptr %39, i64 2
  %55 = load i8, ptr %45, align 1, !tbaa !199, !alias.scope !601, !noalias !608
  %56 = sext i8 %55 to i16
  %57 = insertelement <4 x i16> poison, i16 %56, i64 0
  %58 = shufflevector <4 x i16> %57, <4 x i16> poison, <4 x i32> zeroinitializer
  %59 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %43, <4 x i16> %58)
  %60 = add <4 x i32> %59, %35
  %61 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %44, <4 x i16> %58)
  %62 = add <4 x i32> %61, %34
  %63 = getelementptr inbounds nuw i8, ptr %40, i64 8
  %64 = add nuw nsw i64 %38, 1
  %65 = icmp eq i64 %64, %23
  br i1 %65, label %25, label %33, !llvm.loop !597
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_4x8x1_arm_64(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !616
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = load <4 x i32>, ptr %0, align 4, !alias.scope !609, !noalias !617
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <4 x i32>, ptr %11, align 4, !alias.scope !609, !noalias !617
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load <4 x i32>, ptr %13, align 4, !alias.scope !609, !noalias !617
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %16 = load <4 x i32>, ptr %15, align 4, !alias.scope !609, !noalias !617
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %18 = load <4 x i32>, ptr %17, align 4, !alias.scope !609, !noalias !617
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %20 = load <4 x i32>, ptr %19, align 4, !alias.scope !609, !noalias !617
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %22 = load <4 x i32>, ptr %21, align 4, !alias.scope !609, !noalias !617
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load <4 x i32>, ptr %23, align 4, !alias.scope !609, !noalias !617
  br label %25

25:                                               ; preds = %4, %9
  %26 = phi <4 x i32> [ %24, %9 ], [ zeroinitializer, %4 ]
  %27 = phi <4 x i32> [ %22, %9 ], [ zeroinitializer, %4 ]
  %28 = phi <4 x i32> [ %20, %9 ], [ zeroinitializer, %4 ]
  %29 = phi <4 x i32> [ %18, %9 ], [ zeroinitializer, %4 ]
  %30 = phi <4 x i32> [ %16, %9 ], [ zeroinitializer, %4 ]
  %31 = phi <4 x i32> [ %14, %9 ], [ zeroinitializer, %4 ]
  %32 = phi <4 x i32> [ %12, %9 ], [ zeroinitializer, %4 ]
  %33 = phi <4 x i32> [ %10, %9 ], [ zeroinitializer, %4 ]
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %35 = load i64, ptr %34, align 8, !tbaa !142, !noalias !616
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %53, %25
  %38 = phi <4 x i32> [ %26, %25 ], [ %104, %53 ]
  %39 = phi <4 x i32> [ %27, %25 ], [ %102, %53 ]
  %40 = phi <4 x i32> [ %28, %25 ], [ %95, %53 ]
  %41 = phi <4 x i32> [ %29, %25 ], [ %93, %53 ]
  %42 = phi <4 x i32> [ %30, %25 ], [ %86, %53 ]
  %43 = phi <4 x i32> [ %31, %25 ], [ %84, %53 ]
  %44 = phi <4 x i32> [ %32, %25 ], [ %77, %53 ]
  %45 = phi <4 x i32> [ %33, %25 ], [ %75, %53 ]
  store <4 x i32> %45, ptr %0, align 4, !alias.scope !609, !noalias !617
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %44, ptr %46, align 4, !alias.scope !609, !noalias !617
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> %43, ptr %47, align 4, !alias.scope !609, !noalias !617
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> %42, ptr %48, align 4, !alias.scope !609, !noalias !617
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i32> %41, ptr %49, align 4, !alias.scope !609, !noalias !617
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i32> %40, ptr %50, align 4, !alias.scope !609, !noalias !617
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> %39, ptr %51, align 4, !alias.scope !609, !noalias !617
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x i32> %38, ptr %52, align 4, !alias.scope !609, !noalias !617
  ret void

53:                                               ; preds = %25, %53
  %54 = phi <4 x i32> [ %104, %53 ], [ %26, %25 ]
  %55 = phi <4 x i32> [ %102, %53 ], [ %27, %25 ]
  %56 = phi <4 x i32> [ %95, %53 ], [ %28, %25 ]
  %57 = phi <4 x i32> [ %93, %53 ], [ %29, %25 ]
  %58 = phi <4 x i32> [ %86, %53 ], [ %30, %25 ]
  %59 = phi <4 x i32> [ %84, %53 ], [ %31, %25 ]
  %60 = phi <4 x i32> [ %77, %53 ], [ %32, %25 ]
  %61 = phi <4 x i32> [ %75, %53 ], [ %33, %25 ]
  %62 = phi i64 [ %106, %53 ], [ 0, %25 ]
  %63 = phi ptr [ %96, %53 ], [ %1, %25 ]
  %64 = phi ptr [ %105, %53 ], [ %2, %25 ]
  %65 = load <8 x i8>, ptr %64, align 1, !alias.scope !614, !noalias !618
  %66 = sext <8 x i8> %65 to <8 x i16>
  %67 = shufflevector <8 x i16> %66, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %68 = shufflevector <8 x i16> %66, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %69 = getelementptr inbounds nuw i8, ptr %63, i64 1
  %70 = load i8, ptr %63, align 1, !tbaa !199, !alias.scope !612, !noalias !619
  %71 = sext i8 %70 to i16
  %72 = insertelement <4 x i16> poison, i16 %71, i64 0
  %73 = shufflevector <4 x i16> %72, <4 x i16> poison, <4 x i32> zeroinitializer
  %74 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %67, <4 x i16> %73)
  %75 = add <4 x i32> %74, %61
  %76 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %68, <4 x i16> %73)
  %77 = add <4 x i32> %76, %60
  %78 = getelementptr inbounds nuw i8, ptr %63, i64 2
  %79 = load i8, ptr %69, align 1, !tbaa !199, !alias.scope !612, !noalias !619
  %80 = sext i8 %79 to i16
  %81 = insertelement <4 x i16> poison, i16 %80, i64 0
  %82 = shufflevector <4 x i16> %81, <4 x i16> poison, <4 x i32> zeroinitializer
  %83 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %67, <4 x i16> %82)
  %84 = add <4 x i32> %83, %59
  %85 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %68, <4 x i16> %82)
  %86 = add <4 x i32> %85, %58
  %87 = getelementptr inbounds nuw i8, ptr %63, i64 3
  %88 = load i8, ptr %78, align 1, !tbaa !199, !alias.scope !612, !noalias !619
  %89 = sext i8 %88 to i16
  %90 = insertelement <4 x i16> poison, i16 %89, i64 0
  %91 = shufflevector <4 x i16> %90, <4 x i16> poison, <4 x i32> zeroinitializer
  %92 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %67, <4 x i16> %91)
  %93 = add <4 x i32> %92, %57
  %94 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %68, <4 x i16> %91)
  %95 = add <4 x i32> %94, %56
  %96 = getelementptr inbounds nuw i8, ptr %63, i64 4
  %97 = load i8, ptr %87, align 1, !tbaa !199, !alias.scope !612, !noalias !619
  %98 = sext i8 %97 to i16
  %99 = insertelement <4 x i16> poison, i16 %98, i64 0
  %100 = shufflevector <4 x i16> %99, <4 x i16> poison, <4 x i32> zeroinitializer
  %101 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %67, <4 x i16> %100)
  %102 = add <4 x i32> %101, %55
  %103 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %68, <4 x i16> %100)
  %104 = add <4 x i32> %103, %54
  %105 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %106 = add nuw nsw i64 %62, 1
  %107 = icmp eq i64 %106, %35
  br i1 %107, label %37, label %53, !llvm.loop !597
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_8x8x1_arm_64(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !627
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %4
  %10 = load <4 x i32>, ptr %0, align 4, !alias.scope !620, !noalias !628
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <4 x i32>, ptr %11, align 4, !alias.scope !620, !noalias !628
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load <4 x i32>, ptr %13, align 4, !alias.scope !620, !noalias !628
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %16 = load <4 x i32>, ptr %15, align 4, !alias.scope !620, !noalias !628
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %18 = load <4 x i32>, ptr %17, align 4, !alias.scope !620, !noalias !628
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %20 = load <4 x i32>, ptr %19, align 4, !alias.scope !620, !noalias !628
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %22 = load <4 x i32>, ptr %21, align 4, !alias.scope !620, !noalias !628
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load <4 x i32>, ptr %23, align 4, !alias.scope !620, !noalias !628
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %26 = load <4 x i32>, ptr %25, align 4, !alias.scope !620, !noalias !628
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %28 = load <4 x i32>, ptr %27, align 4, !alias.scope !620, !noalias !628
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %30 = load <4 x i32>, ptr %29, align 4, !alias.scope !620, !noalias !628
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %32 = load <4 x i32>, ptr %31, align 4, !alias.scope !620, !noalias !628
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %34 = load <4 x i32>, ptr %33, align 4, !alias.scope !620, !noalias !628
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %36 = load <4 x i32>, ptr %35, align 4, !alias.scope !620, !noalias !628
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %38 = load <4 x i32>, ptr %37, align 4, !alias.scope !620, !noalias !628
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %40 = load <4 x i32>, ptr %39, align 4, !alias.scope !620, !noalias !628
  br label %41

41:                                               ; preds = %4, %9
  %42 = phi <4 x i32> [ %40, %9 ], [ zeroinitializer, %4 ]
  %43 = phi <4 x i32> [ %38, %9 ], [ zeroinitializer, %4 ]
  %44 = phi <4 x i32> [ %36, %9 ], [ zeroinitializer, %4 ]
  %45 = phi <4 x i32> [ %34, %9 ], [ zeroinitializer, %4 ]
  %46 = phi <4 x i32> [ %32, %9 ], [ zeroinitializer, %4 ]
  %47 = phi <4 x i32> [ %30, %9 ], [ zeroinitializer, %4 ]
  %48 = phi <4 x i32> [ %28, %9 ], [ zeroinitializer, %4 ]
  %49 = phi <4 x i32> [ %26, %9 ], [ zeroinitializer, %4 ]
  %50 = phi <4 x i32> [ %24, %9 ], [ zeroinitializer, %4 ]
  %51 = phi <4 x i32> [ %22, %9 ], [ zeroinitializer, %4 ]
  %52 = phi <4 x i32> [ %20, %9 ], [ zeroinitializer, %4 ]
  %53 = phi <4 x i32> [ %18, %9 ], [ zeroinitializer, %4 ]
  %54 = phi <4 x i32> [ %16, %9 ], [ zeroinitializer, %4 ]
  %55 = phi <4 x i32> [ %14, %9 ], [ zeroinitializer, %4 ]
  %56 = phi <4 x i32> [ %12, %9 ], [ zeroinitializer, %4 ]
  %57 = phi <4 x i32> [ %10, %9 ], [ zeroinitializer, %4 ]
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %59 = load i64, ptr %58, align 8, !tbaa !142, !noalias !627
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %93, label %61

61:                                               ; preds = %93, %41
  %62 = phi <4 x i32> [ %42, %41 ], [ %160, %93 ]
  %63 = phi <4 x i32> [ %43, %41 ], [ %158, %93 ]
  %64 = phi <4 x i32> [ %44, %41 ], [ %155, %93 ]
  %65 = phi <4 x i32> [ %45, %41 ], [ %153, %93 ]
  %66 = phi <4 x i32> [ %46, %41 ], [ %150, %93 ]
  %67 = phi <4 x i32> [ %47, %41 ], [ %148, %93 ]
  %68 = phi <4 x i32> [ %48, %41 ], [ %145, %93 ]
  %69 = phi <4 x i32> [ %49, %41 ], [ %143, %93 ]
  %70 = phi <4 x i32> [ %50, %41 ], [ %140, %93 ]
  %71 = phi <4 x i32> [ %51, %41 ], [ %138, %93 ]
  %72 = phi <4 x i32> [ %52, %41 ], [ %135, %93 ]
  %73 = phi <4 x i32> [ %53, %41 ], [ %133, %93 ]
  %74 = phi <4 x i32> [ %54, %41 ], [ %130, %93 ]
  %75 = phi <4 x i32> [ %55, %41 ], [ %128, %93 ]
  %76 = phi <4 x i32> [ %56, %41 ], [ %125, %93 ]
  %77 = phi <4 x i32> [ %57, %41 ], [ %122, %93 ]
  store <4 x i32> %77, ptr %0, align 4, !alias.scope !620, !noalias !628
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %76, ptr %78, align 4, !alias.scope !620, !noalias !628
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> %75, ptr %79, align 4, !alias.scope !620, !noalias !628
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> %74, ptr %80, align 4, !alias.scope !620, !noalias !628
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i32> %73, ptr %81, align 4, !alias.scope !620, !noalias !628
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i32> %72, ptr %82, align 4, !alias.scope !620, !noalias !628
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> %71, ptr %83, align 4, !alias.scope !620, !noalias !628
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x i32> %70, ptr %84, align 4, !alias.scope !620, !noalias !628
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <4 x i32> %69, ptr %85, align 4, !alias.scope !620, !noalias !628
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <4 x i32> %68, ptr %86, align 4, !alias.scope !620, !noalias !628
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <4 x i32> %67, ptr %87, align 4, !alias.scope !620, !noalias !628
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <4 x i32> %66, ptr %88, align 4, !alias.scope !620, !noalias !628
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <4 x i32> %65, ptr %89, align 4, !alias.scope !620, !noalias !628
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x i32> %64, ptr %90, align 4, !alias.scope !620, !noalias !628
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <4 x i32> %63, ptr %91, align 4, !alias.scope !620, !noalias !628
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <4 x i32> %62, ptr %92, align 4, !alias.scope !620, !noalias !628
  ret void

93:                                               ; preds = %41, %93
  %94 = phi i64 [ %161, %93 ], [ 0, %41 ]
  %95 = phi <4 x i32> [ %160, %93 ], [ %42, %41 ]
  %96 = phi <4 x i32> [ %158, %93 ], [ %43, %41 ]
  %97 = phi <4 x i32> [ %155, %93 ], [ %44, %41 ]
  %98 = phi <4 x i32> [ %153, %93 ], [ %45, %41 ]
  %99 = phi <4 x i32> [ %150, %93 ], [ %46, %41 ]
  %100 = phi <4 x i32> [ %148, %93 ], [ %47, %41 ]
  %101 = phi <4 x i32> [ %145, %93 ], [ %48, %41 ]
  %102 = phi <4 x i32> [ %143, %93 ], [ %49, %41 ]
  %103 = phi <4 x i32> [ %140, %93 ], [ %50, %41 ]
  %104 = phi <4 x i32> [ %138, %93 ], [ %51, %41 ]
  %105 = phi <4 x i32> [ %135, %93 ], [ %52, %41 ]
  %106 = phi <4 x i32> [ %133, %93 ], [ %53, %41 ]
  %107 = phi <4 x i32> [ %130, %93 ], [ %54, %41 ]
  %108 = phi <4 x i32> [ %128, %93 ], [ %55, %41 ]
  %109 = phi <4 x i32> [ %125, %93 ], [ %56, %41 ]
  %110 = phi ptr [ %118, %93 ], [ %1, %41 ]
  %111 = phi ptr [ %115, %93 ], [ %2, %41 ]
  %112 = phi <4 x i32> [ %122, %93 ], [ %57, %41 ]
  %113 = load <8 x i8>, ptr %111, align 1, !alias.scope !625, !noalias !629
  %114 = sext <8 x i8> %113 to <8 x i16>
  %115 = getelementptr inbounds nuw i8, ptr %111, i64 8
  %116 = load <8 x i8>, ptr %110, align 1, !alias.scope !623, !noalias !630
  %117 = sext <8 x i8> %116 to <8 x i16>
  %118 = getelementptr inbounds nuw i8, ptr %110, i64 8
  %119 = shufflevector <8 x i16> %114, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %120 = shufflevector <8 x i16> %117, <8 x i16> poison, <4 x i32> zeroinitializer
  %121 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %119, <4 x i16> %120)
  %122 = add <4 x i32> %121, %112
  %123 = shufflevector <8 x i16> %114, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %124 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %123, <4 x i16> %120)
  %125 = add <4 x i32> %124, %109
  %126 = shufflevector <8 x i16> %117, <8 x i16> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %127 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %119, <4 x i16> %126)
  %128 = add <4 x i32> %127, %108
  %129 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %123, <4 x i16> %126)
  %130 = add <4 x i32> %129, %107
  %131 = shufflevector <8 x i16> %117, <8 x i16> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %132 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %119, <4 x i16> %131)
  %133 = add <4 x i32> %132, %106
  %134 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %123, <4 x i16> %131)
  %135 = add <4 x i32> %134, %105
  %136 = shufflevector <8 x i16> %117, <8 x i16> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %137 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %119, <4 x i16> %136)
  %138 = add <4 x i32> %137, %104
  %139 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %123, <4 x i16> %136)
  %140 = add <4 x i32> %139, %103
  %141 = shufflevector <8 x i16> %117, <8 x i16> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %142 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %119, <4 x i16> %141)
  %143 = add <4 x i32> %142, %102
  %144 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %123, <4 x i16> %141)
  %145 = add <4 x i32> %144, %101
  %146 = shufflevector <8 x i16> %117, <8 x i16> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %147 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %119, <4 x i16> %146)
  %148 = add <4 x i32> %147, %100
  %149 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %123, <4 x i16> %146)
  %150 = add <4 x i32> %149, %99
  %151 = shufflevector <8 x i16> %117, <8 x i16> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %152 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %119, <4 x i16> %151)
  %153 = add <4 x i32> %152, %98
  %154 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %123, <4 x i16> %151)
  %155 = add <4 x i32> %154, %97
  %156 = shufflevector <8 x i16> %117, <8 x i16> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %157 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %119, <4 x i16> %156)
  %158 = add <4 x i32> %157, %96
  %159 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %123, <4 x i16> %156)
  %160 = add <4 x i32> %159, %95
  %161 = add nuw nsw i64 %94, 1
  %162 = icmp eq i64 %161, %59
  br i1 %162, label %61, label %93, !llvm.loop !597
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_1x8x4_arm_64_dotprod(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #18 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !638
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load <4 x i32>, ptr %0, align 4, !alias.scope !631, !noalias !639
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <4 x i32>, ptr %11, align 4, !alias.scope !631, !noalias !639
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi <4 x i32> [ %10, %9 ], [ zeroinitializer, %4 ]
  %15 = phi <4 x i32> [ %12, %9 ], [ zeroinitializer, %4 ]
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %17 = load i64, ptr %16, align 8, !tbaa !142, !noalias !638
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %23, %13
  %20 = phi <4 x i32> [ %15, %13 ], [ %39, %23 ]
  %21 = phi <4 x i32> [ %14, %13 ], [ %38, %23 ]
  store <4 x i32> %21, ptr %0, align 4, !alias.scope !631, !noalias !639
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %20, ptr %22, align 4, !alias.scope !631, !noalias !639
  ret void

23:                                               ; preds = %13, %23
  %24 = phi i64 [ %40, %23 ], [ 0, %13 ]
  %25 = phi <4 x i32> [ %39, %23 ], [ %15, %13 ]
  %26 = phi ptr [ %35, %23 ], [ %1, %13 ]
  %27 = phi ptr [ %32, %23 ], [ %2, %13 ]
  %28 = phi <4 x i32> [ %38, %23 ], [ %14, %13 ]
  %29 = load <16 x i8>, ptr %27, align 1, !alias.scope !636, !noalias !640
  %30 = getelementptr inbounds nuw i8, ptr %27, i64 16
  %31 = load <16 x i8>, ptr %30, align 1, !alias.scope !636, !noalias !640
  %32 = getelementptr inbounds nuw i8, ptr %27, i64 32
  %33 = load i32, ptr %26, align 4, !alias.scope !634, !noalias !641
  %34 = insertelement <4 x i32> poison, i32 %33, i64 0
  %35 = getelementptr inbounds nuw i8, ptr %26, i64 4
  %36 = shufflevector <4 x i32> %34, <4 x i32> poison, <4 x i32> zeroinitializer
  %37 = bitcast <4 x i32> %36 to <16 x i8>
  %38 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %28, <16 x i8> %29, <16 x i8> %37)
  %39 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %25, <16 x i8> %31, <16 x i8> %37)
  %40 = add nuw nsw i64 %24, 1
  %41 = icmp eq i64 %40, %17
  br i1 %41, label %19, label %23, !llvm.loop !642
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_2x8x4_arm_64_dotprod(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #18 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !650
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load <4 x i32>, ptr %0, align 4, !alias.scope !643, !noalias !651
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <4 x i32>, ptr %11, align 4, !alias.scope !643, !noalias !651
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load <4 x i32>, ptr %13, align 4, !alias.scope !643, !noalias !651
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %16 = load <4 x i32>, ptr %15, align 4, !alias.scope !643, !noalias !651
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi <4 x i32> [ %12, %9 ], [ zeroinitializer, %4 ]
  %19 = phi <4 x i32> [ %10, %9 ], [ zeroinitializer, %4 ]
  %20 = phi <4 x i32> [ %14, %9 ], [ zeroinitializer, %4 ]
  %21 = phi <4 x i32> [ %16, %9 ], [ zeroinitializer, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %23 = load i64, ptr %22, align 8, !tbaa !142, !noalias !650
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %33, %17
  %26 = phi <4 x i32> [ %18, %17 ], [ %50, %33 ]
  %27 = phi <4 x i32> [ %20, %17 ], [ %53, %33 ]
  %28 = phi <4 x i32> [ %21, %17 ], [ %54, %33 ]
  %29 = phi <4 x i32> [ %19, %17 ], [ %49, %33 ]
  store <4 x i32> %29, ptr %0, align 4, !alias.scope !643, !noalias !651
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %26, ptr %30, align 4, !alias.scope !643, !noalias !651
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> %27, ptr %31, align 4, !alias.scope !643, !noalias !651
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> %28, ptr %32, align 4, !alias.scope !643, !noalias !651
  ret void

33:                                               ; preds = %17, %33
  %34 = phi i64 [ %55, %33 ], [ 0, %17 ]
  %35 = phi <4 x i32> [ %54, %33 ], [ %21, %17 ]
  %36 = phi <4 x i32> [ %53, %33 ], [ %20, %17 ]
  %37 = phi <4 x i32> [ %50, %33 ], [ %18, %17 ]
  %38 = phi ptr [ %46, %33 ], [ %1, %17 ]
  %39 = phi ptr [ %44, %33 ], [ %2, %17 ]
  %40 = phi <4 x i32> [ %49, %33 ], [ %19, %17 ]
  %41 = load <16 x i8>, ptr %39, align 1, !alias.scope !648, !noalias !652
  %42 = getelementptr inbounds nuw i8, ptr %39, i64 16
  %43 = load <16 x i8>, ptr %42, align 1, !alias.scope !648, !noalias !652
  %44 = getelementptr inbounds nuw i8, ptr %39, i64 32
  %45 = load <2 x i32>, ptr %38, align 1, !alias.scope !646, !noalias !653
  %46 = getelementptr inbounds nuw i8, ptr %38, i64 8
  %47 = shufflevector <2 x i32> %45, <2 x i32> poison, <4 x i32> zeroinitializer
  %48 = bitcast <4 x i32> %47 to <16 x i8>
  %49 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %40, <16 x i8> %41, <16 x i8> %48)
  %50 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %37, <16 x i8> %43, <16 x i8> %48)
  %51 = shufflevector <2 x i32> %45, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %52 = bitcast <4 x i32> %51 to <16 x i8>
  %53 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %36, <16 x i8> %41, <16 x i8> %52)
  %54 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %35, <16 x i8> %43, <16 x i8> %52)
  %55 = add nuw nsw i64 %34, 1
  %56 = icmp eq i64 %55, %23
  br i1 %56, label %25, label %33, !llvm.loop !642
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_4x8x4_arm_64_dotprod(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #18 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !661
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = load <4 x i32>, ptr %0, align 4, !alias.scope !654, !noalias !662
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <4 x i32>, ptr %11, align 4, !alias.scope !654, !noalias !662
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load <4 x i32>, ptr %13, align 4, !alias.scope !654, !noalias !662
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %16 = load <4 x i32>, ptr %15, align 4, !alias.scope !654, !noalias !662
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %18 = load <4 x i32>, ptr %17, align 4, !alias.scope !654, !noalias !662
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %20 = load <4 x i32>, ptr %19, align 4, !alias.scope !654, !noalias !662
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %22 = load <4 x i32>, ptr %21, align 4, !alias.scope !654, !noalias !662
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load <4 x i32>, ptr %23, align 4, !alias.scope !654, !noalias !662
  br label %25

25:                                               ; preds = %4, %9
  %26 = phi <4 x i32> [ %16, %9 ], [ zeroinitializer, %4 ]
  %27 = phi <4 x i32> [ %14, %9 ], [ zeroinitializer, %4 ]
  %28 = phi <4 x i32> [ %12, %9 ], [ zeroinitializer, %4 ]
  %29 = phi <4 x i32> [ %10, %9 ], [ zeroinitializer, %4 ]
  %30 = phi <4 x i32> [ %18, %9 ], [ zeroinitializer, %4 ]
  %31 = phi <4 x i32> [ %20, %9 ], [ zeroinitializer, %4 ]
  %32 = phi <4 x i32> [ %22, %9 ], [ zeroinitializer, %4 ]
  %33 = phi <4 x i32> [ %24, %9 ], [ zeroinitializer, %4 ]
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %35 = load i64, ptr %34, align 8, !tbaa !142, !noalias !661
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %53, %25
  %38 = phi <4 x i32> [ %26, %25 ], [ %79, %53 ]
  %39 = phi <4 x i32> [ %27, %25 ], [ %78, %53 ]
  %40 = phi <4 x i32> [ %28, %25 ], [ %75, %53 ]
  %41 = phi <4 x i32> [ %30, %25 ], [ %83, %53 ]
  %42 = phi <4 x i32> [ %31, %25 ], [ %84, %53 ]
  %43 = phi <4 x i32> [ %32, %25 ], [ %87, %53 ]
  %44 = phi <4 x i32> [ %33, %25 ], [ %88, %53 ]
  %45 = phi <4 x i32> [ %29, %25 ], [ %74, %53 ]
  store <4 x i32> %45, ptr %0, align 4, !alias.scope !654, !noalias !662
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %40, ptr %46, align 4, !alias.scope !654, !noalias !662
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> %39, ptr %47, align 4, !alias.scope !654, !noalias !662
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> %38, ptr %48, align 4, !alias.scope !654, !noalias !662
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i32> %41, ptr %49, align 4, !alias.scope !654, !noalias !662
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i32> %42, ptr %50, align 4, !alias.scope !654, !noalias !662
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> %43, ptr %51, align 4, !alias.scope !654, !noalias !662
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x i32> %44, ptr %52, align 4, !alias.scope !654, !noalias !662
  ret void

53:                                               ; preds = %25, %53
  %54 = phi i64 [ %89, %53 ], [ 0, %25 ]
  %55 = phi <4 x i32> [ %88, %53 ], [ %33, %25 ]
  %56 = phi <4 x i32> [ %87, %53 ], [ %32, %25 ]
  %57 = phi <4 x i32> [ %84, %53 ], [ %31, %25 ]
  %58 = phi <4 x i32> [ %83, %53 ], [ %30, %25 ]
  %59 = phi <4 x i32> [ %79, %53 ], [ %26, %25 ]
  %60 = phi <4 x i32> [ %78, %53 ], [ %27, %25 ]
  %61 = phi <4 x i32> [ %75, %53 ], [ %28, %25 ]
  %62 = phi ptr [ %70, %53 ], [ %1, %25 ]
  %63 = phi ptr [ %69, %53 ], [ %2, %25 ]
  %64 = phi <4 x i32> [ %74, %53 ], [ %29, %25 ]
  %65 = load <16 x i8>, ptr %63, align 1, !alias.scope !659, !noalias !663
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 16
  %67 = load <16 x i8>, ptr %66, align 1, !alias.scope !659, !noalias !663
  %68 = load <16 x i8>, ptr %62, align 1, !alias.scope !657, !noalias !664
  %69 = getelementptr inbounds nuw i8, ptr %63, i64 32
  %70 = getelementptr inbounds nuw i8, ptr %62, i64 16
  %71 = bitcast <16 x i8> %68 to <4 x i32>
  %72 = shufflevector <4 x i32> %71, <4 x i32> poison, <4 x i32> zeroinitializer
  %73 = bitcast <4 x i32> %72 to <16 x i8>
  %74 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %64, <16 x i8> %65, <16 x i8> %73)
  %75 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %61, <16 x i8> %67, <16 x i8> %73)
  %76 = shufflevector <4 x i32> %71, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %77 = bitcast <4 x i32> %76 to <16 x i8>
  %78 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %60, <16 x i8> %65, <16 x i8> %77)
  %79 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %59, <16 x i8> %67, <16 x i8> %77)
  %80 = bitcast <16 x i8> %68 to <4 x i32>
  %81 = shufflevector <4 x i32> %80, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %82 = bitcast <4 x i32> %81 to <16 x i8>
  %83 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %58, <16 x i8> %65, <16 x i8> %82)
  %84 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %57, <16 x i8> %67, <16 x i8> %82)
  %85 = shufflevector <4 x i32> %80, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %86 = bitcast <4 x i32> %85 to <16 x i8>
  %87 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %56, <16 x i8> %65, <16 x i8> %86)
  %88 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %55, <16 x i8> %67, <16 x i8> %86)
  %89 = add nuw nsw i64 %54, 1
  %90 = icmp eq i64 %89, %35
  br i1 %90, label %37, label %53, !llvm.loop !642
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_8x8x4_arm_64_dotprod(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #18 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !672
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %4
  %10 = load <4 x i32>, ptr %0, align 4, !alias.scope !665, !noalias !673
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load <4 x i32>, ptr %11, align 4, !alias.scope !665, !noalias !673
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load <4 x i32>, ptr %13, align 4, !alias.scope !665, !noalias !673
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %16 = load <4 x i32>, ptr %15, align 4, !alias.scope !665, !noalias !673
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %18 = load <4 x i32>, ptr %17, align 4, !alias.scope !665, !noalias !673
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %20 = load <4 x i32>, ptr %19, align 4, !alias.scope !665, !noalias !673
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %22 = load <4 x i32>, ptr %21, align 4, !alias.scope !665, !noalias !673
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load <4 x i32>, ptr %23, align 4, !alias.scope !665, !noalias !673
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %26 = load <4 x i32>, ptr %25, align 4, !alias.scope !665, !noalias !673
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %28 = load <4 x i32>, ptr %27, align 4, !alias.scope !665, !noalias !673
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %30 = load <4 x i32>, ptr %29, align 4, !alias.scope !665, !noalias !673
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %32 = load <4 x i32>, ptr %31, align 4, !alias.scope !665, !noalias !673
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %34 = load <4 x i32>, ptr %33, align 4, !alias.scope !665, !noalias !673
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %36 = load <4 x i32>, ptr %35, align 4, !alias.scope !665, !noalias !673
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %38 = load <4 x i32>, ptr %37, align 4, !alias.scope !665, !noalias !673
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %40 = load <4 x i32>, ptr %39, align 4, !alias.scope !665, !noalias !673
  br label %41

41:                                               ; preds = %4, %9
  %42 = phi <4 x i32> [ %32, %9 ], [ zeroinitializer, %4 ]
  %43 = phi <4 x i32> [ %30, %9 ], [ zeroinitializer, %4 ]
  %44 = phi <4 x i32> [ %28, %9 ], [ zeroinitializer, %4 ]
  %45 = phi <4 x i32> [ %26, %9 ], [ zeroinitializer, %4 ]
  %46 = phi <4 x i32> [ %24, %9 ], [ zeroinitializer, %4 ]
  %47 = phi <4 x i32> [ %22, %9 ], [ zeroinitializer, %4 ]
  %48 = phi <4 x i32> [ %20, %9 ], [ zeroinitializer, %4 ]
  %49 = phi <4 x i32> [ %18, %9 ], [ zeroinitializer, %4 ]
  %50 = phi <4 x i32> [ %16, %9 ], [ zeroinitializer, %4 ]
  %51 = phi <4 x i32> [ %14, %9 ], [ zeroinitializer, %4 ]
  %52 = phi <4 x i32> [ %12, %9 ], [ zeroinitializer, %4 ]
  %53 = phi <4 x i32> [ %10, %9 ], [ zeroinitializer, %4 ]
  %54 = phi <4 x i32> [ %34, %9 ], [ zeroinitializer, %4 ]
  %55 = phi <4 x i32> [ %36, %9 ], [ zeroinitializer, %4 ]
  %56 = phi <4 x i32> [ %38, %9 ], [ zeroinitializer, %4 ]
  %57 = phi <4 x i32> [ %40, %9 ], [ zeroinitializer, %4 ]
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %59 = load i64, ptr %58, align 8, !tbaa !142, !noalias !672
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %93, label %61

61:                                               ; preds = %93, %41
  %62 = phi <4 x i32> [ %42, %41 ], [ %147, %93 ]
  %63 = phi <4 x i32> [ %43, %41 ], [ %146, %93 ]
  %64 = phi <4 x i32> [ %44, %41 ], [ %143, %93 ]
  %65 = phi <4 x i32> [ %45, %41 ], [ %142, %93 ]
  %66 = phi <4 x i32> [ %46, %41 ], [ %138, %93 ]
  %67 = phi <4 x i32> [ %47, %41 ], [ %137, %93 ]
  %68 = phi <4 x i32> [ %48, %41 ], [ %134, %93 ]
  %69 = phi <4 x i32> [ %49, %41 ], [ %133, %93 ]
  %70 = phi <4 x i32> [ %50, %41 ], [ %129, %93 ]
  %71 = phi <4 x i32> [ %51, %41 ], [ %128, %93 ]
  %72 = phi <4 x i32> [ %52, %41 ], [ %125, %93 ]
  %73 = phi <4 x i32> [ %54, %41 ], [ %151, %93 ]
  %74 = phi <4 x i32> [ %55, %41 ], [ %152, %93 ]
  %75 = phi <4 x i32> [ %56, %41 ], [ %155, %93 ]
  %76 = phi <4 x i32> [ %57, %41 ], [ %156, %93 ]
  %77 = phi <4 x i32> [ %53, %41 ], [ %124, %93 ]
  store <4 x i32> %77, ptr %0, align 4, !alias.scope !665, !noalias !673
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %72, ptr %78, align 4, !alias.scope !665, !noalias !673
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> %71, ptr %79, align 4, !alias.scope !665, !noalias !673
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> %70, ptr %80, align 4, !alias.scope !665, !noalias !673
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i32> %69, ptr %81, align 4, !alias.scope !665, !noalias !673
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i32> %68, ptr %82, align 4, !alias.scope !665, !noalias !673
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> %67, ptr %83, align 4, !alias.scope !665, !noalias !673
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x i32> %66, ptr %84, align 4, !alias.scope !665, !noalias !673
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <4 x i32> %65, ptr %85, align 4, !alias.scope !665, !noalias !673
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <4 x i32> %64, ptr %86, align 4, !alias.scope !665, !noalias !673
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <4 x i32> %63, ptr %87, align 4, !alias.scope !665, !noalias !673
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <4 x i32> %62, ptr %88, align 4, !alias.scope !665, !noalias !673
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <4 x i32> %73, ptr %89, align 4, !alias.scope !665, !noalias !673
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x i32> %74, ptr %90, align 4, !alias.scope !665, !noalias !673
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <4 x i32> %75, ptr %91, align 4, !alias.scope !665, !noalias !673
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <4 x i32> %76, ptr %92, align 4, !alias.scope !665, !noalias !673
  ret void

93:                                               ; preds = %41, %93
  %94 = phi i64 [ %157, %93 ], [ 0, %41 ]
  %95 = phi <4 x i32> [ %156, %93 ], [ %57, %41 ]
  %96 = phi <4 x i32> [ %155, %93 ], [ %56, %41 ]
  %97 = phi <4 x i32> [ %152, %93 ], [ %55, %41 ]
  %98 = phi <4 x i32> [ %151, %93 ], [ %54, %41 ]
  %99 = phi <4 x i32> [ %147, %93 ], [ %42, %41 ]
  %100 = phi <4 x i32> [ %146, %93 ], [ %43, %41 ]
  %101 = phi <4 x i32> [ %143, %93 ], [ %44, %41 ]
  %102 = phi <4 x i32> [ %142, %93 ], [ %45, %41 ]
  %103 = phi <4 x i32> [ %138, %93 ], [ %46, %41 ]
  %104 = phi <4 x i32> [ %137, %93 ], [ %47, %41 ]
  %105 = phi <4 x i32> [ %134, %93 ], [ %48, %41 ]
  %106 = phi <4 x i32> [ %133, %93 ], [ %49, %41 ]
  %107 = phi <4 x i32> [ %129, %93 ], [ %50, %41 ]
  %108 = phi <4 x i32> [ %128, %93 ], [ %51, %41 ]
  %109 = phi <4 x i32> [ %125, %93 ], [ %52, %41 ]
  %110 = phi ptr [ %120, %93 ], [ %1, %41 ]
  %111 = phi ptr [ %119, %93 ], [ %2, %41 ]
  %112 = phi <4 x i32> [ %124, %93 ], [ %53, %41 ]
  %113 = load <16 x i8>, ptr %111, align 1, !alias.scope !670, !noalias !674
  %114 = getelementptr inbounds nuw i8, ptr %111, i64 16
  %115 = load <16 x i8>, ptr %114, align 1, !alias.scope !670, !noalias !674
  %116 = load <16 x i8>, ptr %110, align 1, !alias.scope !668, !noalias !675
  %117 = getelementptr inbounds nuw i8, ptr %110, i64 16
  %118 = load <16 x i8>, ptr %117, align 1, !alias.scope !668, !noalias !675
  %119 = getelementptr inbounds nuw i8, ptr %111, i64 32
  %120 = getelementptr inbounds nuw i8, ptr %110, i64 32
  %121 = bitcast <16 x i8> %116 to <4 x i32>
  %122 = shufflevector <4 x i32> %121, <4 x i32> poison, <4 x i32> zeroinitializer
  %123 = bitcast <4 x i32> %122 to <16 x i8>
  %124 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %112, <16 x i8> %113, <16 x i8> %123)
  %125 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %109, <16 x i8> %115, <16 x i8> %123)
  %126 = shufflevector <4 x i32> %121, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %127 = bitcast <4 x i32> %126 to <16 x i8>
  %128 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %108, <16 x i8> %113, <16 x i8> %127)
  %129 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %107, <16 x i8> %115, <16 x i8> %127)
  %130 = bitcast <16 x i8> %116 to <4 x i32>
  %131 = shufflevector <4 x i32> %130, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %132 = bitcast <4 x i32> %131 to <16 x i8>
  %133 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %106, <16 x i8> %113, <16 x i8> %132)
  %134 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %105, <16 x i8> %115, <16 x i8> %132)
  %135 = shufflevector <4 x i32> %130, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %136 = bitcast <4 x i32> %135 to <16 x i8>
  %137 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %104, <16 x i8> %113, <16 x i8> %136)
  %138 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %103, <16 x i8> %115, <16 x i8> %136)
  %139 = bitcast <16 x i8> %118 to <4 x i32>
  %140 = shufflevector <4 x i32> %139, <4 x i32> poison, <4 x i32> zeroinitializer
  %141 = bitcast <4 x i32> %140 to <16 x i8>
  %142 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %102, <16 x i8> %113, <16 x i8> %141)
  %143 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %101, <16 x i8> %115, <16 x i8> %141)
  %144 = shufflevector <4 x i32> %139, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %145 = bitcast <4 x i32> %144 to <16 x i8>
  %146 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %100, <16 x i8> %113, <16 x i8> %145)
  %147 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %99, <16 x i8> %115, <16 x i8> %145)
  %148 = bitcast <16 x i8> %118 to <4 x i32>
  %149 = shufflevector <4 x i32> %148, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %150 = bitcast <4 x i32> %149 to <16 x i8>
  %151 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %98, <16 x i8> %113, <16 x i8> %150)
  %152 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %97, <16 x i8> %115, <16 x i8> %150)
  %153 = shufflevector <4 x i32> %148, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %154 = bitcast <4 x i32> %153 to <16 x i8>
  %155 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %96, <16 x i8> %113, <16 x i8> %154)
  %156 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %95, <16 x i8> %115, <16 x i8> %154)
  %157 = add nuw nsw i64 %94, 1
  %158 = icmp eq i64 %157, %59
  br i1 %158, label %61, label %93, !llvm.loop !642
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_1x8x8_arm_64_i8mm(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #19 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !683
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load <2 x i64>, ptr %0, align 4, !alias.scope !676, !noalias !684
  %11 = insertelement <2 x i64> %10, i64 0, i64 1
  %12 = shufflevector <2 x i64> %10, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 1, i32 3>
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %14 = load <2 x i64>, ptr %13, align 4, !alias.scope !676, !noalias !684
  %15 = insertelement <2 x i64> %14, i64 0, i64 1
  %16 = shufflevector <2 x i64> %14, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 1, i32 3>
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi <2 x i64> [ %11, %9 ], [ zeroinitializer, %4 ]
  %19 = phi <2 x i64> [ %12, %9 ], [ zeroinitializer, %4 ]
  %20 = phi <2 x i64> [ %15, %9 ], [ zeroinitializer, %4 ]
  %21 = phi <2 x i64> [ %16, %9 ], [ zeroinitializer, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %23 = load i64, ptr %22, align 8, !tbaa !142, !noalias !683
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %17
  %26 = bitcast <2 x i64> %18 to <4 x i32>
  %27 = bitcast <2 x i64> %19 to <4 x i32>
  %28 = bitcast <2 x i64> %20 to <4 x i32>
  %29 = bitcast <2 x i64> %21 to <4 x i32>
  br label %35

30:                                               ; preds = %35
  %31 = bitcast <4 x i32> %55 to <2 x i64>
  %32 = bitcast <4 x i32> %54 to <2 x i64>
  %33 = bitcast <4 x i32> %53 to <2 x i64>
  %34 = bitcast <4 x i32> %52 to <2 x i64>
  br label %60

35:                                               ; preds = %25, %35
  %36 = phi <4 x i32> [ %26, %25 ], [ %52, %35 ]
  %37 = phi <4 x i32> [ %27, %25 ], [ %53, %35 ]
  %38 = phi <4 x i32> [ %28, %25 ], [ %54, %35 ]
  %39 = phi <4 x i32> [ %29, %25 ], [ %55, %35 ]
  %40 = phi i64 [ 0, %25 ], [ %58, %35 ]
  %41 = phi ptr [ %1, %25 ], [ %57, %35 ]
  %42 = phi ptr [ %2, %25 ], [ %56, %35 ]
  %43 = load <16 x i8>, ptr %42, align 1, !alias.scope !681, !noalias !685
  %44 = getelementptr inbounds nuw i8, ptr %42, i64 16
  %45 = load <16 x i8>, ptr %44, align 1, !alias.scope !681, !noalias !685
  %46 = getelementptr inbounds nuw i8, ptr %42, i64 32
  %47 = load <16 x i8>, ptr %46, align 1, !alias.scope !681, !noalias !685
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 48
  %49 = load <16 x i8>, ptr %48, align 1, !alias.scope !681, !noalias !685
  %50 = load <8 x i8>, ptr %41, align 1, !alias.scope !679, !noalias !686
  %51 = shufflevector <8 x i8> %50, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %52 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %36, <16 x i8> %51, <16 x i8> %43)
  %53 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %37, <16 x i8> %51, <16 x i8> %45)
  %54 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %38, <16 x i8> %51, <16 x i8> %47)
  %55 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %39, <16 x i8> %51, <16 x i8> %49)
  %56 = getelementptr inbounds nuw i8, ptr %42, i64 64
  %57 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %58 = add nuw nsw i64 %40, 1
  %59 = icmp eq i64 %58, %23
  br i1 %59, label %30, label %35, !llvm.loop !687

60:                                               ; preds = %17, %30
  %61 = phi <2 x i64> [ %34, %30 ], [ %18, %17 ]
  %62 = phi <2 x i64> [ %33, %30 ], [ %19, %17 ]
  %63 = phi <2 x i64> [ %32, %30 ], [ %20, %17 ]
  %64 = phi <2 x i64> [ %31, %30 ], [ %21, %17 ]
  %65 = shufflevector <2 x i64> %61, <2 x i64> %62, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %65, ptr %0, align 4, !alias.scope !676, !noalias !684
  %66 = shufflevector <2 x i64> %63, <2 x i64> %64, <2 x i32> <i32 0, i32 2>
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %66, ptr %67, align 4, !alias.scope !676, !noalias !684
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_2x8x8_arm_64_i8mm(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #19 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !695
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i64 32
  %11 = load <2 x i64>, ptr %0, align 4, !alias.scope !688, !noalias !696
  %12 = load <2 x i64>, ptr %10, align 4, !alias.scope !688, !noalias !696
  %13 = shufflevector <2 x i64> %11, <2 x i64> %12, <2 x i32> <i32 0, i32 2>
  %14 = shufflevector <2 x i64> %11, <2 x i64> %12, <2 x i32> <i32 1, i32 3>
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load <2 x i64>, ptr %15, align 4, !alias.scope !688, !noalias !696
  %17 = getelementptr i8, ptr %0, i64 48
  %18 = load <2 x i64>, ptr %17, align 4, !alias.scope !688, !noalias !696
  %19 = shufflevector <2 x i64> %16, <2 x i64> %18, <2 x i32> <i32 0, i32 2>
  %20 = shufflevector <2 x i64> %16, <2 x i64> %18, <2 x i32> <i32 1, i32 3>
  br label %21

21:                                               ; preds = %4, %9
  %22 = phi <2 x i64> [ %13, %9 ], [ zeroinitializer, %4 ]
  %23 = phi <2 x i64> [ %14, %9 ], [ zeroinitializer, %4 ]
  %24 = phi <2 x i64> [ %19, %9 ], [ zeroinitializer, %4 ]
  %25 = phi <2 x i64> [ %20, %9 ], [ zeroinitializer, %4 ]
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %27 = load i64, ptr %26, align 8, !tbaa !142, !noalias !695
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %21
  %30 = bitcast <2 x i64> %22 to <4 x i32>
  %31 = bitcast <2 x i64> %23 to <4 x i32>
  %32 = bitcast <2 x i64> %24 to <4 x i32>
  %33 = bitcast <2 x i64> %25 to <4 x i32>
  br label %39

34:                                               ; preds = %39
  %35 = bitcast <4 x i32> %58 to <2 x i64>
  %36 = bitcast <4 x i32> %57 to <2 x i64>
  %37 = bitcast <4 x i32> %56 to <2 x i64>
  %38 = bitcast <4 x i32> %55 to <2 x i64>
  br label %63

39:                                               ; preds = %29, %39
  %40 = phi <4 x i32> [ %30, %29 ], [ %55, %39 ]
  %41 = phi <4 x i32> [ %31, %29 ], [ %56, %39 ]
  %42 = phi <4 x i32> [ %32, %29 ], [ %57, %39 ]
  %43 = phi <4 x i32> [ %33, %29 ], [ %58, %39 ]
  %44 = phi i64 [ 0, %29 ], [ %61, %39 ]
  %45 = phi ptr [ %1, %29 ], [ %60, %39 ]
  %46 = phi ptr [ %2, %29 ], [ %59, %39 ]
  %47 = load <16 x i8>, ptr %46, align 1, !alias.scope !693, !noalias !697
  %48 = getelementptr inbounds nuw i8, ptr %46, i64 16
  %49 = load <16 x i8>, ptr %48, align 1, !alias.scope !693, !noalias !697
  %50 = getelementptr inbounds nuw i8, ptr %46, i64 32
  %51 = load <16 x i8>, ptr %50, align 1, !alias.scope !693, !noalias !697
  %52 = getelementptr inbounds nuw i8, ptr %46, i64 48
  %53 = load <16 x i8>, ptr %52, align 1, !alias.scope !693, !noalias !697
  %54 = load <16 x i8>, ptr %45, align 1, !alias.scope !691, !noalias !698
  %55 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %40, <16 x i8> %54, <16 x i8> %47)
  %56 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %41, <16 x i8> %54, <16 x i8> %49)
  %57 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %42, <16 x i8> %54, <16 x i8> %51)
  %58 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %43, <16 x i8> %54, <16 x i8> %53)
  %59 = getelementptr inbounds nuw i8, ptr %46, i64 64
  %60 = getelementptr inbounds nuw i8, ptr %45, i64 16
  %61 = add nuw nsw i64 %44, 1
  %62 = icmp eq i64 %61, %27
  br i1 %62, label %34, label %39, !llvm.loop !687

63:                                               ; preds = %21, %34
  %64 = phi <2 x i64> [ %38, %34 ], [ %22, %21 ]
  %65 = phi <2 x i64> [ %37, %34 ], [ %23, %21 ]
  %66 = phi <2 x i64> [ %36, %34 ], [ %24, %21 ]
  %67 = phi <2 x i64> [ %35, %34 ], [ %25, %21 ]
  %68 = getelementptr i8, ptr %0, i64 32
  %69 = shufflevector <2 x i64> %64, <2 x i64> %65, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %69, ptr %0, align 4, !alias.scope !688, !noalias !696
  %70 = shufflevector <2 x i64> %64, <2 x i64> %65, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %70, ptr %68, align 4, !alias.scope !688, !noalias !696
  %71 = shufflevector <2 x i64> %66, <2 x i64> %67, <2 x i32> <i32 0, i32 2>
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %71, ptr %72, align 4, !alias.scope !688, !noalias !696
  %73 = shufflevector <2 x i64> %66, <2 x i64> %67, <2 x i32> <i32 1, i32 3>
  %74 = getelementptr i8, ptr %0, i64 48
  store <2 x i64> %73, ptr %74, align 4, !alias.scope !688, !noalias !696
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_4x8x8_arm_64_i8mm(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #19 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !706
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i64 32
  %11 = load <2 x i64>, ptr %0, align 4, !alias.scope !699, !noalias !707
  %12 = load <2 x i64>, ptr %10, align 4, !alias.scope !699, !noalias !707
  %13 = shufflevector <2 x i64> %11, <2 x i64> %12, <2 x i32> <i32 0, i32 2>
  %14 = shufflevector <2 x i64> %11, <2 x i64> %12, <2 x i32> <i32 1, i32 3>
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load <2 x i64>, ptr %15, align 4, !alias.scope !699, !noalias !707
  %17 = getelementptr i8, ptr %0, i64 48
  %18 = load <2 x i64>, ptr %17, align 4, !alias.scope !699, !noalias !707
  %19 = shufflevector <2 x i64> %16, <2 x i64> %18, <2 x i32> <i32 0, i32 2>
  %20 = shufflevector <2 x i64> %16, <2 x i64> %18, <2 x i32> <i32 1, i32 3>
  %21 = getelementptr i8, ptr %0, i64 64
  %22 = getelementptr i8, ptr %0, i64 96
  %23 = load <2 x i64>, ptr %21, align 4, !alias.scope !699, !noalias !707
  %24 = load <2 x i64>, ptr %22, align 4, !alias.scope !699, !noalias !707
  %25 = shufflevector <2 x i64> %23, <2 x i64> %24, <2 x i32> <i32 0, i32 2>
  %26 = shufflevector <2 x i64> %23, <2 x i64> %24, <2 x i32> <i32 1, i32 3>
  %27 = getelementptr i8, ptr %0, i64 80
  %28 = load <2 x i64>, ptr %27, align 4, !alias.scope !699, !noalias !707
  %29 = getelementptr i8, ptr %0, i64 112
  %30 = load <2 x i64>, ptr %29, align 4, !alias.scope !699, !noalias !707
  %31 = shufflevector <2 x i64> %28, <2 x i64> %30, <2 x i32> <i32 0, i32 2>
  %32 = shufflevector <2 x i64> %28, <2 x i64> %30, <2 x i32> <i32 1, i32 3>
  br label %33

33:                                               ; preds = %4, %9
  %34 = phi <2 x i64> [ %13, %9 ], [ zeroinitializer, %4 ]
  %35 = phi <2 x i64> [ %14, %9 ], [ zeroinitializer, %4 ]
  %36 = phi <2 x i64> [ %19, %9 ], [ zeroinitializer, %4 ]
  %37 = phi <2 x i64> [ %20, %9 ], [ zeroinitializer, %4 ]
  %38 = phi <2 x i64> [ %25, %9 ], [ zeroinitializer, %4 ]
  %39 = phi <2 x i64> [ %26, %9 ], [ zeroinitializer, %4 ]
  %40 = phi <2 x i64> [ %31, %9 ], [ zeroinitializer, %4 ]
  %41 = phi <2 x i64> [ %32, %9 ], [ zeroinitializer, %4 ]
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %43 = load i64, ptr %42, align 8, !tbaa !142, !noalias !706
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %33
  %46 = bitcast <2 x i64> %34 to <4 x i32>
  %47 = bitcast <2 x i64> %35 to <4 x i32>
  %48 = bitcast <2 x i64> %36 to <4 x i32>
  %49 = bitcast <2 x i64> %37 to <4 x i32>
  %50 = bitcast <2 x i64> %38 to <4 x i32>
  %51 = bitcast <2 x i64> %39 to <4 x i32>
  %52 = bitcast <2 x i64> %40 to <4 x i32>
  %53 = bitcast <2 x i64> %41 to <4 x i32>
  br label %87

54:                                               ; preds = %87
  %55 = bitcast <4 x i32> %116 to <2 x i64>
  %56 = bitcast <4 x i32> %115 to <2 x i64>
  %57 = bitcast <4 x i32> %114 to <2 x i64>
  %58 = bitcast <4 x i32> %113 to <2 x i64>
  %59 = bitcast <4 x i32> %112 to <2 x i64>
  %60 = bitcast <4 x i32> %111 to <2 x i64>
  %61 = bitcast <4 x i32> %110 to <2 x i64>
  %62 = bitcast <4 x i32> %109 to <2 x i64>
  br label %63

63:                                               ; preds = %54, %33
  %64 = phi <2 x i64> [ %62, %54 ], [ %34, %33 ]
  %65 = phi <2 x i64> [ %61, %54 ], [ %35, %33 ]
  %66 = phi <2 x i64> [ %60, %54 ], [ %36, %33 ]
  %67 = phi <2 x i64> [ %59, %54 ], [ %37, %33 ]
  %68 = phi <2 x i64> [ %58, %54 ], [ %38, %33 ]
  %69 = phi <2 x i64> [ %57, %54 ], [ %39, %33 ]
  %70 = phi <2 x i64> [ %56, %54 ], [ %40, %33 ]
  %71 = phi <2 x i64> [ %55, %54 ], [ %41, %33 ]
  %72 = getelementptr i8, ptr %0, i64 32
  %73 = shufflevector <2 x i64> %64, <2 x i64> %65, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %73, ptr %0, align 4, !alias.scope !699, !noalias !707
  %74 = shufflevector <2 x i64> %64, <2 x i64> %65, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %74, ptr %72, align 4, !alias.scope !699, !noalias !707
  %75 = shufflevector <2 x i64> %66, <2 x i64> %67, <2 x i32> <i32 0, i32 2>
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %75, ptr %76, align 4, !alias.scope !699, !noalias !707
  %77 = shufflevector <2 x i64> %66, <2 x i64> %67, <2 x i32> <i32 1, i32 3>
  %78 = getelementptr i8, ptr %0, i64 48
  store <2 x i64> %77, ptr %78, align 4, !alias.scope !699, !noalias !707
  %79 = getelementptr i8, ptr %0, i64 64
  %80 = getelementptr i8, ptr %0, i64 96
  %81 = shufflevector <2 x i64> %68, <2 x i64> %69, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %81, ptr %79, align 4, !alias.scope !699, !noalias !707
  %82 = shufflevector <2 x i64> %68, <2 x i64> %69, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %82, ptr %80, align 4, !alias.scope !699, !noalias !707
  %83 = shufflevector <2 x i64> %70, <2 x i64> %71, <2 x i32> <i32 0, i32 2>
  %84 = getelementptr i8, ptr %0, i64 80
  store <2 x i64> %83, ptr %84, align 4, !alias.scope !699, !noalias !707
  %85 = shufflevector <2 x i64> %70, <2 x i64> %71, <2 x i32> <i32 1, i32 3>
  %86 = getelementptr i8, ptr %0, i64 112
  store <2 x i64> %85, ptr %86, align 4, !alias.scope !699, !noalias !707
  ret void

87:                                               ; preds = %45, %87
  %88 = phi <4 x i32> [ %46, %45 ], [ %109, %87 ]
  %89 = phi <4 x i32> [ %47, %45 ], [ %110, %87 ]
  %90 = phi <4 x i32> [ %48, %45 ], [ %111, %87 ]
  %91 = phi <4 x i32> [ %49, %45 ], [ %112, %87 ]
  %92 = phi <4 x i32> [ %50, %45 ], [ %113, %87 ]
  %93 = phi <4 x i32> [ %51, %45 ], [ %114, %87 ]
  %94 = phi <4 x i32> [ %52, %45 ], [ %115, %87 ]
  %95 = phi <4 x i32> [ %53, %45 ], [ %116, %87 ]
  %96 = phi i64 [ 0, %45 ], [ %119, %87 ]
  %97 = phi ptr [ %1, %45 ], [ %117, %87 ]
  %98 = phi ptr [ %2, %45 ], [ %118, %87 ]
  %99 = load <16 x i8>, ptr %98, align 1, !alias.scope !704, !noalias !708
  %100 = getelementptr inbounds nuw i8, ptr %98, i64 16
  %101 = load <16 x i8>, ptr %100, align 1, !alias.scope !704, !noalias !708
  %102 = getelementptr inbounds nuw i8, ptr %98, i64 32
  %103 = load <16 x i8>, ptr %102, align 1, !alias.scope !704, !noalias !708
  %104 = getelementptr inbounds nuw i8, ptr %98, i64 48
  %105 = load <16 x i8>, ptr %104, align 1, !alias.scope !704, !noalias !708
  %106 = load <16 x i8>, ptr %97, align 1, !alias.scope !702, !noalias !709
  %107 = getelementptr inbounds nuw i8, ptr %97, i64 16
  %108 = load <16 x i8>, ptr %107, align 1, !alias.scope !702, !noalias !709
  %109 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %88, <16 x i8> %106, <16 x i8> %99)
  %110 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %89, <16 x i8> %106, <16 x i8> %101)
  %111 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %90, <16 x i8> %106, <16 x i8> %103)
  %112 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %91, <16 x i8> %106, <16 x i8> %105)
  %113 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %92, <16 x i8> %108, <16 x i8> %99)
  %114 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %93, <16 x i8> %108, <16 x i8> %101)
  %115 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %94, <16 x i8> %108, <16 x i8> %103)
  %116 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %95, <16 x i8> %108, <16 x i8> %105)
  %117 = getelementptr inbounds nuw i8, ptr %97, i64 32
  %118 = getelementptr inbounds nuw i8, ptr %98, i64 64
  %119 = add nuw nsw i64 %96, 1
  %120 = icmp eq i64 %119, %43
  br i1 %120, label %54, label %87, !llvm.loop !687
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_8x8x8_arm_64_i8mm(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #19 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !146, !noalias !717
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %57, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i64 32
  %11 = load <2 x i64>, ptr %0, align 4, !alias.scope !710, !noalias !718
  %12 = load <2 x i64>, ptr %10, align 4, !alias.scope !710, !noalias !718
  %13 = shufflevector <2 x i64> %11, <2 x i64> %12, <2 x i32> <i32 0, i32 2>
  %14 = shufflevector <2 x i64> %11, <2 x i64> %12, <2 x i32> <i32 1, i32 3>
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load <2 x i64>, ptr %15, align 4, !alias.scope !710, !noalias !718
  %17 = getelementptr i8, ptr %0, i64 48
  %18 = load <2 x i64>, ptr %17, align 4, !alias.scope !710, !noalias !718
  %19 = shufflevector <2 x i64> %16, <2 x i64> %18, <2 x i32> <i32 0, i32 2>
  %20 = shufflevector <2 x i64> %16, <2 x i64> %18, <2 x i32> <i32 1, i32 3>
  %21 = getelementptr i8, ptr %0, i64 64
  %22 = getelementptr i8, ptr %0, i64 96
  %23 = load <2 x i64>, ptr %21, align 4, !alias.scope !710, !noalias !718
  %24 = load <2 x i64>, ptr %22, align 4, !alias.scope !710, !noalias !718
  %25 = shufflevector <2 x i64> %23, <2 x i64> %24, <2 x i32> <i32 0, i32 2>
  %26 = shufflevector <2 x i64> %23, <2 x i64> %24, <2 x i32> <i32 1, i32 3>
  %27 = getelementptr i8, ptr %0, i64 80
  %28 = load <2 x i64>, ptr %27, align 4, !alias.scope !710, !noalias !718
  %29 = getelementptr i8, ptr %0, i64 112
  %30 = load <2 x i64>, ptr %29, align 4, !alias.scope !710, !noalias !718
  %31 = shufflevector <2 x i64> %28, <2 x i64> %30, <2 x i32> <i32 0, i32 2>
  %32 = shufflevector <2 x i64> %28, <2 x i64> %30, <2 x i32> <i32 1, i32 3>
  %33 = getelementptr i8, ptr %0, i64 128
  %34 = getelementptr i8, ptr %0, i64 160
  %35 = load <2 x i64>, ptr %33, align 4, !alias.scope !710, !noalias !718
  %36 = load <2 x i64>, ptr %34, align 4, !alias.scope !710, !noalias !718
  %37 = shufflevector <2 x i64> %35, <2 x i64> %36, <2 x i32> <i32 0, i32 2>
  %38 = shufflevector <2 x i64> %35, <2 x i64> %36, <2 x i32> <i32 1, i32 3>
  %39 = getelementptr i8, ptr %0, i64 144
  %40 = load <2 x i64>, ptr %39, align 4, !alias.scope !710, !noalias !718
  %41 = getelementptr i8, ptr %0, i64 176
  %42 = load <2 x i64>, ptr %41, align 4, !alias.scope !710, !noalias !718
  %43 = shufflevector <2 x i64> %40, <2 x i64> %42, <2 x i32> <i32 0, i32 2>
  %44 = shufflevector <2 x i64> %40, <2 x i64> %42, <2 x i32> <i32 1, i32 3>
  %45 = getelementptr i8, ptr %0, i64 192
  %46 = getelementptr i8, ptr %0, i64 224
  %47 = load <2 x i64>, ptr %45, align 4, !alias.scope !710, !noalias !718
  %48 = load <2 x i64>, ptr %46, align 4, !alias.scope !710, !noalias !718
  %49 = shufflevector <2 x i64> %47, <2 x i64> %48, <2 x i32> <i32 0, i32 2>
  %50 = shufflevector <2 x i64> %47, <2 x i64> %48, <2 x i32> <i32 1, i32 3>
  %51 = getelementptr i8, ptr %0, i64 208
  %52 = load <2 x i64>, ptr %51, align 4, !alias.scope !710, !noalias !718
  %53 = getelementptr i8, ptr %0, i64 240
  %54 = load <2 x i64>, ptr %53, align 4, !alias.scope !710, !noalias !718
  %55 = shufflevector <2 x i64> %52, <2 x i64> %54, <2 x i32> <i32 0, i32 2>
  %56 = shufflevector <2 x i64> %52, <2 x i64> %54, <2 x i32> <i32 1, i32 3>
  br label %57

57:                                               ; preds = %4, %9
  %58 = phi <2 x i64> [ %32, %9 ], [ zeroinitializer, %4 ]
  %59 = phi <2 x i64> [ %31, %9 ], [ zeroinitializer, %4 ]
  %60 = phi <2 x i64> [ %26, %9 ], [ zeroinitializer, %4 ]
  %61 = phi <2 x i64> [ %25, %9 ], [ zeroinitializer, %4 ]
  %62 = phi <2 x i64> [ %20, %9 ], [ zeroinitializer, %4 ]
  %63 = phi <2 x i64> [ %19, %9 ], [ zeroinitializer, %4 ]
  %64 = phi <2 x i64> [ %14, %9 ], [ zeroinitializer, %4 ]
  %65 = phi <2 x i64> [ %13, %9 ], [ zeroinitializer, %4 ]
  %66 = phi <2 x i64> [ %37, %9 ], [ zeroinitializer, %4 ]
  %67 = phi <2 x i64> [ %38, %9 ], [ zeroinitializer, %4 ]
  %68 = phi <2 x i64> [ %43, %9 ], [ zeroinitializer, %4 ]
  %69 = phi <2 x i64> [ %44, %9 ], [ zeroinitializer, %4 ]
  %70 = phi <2 x i64> [ %49, %9 ], [ zeroinitializer, %4 ]
  %71 = phi <2 x i64> [ %50, %9 ], [ zeroinitializer, %4 ]
  %72 = phi <2 x i64> [ %55, %9 ], [ zeroinitializer, %4 ]
  %73 = phi <2 x i64> [ %56, %9 ], [ zeroinitializer, %4 ]
  %74 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %75 = load i64, ptr %74, align 8, !tbaa !142, !noalias !717
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %111

77:                                               ; preds = %57
  %78 = bitcast <2 x i64> %65 to <4 x i32>
  %79 = bitcast <2 x i64> %64 to <4 x i32>
  %80 = bitcast <2 x i64> %63 to <4 x i32>
  %81 = bitcast <2 x i64> %62 to <4 x i32>
  %82 = bitcast <2 x i64> %61 to <4 x i32>
  %83 = bitcast <2 x i64> %60 to <4 x i32>
  %84 = bitcast <2 x i64> %59 to <4 x i32>
  %85 = bitcast <2 x i64> %58 to <4 x i32>
  %86 = bitcast <2 x i64> %66 to <4 x i32>
  %87 = bitcast <2 x i64> %67 to <4 x i32>
  %88 = bitcast <2 x i64> %68 to <4 x i32>
  %89 = bitcast <2 x i64> %69 to <4 x i32>
  %90 = bitcast <2 x i64> %70 to <4 x i32>
  %91 = bitcast <2 x i64> %71 to <4 x i32>
  %92 = bitcast <2 x i64> %72 to <4 x i32>
  %93 = bitcast <2 x i64> %73 to <4 x i32>
  br label %159

94:                                               ; preds = %159
  %95 = bitcast <4 x i32> %208 to <2 x i64>
  %96 = bitcast <4 x i32> %207 to <2 x i64>
  %97 = bitcast <4 x i32> %206 to <2 x i64>
  %98 = bitcast <4 x i32> %205 to <2 x i64>
  %99 = bitcast <4 x i32> %204 to <2 x i64>
  %100 = bitcast <4 x i32> %203 to <2 x i64>
  %101 = bitcast <4 x i32> %202 to <2 x i64>
  %102 = bitcast <4 x i32> %201 to <2 x i64>
  %103 = bitcast <4 x i32> %200 to <2 x i64>
  %104 = bitcast <4 x i32> %199 to <2 x i64>
  %105 = bitcast <4 x i32> %198 to <2 x i64>
  %106 = bitcast <4 x i32> %197 to <2 x i64>
  %107 = bitcast <4 x i32> %196 to <2 x i64>
  %108 = bitcast <4 x i32> %195 to <2 x i64>
  %109 = bitcast <4 x i32> %194 to <2 x i64>
  %110 = bitcast <4 x i32> %193 to <2 x i64>
  br label %111

111:                                              ; preds = %94, %57
  %112 = phi <2 x i64> [ %103, %94 ], [ %58, %57 ]
  %113 = phi <2 x i64> [ %104, %94 ], [ %59, %57 ]
  %114 = phi <2 x i64> [ %105, %94 ], [ %60, %57 ]
  %115 = phi <2 x i64> [ %106, %94 ], [ %61, %57 ]
  %116 = phi <2 x i64> [ %107, %94 ], [ %62, %57 ]
  %117 = phi <2 x i64> [ %108, %94 ], [ %63, %57 ]
  %118 = phi <2 x i64> [ %109, %94 ], [ %64, %57 ]
  %119 = phi <2 x i64> [ %110, %94 ], [ %65, %57 ]
  %120 = phi <2 x i64> [ %102, %94 ], [ %66, %57 ]
  %121 = phi <2 x i64> [ %101, %94 ], [ %67, %57 ]
  %122 = phi <2 x i64> [ %100, %94 ], [ %68, %57 ]
  %123 = phi <2 x i64> [ %99, %94 ], [ %69, %57 ]
  %124 = phi <2 x i64> [ %98, %94 ], [ %70, %57 ]
  %125 = phi <2 x i64> [ %97, %94 ], [ %71, %57 ]
  %126 = phi <2 x i64> [ %96, %94 ], [ %72, %57 ]
  %127 = phi <2 x i64> [ %95, %94 ], [ %73, %57 ]
  %128 = getelementptr i8, ptr %0, i64 32
  %129 = shufflevector <2 x i64> %119, <2 x i64> %118, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %129, ptr %0, align 4, !alias.scope !710, !noalias !718
  %130 = shufflevector <2 x i64> %119, <2 x i64> %118, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %130, ptr %128, align 4, !alias.scope !710, !noalias !718
  %131 = shufflevector <2 x i64> %117, <2 x i64> %116, <2 x i32> <i32 0, i32 2>
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %131, ptr %132, align 4, !alias.scope !710, !noalias !718
  %133 = shufflevector <2 x i64> %117, <2 x i64> %116, <2 x i32> <i32 1, i32 3>
  %134 = getelementptr i8, ptr %0, i64 48
  store <2 x i64> %133, ptr %134, align 4, !alias.scope !710, !noalias !718
  %135 = getelementptr i8, ptr %0, i64 64
  %136 = getelementptr i8, ptr %0, i64 96
  %137 = shufflevector <2 x i64> %115, <2 x i64> %114, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %137, ptr %135, align 4, !alias.scope !710, !noalias !718
  %138 = shufflevector <2 x i64> %115, <2 x i64> %114, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %138, ptr %136, align 4, !alias.scope !710, !noalias !718
  %139 = shufflevector <2 x i64> %113, <2 x i64> %112, <2 x i32> <i32 0, i32 2>
  %140 = getelementptr i8, ptr %0, i64 80
  store <2 x i64> %139, ptr %140, align 4, !alias.scope !710, !noalias !718
  %141 = shufflevector <2 x i64> %113, <2 x i64> %112, <2 x i32> <i32 1, i32 3>
  %142 = getelementptr i8, ptr %0, i64 112
  store <2 x i64> %141, ptr %142, align 4, !alias.scope !710, !noalias !718
  %143 = getelementptr i8, ptr %0, i64 128
  %144 = getelementptr i8, ptr %0, i64 160
  %145 = shufflevector <2 x i64> %120, <2 x i64> %121, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %145, ptr %143, align 4, !alias.scope !710, !noalias !718
  %146 = shufflevector <2 x i64> %120, <2 x i64> %121, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %146, ptr %144, align 4, !alias.scope !710, !noalias !718
  %147 = shufflevector <2 x i64> %122, <2 x i64> %123, <2 x i32> <i32 0, i32 2>
  %148 = getelementptr i8, ptr %0, i64 144
  store <2 x i64> %147, ptr %148, align 4, !alias.scope !710, !noalias !718
  %149 = shufflevector <2 x i64> %122, <2 x i64> %123, <2 x i32> <i32 1, i32 3>
  %150 = getelementptr i8, ptr %0, i64 176
  store <2 x i64> %149, ptr %150, align 4, !alias.scope !710, !noalias !718
  %151 = getelementptr i8, ptr %0, i64 192
  %152 = getelementptr i8, ptr %0, i64 224
  %153 = shufflevector <2 x i64> %124, <2 x i64> %125, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %153, ptr %151, align 4, !alias.scope !710, !noalias !718
  %154 = shufflevector <2 x i64> %124, <2 x i64> %125, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %154, ptr %152, align 4, !alias.scope !710, !noalias !718
  %155 = shufflevector <2 x i64> %126, <2 x i64> %127, <2 x i32> <i32 0, i32 2>
  %156 = getelementptr i8, ptr %0, i64 208
  store <2 x i64> %155, ptr %156, align 4, !alias.scope !710, !noalias !718
  %157 = shufflevector <2 x i64> %126, <2 x i64> %127, <2 x i32> <i32 1, i32 3>
  %158 = getelementptr i8, ptr %0, i64 240
  store <2 x i64> %157, ptr %158, align 4, !alias.scope !710, !noalias !718
  ret void

159:                                              ; preds = %77, %159
  %160 = phi <4 x i32> [ %85, %77 ], [ %200, %159 ]
  %161 = phi <4 x i32> [ %84, %77 ], [ %199, %159 ]
  %162 = phi <4 x i32> [ %83, %77 ], [ %198, %159 ]
  %163 = phi <4 x i32> [ %82, %77 ], [ %197, %159 ]
  %164 = phi <4 x i32> [ %81, %77 ], [ %196, %159 ]
  %165 = phi <4 x i32> [ %80, %77 ], [ %195, %159 ]
  %166 = phi <4 x i32> [ %79, %77 ], [ %194, %159 ]
  %167 = phi <4 x i32> [ %78, %77 ], [ %193, %159 ]
  %168 = phi <4 x i32> [ %86, %77 ], [ %201, %159 ]
  %169 = phi <4 x i32> [ %87, %77 ], [ %202, %159 ]
  %170 = phi <4 x i32> [ %88, %77 ], [ %203, %159 ]
  %171 = phi <4 x i32> [ %89, %77 ], [ %204, %159 ]
  %172 = phi <4 x i32> [ %90, %77 ], [ %205, %159 ]
  %173 = phi <4 x i32> [ %91, %77 ], [ %206, %159 ]
  %174 = phi <4 x i32> [ %92, %77 ], [ %207, %159 ]
  %175 = phi <4 x i32> [ %93, %77 ], [ %208, %159 ]
  %176 = phi i64 [ 0, %77 ], [ %211, %159 ]
  %177 = phi ptr [ %1, %77 ], [ %209, %159 ]
  %178 = phi ptr [ %2, %77 ], [ %210, %159 ]
  %179 = load <16 x i8>, ptr %178, align 1, !alias.scope !715, !noalias !719
  %180 = getelementptr inbounds nuw i8, ptr %178, i64 16
  %181 = load <16 x i8>, ptr %180, align 1, !alias.scope !715, !noalias !719
  %182 = getelementptr inbounds nuw i8, ptr %178, i64 32
  %183 = load <16 x i8>, ptr %182, align 1, !alias.scope !715, !noalias !719
  %184 = getelementptr inbounds nuw i8, ptr %178, i64 48
  %185 = load <16 x i8>, ptr %184, align 1, !alias.scope !715, !noalias !719
  %186 = load <16 x i8>, ptr %177, align 1, !alias.scope !713, !noalias !720
  %187 = getelementptr inbounds nuw i8, ptr %177, i64 16
  %188 = load <16 x i8>, ptr %187, align 1, !alias.scope !713, !noalias !720
  %189 = getelementptr inbounds nuw i8, ptr %177, i64 32
  %190 = load <16 x i8>, ptr %189, align 1, !alias.scope !713, !noalias !720
  %191 = getelementptr inbounds nuw i8, ptr %177, i64 48
  %192 = load <16 x i8>, ptr %191, align 1, !alias.scope !713, !noalias !720
  %193 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %167, <16 x i8> %186, <16 x i8> %179)
  %194 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %166, <16 x i8> %186, <16 x i8> %181)
  %195 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %165, <16 x i8> %186, <16 x i8> %183)
  %196 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %164, <16 x i8> %186, <16 x i8> %185)
  %197 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %163, <16 x i8> %188, <16 x i8> %179)
  %198 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %162, <16 x i8> %188, <16 x i8> %181)
  %199 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %161, <16 x i8> %188, <16 x i8> %183)
  %200 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %160, <16 x i8> %188, <16 x i8> %185)
  %201 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %168, <16 x i8> %190, <16 x i8> %179)
  %202 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %169, <16 x i8> %190, <16 x i8> %181)
  %203 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %170, <16 x i8> %190, <16 x i8> %183)
  %204 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %171, <16 x i8> %190, <16 x i8> %185)
  %205 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %172, <16 x i8> %192, <16 x i8> %179)
  %206 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %173, <16 x i8> %192, <16 x i8> %181)
  %207 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %174, <16 x i8> %192, <16 x i8> %183)
  %208 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %175, <16 x i8> %192, <16 x i8> %185)
  %209 = getelementptr inbounds nuw i8, ptr %177, i64 64
  %210 = getelementptr inbounds nuw i8, ptr %178, i64 64
  %211 = add nuw nsw i64 %176, 1
  %212 = icmp eq i64 %211, %75
  br i1 %212, label %94, label %159, !llvm.loop !687
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s4s32_1x16x2_arm_64(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %6 = load i64, ptr %5, align 8, !tbaa !142, !noalias !728
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %38, label %13

8:                                                ; preds = %38
  %9 = ashr <4 x i32> %85, splat (i32 4)
  %10 = ashr <4 x i32> %87, splat (i32 4)
  %11 = ashr <4 x i32> %89, splat (i32 4)
  %12 = ashr <4 x i32> %91, splat (i32 4)
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi <4 x i32> [ %12, %8 ], [ zeroinitializer, %4 ]
  %15 = phi <4 x i32> [ %11, %8 ], [ zeroinitializer, %4 ]
  %16 = phi <4 x i32> [ %10, %8 ], [ zeroinitializer, %4 ]
  %17 = phi <4 x i32> [ %9, %8 ], [ zeroinitializer, %4 ]
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %19 = load i32, ptr %18, align 4, !tbaa !146, !noalias !728
  %20 = and i32 %19, 256
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %13
  %23 = load <4 x i32>, ptr %0, align 4, !alias.scope !721, !noalias !729
  %24 = add <4 x i32> %23, %17
  store <4 x i32> %24, ptr %0, align 4, !alias.scope !721, !noalias !729
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %26 = load <4 x i32>, ptr %25, align 4, !alias.scope !721, !noalias !729
  %27 = add <4 x i32> %26, %16
  store <4 x i32> %27, ptr %25, align 4, !alias.scope !721, !noalias !729
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %29 = load <4 x i32>, ptr %28, align 4, !alias.scope !721, !noalias !729
  %30 = add <4 x i32> %29, %15
  store <4 x i32> %30, ptr %28, align 4, !alias.scope !721, !noalias !729
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %32 = load <4 x i32>, ptr %31, align 4, !alias.scope !721, !noalias !729
  %33 = add <4 x i32> %32, %14
  store <4 x i32> %33, ptr %31, align 4, !alias.scope !721, !noalias !729
  br label %94

34:                                               ; preds = %13
  store <4 x i32> %17, ptr %0, align 4, !alias.scope !721, !noalias !729
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %16, ptr %35, align 4, !alias.scope !721, !noalias !729
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> %15, ptr %36, align 4, !alias.scope !721, !noalias !729
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> %14, ptr %37, align 4, !alias.scope !721, !noalias !729
  br label %94

38:                                               ; preds = %4, %38
  %39 = phi i64 [ %92, %38 ], [ 0, %4 ]
  %40 = phi <4 x i32> [ %91, %38 ], [ zeroinitializer, %4 ]
  %41 = phi <4 x i32> [ %89, %38 ], [ zeroinitializer, %4 ]
  %42 = phi <4 x i32> [ %87, %38 ], [ zeroinitializer, %4 ]
  %43 = phi ptr [ %70, %38 ], [ %1, %4 ]
  %44 = phi ptr [ %47, %38 ], [ %2, %4 ]
  %45 = phi <4 x i32> [ %85, %38 ], [ zeroinitializer, %4 ]
  %46 = load <16 x i8>, ptr %44, align 1, !alias.scope !726, !noalias !730
  %47 = getelementptr inbounds nuw i8, ptr %44, i64 16
  %48 = shl <16 x i8> %46, splat (i8 4)
  %49 = and <16 x i8> %46, splat (i8 -16)
  %50 = shufflevector <16 x i8> %48, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %51 = sext <8 x i8> %50 to <8 x i16>
  %52 = shufflevector <16 x i8> %48, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %53 = sext <8 x i8> %52 to <8 x i16>
  %54 = shufflevector <16 x i8> %49, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %55 = sext <8 x i8> %54 to <8 x i16>
  %56 = shufflevector <16 x i8> %49, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %57 = sext <8 x i8> %56 to <8 x i16>
  %58 = shufflevector <8 x i16> %51, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %59 = shufflevector <8 x i16> %51, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %60 = shufflevector <8 x i16> %53, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %61 = shufflevector <8 x i16> %53, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %62 = shufflevector <8 x i16> %55, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %63 = shufflevector <8 x i16> %55, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %64 = shufflevector <8 x i16> %57, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %65 = shufflevector <8 x i16> %57, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %66 = getelementptr inbounds nuw i8, ptr %43, i64 1
  %67 = load i8, ptr %43, align 1, !tbaa !199, !alias.scope !724, !noalias !731
  %68 = sext i8 %67 to i16
  %69 = insertelement <4 x i16> poison, i16 %68, i64 0
  %70 = getelementptr inbounds nuw i8, ptr %43, i64 2
  %71 = load i8, ptr %66, align 1, !tbaa !199, !alias.scope !724, !noalias !731
  %72 = sext i8 %71 to i16
  %73 = shufflevector <4 x i16> %69, <4 x i16> poison, <4 x i32> zeroinitializer
  %74 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %58, <4 x i16> %73)
  %75 = add <4 x i32> %74, %45
  %76 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %59, <4 x i16> %73)
  %77 = add <4 x i32> %76, %42
  %78 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %60, <4 x i16> %73)
  %79 = add <4 x i32> %78, %41
  %80 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %61, <4 x i16> %73)
  %81 = add <4 x i32> %80, %40
  %82 = insertelement <4 x i16> poison, i16 %72, i64 0
  %83 = shufflevector <4 x i16> %82, <4 x i16> poison, <4 x i32> zeroinitializer
  %84 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %62, <4 x i16> %83)
  %85 = add <4 x i32> %84, %75
  %86 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %63, <4 x i16> %83)
  %87 = add <4 x i32> %86, %77
  %88 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %64, <4 x i16> %83)
  %89 = add <4 x i32> %88, %79
  %90 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %65, <4 x i16> %83)
  %91 = add <4 x i32> %90, %81
  %92 = add nuw nsw i64 %39, 1
  %93 = icmp eq i64 %92, %6
  br i1 %93, label %8, label %38, !llvm.loop !732

94:                                               ; preds = %22, %34
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s4s32_2x16x2_arm_64(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %6 = load i64, ptr %5, align 8, !tbaa !142, !noalias !740
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %62, label %17

8:                                                ; preds = %62
  %9 = ashr <4 x i32> %113, splat (i32 4)
  %10 = ashr <4 x i32> %115, splat (i32 4)
  %11 = ashr <4 x i32> %117, splat (i32 4)
  %12 = ashr <4 x i32> %119, splat (i32 4)
  %13 = ashr <4 x i32> %139, splat (i32 4)
  %14 = ashr <4 x i32> %141, splat (i32 4)
  %15 = ashr <4 x i32> %143, splat (i32 4)
  %16 = ashr <4 x i32> %145, splat (i32 4)
  br label %17

17:                                               ; preds = %8, %4
  %18 = phi <4 x i32> [ %16, %8 ], [ zeroinitializer, %4 ]
  %19 = phi <4 x i32> [ %15, %8 ], [ zeroinitializer, %4 ]
  %20 = phi <4 x i32> [ %14, %8 ], [ zeroinitializer, %4 ]
  %21 = phi <4 x i32> [ %13, %8 ], [ zeroinitializer, %4 ]
  %22 = phi <4 x i32> [ %12, %8 ], [ zeroinitializer, %4 ]
  %23 = phi <4 x i32> [ %11, %8 ], [ zeroinitializer, %4 ]
  %24 = phi <4 x i32> [ %10, %8 ], [ zeroinitializer, %4 ]
  %25 = phi <4 x i32> [ %9, %8 ], [ zeroinitializer, %4 ]
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %27 = load i32, ptr %26, align 4, !tbaa !146, !noalias !740
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %17
  %31 = load <4 x i32>, ptr %0, align 4, !alias.scope !733, !noalias !741
  %32 = add <4 x i32> %31, %25
  store <4 x i32> %32, ptr %0, align 4, !alias.scope !733, !noalias !741
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %34 = load <4 x i32>, ptr %33, align 4, !alias.scope !733, !noalias !741
  %35 = add <4 x i32> %34, %24
  store <4 x i32> %35, ptr %33, align 4, !alias.scope !733, !noalias !741
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %37 = load <4 x i32>, ptr %36, align 4, !alias.scope !733, !noalias !741
  %38 = add <4 x i32> %37, %23
  store <4 x i32> %38, ptr %36, align 4, !alias.scope !733, !noalias !741
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %40 = load <4 x i32>, ptr %39, align 4, !alias.scope !733, !noalias !741
  %41 = add <4 x i32> %40, %22
  store <4 x i32> %41, ptr %39, align 4, !alias.scope !733, !noalias !741
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %43 = load <4 x i32>, ptr %42, align 4, !alias.scope !733, !noalias !741
  %44 = add <4 x i32> %43, %21
  store <4 x i32> %44, ptr %42, align 4, !alias.scope !733, !noalias !741
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %46 = load <4 x i32>, ptr %45, align 4, !alias.scope !733, !noalias !741
  %47 = add <4 x i32> %46, %20
  store <4 x i32> %47, ptr %45, align 4, !alias.scope !733, !noalias !741
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %49 = load <4 x i32>, ptr %48, align 4, !alias.scope !733, !noalias !741
  %50 = add <4 x i32> %49, %19
  store <4 x i32> %50, ptr %48, align 4, !alias.scope !733, !noalias !741
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %52 = load <4 x i32>, ptr %51, align 4, !alias.scope !733, !noalias !741
  %53 = add <4 x i32> %52, %18
  store <4 x i32> %53, ptr %51, align 4, !alias.scope !733, !noalias !741
  br label %148

54:                                               ; preds = %17
  store <4 x i32> %25, ptr %0, align 4, !alias.scope !733, !noalias !741
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %24, ptr %55, align 4, !alias.scope !733, !noalias !741
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> %23, ptr %56, align 4, !alias.scope !733, !noalias !741
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> %22, ptr %57, align 4, !alias.scope !733, !noalias !741
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i32> %21, ptr %58, align 4, !alias.scope !733, !noalias !741
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i32> %20, ptr %59, align 4, !alias.scope !733, !noalias !741
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> %19, ptr %60, align 4, !alias.scope !733, !noalias !741
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x i32> %18, ptr %61, align 4, !alias.scope !733, !noalias !741
  br label %148

62:                                               ; preds = %4, %62
  %63 = phi i64 [ %146, %62 ], [ 0, %4 ]
  %64 = phi <4 x i32> [ %145, %62 ], [ zeroinitializer, %4 ]
  %65 = phi <4 x i32> [ %143, %62 ], [ zeroinitializer, %4 ]
  %66 = phi <4 x i32> [ %141, %62 ], [ zeroinitializer, %4 ]
  %67 = phi <4 x i32> [ %139, %62 ], [ zeroinitializer, %4 ]
  %68 = phi <4 x i32> [ %119, %62 ], [ zeroinitializer, %4 ]
  %69 = phi <4 x i32> [ %117, %62 ], [ zeroinitializer, %4 ]
  %70 = phi <4 x i32> [ %115, %62 ], [ zeroinitializer, %4 ]
  %71 = phi ptr [ %123, %62 ], [ %1, %4 ]
  %72 = phi ptr [ %75, %62 ], [ %2, %4 ]
  %73 = phi <4 x i32> [ %113, %62 ], [ zeroinitializer, %4 ]
  %74 = load <16 x i8>, ptr %72, align 1, !alias.scope !738, !noalias !742
  %75 = getelementptr inbounds nuw i8, ptr %72, i64 16
  %76 = shl <16 x i8> %74, splat (i8 4)
  %77 = and <16 x i8> %74, splat (i8 -16)
  %78 = shufflevector <16 x i8> %76, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %79 = sext <8 x i8> %78 to <8 x i16>
  %80 = shufflevector <16 x i8> %76, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %81 = sext <8 x i8> %80 to <8 x i16>
  %82 = shufflevector <16 x i8> %77, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %83 = sext <8 x i8> %82 to <8 x i16>
  %84 = shufflevector <16 x i8> %77, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %85 = sext <8 x i8> %84 to <8 x i16>
  %86 = shufflevector <8 x i16> %79, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %87 = shufflevector <8 x i16> %79, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %88 = shufflevector <8 x i16> %81, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %89 = shufflevector <8 x i16> %81, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %90 = shufflevector <8 x i16> %83, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %91 = shufflevector <8 x i16> %83, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %92 = shufflevector <8 x i16> %85, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %93 = shufflevector <8 x i16> %85, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %94 = getelementptr inbounds nuw i8, ptr %71, i64 1
  %95 = load i8, ptr %71, align 1, !tbaa !199, !alias.scope !736, !noalias !743
  %96 = sext i8 %95 to i16
  %97 = insertelement <4 x i16> poison, i16 %96, i64 0
  %98 = getelementptr inbounds nuw i8, ptr %71, i64 2
  %99 = load i8, ptr %94, align 1, !tbaa !199, !alias.scope !736, !noalias !743
  %100 = sext i8 %99 to i16
  %101 = shufflevector <4 x i16> %97, <4 x i16> poison, <4 x i32> zeroinitializer
  %102 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %86, <4 x i16> %101)
  %103 = add <4 x i32> %102, %73
  %104 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %87, <4 x i16> %101)
  %105 = add <4 x i32> %104, %70
  %106 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %88, <4 x i16> %101)
  %107 = add <4 x i32> %106, %69
  %108 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %89, <4 x i16> %101)
  %109 = add <4 x i32> %108, %68
  %110 = insertelement <4 x i16> poison, i16 %100, i64 0
  %111 = shufflevector <4 x i16> %110, <4 x i16> poison, <4 x i32> zeroinitializer
  %112 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %90, <4 x i16> %111)
  %113 = add <4 x i32> %112, %103
  %114 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %91, <4 x i16> %111)
  %115 = add <4 x i32> %114, %105
  %116 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %92, <4 x i16> %111)
  %117 = add <4 x i32> %116, %107
  %118 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %93, <4 x i16> %111)
  %119 = add <4 x i32> %118, %109
  %120 = getelementptr inbounds nuw i8, ptr %71, i64 3
  %121 = load i8, ptr %98, align 1, !tbaa !199, !alias.scope !736, !noalias !743
  %122 = sext i8 %121 to i16
  %123 = getelementptr inbounds nuw i8, ptr %71, i64 4
  %124 = load i8, ptr %120, align 1, !tbaa !199, !alias.scope !736, !noalias !743
  %125 = sext i8 %124 to i16
  %126 = insertelement <4 x i16> poison, i16 %122, i64 0
  %127 = shufflevector <4 x i16> %126, <4 x i16> poison, <4 x i32> zeroinitializer
  %128 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %86, <4 x i16> %127)
  %129 = add <4 x i32> %128, %67
  %130 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %87, <4 x i16> %127)
  %131 = add <4 x i32> %130, %66
  %132 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %88, <4 x i16> %127)
  %133 = add <4 x i32> %132, %65
  %134 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %89, <4 x i16> %127)
  %135 = add <4 x i32> %134, %64
  %136 = insertelement <4 x i16> poison, i16 %125, i64 0
  %137 = shufflevector <4 x i16> %136, <4 x i16> poison, <4 x i32> zeroinitializer
  %138 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %90, <4 x i16> %137)
  %139 = add <4 x i32> %138, %129
  %140 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %91, <4 x i16> %137)
  %141 = add <4 x i32> %140, %131
  %142 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %92, <4 x i16> %137)
  %143 = add <4 x i32> %142, %133
  %144 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %93, <4 x i16> %137)
  %145 = add <4 x i32> %144, %135
  %146 = add nuw nsw i64 %63, 1
  %147 = icmp eq i64 %146, %6
  br i1 %147, label %8, label %62, !llvm.loop !732

148:                                              ; preds = %30, %54
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s4s32_4x16x2_arm_64(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %6 = load i64, ptr %5, align 8, !tbaa !142, !noalias !751
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %110, label %25

8:                                                ; preds = %110
  %9 = ashr <4 x i32> %191, splat (i32 4)
  %10 = ashr <4 x i32> %202, splat (i32 4)
  %11 = ashr <4 x i32> %210, splat (i32 4)
  %12 = ashr <4 x i32> %218, splat (i32 4)
  %13 = ashr <4 x i32> %194, splat (i32 4)
  %14 = ashr <4 x i32> %204, splat (i32 4)
  %15 = ashr <4 x i32> %212, splat (i32 4)
  %16 = ashr <4 x i32> %220, splat (i32 4)
  %17 = ashr <4 x i32> %197, splat (i32 4)
  %18 = ashr <4 x i32> %206, splat (i32 4)
  %19 = ashr <4 x i32> %214, splat (i32 4)
  %20 = ashr <4 x i32> %222, splat (i32 4)
  %21 = ashr <4 x i32> %200, splat (i32 4)
  %22 = ashr <4 x i32> %208, splat (i32 4)
  %23 = ashr <4 x i32> %216, splat (i32 4)
  %24 = ashr <4 x i32> %224, splat (i32 4)
  br label %25

25:                                               ; preds = %8, %4
  %26 = phi <4 x i32> [ %24, %8 ], [ zeroinitializer, %4 ]
  %27 = phi <4 x i32> [ %23, %8 ], [ zeroinitializer, %4 ]
  %28 = phi <4 x i32> [ %22, %8 ], [ zeroinitializer, %4 ]
  %29 = phi <4 x i32> [ %21, %8 ], [ zeroinitializer, %4 ]
  %30 = phi <4 x i32> [ %20, %8 ], [ zeroinitializer, %4 ]
  %31 = phi <4 x i32> [ %19, %8 ], [ zeroinitializer, %4 ]
  %32 = phi <4 x i32> [ %18, %8 ], [ zeroinitializer, %4 ]
  %33 = phi <4 x i32> [ %17, %8 ], [ zeroinitializer, %4 ]
  %34 = phi <4 x i32> [ %16, %8 ], [ zeroinitializer, %4 ]
  %35 = phi <4 x i32> [ %15, %8 ], [ zeroinitializer, %4 ]
  %36 = phi <4 x i32> [ %14, %8 ], [ zeroinitializer, %4 ]
  %37 = phi <4 x i32> [ %13, %8 ], [ zeroinitializer, %4 ]
  %38 = phi <4 x i32> [ %12, %8 ], [ zeroinitializer, %4 ]
  %39 = phi <4 x i32> [ %11, %8 ], [ zeroinitializer, %4 ]
  %40 = phi <4 x i32> [ %10, %8 ], [ zeroinitializer, %4 ]
  %41 = phi <4 x i32> [ %9, %8 ], [ zeroinitializer, %4 ]
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %43 = load i32, ptr %42, align 4, !tbaa !146, !noalias !751
  %44 = and i32 %43, 256
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %94, label %46

46:                                               ; preds = %25
  %47 = load <4 x i32>, ptr %0, align 4, !alias.scope !744, !noalias !752
  %48 = add <4 x i32> %47, %41
  store <4 x i32> %48, ptr %0, align 4, !alias.scope !744, !noalias !752
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %50 = load <4 x i32>, ptr %49, align 4, !alias.scope !744, !noalias !752
  %51 = add <4 x i32> %50, %40
  store <4 x i32> %51, ptr %49, align 4, !alias.scope !744, !noalias !752
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %53 = load <4 x i32>, ptr %52, align 4, !alias.scope !744, !noalias !752
  %54 = add <4 x i32> %53, %39
  store <4 x i32> %54, ptr %52, align 4, !alias.scope !744, !noalias !752
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %56 = load <4 x i32>, ptr %55, align 4, !alias.scope !744, !noalias !752
  %57 = add <4 x i32> %56, %38
  store <4 x i32> %57, ptr %55, align 4, !alias.scope !744, !noalias !752
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %59 = load <4 x i32>, ptr %58, align 4, !alias.scope !744, !noalias !752
  %60 = add <4 x i32> %59, %37
  store <4 x i32> %60, ptr %58, align 4, !alias.scope !744, !noalias !752
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %62 = load <4 x i32>, ptr %61, align 4, !alias.scope !744, !noalias !752
  %63 = add <4 x i32> %62, %36
  store <4 x i32> %63, ptr %61, align 4, !alias.scope !744, !noalias !752
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %65 = load <4 x i32>, ptr %64, align 4, !alias.scope !744, !noalias !752
  %66 = add <4 x i32> %65, %35
  store <4 x i32> %66, ptr %64, align 4, !alias.scope !744, !noalias !752
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %68 = load <4 x i32>, ptr %67, align 4, !alias.scope !744, !noalias !752
  %69 = add <4 x i32> %68, %34
  store <4 x i32> %69, ptr %67, align 4, !alias.scope !744, !noalias !752
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %71 = load <4 x i32>, ptr %70, align 4, !alias.scope !744, !noalias !752
  %72 = add <4 x i32> %71, %33
  store <4 x i32> %72, ptr %70, align 4, !alias.scope !744, !noalias !752
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %74 = load <4 x i32>, ptr %73, align 4, !alias.scope !744, !noalias !752
  %75 = add <4 x i32> %74, %32
  store <4 x i32> %75, ptr %73, align 4, !alias.scope !744, !noalias !752
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %77 = load <4 x i32>, ptr %76, align 4, !alias.scope !744, !noalias !752
  %78 = add <4 x i32> %77, %31
  store <4 x i32> %78, ptr %76, align 4, !alias.scope !744, !noalias !752
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %80 = load <4 x i32>, ptr %79, align 4, !alias.scope !744, !noalias !752
  %81 = add <4 x i32> %80, %30
  store <4 x i32> %81, ptr %79, align 4, !alias.scope !744, !noalias !752
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %83 = load <4 x i32>, ptr %82, align 4, !alias.scope !744, !noalias !752
  %84 = add <4 x i32> %83, %29
  store <4 x i32> %84, ptr %82, align 4, !alias.scope !744, !noalias !752
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %86 = load <4 x i32>, ptr %85, align 4, !alias.scope !744, !noalias !752
  %87 = add <4 x i32> %86, %28
  store <4 x i32> %87, ptr %85, align 4, !alias.scope !744, !noalias !752
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %89 = load <4 x i32>, ptr %88, align 4, !alias.scope !744, !noalias !752
  %90 = add <4 x i32> %89, %27
  store <4 x i32> %90, ptr %88, align 4, !alias.scope !744, !noalias !752
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %92 = load <4 x i32>, ptr %91, align 4, !alias.scope !744, !noalias !752
  %93 = add <4 x i32> %92, %26
  store <4 x i32> %93, ptr %91, align 4, !alias.scope !744, !noalias !752
  br label %227

94:                                               ; preds = %25
  store <4 x i32> %41, ptr %0, align 4, !alias.scope !744, !noalias !752
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %40, ptr %95, align 4, !alias.scope !744, !noalias !752
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> %39, ptr %96, align 4, !alias.scope !744, !noalias !752
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> %38, ptr %97, align 4, !alias.scope !744, !noalias !752
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i32> %37, ptr %98, align 4, !alias.scope !744, !noalias !752
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i32> %36, ptr %99, align 4, !alias.scope !744, !noalias !752
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> %35, ptr %100, align 4, !alias.scope !744, !noalias !752
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x i32> %34, ptr %101, align 4, !alias.scope !744, !noalias !752
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <4 x i32> %33, ptr %102, align 4, !alias.scope !744, !noalias !752
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <4 x i32> %32, ptr %103, align 4, !alias.scope !744, !noalias !752
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <4 x i32> %31, ptr %104, align 4, !alias.scope !744, !noalias !752
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <4 x i32> %30, ptr %105, align 4, !alias.scope !744, !noalias !752
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <4 x i32> %29, ptr %106, align 4, !alias.scope !744, !noalias !752
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x i32> %28, ptr %107, align 4, !alias.scope !744, !noalias !752
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <4 x i32> %27, ptr %108, align 4, !alias.scope !744, !noalias !752
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <4 x i32> %26, ptr %109, align 4, !alias.scope !744, !noalias !752
  br label %227

110:                                              ; preds = %4, %110
  %111 = phi i64 [ %225, %110 ], [ 0, %4 ]
  %112 = phi <4 x i32> [ %224, %110 ], [ zeroinitializer, %4 ]
  %113 = phi <4 x i32> [ %222, %110 ], [ zeroinitializer, %4 ]
  %114 = phi <4 x i32> [ %220, %110 ], [ zeroinitializer, %4 ]
  %115 = phi <4 x i32> [ %218, %110 ], [ zeroinitializer, %4 ]
  %116 = phi <4 x i32> [ %216, %110 ], [ zeroinitializer, %4 ]
  %117 = phi <4 x i32> [ %214, %110 ], [ zeroinitializer, %4 ]
  %118 = phi <4 x i32> [ %212, %110 ], [ zeroinitializer, %4 ]
  %119 = phi <4 x i32> [ %210, %110 ], [ zeroinitializer, %4 ]
  %120 = phi <4 x i32> [ %208, %110 ], [ zeroinitializer, %4 ]
  %121 = phi <4 x i32> [ %206, %110 ], [ zeroinitializer, %4 ]
  %122 = phi <4 x i32> [ %204, %110 ], [ zeroinitializer, %4 ]
  %123 = phi <4 x i32> [ %202, %110 ], [ zeroinitializer, %4 ]
  %124 = phi <4 x i32> [ %200, %110 ], [ zeroinitializer, %4 ]
  %125 = phi <4 x i32> [ %197, %110 ], [ zeroinitializer, %4 ]
  %126 = phi <4 x i32> [ %194, %110 ], [ zeroinitializer, %4 ]
  %127 = phi ptr [ %152, %110 ], [ %1, %4 ]
  %128 = phi ptr [ %131, %110 ], [ %2, %4 ]
  %129 = phi <4 x i32> [ %191, %110 ], [ zeroinitializer, %4 ]
  %130 = load <16 x i8>, ptr %128, align 1, !alias.scope !749, !noalias !753
  %131 = getelementptr inbounds nuw i8, ptr %128, i64 16
  %132 = shl <16 x i8> %130, splat (i8 4)
  %133 = and <16 x i8> %130, splat (i8 -16)
  %134 = shufflevector <16 x i8> %132, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %135 = sext <8 x i8> %134 to <8 x i16>
  %136 = shufflevector <16 x i8> %132, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %137 = sext <8 x i8> %136 to <8 x i16>
  %138 = shufflevector <16 x i8> %133, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %139 = sext <8 x i8> %138 to <8 x i16>
  %140 = shufflevector <16 x i8> %133, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %141 = sext <8 x i8> %140 to <8 x i16>
  %142 = shufflevector <8 x i16> %135, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %143 = shufflevector <8 x i16> %135, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %144 = shufflevector <8 x i16> %137, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %145 = shufflevector <8 x i16> %137, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %146 = shufflevector <8 x i16> %139, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %147 = shufflevector <8 x i16> %139, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %148 = shufflevector <8 x i16> %141, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %149 = shufflevector <8 x i16> %141, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %150 = load <8 x i8>, ptr %127, align 1, !alias.scope !747, !noalias !754
  %151 = sext <8 x i8> %150 to <8 x i16>
  %152 = getelementptr inbounds nuw i8, ptr %127, i64 8
  %153 = shufflevector <8 x i16> %151, <8 x i16> poison, <4 x i32> zeroinitializer
  %154 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %142, <4 x i16> %153)
  %155 = add <4 x i32> %154, %129
  %156 = shufflevector <8 x i16> %151, <8 x i16> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %157 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %142, <4 x i16> %156)
  %158 = add <4 x i32> %157, %126
  %159 = shufflevector <8 x i16> %151, <8 x i16> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %160 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %142, <4 x i16> %159)
  %161 = add <4 x i32> %160, %125
  %162 = shufflevector <8 x i16> %151, <8 x i16> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %163 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %142, <4 x i16> %162)
  %164 = add <4 x i32> %163, %124
  %165 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %143, <4 x i16> %153)
  %166 = add <4 x i32> %165, %123
  %167 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %143, <4 x i16> %156)
  %168 = add <4 x i32> %167, %122
  %169 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %143, <4 x i16> %159)
  %170 = add <4 x i32> %169, %121
  %171 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %143, <4 x i16> %162)
  %172 = add <4 x i32> %171, %120
  %173 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %144, <4 x i16> %153)
  %174 = add <4 x i32> %173, %119
  %175 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %144, <4 x i16> %156)
  %176 = add <4 x i32> %175, %118
  %177 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %144, <4 x i16> %159)
  %178 = add <4 x i32> %177, %117
  %179 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %144, <4 x i16> %162)
  %180 = add <4 x i32> %179, %116
  %181 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %145, <4 x i16> %153)
  %182 = add <4 x i32> %181, %115
  %183 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %145, <4 x i16> %156)
  %184 = add <4 x i32> %183, %114
  %185 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %145, <4 x i16> %159)
  %186 = add <4 x i32> %185, %113
  %187 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %145, <4 x i16> %162)
  %188 = add <4 x i32> %187, %112
  %189 = shufflevector <8 x i16> %151, <8 x i16> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %190 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %146, <4 x i16> %189)
  %191 = add <4 x i32> %190, %155
  %192 = shufflevector <8 x i16> %151, <8 x i16> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %193 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %146, <4 x i16> %192)
  %194 = add <4 x i32> %193, %158
  %195 = shufflevector <8 x i16> %151, <8 x i16> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %196 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %146, <4 x i16> %195)
  %197 = add <4 x i32> %196, %161
  %198 = shufflevector <8 x i16> %151, <8 x i16> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %199 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %146, <4 x i16> %198)
  %200 = add <4 x i32> %199, %164
  %201 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %147, <4 x i16> %189)
  %202 = add <4 x i32> %201, %166
  %203 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %147, <4 x i16> %192)
  %204 = add <4 x i32> %203, %168
  %205 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %147, <4 x i16> %195)
  %206 = add <4 x i32> %205, %170
  %207 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %147, <4 x i16> %198)
  %208 = add <4 x i32> %207, %172
  %209 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %148, <4 x i16> %189)
  %210 = add <4 x i32> %209, %174
  %211 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %148, <4 x i16> %192)
  %212 = add <4 x i32> %211, %176
  %213 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %148, <4 x i16> %195)
  %214 = add <4 x i32> %213, %178
  %215 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %148, <4 x i16> %198)
  %216 = add <4 x i32> %215, %180
  %217 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %149, <4 x i16> %189)
  %218 = add <4 x i32> %217, %182
  %219 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %149, <4 x i16> %192)
  %220 = add <4 x i32> %219, %184
  %221 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %149, <4 x i16> %195)
  %222 = add <4 x i32> %221, %186
  %223 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %149, <4 x i16> %198)
  %224 = add <4 x i32> %223, %188
  %225 = add nuw nsw i64 %111, 1
  %226 = icmp eq i64 %225, %6
  br i1 %226, label %8, label %110, !llvm.loop !732

227:                                              ; preds = %46, %94
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s4s32_1x8x8_arm_64_dotprod(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #18 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %6 = load i64, ptr %5, align 8, !tbaa !142, !noalias !762
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %26, label %11

8:                                                ; preds = %26
  %9 = ashr <4 x i32> %50, splat (i32 4)
  %10 = ashr <4 x i32> %51, splat (i32 4)
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi <4 x i32> [ %9, %8 ], [ zeroinitializer, %4 ]
  %13 = phi <4 x i32> [ %10, %8 ], [ zeroinitializer, %4 ]
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %15 = load i32, ptr %14, align 4, !tbaa !146, !noalias !762
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %11
  %19 = load <4 x i32>, ptr %0, align 4, !alias.scope !755, !noalias !763
  %20 = add <4 x i32> %12, %19
  store <4 x i32> %20, ptr %0, align 4, !alias.scope !755, !noalias !763
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %22 = load <4 x i32>, ptr %21, align 4, !alias.scope !755, !noalias !763
  %23 = add <4 x i32> %13, %22
  store <4 x i32> %23, ptr %21, align 4, !alias.scope !755, !noalias !763
  br label %56

24:                                               ; preds = %11
  store <4 x i32> %12, ptr %0, align 4, !alias.scope !755, !noalias !763
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %13, ptr %25, align 4, !alias.scope !755, !noalias !763
  br label %56

26:                                               ; preds = %4, %26
  %27 = phi <4 x i32> [ %50, %26 ], [ zeroinitializer, %4 ]
  %28 = phi <4 x i32> [ %51, %26 ], [ zeroinitializer, %4 ]
  %29 = phi i64 [ %54, %26 ], [ 0, %4 ]
  %30 = phi ptr [ %53, %26 ], [ %1, %4 ]
  %31 = phi ptr [ %52, %26 ], [ %2, %4 ]
  %32 = load <16 x i8>, ptr %31, align 1, !alias.scope !760, !noalias !764
  %33 = getelementptr inbounds nuw i8, ptr %31, i64 16
  %34 = shl <16 x i8> %32, splat (i8 4)
  %35 = and <16 x i8> %32, splat (i8 -16)
  %36 = load <16 x i8>, ptr %33, align 1, !alias.scope !760, !noalias !764
  %37 = shl <16 x i8> %36, splat (i8 4)
  %38 = and <16 x i8> %36, splat (i8 -16)
  %39 = load <8 x i8>, ptr %30, align 1, !alias.scope !758, !noalias !765
  %40 = shufflevector <8 x i8> %39, <8 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 poison, i32 poison, i32 poison, i32 poison>
  %41 = shufflevector <8 x i8> %39, <8 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %42 = bitcast <8 x i8> %40 to <2 x i32>
  %43 = bitcast <8 x i8> %41 to <2 x i32>
  %44 = shufflevector <2 x i32> %42, <2 x i32> poison, <4 x i32> zeroinitializer
  %45 = bitcast <4 x i32> %44 to <16 x i8>
  %46 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %27, <16 x i8> %34, <16 x i8> %45)
  %47 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %28, <16 x i8> %37, <16 x i8> %45)
  %48 = shufflevector <2 x i32> %43, <2 x i32> poison, <4 x i32> zeroinitializer
  %49 = bitcast <4 x i32> %48 to <16 x i8>
  %50 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %46, <16 x i8> %35, <16 x i8> %49)
  %51 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %47, <16 x i8> %38, <16 x i8> %49)
  %52 = getelementptr inbounds nuw i8, ptr %31, i64 32
  %53 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %54 = add nuw nsw i64 %29, 1
  %55 = icmp eq i64 %54, %6
  br i1 %55, label %8, label %26, !llvm.loop !766

56:                                               ; preds = %18, %24
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s4s32_2x8x8_arm_64_dotprod(ptr noalias noundef captures(none) %0, ptr noalias noundef %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #18 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %6 = load i64, ptr %5, align 8, !tbaa !142, !noalias !774
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %38, label %13

8:                                                ; preds = %38
  %9 = ashr <4 x i32> %64, splat (i32 4)
  %10 = ashr <4 x i32> %65, splat (i32 4)
  %11 = ashr <4 x i32> %72, splat (i32 4)
  %12 = ashr <4 x i32> %73, splat (i32 4)
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi <4 x i32> [ %9, %8 ], [ zeroinitializer, %4 ]
  %15 = phi <4 x i32> [ %10, %8 ], [ zeroinitializer, %4 ]
  %16 = phi <4 x i32> [ %11, %8 ], [ zeroinitializer, %4 ]
  %17 = phi <4 x i32> [ %12, %8 ], [ zeroinitializer, %4 ]
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %19 = load i32, ptr %18, align 4, !tbaa !146, !noalias !774
  %20 = and i32 %19, 256
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %13
  %23 = load <4 x i32>, ptr %0, align 4, !alias.scope !767, !noalias !775
  %24 = add <4 x i32> %14, %23
  store <4 x i32> %24, ptr %0, align 4, !alias.scope !767, !noalias !775
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %26 = load <4 x i32>, ptr %25, align 4, !alias.scope !767, !noalias !775
  %27 = add <4 x i32> %15, %26
  store <4 x i32> %27, ptr %25, align 4, !alias.scope !767, !noalias !775
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %29 = load <4 x i32>, ptr %28, align 4, !alias.scope !767, !noalias !775
  %30 = add <4 x i32> %16, %29
  store <4 x i32> %30, ptr %28, align 4, !alias.scope !767, !noalias !775
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %32 = load <4 x i32>, ptr %31, align 4, !alias.scope !767, !noalias !775
  %33 = add <4 x i32> %17, %32
  store <4 x i32> %33, ptr %31, align 4, !alias.scope !767, !noalias !775
  br label %78

34:                                               ; preds = %13
  store <4 x i32> %14, ptr %0, align 4, !alias.scope !767, !noalias !775
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %15, ptr %35, align 4, !alias.scope !767, !noalias !775
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> %16, ptr %36, align 4, !alias.scope !767, !noalias !775
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> %17, ptr %37, align 4, !alias.scope !767, !noalias !775
  br label %78

38:                                               ; preds = %4, %38
  %39 = phi <4 x i32> [ %64, %38 ], [ zeroinitializer, %4 ]
  %40 = phi <4 x i32> [ %65, %38 ], [ zeroinitializer, %4 ]
  %41 = phi <4 x i32> [ %72, %38 ], [ zeroinitializer, %4 ]
  %42 = phi <4 x i32> [ %73, %38 ], [ zeroinitializer, %4 ]
  %43 = phi i64 [ %76, %38 ], [ 0, %4 ]
  %44 = phi ptr [ %75, %38 ], [ %1, %4 ]
  %45 = phi ptr [ %74, %38 ], [ %2, %4 ]
  %46 = load <16 x i8>, ptr %45, align 1, !alias.scope !772, !noalias !776
  %47 = getelementptr inbounds nuw i8, ptr %45, i64 16
  %48 = shl <16 x i8> %46, splat (i8 4)
  %49 = and <16 x i8> %46, splat (i8 -16)
  %50 = load <16 x i8>, ptr %47, align 1, !alias.scope !772, !noalias !776
  %51 = shl <16 x i8> %50, splat (i8 4)
  %52 = and <16 x i8> %50, splat (i8 -16)
  %53 = tail call { <8 x i8>, <8 x i8> } @llvm.aarch64.neon.ld2.v8i8.p0(ptr %44), !alias.scope !770, !noalias !777
  %54 = extractvalue { <8 x i8>, <8 x i8> } %53, 0
  %55 = extractvalue { <8 x i8>, <8 x i8> } %53, 1
  %56 = bitcast <8 x i8> %54 to <2 x i32>
  %57 = bitcast <8 x i8> %55 to <2 x i32>
  %58 = shufflevector <2 x i32> %56, <2 x i32> poison, <4 x i32> zeroinitializer
  %59 = bitcast <4 x i32> %58 to <16 x i8>
  %60 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %39, <16 x i8> %48, <16 x i8> %59)
  %61 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %40, <16 x i8> %51, <16 x i8> %59)
  %62 = shufflevector <2 x i32> %57, <2 x i32> poison, <4 x i32> zeroinitializer
  %63 = bitcast <4 x i32> %62 to <16 x i8>
  %64 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %60, <16 x i8> %49, <16 x i8> %63)
  %65 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %61, <16 x i8> %52, <16 x i8> %63)
  %66 = shufflevector <2 x i32> %56, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %67 = bitcast <4 x i32> %66 to <16 x i8>
  %68 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %41, <16 x i8> %48, <16 x i8> %67)
  %69 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %42, <16 x i8> %51, <16 x i8> %67)
  %70 = shufflevector <2 x i32> %57, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %71 = bitcast <4 x i32> %70 to <16 x i8>
  %72 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %68, <16 x i8> %49, <16 x i8> %71)
  %73 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %69, <16 x i8> %52, <16 x i8> %71)
  %74 = getelementptr inbounds nuw i8, ptr %45, i64 32
  %75 = getelementptr inbounds nuw i8, ptr %44, i64 16
  %76 = add nuw nsw i64 %43, 1
  %77 = icmp eq i64 %76, %6
  br i1 %77, label %8, label %38, !llvm.loop !766

78:                                               ; preds = %22, %34
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s4s32_4x8x8_arm_64_dotprod(ptr noalias noundef captures(none) %0, ptr noalias noundef %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #18 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %6 = load i64, ptr %5, align 8, !tbaa !142, !noalias !785
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %62, label %17

8:                                                ; preds = %62
  %9 = ashr <4 x i32> %106, splat (i32 4)
  %10 = ashr <4 x i32> %116, splat (i32 4)
  %11 = ashr <4 x i32> %109, splat (i32 4)
  %12 = ashr <4 x i32> %117, splat (i32 4)
  %13 = ashr <4 x i32> %112, splat (i32 4)
  %14 = ashr <4 x i32> %118, splat (i32 4)
  %15 = ashr <4 x i32> %115, splat (i32 4)
  %16 = ashr <4 x i32> %119, splat (i32 4)
  br label %17

17:                                               ; preds = %8, %4
  %18 = phi <4 x i32> [ %11, %8 ], [ zeroinitializer, %4 ]
  %19 = phi <4 x i32> [ %10, %8 ], [ zeroinitializer, %4 ]
  %20 = phi <4 x i32> [ %9, %8 ], [ zeroinitializer, %4 ]
  %21 = phi <4 x i32> [ %12, %8 ], [ zeroinitializer, %4 ]
  %22 = phi <4 x i32> [ %13, %8 ], [ zeroinitializer, %4 ]
  %23 = phi <4 x i32> [ %14, %8 ], [ zeroinitializer, %4 ]
  %24 = phi <4 x i32> [ %15, %8 ], [ zeroinitializer, %4 ]
  %25 = phi <4 x i32> [ %16, %8 ], [ zeroinitializer, %4 ]
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %27 = load i32, ptr %26, align 4, !tbaa !146, !noalias !785
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %17
  %31 = load <4 x i32>, ptr %0, align 4, !alias.scope !778, !noalias !786
  %32 = add <4 x i32> %20, %31
  store <4 x i32> %32, ptr %0, align 4, !alias.scope !778, !noalias !786
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %34 = load <4 x i32>, ptr %33, align 4, !alias.scope !778, !noalias !786
  %35 = add <4 x i32> %19, %34
  store <4 x i32> %35, ptr %33, align 4, !alias.scope !778, !noalias !786
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %37 = load <4 x i32>, ptr %36, align 4, !alias.scope !778, !noalias !786
  %38 = add <4 x i32> %18, %37
  store <4 x i32> %38, ptr %36, align 4, !alias.scope !778, !noalias !786
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %40 = load <4 x i32>, ptr %39, align 4, !alias.scope !778, !noalias !786
  %41 = add <4 x i32> %21, %40
  store <4 x i32> %41, ptr %39, align 4, !alias.scope !778, !noalias !786
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %43 = load <4 x i32>, ptr %42, align 4, !alias.scope !778, !noalias !786
  %44 = add <4 x i32> %22, %43
  store <4 x i32> %44, ptr %42, align 4, !alias.scope !778, !noalias !786
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %46 = load <4 x i32>, ptr %45, align 4, !alias.scope !778, !noalias !786
  %47 = add <4 x i32> %23, %46
  store <4 x i32> %47, ptr %45, align 4, !alias.scope !778, !noalias !786
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %49 = load <4 x i32>, ptr %48, align 4, !alias.scope !778, !noalias !786
  %50 = add <4 x i32> %24, %49
  store <4 x i32> %50, ptr %48, align 4, !alias.scope !778, !noalias !786
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %52 = load <4 x i32>, ptr %51, align 4, !alias.scope !778, !noalias !786
  %53 = add <4 x i32> %25, %52
  store <4 x i32> %53, ptr %51, align 4, !alias.scope !778, !noalias !786
  br label %124

54:                                               ; preds = %17
  store <4 x i32> %20, ptr %0, align 4, !alias.scope !778, !noalias !786
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %19, ptr %55, align 4, !alias.scope !778, !noalias !786
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> %18, ptr %56, align 4, !alias.scope !778, !noalias !786
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> %21, ptr %57, align 4, !alias.scope !778, !noalias !786
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i32> %22, ptr %58, align 4, !alias.scope !778, !noalias !786
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i32> %23, ptr %59, align 4, !alias.scope !778, !noalias !786
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> %24, ptr %60, align 4, !alias.scope !778, !noalias !786
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x i32> %25, ptr %61, align 4, !alias.scope !778, !noalias !786
  br label %124

62:                                               ; preds = %4, %62
  %63 = phi <4 x i32> [ %109, %62 ], [ zeroinitializer, %4 ]
  %64 = phi <4 x i32> [ %116, %62 ], [ zeroinitializer, %4 ]
  %65 = phi <4 x i32> [ %106, %62 ], [ zeroinitializer, %4 ]
  %66 = phi <4 x i32> [ %117, %62 ], [ zeroinitializer, %4 ]
  %67 = phi <4 x i32> [ %112, %62 ], [ zeroinitializer, %4 ]
  %68 = phi <4 x i32> [ %118, %62 ], [ zeroinitializer, %4 ]
  %69 = phi <4 x i32> [ %115, %62 ], [ zeroinitializer, %4 ]
  %70 = phi <4 x i32> [ %119, %62 ], [ zeroinitializer, %4 ]
  %71 = phi i64 [ %122, %62 ], [ 0, %4 ]
  %72 = phi ptr [ %121, %62 ], [ %1, %4 ]
  %73 = phi ptr [ %120, %62 ], [ %2, %4 ]
  %74 = load <16 x i8>, ptr %73, align 1, !alias.scope !783, !noalias !787
  %75 = getelementptr inbounds nuw i8, ptr %73, i64 16
  %76 = shl <16 x i8> %74, splat (i8 4)
  %77 = and <16 x i8> %74, splat (i8 -16)
  %78 = load <16 x i8>, ptr %75, align 1, !alias.scope !783, !noalias !787
  %79 = shl <16 x i8> %78, splat (i8 4)
  %80 = and <16 x i8> %78, splat (i8 -16)
  %81 = tail call { <16 x i8>, <16 x i8> } @llvm.aarch64.neon.ld2.v16i8.p0(ptr %72), !alias.scope !781, !noalias !788
  %82 = extractvalue { <16 x i8>, <16 x i8> } %81, 0
  %83 = extractvalue { <16 x i8>, <16 x i8> } %81, 1
  %84 = bitcast <16 x i8> %82 to <4 x i32>
  %85 = bitcast <16 x i8> %83 to <4 x i32>
  %86 = bitcast <16 x i8> %82 to <4 x i32>
  %87 = bitcast <16 x i8> %83 to <4 x i32>
  %88 = shufflevector <4 x i32> %84, <4 x i32> poison, <4 x i32> zeroinitializer
  %89 = bitcast <4 x i32> %88 to <16 x i8>
  %90 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %65, <16 x i8> %76, <16 x i8> %89)
  %91 = shufflevector <4 x i32> %84, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %92 = bitcast <4 x i32> %91 to <16 x i8>
  %93 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %63, <16 x i8> %76, <16 x i8> %92)
  %94 = shufflevector <4 x i32> %86, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %95 = bitcast <4 x i32> %94 to <16 x i8>
  %96 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %67, <16 x i8> %76, <16 x i8> %95)
  %97 = shufflevector <4 x i32> %86, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %98 = bitcast <4 x i32> %97 to <16 x i8>
  %99 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %69, <16 x i8> %76, <16 x i8> %98)
  %100 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %64, <16 x i8> %79, <16 x i8> %89)
  %101 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %66, <16 x i8> %79, <16 x i8> %92)
  %102 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %68, <16 x i8> %79, <16 x i8> %95)
  %103 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %70, <16 x i8> %79, <16 x i8> %98)
  %104 = shufflevector <4 x i32> %85, <4 x i32> poison, <4 x i32> zeroinitializer
  %105 = bitcast <4 x i32> %104 to <16 x i8>
  %106 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %90, <16 x i8> %77, <16 x i8> %105)
  %107 = shufflevector <4 x i32> %85, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %108 = bitcast <4 x i32> %107 to <16 x i8>
  %109 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %93, <16 x i8> %77, <16 x i8> %108)
  %110 = shufflevector <4 x i32> %87, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %111 = bitcast <4 x i32> %110 to <16 x i8>
  %112 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %96, <16 x i8> %77, <16 x i8> %111)
  %113 = shufflevector <4 x i32> %87, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %114 = bitcast <4 x i32> %113 to <16 x i8>
  %115 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %99, <16 x i8> %77, <16 x i8> %114)
  %116 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %100, <16 x i8> %80, <16 x i8> %105)
  %117 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %101, <16 x i8> %80, <16 x i8> %108)
  %118 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %102, <16 x i8> %80, <16 x i8> %111)
  %119 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %103, <16 x i8> %80, <16 x i8> %114)
  %120 = getelementptr inbounds nuw i8, ptr %73, i64 32
  %121 = getelementptr inbounds nuw i8, ptr %72, i64 32
  %122 = add nuw nsw i64 %71, 1
  %123 = icmp eq i64 %122, %6
  br i1 %123, label %8, label %62, !llvm.loop !766

124:                                              ; preds = %30, %54
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s4s32_8x8x8_arm_64_dotprod(ptr noalias noundef captures(none) %0, ptr noalias noundef %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #18 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %6 = load i64, ptr %5, align 8, !tbaa !142, !noalias !796
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %110, label %25

8:                                                ; preds = %110
  %9 = ashr <4 x i32> %170, splat (i32 4)
  %10 = ashr <4 x i32> %180, splat (i32 4)
  %11 = ashr <4 x i32> %173, splat (i32 4)
  %12 = ashr <4 x i32> %181, splat (i32 4)
  %13 = ashr <4 x i32> %176, splat (i32 4)
  %14 = ashr <4 x i32> %182, splat (i32 4)
  %15 = ashr <4 x i32> %179, splat (i32 4)
  %16 = ashr <4 x i32> %183, splat (i32 4)
  %17 = ashr <4 x i32> %202, splat (i32 4)
  %18 = ashr <4 x i32> %212, splat (i32 4)
  %19 = ashr <4 x i32> %205, splat (i32 4)
  %20 = ashr <4 x i32> %213, splat (i32 4)
  %21 = ashr <4 x i32> %208, splat (i32 4)
  %22 = ashr <4 x i32> %214, splat (i32 4)
  %23 = ashr <4 x i32> %211, splat (i32 4)
  %24 = ashr <4 x i32> %215, splat (i32 4)
  br label %25

25:                                               ; preds = %8, %4
  %26 = phi <4 x i32> [ %20, %8 ], [ zeroinitializer, %4 ]
  %27 = phi <4 x i32> [ %19, %8 ], [ zeroinitializer, %4 ]
  %28 = phi <4 x i32> [ %18, %8 ], [ zeroinitializer, %4 ]
  %29 = phi <4 x i32> [ %17, %8 ], [ zeroinitializer, %4 ]
  %30 = phi <4 x i32> [ %16, %8 ], [ zeroinitializer, %4 ]
  %31 = phi <4 x i32> [ %15, %8 ], [ zeroinitializer, %4 ]
  %32 = phi <4 x i32> [ %14, %8 ], [ zeroinitializer, %4 ]
  %33 = phi <4 x i32> [ %13, %8 ], [ zeroinitializer, %4 ]
  %34 = phi <4 x i32> [ %12, %8 ], [ zeroinitializer, %4 ]
  %35 = phi <4 x i32> [ %11, %8 ], [ zeroinitializer, %4 ]
  %36 = phi <4 x i32> [ %10, %8 ], [ zeroinitializer, %4 ]
  %37 = phi <4 x i32> [ %9, %8 ], [ zeroinitializer, %4 ]
  %38 = phi <4 x i32> [ %21, %8 ], [ zeroinitializer, %4 ]
  %39 = phi <4 x i32> [ %22, %8 ], [ zeroinitializer, %4 ]
  %40 = phi <4 x i32> [ %23, %8 ], [ zeroinitializer, %4 ]
  %41 = phi <4 x i32> [ %24, %8 ], [ zeroinitializer, %4 ]
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %43 = load i32, ptr %42, align 4, !tbaa !146, !noalias !796
  %44 = and i32 %43, 256
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %94, label %46

46:                                               ; preds = %25
  %47 = load <4 x i32>, ptr %0, align 4, !alias.scope !789, !noalias !797
  %48 = add <4 x i32> %37, %47
  store <4 x i32> %48, ptr %0, align 4, !alias.scope !789, !noalias !797
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %50 = load <4 x i32>, ptr %49, align 4, !alias.scope !789, !noalias !797
  %51 = add <4 x i32> %36, %50
  store <4 x i32> %51, ptr %49, align 4, !alias.scope !789, !noalias !797
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %53 = load <4 x i32>, ptr %52, align 4, !alias.scope !789, !noalias !797
  %54 = add <4 x i32> %35, %53
  store <4 x i32> %54, ptr %52, align 4, !alias.scope !789, !noalias !797
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %56 = load <4 x i32>, ptr %55, align 4, !alias.scope !789, !noalias !797
  %57 = add <4 x i32> %34, %56
  store <4 x i32> %57, ptr %55, align 4, !alias.scope !789, !noalias !797
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %59 = load <4 x i32>, ptr %58, align 4, !alias.scope !789, !noalias !797
  %60 = add <4 x i32> %33, %59
  store <4 x i32> %60, ptr %58, align 4, !alias.scope !789, !noalias !797
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %62 = load <4 x i32>, ptr %61, align 4, !alias.scope !789, !noalias !797
  %63 = add <4 x i32> %32, %62
  store <4 x i32> %63, ptr %61, align 4, !alias.scope !789, !noalias !797
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %65 = load <4 x i32>, ptr %64, align 4, !alias.scope !789, !noalias !797
  %66 = add <4 x i32> %31, %65
  store <4 x i32> %66, ptr %64, align 4, !alias.scope !789, !noalias !797
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %68 = load <4 x i32>, ptr %67, align 4, !alias.scope !789, !noalias !797
  %69 = add <4 x i32> %30, %68
  store <4 x i32> %69, ptr %67, align 4, !alias.scope !789, !noalias !797
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %71 = load <4 x i32>, ptr %70, align 4, !alias.scope !789, !noalias !797
  %72 = add <4 x i32> %29, %71
  store <4 x i32> %72, ptr %70, align 4, !alias.scope !789, !noalias !797
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %74 = load <4 x i32>, ptr %73, align 4, !alias.scope !789, !noalias !797
  %75 = add <4 x i32> %28, %74
  store <4 x i32> %75, ptr %73, align 4, !alias.scope !789, !noalias !797
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %77 = load <4 x i32>, ptr %76, align 4, !alias.scope !789, !noalias !797
  %78 = add <4 x i32> %27, %77
  store <4 x i32> %78, ptr %76, align 4, !alias.scope !789, !noalias !797
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %80 = load <4 x i32>, ptr %79, align 4, !alias.scope !789, !noalias !797
  %81 = add <4 x i32> %26, %80
  store <4 x i32> %81, ptr %79, align 4, !alias.scope !789, !noalias !797
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %83 = load <4 x i32>, ptr %82, align 4, !alias.scope !789, !noalias !797
  %84 = add <4 x i32> %38, %83
  store <4 x i32> %84, ptr %82, align 4, !alias.scope !789, !noalias !797
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %86 = load <4 x i32>, ptr %85, align 4, !alias.scope !789, !noalias !797
  %87 = add <4 x i32> %39, %86
  store <4 x i32> %87, ptr %85, align 4, !alias.scope !789, !noalias !797
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %89 = load <4 x i32>, ptr %88, align 4, !alias.scope !789, !noalias !797
  %90 = add <4 x i32> %40, %89
  store <4 x i32> %90, ptr %88, align 4, !alias.scope !789, !noalias !797
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %92 = load <4 x i32>, ptr %91, align 4, !alias.scope !789, !noalias !797
  %93 = add <4 x i32> %41, %92
  store <4 x i32> %93, ptr %91, align 4, !alias.scope !789, !noalias !797
  br label %220

94:                                               ; preds = %25
  store <4 x i32> %37, ptr %0, align 4, !alias.scope !789, !noalias !797
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %36, ptr %95, align 4, !alias.scope !789, !noalias !797
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> %35, ptr %96, align 4, !alias.scope !789, !noalias !797
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> %34, ptr %97, align 4, !alias.scope !789, !noalias !797
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i32> %33, ptr %98, align 4, !alias.scope !789, !noalias !797
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i32> %32, ptr %99, align 4, !alias.scope !789, !noalias !797
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> %31, ptr %100, align 4, !alias.scope !789, !noalias !797
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x i32> %30, ptr %101, align 4, !alias.scope !789, !noalias !797
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <4 x i32> %29, ptr %102, align 4, !alias.scope !789, !noalias !797
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <4 x i32> %28, ptr %103, align 4, !alias.scope !789, !noalias !797
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <4 x i32> %27, ptr %104, align 4, !alias.scope !789, !noalias !797
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <4 x i32> %26, ptr %105, align 4, !alias.scope !789, !noalias !797
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <4 x i32> %38, ptr %106, align 4, !alias.scope !789, !noalias !797
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x i32> %39, ptr %107, align 4, !alias.scope !789, !noalias !797
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <4 x i32> %40, ptr %108, align 4, !alias.scope !789, !noalias !797
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <4 x i32> %41, ptr %109, align 4, !alias.scope !789, !noalias !797
  br label %220

110:                                              ; preds = %4, %110
  %111 = phi <4 x i32> [ %213, %110 ], [ zeroinitializer, %4 ]
  %112 = phi <4 x i32> [ %205, %110 ], [ zeroinitializer, %4 ]
  %113 = phi <4 x i32> [ %212, %110 ], [ zeroinitializer, %4 ]
  %114 = phi <4 x i32> [ %202, %110 ], [ zeroinitializer, %4 ]
  %115 = phi <4 x i32> [ %183, %110 ], [ zeroinitializer, %4 ]
  %116 = phi <4 x i32> [ %179, %110 ], [ zeroinitializer, %4 ]
  %117 = phi <4 x i32> [ %182, %110 ], [ zeroinitializer, %4 ]
  %118 = phi <4 x i32> [ %176, %110 ], [ zeroinitializer, %4 ]
  %119 = phi <4 x i32> [ %181, %110 ], [ zeroinitializer, %4 ]
  %120 = phi <4 x i32> [ %173, %110 ], [ zeroinitializer, %4 ]
  %121 = phi <4 x i32> [ %180, %110 ], [ zeroinitializer, %4 ]
  %122 = phi <4 x i32> [ %170, %110 ], [ zeroinitializer, %4 ]
  %123 = phi <4 x i32> [ %208, %110 ], [ zeroinitializer, %4 ]
  %124 = phi <4 x i32> [ %214, %110 ], [ zeroinitializer, %4 ]
  %125 = phi <4 x i32> [ %211, %110 ], [ zeroinitializer, %4 ]
  %126 = phi <4 x i32> [ %215, %110 ], [ zeroinitializer, %4 ]
  %127 = phi i64 [ %218, %110 ], [ 0, %4 ]
  %128 = phi ptr [ %217, %110 ], [ %1, %4 ]
  %129 = phi ptr [ %216, %110 ], [ %2, %4 ]
  %130 = load <16 x i8>, ptr %129, align 1, !alias.scope !794, !noalias !798
  %131 = getelementptr inbounds nuw i8, ptr %129, i64 16
  %132 = shl <16 x i8> %130, splat (i8 4)
  %133 = and <16 x i8> %130, splat (i8 -16)
  %134 = load <16 x i8>, ptr %131, align 1, !alias.scope !794, !noalias !798
  %135 = shl <16 x i8> %134, splat (i8 4)
  %136 = and <16 x i8> %134, splat (i8 -16)
  %137 = tail call { <16 x i8>, <16 x i8> } @llvm.aarch64.neon.ld2.v16i8.p0(ptr %128), !alias.scope !792, !noalias !799
  %138 = extractvalue { <16 x i8>, <16 x i8> } %137, 0
  %139 = extractvalue { <16 x i8>, <16 x i8> } %137, 1
  %140 = getelementptr inbounds nuw i8, ptr %128, i64 32
  %141 = tail call { <16 x i8>, <16 x i8> } @llvm.aarch64.neon.ld2.v16i8.p0(ptr nonnull %140), !alias.scope !792, !noalias !799
  %142 = extractvalue { <16 x i8>, <16 x i8> } %141, 0
  %143 = extractvalue { <16 x i8>, <16 x i8> } %141, 1
  %144 = bitcast <16 x i8> %138 to <4 x i32>
  %145 = bitcast <16 x i8> %139 to <4 x i32>
  %146 = bitcast <16 x i8> %138 to <4 x i32>
  %147 = bitcast <16 x i8> %139 to <4 x i32>
  %148 = bitcast <16 x i8> %142 to <4 x i32>
  %149 = bitcast <16 x i8> %142 to <4 x i32>
  %150 = bitcast <16 x i8> %143 to <4 x i32>
  %151 = bitcast <16 x i8> %143 to <4 x i32>
  %152 = shufflevector <4 x i32> %144, <4 x i32> poison, <4 x i32> zeroinitializer
  %153 = bitcast <4 x i32> %152 to <16 x i8>
  %154 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %122, <16 x i8> %132, <16 x i8> %153)
  %155 = shufflevector <4 x i32> %144, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %156 = bitcast <4 x i32> %155 to <16 x i8>
  %157 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %120, <16 x i8> %132, <16 x i8> %156)
  %158 = shufflevector <4 x i32> %146, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %159 = bitcast <4 x i32> %158 to <16 x i8>
  %160 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %118, <16 x i8> %132, <16 x i8> %159)
  %161 = shufflevector <4 x i32> %146, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %162 = bitcast <4 x i32> %161 to <16 x i8>
  %163 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %116, <16 x i8> %132, <16 x i8> %162)
  %164 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %121, <16 x i8> %135, <16 x i8> %153)
  %165 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %119, <16 x i8> %135, <16 x i8> %156)
  %166 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %117, <16 x i8> %135, <16 x i8> %159)
  %167 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %115, <16 x i8> %135, <16 x i8> %162)
  %168 = shufflevector <4 x i32> %145, <4 x i32> poison, <4 x i32> zeroinitializer
  %169 = bitcast <4 x i32> %168 to <16 x i8>
  %170 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %154, <16 x i8> %133, <16 x i8> %169)
  %171 = shufflevector <4 x i32> %145, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %172 = bitcast <4 x i32> %171 to <16 x i8>
  %173 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %157, <16 x i8> %133, <16 x i8> %172)
  %174 = shufflevector <4 x i32> %147, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %175 = bitcast <4 x i32> %174 to <16 x i8>
  %176 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %160, <16 x i8> %133, <16 x i8> %175)
  %177 = shufflevector <4 x i32> %147, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %178 = bitcast <4 x i32> %177 to <16 x i8>
  %179 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %163, <16 x i8> %133, <16 x i8> %178)
  %180 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %164, <16 x i8> %136, <16 x i8> %169)
  %181 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %165, <16 x i8> %136, <16 x i8> %172)
  %182 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %166, <16 x i8> %136, <16 x i8> %175)
  %183 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %167, <16 x i8> %136, <16 x i8> %178)
  %184 = shufflevector <4 x i32> %148, <4 x i32> poison, <4 x i32> zeroinitializer
  %185 = bitcast <4 x i32> %184 to <16 x i8>
  %186 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %114, <16 x i8> %132, <16 x i8> %185)
  %187 = shufflevector <4 x i32> %148, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %188 = bitcast <4 x i32> %187 to <16 x i8>
  %189 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %112, <16 x i8> %132, <16 x i8> %188)
  %190 = shufflevector <4 x i32> %149, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %191 = bitcast <4 x i32> %190 to <16 x i8>
  %192 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %123, <16 x i8> %132, <16 x i8> %191)
  %193 = shufflevector <4 x i32> %149, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %194 = bitcast <4 x i32> %193 to <16 x i8>
  %195 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %125, <16 x i8> %132, <16 x i8> %194)
  %196 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %113, <16 x i8> %135, <16 x i8> %185)
  %197 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %111, <16 x i8> %135, <16 x i8> %188)
  %198 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %124, <16 x i8> %135, <16 x i8> %191)
  %199 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %126, <16 x i8> %135, <16 x i8> %194)
  %200 = shufflevector <4 x i32> %150, <4 x i32> poison, <4 x i32> zeroinitializer
  %201 = bitcast <4 x i32> %200 to <16 x i8>
  %202 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %186, <16 x i8> %133, <16 x i8> %201)
  %203 = shufflevector <4 x i32> %150, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %204 = bitcast <4 x i32> %203 to <16 x i8>
  %205 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %189, <16 x i8> %133, <16 x i8> %204)
  %206 = shufflevector <4 x i32> %151, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %207 = bitcast <4 x i32> %206 to <16 x i8>
  %208 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %192, <16 x i8> %133, <16 x i8> %207)
  %209 = shufflevector <4 x i32> %151, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %210 = bitcast <4 x i32> %209 to <16 x i8>
  %211 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %195, <16 x i8> %133, <16 x i8> %210)
  %212 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %196, <16 x i8> %136, <16 x i8> %201)
  %213 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %197, <16 x i8> %136, <16 x i8> %204)
  %214 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %198, <16 x i8> %136, <16 x i8> %207)
  %215 = tail call <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32> %199, <16 x i8> %136, <16 x i8> %210)
  %216 = getelementptr inbounds nuw i8, ptr %129, i64 32
  %217 = getelementptr inbounds nuw i8, ptr %128, i64 64
  %218 = add nuw nsw i64 %127, 1
  %219 = icmp eq i64 %218, %6
  br i1 %219, label %8, label %110, !llvm.loop !766

220:                                              ; preds = %46, %94
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s4s32_1x8x16_arm_64_i8mm(ptr noalias noundef captures(none) %0, ptr noalias noundef %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #20 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %6 = load i64, ptr %5, align 8, !tbaa !142
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %39, label %17

8:                                                ; preds = %39
  %9 = ashr <4 x i32> %68, splat (i32 4)
  %10 = ashr <4 x i32> %70, splat (i32 4)
  %11 = bitcast <4 x i32> %9 to <2 x i64>
  %12 = bitcast <4 x i32> %10 to <2 x i64>
  %13 = ashr <4 x i32> %72, splat (i32 4)
  %14 = ashr <4 x i32> %74, splat (i32 4)
  %15 = bitcast <4 x i32> %13 to <2 x i64>
  %16 = bitcast <4 x i32> %14 to <2 x i64>
  br label %17

17:                                               ; preds = %8, %4
  %18 = phi <2 x i64> [ %11, %8 ], [ zeroinitializer, %4 ]
  %19 = phi <2 x i64> [ %12, %8 ], [ zeroinitializer, %4 ]
  %20 = phi <2 x i64> [ %15, %8 ], [ zeroinitializer, %4 ]
  %21 = phi <2 x i64> [ %16, %8 ], [ zeroinitializer, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %23 = load i32, ptr %22, align 4, !tbaa !146
  %24 = and i32 %23, 256
  %25 = icmp eq i32 %24, 0
  %26 = shufflevector <2 x i64> %18, <2 x i64> %19, <2 x i32> <i32 0, i32 2>
  br i1 %25, label %36, label %27

27:                                               ; preds = %17
  %28 = bitcast <2 x i64> %26 to <4 x i32>
  %29 = load <4 x i32>, ptr %0, align 4
  %30 = add <4 x i32> %29, %28
  store <4 x i32> %30, ptr %0, align 4
  %31 = shufflevector <2 x i64> %20, <2 x i64> %21, <2 x i32> <i32 0, i32 2>
  %32 = bitcast <2 x i64> %31 to <4 x i32>
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %34 = load <4 x i32>, ptr %33, align 4
  %35 = add <4 x i32> %34, %32
  store <4 x i32> %35, ptr %33, align 4
  br label %79

36:                                               ; preds = %17
  store <2 x i64> %26, ptr %0, align 4
  %37 = shufflevector <2 x i64> %20, <2 x i64> %21, <2 x i32> <i32 0, i32 2>
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %37, ptr %38, align 4
  br label %79

39:                                               ; preds = %4, %39
  %40 = phi <4 x i32> [ %68, %39 ], [ zeroinitializer, %4 ]
  %41 = phi <4 x i32> [ %70, %39 ], [ zeroinitializer, %4 ]
  %42 = phi <4 x i32> [ %72, %39 ], [ zeroinitializer, %4 ]
  %43 = phi <4 x i32> [ %74, %39 ], [ zeroinitializer, %4 ]
  %44 = phi i64 [ %77, %39 ], [ 0, %4 ]
  %45 = phi ptr [ %76, %39 ], [ %1, %4 ]
  %46 = phi ptr [ %75, %39 ], [ %2, %4 ]
  %47 = load <16 x i8>, ptr %46, align 1
  %48 = shl <16 x i8> %47, splat (i8 4)
  %49 = and <16 x i8> %47, splat (i8 -16)
  %50 = getelementptr inbounds nuw i8, ptr %46, i64 16
  %51 = load <16 x i8>, ptr %50, align 1
  %52 = shl <16 x i8> %51, splat (i8 4)
  %53 = and <16 x i8> %51, splat (i8 -16)
  %54 = getelementptr inbounds nuw i8, ptr %46, i64 32
  %55 = load <16 x i8>, ptr %54, align 1
  %56 = shl <16 x i8> %55, splat (i8 4)
  %57 = and <16 x i8> %55, splat (i8 -16)
  %58 = getelementptr inbounds nuw i8, ptr %46, i64 48
  %59 = load <16 x i8>, ptr %58, align 1
  %60 = shl <16 x i8> %59, splat (i8 4)
  %61 = and <16 x i8> %59, splat (i8 -16)
  %62 = tail call { <8 x i8>, <8 x i8> } @llvm.aarch64.neon.ld2.v8i8.p0(ptr %45)
  %63 = extractvalue { <8 x i8>, <8 x i8> } %62, 0
  %64 = extractvalue { <8 x i8>, <8 x i8> } %62, 1
  %65 = shufflevector <8 x i8> %63, <8 x i8> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %66 = shufflevector <8 x i8> %64, <8 x i8> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %67 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %40, <16 x i8> %65, <16 x i8> %48)
  %68 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %67, <16 x i8> %66, <16 x i8> %49)
  %69 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %41, <16 x i8> %65, <16 x i8> %52)
  %70 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %69, <16 x i8> %66, <16 x i8> %53)
  %71 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %42, <16 x i8> %65, <16 x i8> %56)
  %72 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %71, <16 x i8> %66, <16 x i8> %57)
  %73 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %43, <16 x i8> %65, <16 x i8> %60)
  %74 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %73, <16 x i8> %66, <16 x i8> %61)
  %75 = getelementptr inbounds nuw i8, ptr %46, i64 64
  %76 = getelementptr inbounds nuw i8, ptr %45, i64 16
  %77 = add nuw nsw i64 %44, 1
  %78 = icmp eq i64 %77, %6
  br i1 %78, label %8, label %39, !llvm.loop !800

79:                                               ; preds = %27, %36
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s4s32_2x8x16_arm_64_i8mm(ptr noalias noundef captures(none) %0, ptr noalias noundef %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #19 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %6 = load i64, ptr %5, align 8, !tbaa !142, !noalias !808
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %34, label %17

8:                                                ; preds = %34
  %9 = ashr <4 x i32> %67, splat (i32 4)
  %10 = ashr <4 x i32> %69, splat (i32 4)
  %11 = bitcast <4 x i32> %9 to <2 x i64>
  %12 = bitcast <4 x i32> %10 to <2 x i64>
  %13 = ashr <4 x i32> %71, splat (i32 4)
  %14 = ashr <4 x i32> %73, splat (i32 4)
  %15 = bitcast <4 x i32> %13 to <2 x i64>
  %16 = bitcast <4 x i32> %14 to <2 x i64>
  br label %17

17:                                               ; preds = %8, %4
  %18 = phi <2 x i64> [ %11, %8 ], [ zeroinitializer, %4 ]
  %19 = phi <2 x i64> [ %12, %8 ], [ zeroinitializer, %4 ]
  %20 = phi <2 x i64> [ %15, %8 ], [ zeroinitializer, %4 ]
  %21 = phi <2 x i64> [ %16, %8 ], [ zeroinitializer, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %23 = load i32, ptr %22, align 4, !tbaa !146, !noalias !808
  %24 = and i32 %23, 256
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %27 = shufflevector <2 x i64> %18, <2 x i64> %19, <2 x i32> <i32 0, i32 2>
  br i1 %25, label %28, label %78

28:                                               ; preds = %17
  store <2 x i64> %27, ptr %0, align 4, !alias.scope !801, !noalias !809
  %29 = shufflevector <2 x i64> %18, <2 x i64> %19, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %29, ptr %26, align 4, !alias.scope !801, !noalias !809
  %30 = shufflevector <2 x i64> %20, <2 x i64> %21, <2 x i32> <i32 0, i32 2>
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %30, ptr %31, align 4, !alias.scope !801, !noalias !809
  %32 = shufflevector <2 x i64> %20, <2 x i64> %21, <2 x i32> <i32 1, i32 3>
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %32, ptr %33, align 4, !alias.scope !801, !noalias !809
  br label %96

34:                                               ; preds = %4, %34
  %35 = phi <4 x i32> [ %67, %34 ], [ zeroinitializer, %4 ]
  %36 = phi <4 x i32> [ %69, %34 ], [ zeroinitializer, %4 ]
  %37 = phi <4 x i32> [ %71, %34 ], [ zeroinitializer, %4 ]
  %38 = phi <4 x i32> [ %73, %34 ], [ zeroinitializer, %4 ]
  %39 = phi i64 [ %76, %34 ], [ 0, %4 ]
  %40 = phi ptr [ %75, %34 ], [ %1, %4 ]
  %41 = phi ptr [ %74, %34 ], [ %2, %4 ]
  %42 = load <16 x i8>, ptr %41, align 1, !alias.scope !806, !noalias !810
  %43 = shl <16 x i8> %42, splat (i8 4)
  %44 = and <16 x i8> %42, splat (i8 -16)
  %45 = getelementptr inbounds nuw i8, ptr %41, i64 16
  %46 = load <16 x i8>, ptr %45, align 1, !alias.scope !806, !noalias !810
  %47 = shl <16 x i8> %46, splat (i8 4)
  %48 = and <16 x i8> %46, splat (i8 -16)
  %49 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %50 = load <16 x i8>, ptr %49, align 1, !alias.scope !806, !noalias !810
  %51 = shl <16 x i8> %50, splat (i8 4)
  %52 = and <16 x i8> %50, splat (i8 -16)
  %53 = getelementptr inbounds nuw i8, ptr %41, i64 48
  %54 = load <16 x i8>, ptr %53, align 1, !alias.scope !806, !noalias !810
  %55 = shl <16 x i8> %54, splat (i8 4)
  %56 = and <16 x i8> %54, splat (i8 -16)
  %57 = tail call { <8 x i8>, <8 x i8> } @llvm.aarch64.neon.ld2.v8i8.p0(ptr %40), !alias.scope !804, !noalias !811
  %58 = extractvalue { <8 x i8>, <8 x i8> } %57, 0
  %59 = extractvalue { <8 x i8>, <8 x i8> } %57, 1
  %60 = getelementptr inbounds nuw i8, ptr %40, i64 16
  %61 = tail call { <8 x i8>, <8 x i8> } @llvm.aarch64.neon.ld2.v8i8.p0(ptr nonnull %60), !alias.scope !804, !noalias !811
  %62 = extractvalue { <8 x i8>, <8 x i8> } %61, 0
  %63 = extractvalue { <8 x i8>, <8 x i8> } %61, 1
  %64 = shufflevector <8 x i8> %58, <8 x i8> %62, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %65 = shufflevector <8 x i8> %59, <8 x i8> %63, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %66 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %35, <16 x i8> %64, <16 x i8> %43)
  %67 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %66, <16 x i8> %65, <16 x i8> %44)
  %68 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %36, <16 x i8> %64, <16 x i8> %47)
  %69 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %68, <16 x i8> %65, <16 x i8> %48)
  %70 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %37, <16 x i8> %64, <16 x i8> %51)
  %71 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %70, <16 x i8> %65, <16 x i8> %52)
  %72 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %38, <16 x i8> %64, <16 x i8> %55)
  %73 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %72, <16 x i8> %65, <16 x i8> %56)
  %74 = getelementptr inbounds nuw i8, ptr %41, i64 64
  %75 = getelementptr inbounds nuw i8, ptr %40, i64 32
  %76 = add nuw nsw i64 %39, 1
  %77 = icmp eq i64 %76, %6
  br i1 %77, label %8, label %34, !llvm.loop !812

78:                                               ; preds = %17
  %79 = bitcast <2 x i64> %27 to <4 x i32>
  %80 = load <4 x i32>, ptr %0, align 4, !alias.scope !801, !noalias !809
  %81 = add <4 x i32> %80, %79
  store <4 x i32> %81, ptr %0, align 4, !alias.scope !801, !noalias !809
  %82 = shufflevector <2 x i64> %18, <2 x i64> %19, <2 x i32> <i32 1, i32 3>
  %83 = bitcast <2 x i64> %82 to <4 x i32>
  %84 = load <4 x i32>, ptr %26, align 4, !alias.scope !801, !noalias !809
  %85 = add <4 x i32> %84, %83
  store <4 x i32> %85, ptr %26, align 4, !alias.scope !801, !noalias !809
  %86 = shufflevector <2 x i64> %20, <2 x i64> %21, <2 x i32> <i32 0, i32 2>
  %87 = bitcast <2 x i64> %86 to <4 x i32>
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %89 = load <4 x i32>, ptr %88, align 4, !alias.scope !801, !noalias !809
  %90 = add <4 x i32> %89, %87
  store <4 x i32> %90, ptr %88, align 4, !alias.scope !801, !noalias !809
  %91 = shufflevector <2 x i64> %20, <2 x i64> %21, <2 x i32> <i32 1, i32 3>
  %92 = bitcast <2 x i64> %91 to <4 x i32>
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %94 = load <4 x i32>, ptr %93, align 4, !alias.scope !801, !noalias !809
  %95 = add <4 x i32> %94, %92
  store <4 x i32> %95, ptr %93, align 4, !alias.scope !801, !noalias !809
  br label %96

96:                                               ; preds = %78, %28
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s4s32_4x8x16_arm_64_i8mm(ptr noalias noundef captures(none) %0, ptr noalias noundef %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #19 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %6 = load i64, ptr %5, align 8, !tbaa !142, !noalias !820
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %92, label %25

8:                                                ; preds = %92
  %9 = ashr <4 x i32> %139, splat (i32 4)
  %10 = ashr <4 x i32> %141, splat (i32 4)
  %11 = bitcast <4 x i32> %9 to <2 x i64>
  %12 = bitcast <4 x i32> %10 to <2 x i64>
  %13 = ashr <4 x i32> %143, splat (i32 4)
  %14 = ashr <4 x i32> %145, splat (i32 4)
  %15 = bitcast <4 x i32> %13 to <2 x i64>
  %16 = bitcast <4 x i32> %14 to <2 x i64>
  %17 = ashr <4 x i32> %147, splat (i32 4)
  %18 = ashr <4 x i32> %149, splat (i32 4)
  %19 = bitcast <4 x i32> %17 to <2 x i64>
  %20 = bitcast <4 x i32> %18 to <2 x i64>
  %21 = ashr <4 x i32> %151, splat (i32 4)
  %22 = ashr <4 x i32> %153, splat (i32 4)
  %23 = bitcast <4 x i32> %21 to <2 x i64>
  %24 = bitcast <4 x i32> %22 to <2 x i64>
  br label %25

25:                                               ; preds = %8, %4
  %26 = phi <2 x i64> [ %11, %8 ], [ zeroinitializer, %4 ]
  %27 = phi <2 x i64> [ %12, %8 ], [ zeroinitializer, %4 ]
  %28 = phi <2 x i64> [ %15, %8 ], [ zeroinitializer, %4 ]
  %29 = phi <2 x i64> [ %16, %8 ], [ zeroinitializer, %4 ]
  %30 = phi <2 x i64> [ %19, %8 ], [ zeroinitializer, %4 ]
  %31 = phi <2 x i64> [ %20, %8 ], [ zeroinitializer, %4 ]
  %32 = phi <2 x i64> [ %23, %8 ], [ zeroinitializer, %4 ]
  %33 = phi <2 x i64> [ %24, %8 ], [ zeroinitializer, %4 ]
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %35 = load i32, ptr %34, align 4, !tbaa !146, !noalias !820
  %36 = and i32 %35, 256
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %39 = shufflevector <2 x i64> %26, <2 x i64> %27, <2 x i32> <i32 0, i32 2>
  br i1 %37, label %78, label %40

40:                                               ; preds = %25
  %41 = bitcast <2 x i64> %39 to <4 x i32>
  %42 = load <4 x i32>, ptr %0, align 4, !alias.scope !813, !noalias !821
  %43 = add <4 x i32> %42, %41
  store <4 x i32> %43, ptr %0, align 4, !alias.scope !813, !noalias !821
  %44 = shufflevector <2 x i64> %26, <2 x i64> %27, <2 x i32> <i32 1, i32 3>
  %45 = bitcast <2 x i64> %44 to <4 x i32>
  %46 = load <4 x i32>, ptr %38, align 4, !alias.scope !813, !noalias !821
  %47 = add <4 x i32> %46, %45
  store <4 x i32> %47, ptr %38, align 4, !alias.scope !813, !noalias !821
  %48 = shufflevector <2 x i64> %28, <2 x i64> %29, <2 x i32> <i32 0, i32 2>
  %49 = bitcast <2 x i64> %48 to <4 x i32>
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %51 = load <4 x i32>, ptr %50, align 4, !alias.scope !813, !noalias !821
  %52 = add <4 x i32> %51, %49
  store <4 x i32> %52, ptr %50, align 4, !alias.scope !813, !noalias !821
  %53 = shufflevector <2 x i64> %28, <2 x i64> %29, <2 x i32> <i32 1, i32 3>
  %54 = bitcast <2 x i64> %53 to <4 x i32>
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %56 = load <4 x i32>, ptr %55, align 4, !alias.scope !813, !noalias !821
  %57 = add <4 x i32> %56, %54
  store <4 x i32> %57, ptr %55, align 4, !alias.scope !813, !noalias !821
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %60 = shufflevector <2 x i64> %30, <2 x i64> %31, <2 x i32> <i32 0, i32 2>
  %61 = bitcast <2 x i64> %60 to <4 x i32>
  %62 = load <4 x i32>, ptr %58, align 4, !alias.scope !813, !noalias !821
  %63 = add <4 x i32> %62, %61
  store <4 x i32> %63, ptr %58, align 4, !alias.scope !813, !noalias !821
  %64 = shufflevector <2 x i64> %30, <2 x i64> %31, <2 x i32> <i32 1, i32 3>
  %65 = bitcast <2 x i64> %64 to <4 x i32>
  %66 = load <4 x i32>, ptr %59, align 4, !alias.scope !813, !noalias !821
  %67 = add <4 x i32> %66, %65
  store <4 x i32> %67, ptr %59, align 4, !alias.scope !813, !noalias !821
  %68 = shufflevector <2 x i64> %32, <2 x i64> %33, <2 x i32> <i32 0, i32 2>
  %69 = bitcast <2 x i64> %68 to <4 x i32>
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %71 = load <4 x i32>, ptr %70, align 4, !alias.scope !813, !noalias !821
  %72 = add <4 x i32> %71, %69
  store <4 x i32> %72, ptr %70, align 4, !alias.scope !813, !noalias !821
  %73 = shufflevector <2 x i64> %32, <2 x i64> %33, <2 x i32> <i32 1, i32 3>
  %74 = bitcast <2 x i64> %73 to <4 x i32>
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %76 = load <4 x i32>, ptr %75, align 4, !alias.scope !813, !noalias !821
  %77 = add <4 x i32> %76, %74
  store <4 x i32> %77, ptr %75, align 4, !alias.scope !813, !noalias !821
  br label %158

78:                                               ; preds = %25
  store <2 x i64> %39, ptr %0, align 4, !alias.scope !813, !noalias !821
  %79 = shufflevector <2 x i64> %26, <2 x i64> %27, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %79, ptr %38, align 4, !alias.scope !813, !noalias !821
  %80 = shufflevector <2 x i64> %28, <2 x i64> %29, <2 x i32> <i32 0, i32 2>
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %80, ptr %81, align 4, !alias.scope !813, !noalias !821
  %82 = shufflevector <2 x i64> %28, <2 x i64> %29, <2 x i32> <i32 1, i32 3>
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %82, ptr %83, align 4, !alias.scope !813, !noalias !821
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %86 = shufflevector <2 x i64> %30, <2 x i64> %31, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %86, ptr %84, align 4, !alias.scope !813, !noalias !821
  %87 = shufflevector <2 x i64> %30, <2 x i64> %31, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %87, ptr %85, align 4, !alias.scope !813, !noalias !821
  %88 = shufflevector <2 x i64> %32, <2 x i64> %33, <2 x i32> <i32 0, i32 2>
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %88, ptr %89, align 4, !alias.scope !813, !noalias !821
  %90 = shufflevector <2 x i64> %32, <2 x i64> %33, <2 x i32> <i32 1, i32 3>
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> %90, ptr %91, align 4, !alias.scope !813, !noalias !821
  br label %158

92:                                               ; preds = %4, %92
  %93 = phi <4 x i32> [ %139, %92 ], [ zeroinitializer, %4 ]
  %94 = phi <4 x i32> [ %141, %92 ], [ zeroinitializer, %4 ]
  %95 = phi <4 x i32> [ %143, %92 ], [ zeroinitializer, %4 ]
  %96 = phi <4 x i32> [ %145, %92 ], [ zeroinitializer, %4 ]
  %97 = phi <4 x i32> [ %147, %92 ], [ zeroinitializer, %4 ]
  %98 = phi <4 x i32> [ %149, %92 ], [ zeroinitializer, %4 ]
  %99 = phi <4 x i32> [ %151, %92 ], [ zeroinitializer, %4 ]
  %100 = phi <4 x i32> [ %153, %92 ], [ zeroinitializer, %4 ]
  %101 = phi i64 [ %156, %92 ], [ 0, %4 ]
  %102 = phi ptr [ %155, %92 ], [ %1, %4 ]
  %103 = phi ptr [ %154, %92 ], [ %2, %4 ]
  %104 = load <16 x i8>, ptr %103, align 1, !alias.scope !818, !noalias !822
  %105 = shl <16 x i8> %104, splat (i8 4)
  %106 = and <16 x i8> %104, splat (i8 -16)
  %107 = getelementptr inbounds nuw i8, ptr %103, i64 16
  %108 = load <16 x i8>, ptr %107, align 1, !alias.scope !818, !noalias !822
  %109 = shl <16 x i8> %108, splat (i8 4)
  %110 = and <16 x i8> %108, splat (i8 -16)
  %111 = getelementptr inbounds nuw i8, ptr %103, i64 32
  %112 = load <16 x i8>, ptr %111, align 1, !alias.scope !818, !noalias !822
  %113 = shl <16 x i8> %112, splat (i8 4)
  %114 = and <16 x i8> %112, splat (i8 -16)
  %115 = getelementptr inbounds nuw i8, ptr %103, i64 48
  %116 = load <16 x i8>, ptr %115, align 1, !alias.scope !818, !noalias !822
  %117 = shl <16 x i8> %116, splat (i8 4)
  %118 = and <16 x i8> %116, splat (i8 -16)
  %119 = tail call { <8 x i8>, <8 x i8> } @llvm.aarch64.neon.ld2.v8i8.p0(ptr %102), !alias.scope !816, !noalias !823
  %120 = extractvalue { <8 x i8>, <8 x i8> } %119, 0
  %121 = extractvalue { <8 x i8>, <8 x i8> } %119, 1
  %122 = getelementptr inbounds nuw i8, ptr %102, i64 16
  %123 = tail call { <8 x i8>, <8 x i8> } @llvm.aarch64.neon.ld2.v8i8.p0(ptr nonnull %122), !alias.scope !816, !noalias !823
  %124 = extractvalue { <8 x i8>, <8 x i8> } %123, 0
  %125 = extractvalue { <8 x i8>, <8 x i8> } %123, 1
  %126 = shufflevector <8 x i8> %120, <8 x i8> %124, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %127 = shufflevector <8 x i8> %121, <8 x i8> %125, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %128 = getelementptr inbounds nuw i8, ptr %102, i64 32
  %129 = tail call { <8 x i8>, <8 x i8> } @llvm.aarch64.neon.ld2.v8i8.p0(ptr nonnull %128), !alias.scope !816, !noalias !823
  %130 = extractvalue { <8 x i8>, <8 x i8> } %129, 0
  %131 = extractvalue { <8 x i8>, <8 x i8> } %129, 1
  %132 = getelementptr inbounds nuw i8, ptr %102, i64 48
  %133 = tail call { <8 x i8>, <8 x i8> } @llvm.aarch64.neon.ld2.v8i8.p0(ptr nonnull %132), !alias.scope !816, !noalias !823
  %134 = extractvalue { <8 x i8>, <8 x i8> } %133, 0
  %135 = extractvalue { <8 x i8>, <8 x i8> } %133, 1
  %136 = shufflevector <8 x i8> %130, <8 x i8> %134, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %137 = shufflevector <8 x i8> %131, <8 x i8> %135, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %138 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %93, <16 x i8> %126, <16 x i8> %105)
  %139 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %138, <16 x i8> %127, <16 x i8> %106)
  %140 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %94, <16 x i8> %126, <16 x i8> %109)
  %141 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %140, <16 x i8> %127, <16 x i8> %110)
  %142 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %95, <16 x i8> %126, <16 x i8> %113)
  %143 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %142, <16 x i8> %127, <16 x i8> %114)
  %144 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %96, <16 x i8> %126, <16 x i8> %117)
  %145 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %144, <16 x i8> %127, <16 x i8> %118)
  %146 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %97, <16 x i8> %136, <16 x i8> %105)
  %147 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %146, <16 x i8> %137, <16 x i8> %106)
  %148 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %98, <16 x i8> %136, <16 x i8> %109)
  %149 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %148, <16 x i8> %137, <16 x i8> %110)
  %150 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %99, <16 x i8> %136, <16 x i8> %113)
  %151 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %150, <16 x i8> %137, <16 x i8> %114)
  %152 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %100, <16 x i8> %136, <16 x i8> %117)
  %153 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %152, <16 x i8> %137, <16 x i8> %118)
  %154 = getelementptr inbounds nuw i8, ptr %103, i64 64
  %155 = getelementptr inbounds nuw i8, ptr %102, i64 64
  %156 = add nuw nsw i64 %101, 1
  %157 = icmp eq i64 %156, %6
  br i1 %157, label %8, label %92, !llvm.loop !812

158:                                              ; preds = %40, %78
  ret void
}

; Function Attrs: alwaysinline nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: alwaysinline nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare { <8 x i8>, <8 x i8> } @llvm.aarch64.neon.ld2.v8i8.p0(ptr) #22

; Function Attrs: alwaysinline nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32>, <16 x i8>, <16 x i8>) #23

; Function Attrs: alwaysinline nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare { <16 x i8>, <16 x i8> } @llvm.aarch64.neon.ld2.v16i8.p0(ptr) #22

; Function Attrs: alwaysinline nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.aarch64.neon.sdot.v4i32.v16i8(<4 x i32>, <16 x i8>, <16 x i8>) #23

; Function Attrs: alwaysinline nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16>, <4 x i16>) #23

; Function Attrs: alwaysinline nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.aarch64.neon.bfmmla(<4 x float>, <8 x bfloat>, <8 x bfloat>) #23

; Function Attrs: alwaysinline nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x half> @llvm.fma.v8f16(<8 x half>, <8 x half>, <8 x half>) #12

; Function Attrs: alwaysinline nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16>) #23

; Function Attrs: alwaysinline nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float>) #23

; Function Attrs: alwaysinline nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #12

attributes #0 = { "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #2 = { uwtable "nonlazybind" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { inlinehint }
attributes #7 = { alwaysinline nounwind "frame-pointer"="non-leaf-no-reserve" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #8 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none) "frame-pointer"="non-leaf-no-reserve" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #9 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf-no-reserve" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #10 = { alwaysinline nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #11 = { alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) "frame-pointer"="non-leaf-no-reserve" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #12 = { alwaysinline nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { alwaysinline nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "frame-pointer"="non-leaf-no-reserve" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #15 = { alwaysinline nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "frame-pointer"="non-leaf-no-reserve" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+crc,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rdm,+v8.1a,+v8.2a,+v8a,-fmv" }
attributes #16 = { alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "frame-pointer"="non-leaf-no-reserve" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+crc,+fp-armv8,+fullfp16,+lse,+neon,+ras,+rdm,+v8.1a,+v8.2a,+v8a,-fmv" }
attributes #17 = { alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "frame-pointer"="non-leaf-no-reserve" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+bf16,+crc,+fp-armv8,+lse,+neon,+ras,+rdm,+v8.1a,+v8.2a,+v8a,-fmv" }
attributes #18 = { alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "frame-pointer"="non-leaf-no-reserve" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+crc,+dotprod,+fp-armv8,+lse,+neon,+ras,+rdm,+v8.1a,+v8.2a,+v8a,-fmv" }
attributes #19 = { alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "frame-pointer"="non-leaf-no-reserve" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+crc,+fp-armv8,+i8mm,+lse,+neon,+ras,+rdm,+v8.1a,+v8.2a,+v8a,-fmv" }
attributes #20 = { alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) "frame-pointer"="non-leaf-no-reserve" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+crc,+fp-armv8,+i8mm,+lse,+neon,+ras,+rdm,+v8.1a,+v8.2a,+v8a,-fmv" }
attributes #21 = { alwaysinline nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { alwaysinline nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { alwaysinline nocallback nofree nosync nounwind willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { nobuiltin "no-builtins" }
attributes #26 = { nobuiltin nounwind "no-builtins" }
attributes #27 = { nounwind memory(none) }

!llvm.dbg.cu = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10}
!llvm.errno.tbaa = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "configured_module_matmul_dispatch_0.mlir", directory: "/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/v1_generic_isa_a83b1c1da1/dispatches")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !3, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "configured_module_matmul_dispatch_1.mlir", directory: "/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/v1_generic_isa_a83b1c1da1/dispatches")
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !5, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "configured_module_matmul_dispatch_2.mlir", directory: "/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/v1_generic_isa_a83b1c1da1/dispatches")
!6 = distinct !DICompileUnit(language: DW_LANG_C17, file: !7, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "configured_module_matmul_dispatch_3.mlir", directory: "/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/v1_generic_isa_a83b1c1da1/dispatches")
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"frame-pointer", i32 4}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !13, i64 0}
!13 = !{!"omnipotent char", !14, i64 0}
!14 = !{!"Simple C/C++ TBAA"}
!15 = distinct !DISubprogram(name: "matmul_dispatch_0_pack_f32", linkageName: "matmul_dispatch_0_pack_f32", scope: !1, file: !1, line: 1, type: !16, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!16 = !DISubroutineType(cc: DW_CC_normal, types: !17)
!17 = !{!18, !19, !50, !79}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_environment_v0_t", baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_environment_v0_t", scope: !23, file: !23, line: 246, size: 768, elements: !24)
!23 = !DIFile(filename: "runtime/src/iree/hal/local/executable_library.h", directory: ".")
!24 = !{!25, !33, !36, !39, !41}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, scope: !23, file: !23, line: 227, baseType: !29, size: 2048, elements: !31)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", baseType: !30)
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !{!32}
!32 = !DISubrange(count: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "import_thunk", baseType: !34, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIBasicType(name: "void", encoding: DW_ATE_address)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "import_funcs", baseType: !37, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "import_contexts", baseType: !40, size: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "processor", baseType: !42, offset: 256)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_processor_v0_t", scope: !23, file: !23, line: 227, size: 512, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !45)
!45 = !DICompositeType(tag: DW_TAG_array_type, scope: !23, file: !23, line: 227, baseType: !46, size: 512, elements: !48)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", baseType: !47)
!47 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!48 = !{!49}
!49 = !DISubrange(count: 8)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_dispatch_state_v0_t", baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_dispatch_state_v0_t", scope: !23, file: !23, line: 275, size: 384, elements: !54)
!54 = !{!55, !56, !57, !60, !61, !62, !63, !64, !67, !68, !69, !74}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_x", baseType: !29, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_y", baseType: !29, size: 32, offset: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_z", baseType: !58, size: 16, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", baseType: !59)
!59 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "constant_count", baseType: !58, size: 16, offset: 80)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_x", baseType: !29, size: 32, offset: 96)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_y", baseType: !29, size: 32, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_z", baseType: !58, size: 16, offset: 160)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "max_concurrency", baseType: !65, size: 8, offset: 176)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", baseType: !66)
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "binding_count", baseType: !65, size: 8, offset: 184)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !26, size: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "binding_ptrs", baseType: !70, size: 64, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DICompositeType(tag: DW_TAG_array_type, scope: !23, file: !23, line: 227, baseType: !73, size: 4096, elements: !31)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "binding_lengths", baseType: !75, size: 64, offset: 320)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DICompositeType(tag: DW_TAG_array_type, scope: !23, file: !23, line: 227, baseType: !78, size: 4096, elements: !31)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", baseType: !46)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_workgroup_state_v0_t", baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_workgroup_state_v0_t", scope: !23, file: !23, line: 321, size: 256, elements: !83)
!83 = !{!84, !85, !86, !87, !88, !89, !90}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_x", baseType: !29, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_y", baseType: !29, size: 32, offset: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_z", baseType: !58, size: 16, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", baseType: !58, size: 16, offset: 80)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", baseType: !29, size: 32, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory", baseType: !34, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory_size", baseType: !29, size: 32, offset: 192)
!91 = !DILocation(line: 10, column: 8, scope: !15)
!92 = !DILocation(line: 11, column: 8, scope: !15)
!93 = !DILocation(line: 14, column: 8, scope: !15)
!94 = !DILocation(line: 16, column: 8, scope: !15)
!95 = distinct !DISubprogram(name: "matmul_dispatch_1_pack_f32", linkageName: "matmul_dispatch_1_pack_f32", scope: !3, file: !3, line: 1, type: !16, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!96 = !DILocation(line: 11, column: 8, scope: !95)
!97 = !DILocation(line: 12, column: 8, scope: !95)
!98 = !DILocation(line: 15, column: 8, scope: !95)
!99 = !DILocation(line: 17, column: 8, scope: !95)
!100 = distinct !DISubprogram(name: "matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32", linkageName: "matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32", scope: !5, file: !5, line: 1, type: !16, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!101 = !DILocation(line: 20, column: 8, scope: !100)
!102 = !DILocation(line: 19, column: 8, scope: !100)
!103 = !DILocation(line: 22, column: 8, scope: !100)
!104 = distinct !DISubprogram(name: "matmul_dispatch_3_unpack_f32", linkageName: "matmul_dispatch_3_unpack_f32", scope: !7, file: !7, line: 1, type: !16, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!105 = !DILocation(line: 11, column: 8, scope: !104)
!106 = !DILocation(line: 12, column: 8, scope: !104)
!107 = !DILocation(line: 15, column: 8, scope: !104)
!108 = !DILocation(line: 17, column: 8, scope: !104)
!109 = !{!110, !110, i64 0}
!110 = !{!"short", !13, i64 0}
!111 = !{!112, !112, i64 0}
!112 = !{!"float", !13, i64 0}
!113 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!114 = !{!115, !116, i64 296}
!115 = !{!"exp2f_data", !13, i64 0, !116, i64 256, !13, i64 264, !116, i64 288, !116, i64 296, !13, i64 304}
!116 = !{!"double", !13, i64 0}
!117 = !{!115, !116, i64 288}
!118 = !{!119, !119, i64 0}
!119 = !{!"long", !13, i64 0}
!120 = !{!116, !116, i64 0}
!121 = !{!"branch_weights", i32 4001, i32 4000000}
!122 = !{!123, !116, i64 0}
!123 = !{!"", !116, i64 0, !116, i64 8}
!124 = !{!123, !116, i64 8}
!125 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!126 = !{!115, !116, i64 256}
!127 = !{!128, !129, i64 0}
!128 = !{!"iree_uk_mmt4d_params_t", !129, i64 0, !130, i64 8, !130, i64 16, !129, i64 24, !130, i64 32, !130, i64 40, !129, i64 48, !130, i64 56, !130, i64 64, !130, i64 72, !130, i64 80, !130, i64 88, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !131, i64 112}
!129 = !{!"any pointer", !13, i64 0}
!130 = !{!"long long", !13, i64 0}
!131 = !{!"p1 long long", !129, i64 0}
!132 = !{!128, !130, i64 8}
!133 = !{!128, !130, i64 16}
!134 = !{!128, !129, i64 24}
!135 = !{!128, !130, i64 32}
!136 = !{!128, !130, i64 40}
!137 = !{!128, !129, i64 48}
!138 = !{!128, !130, i64 56}
!139 = !{!128, !130, i64 64}
!140 = !{!128, !130, i64 72}
!141 = !{!128, !130, i64 80}
!142 = !{!128, !130, i64 88}
!143 = !{!128, !12, i64 96}
!144 = !{!128, !12, i64 100}
!145 = !{!128, !12, i64 104}
!146 = !{!128, !12, i64 108}
!147 = !{!128, !131, i64 112}
!148 = distinct !{!148, !149}
!149 = !{!"llvm.loop.mustprogress"}
!150 = distinct !{!150, !149}
!151 = !{!130, !130, i64 0}
!152 = distinct !{!152, !149}
!153 = distinct !{!153, !149}
!154 = distinct !{!154, !149}
!155 = distinct !{!155, !149}
!156 = distinct !{!156, !149, !157, !158}
!157 = !{!"llvm.loop.isvectorized", i32 1}
!158 = !{!"llvm.loop.unroll.runtime.disable"}
!159 = !{!"branch_weights", i32 4, i32 12}
!160 = distinct !{!160, !149, !157, !158}
!161 = distinct !{!161, !149, !158, !157}
!162 = distinct !{!162, !149, !157, !158}
!163 = distinct !{!163, !149, !157, !158}
!164 = distinct !{!164, !149, !158, !157}
!165 = distinct !{!165, !149}
!166 = distinct !{!166, !149, !157, !158}
!167 = !{!"branch_weights", i32 8, i32 8}
!168 = distinct !{!168, !149, !157, !158}
!169 = distinct !{!169, !149, !158, !157}
!170 = distinct !{!170, !149}
!171 = distinct !{!171, !149}
!172 = distinct !{!172, !149}
!173 = distinct !{!173, !149}
!174 = distinct !{!174, !149}
!175 = distinct !{!175, !149}
!176 = distinct !{!176, !149, !157, !158}
!177 = distinct !{!177, !149, !157, !158}
!178 = distinct !{!178, !149, !158, !157}
!179 = distinct !{!179, !149, !157, !158}
!180 = distinct !{!180, !149, !157, !158}
!181 = distinct !{!181, !149, !158, !157}
!182 = distinct !{!182, !149}
!183 = distinct !{!183, !149, !157, !158}
!184 = distinct !{!184, !149, !157, !158}
!185 = distinct !{!185, !149, !158, !157}
!186 = distinct !{!186, !149}
!187 = distinct !{!187, !149}
!188 = distinct !{!188, !149, !157, !158}
!189 = distinct !{!189, !149, !158, !157}
!190 = distinct !{!190, !149}
!191 = distinct !{!191, !149}
!192 = distinct !{!192, !149}
!193 = distinct !{!193, !149, !157, !158}
!194 = distinct !{!194, !149, !158, !157}
!195 = distinct !{!195, !149, !157, !158}
!196 = distinct !{!196, !149, !158, !157}
!197 = distinct !{!197, !149, !157, !158}
!198 = distinct !{!198, !149, !158, !157}
!199 = !{!13, !13, i64 0}
!200 = distinct !{!200, !149, !157, !158}
!201 = distinct !{!201, !149, !157, !158}
!202 = distinct !{!202, !149, !158, !157}
!203 = distinct !{!203, !149}
!204 = distinct !{!204, !149}
!205 = distinct !{!205, !149}
!206 = distinct !{!206, !149, !157, !158}
!207 = distinct !{!207, !149, !157, !158}
!208 = distinct !{!208, !149, !158, !157}
!209 = distinct !{!209, !149}
!210 = distinct !{!210, !149}
!211 = distinct !{!211, !149}
!212 = distinct !{!212, !149, !157, !158}
!213 = distinct !{!213, !149, !157, !158}
!214 = distinct !{!214, !149, !158, !157}
!215 = distinct !{!215, !149}
!216 = distinct !{!216, !149}
!217 = distinct !{!217, !149}
!218 = distinct !{!218, !149, !157, !158}
!219 = !{!"branch_weights", i32 4, i32 28}
!220 = distinct !{!220, !149, !157, !158}
!221 = distinct !{!221, !149, !158, !157}
!222 = distinct !{!222, !149}
!223 = distinct !{!223, !149}
!224 = distinct !{!224, !149}
!225 = distinct !{!225, !149, !157, !158}
!226 = distinct !{!226, !149, !157, !158}
!227 = distinct !{!227, !149, !158, !157}
!228 = distinct !{!228, !149}
!229 = distinct !{!229, !149}
!230 = distinct !{!230, !149}
!231 = distinct !{!231, !149, !157, !158}
!232 = distinct !{!232, !149, !158, !157}
!233 = distinct !{!233, !149, !157, !158}
!234 = distinct !{!234, !149, !158, !157}
!235 = distinct !{!235, !149, !157, !158}
!236 = distinct !{!236, !149, !157, !158}
!237 = distinct !{!237, !149, !158, !157}
!238 = distinct !{!238, !149}
!239 = distinct !{!239, !149}
!240 = distinct !{!240, !149}
!241 = distinct !{!241, !149, !157, !158}
!242 = distinct !{!242, !149, !157, !158}
!243 = distinct !{!243, !149, !158, !157}
!244 = distinct !{!244, !149, !157, !158}
!245 = distinct !{!245, !149, !158, !157}
!246 = distinct !{!246, !149, !157, !158}
!247 = distinct !{!247, !149, !158, !157}
!248 = distinct !{!248, !149, !157, !158}
!249 = !{!"branch_weights", i32 8, i32 24}
!250 = distinct !{!250, !149, !157, !158}
!251 = distinct !{!251, !149, !158, !157}
!252 = distinct !{!252, !149}
!253 = distinct !{!253, !149}
!254 = distinct !{!254, !149}
!255 = !{!256}
!256 = distinct !{!256, !257, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_arm_64: argument 0"}
!257 = distinct !{!257, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_arm_64"}
!258 = !{!259}
!259 = distinct !{!259, !257, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_arm_64: argument 1"}
!260 = !{!261}
!261 = distinct !{!261, !257, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_arm_64: argument 2"}
!262 = !{!256, !259, !261}
!263 = !{!259, !261}
!264 = !{!256, !259}
!265 = !{!256, !261}
!266 = distinct !{!266, !149}
!267 = !{!268}
!268 = distinct !{!268, !269, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_arm_64: argument 0"}
!269 = distinct !{!269, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_arm_64"}
!270 = !{!271}
!271 = distinct !{!271, !269, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_arm_64: argument 1"}
!272 = !{!273}
!273 = distinct !{!273, !269, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_arm_64: argument 2"}
!274 = !{!268, !271, !273}
!275 = !{!271, !273}
!276 = !{!268, !271}
!277 = !{!268, !273}
!278 = !{!279}
!279 = distinct !{!279, !280, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_arm_64: argument 0"}
!280 = distinct !{!280, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_arm_64"}
!281 = !{!282}
!282 = distinct !{!282, !280, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_arm_64: argument 1"}
!283 = !{!284}
!284 = distinct !{!284, !280, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_arm_64: argument 2"}
!285 = !{!279, !282, !284}
!286 = !{!282, !284}
!287 = !{!279, !282}
!288 = !{!279, !284}
!289 = !{!290}
!290 = distinct !{!290, !291, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_arm_64: argument 0"}
!291 = distinct !{!291, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_arm_64"}
!292 = !{!293}
!293 = distinct !{!293, !291, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_arm_64: argument 1"}
!294 = !{!295}
!295 = distinct !{!295, !291, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_arm_64: argument 2"}
!296 = !{!290, !293, !295}
!297 = !{!293, !295}
!298 = !{!290, !293}
!299 = !{!290, !295}
!300 = !{!301}
!301 = distinct !{!301, !302, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 0"}
!302 = distinct !{!302, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64"}
!303 = !{!304}
!304 = distinct !{!304, !302, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 1"}
!305 = !{!306}
!306 = distinct !{!306, !302, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 2"}
!307 = !{!301, !304, !306}
!308 = !{!304, !306}
!309 = !{!301, !304}
!310 = !{!311, !311, i64 0}
!311 = !{!"__fp16", !13, i64 0}
!312 = !{!301, !306}
!313 = distinct !{!313, !149}
!314 = !{!315}
!315 = distinct !{!315, !316, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 0"}
!316 = distinct !{!316, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64"}
!317 = !{!318}
!318 = distinct !{!318, !316, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 1"}
!319 = !{!320}
!320 = distinct !{!320, !316, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 2"}
!321 = !{!315, !318, !320}
!322 = !{!318, !320}
!323 = !{!315, !318}
!324 = !{!315, !320}
!325 = !{!326}
!326 = distinct !{!326, !327, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 0"}
!327 = distinct !{!327, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64"}
!328 = !{!329}
!329 = distinct !{!329, !327, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 1"}
!330 = !{!331}
!331 = distinct !{!331, !327, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 2"}
!332 = !{!326, !329, !331}
!333 = !{!329, !331}
!334 = !{!326, !329}
!335 = !{!326, !331}
!336 = !{!337}
!337 = distinct !{!337, !338, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 0"}
!338 = distinct !{!338, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64"}
!339 = !{!340}
!340 = distinct !{!340, !338, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 1"}
!341 = !{!342}
!342 = distinct !{!342, !338, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 2"}
!343 = !{!337, !340, !342}
!344 = !{!340, !342}
!345 = !{!337, !340}
!346 = !{!337, !342}
!347 = !{!348}
!348 = distinct !{!348, !349, !"iree_uk_mmt4d_tile_f16f16f32_1x8x1_to_8x8x1_arm_64_fp16fml: argument 0"}
!349 = distinct !{!349, !"iree_uk_mmt4d_tile_f16f16f32_1x8x1_to_8x8x1_arm_64_fp16fml"}
!350 = !{!351}
!351 = distinct !{!351, !349, !"iree_uk_mmt4d_tile_f16f16f32_1x8x1_to_8x8x1_arm_64_fp16fml: argument 1"}
!352 = !{!353}
!353 = distinct !{!353, !349, !"iree_uk_mmt4d_tile_f16f16f32_1x8x1_to_8x8x1_arm_64_fp16fml: argument 2"}
!354 = !{!348, !351, !353}
!355 = !{!351, !353}
!356 = !{!348, !351}
!357 = !{!348, !353}
!358 = !{i64 2151076001}
!359 = !{i64 2151076426}
!360 = distinct !{!360, !149}
!361 = !{!362}
!362 = distinct !{!362, !363, !"iree_uk_mmt4d_tile_f16f16f32_1x8x1_to_8x8x1_arm_64_fp16fml: argument 0"}
!363 = distinct !{!363, !"iree_uk_mmt4d_tile_f16f16f32_1x8x1_to_8x8x1_arm_64_fp16fml"}
!364 = !{!365}
!365 = distinct !{!365, !363, !"iree_uk_mmt4d_tile_f16f16f32_1x8x1_to_8x8x1_arm_64_fp16fml: argument 1"}
!366 = !{!367}
!367 = distinct !{!367, !363, !"iree_uk_mmt4d_tile_f16f16f32_1x8x1_to_8x8x1_arm_64_fp16fml: argument 2"}
!368 = !{!362, !365, !367}
!369 = !{!365, !367}
!370 = !{!362, !365}
!371 = !{!362, !367}
!372 = !{i64 2151076851}
!373 = !{i64 2151077276}
!374 = !{!375}
!375 = distinct !{!375, !376, !"iree_uk_mmt4d_tile_f16f16f32_1x8x1_to_8x8x1_arm_64_fp16fml: argument 0"}
!376 = distinct !{!376, !"iree_uk_mmt4d_tile_f16f16f32_1x8x1_to_8x8x1_arm_64_fp16fml"}
!377 = !{!378}
!378 = distinct !{!378, !376, !"iree_uk_mmt4d_tile_f16f16f32_1x8x1_to_8x8x1_arm_64_fp16fml: argument 1"}
!379 = !{!380}
!380 = distinct !{!380, !376, !"iree_uk_mmt4d_tile_f16f16f32_1x8x1_to_8x8x1_arm_64_fp16fml: argument 2"}
!381 = !{!375, !378, !380}
!382 = !{!378, !380}
!383 = !{!375, !378}
!384 = !{!375, !380}
!385 = !{i64 2151077701}
!386 = !{i64 2151078126}
!387 = !{i64 2151078551}
!388 = !{i64 2151078976}
!389 = !{!390}
!390 = distinct !{!390, !391, !"iree_uk_mmt4d_tile_f16f16f32_1x8x1_to_8x8x1_arm_64_fp16fml: argument 0"}
!391 = distinct !{!391, !"iree_uk_mmt4d_tile_f16f16f32_1x8x1_to_8x8x1_arm_64_fp16fml"}
!392 = !{!393}
!393 = distinct !{!393, !391, !"iree_uk_mmt4d_tile_f16f16f32_1x8x1_to_8x8x1_arm_64_fp16fml: argument 1"}
!394 = !{!395}
!395 = distinct !{!395, !391, !"iree_uk_mmt4d_tile_f16f16f32_1x8x1_to_8x8x1_arm_64_fp16fml: argument 2"}
!396 = !{!390, !393, !395}
!397 = !{!393, !395}
!398 = !{!390, !393}
!399 = !{!390, !395}
!400 = !{i64 2151079401}
!401 = !{i64 2151079826}
!402 = !{i64 2151080252}
!403 = !{i64 2151080680}
!404 = !{i64 2151081108}
!405 = !{i64 2151081536}
!406 = !{i64 2151081964}
!407 = !{i64 2151082392}
!408 = !{!409}
!409 = distinct !{!409, !410, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 0"}
!410 = distinct !{!410, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64"}
!411 = !{!412}
!412 = distinct !{!412, !410, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 1"}
!413 = !{!414}
!414 = distinct !{!414, !410, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 2"}
!415 = !{!409, !412, !414}
!416 = !{!412, !414}
!417 = !{!409, !412}
!418 = !{!409, !414}
!419 = !{!420}
!420 = distinct !{!420, !421, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 0"}
!421 = distinct !{!421, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64"}
!422 = !{!423}
!423 = distinct !{!423, !421, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 1"}
!424 = !{!425}
!425 = distinct !{!425, !421, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 2"}
!426 = !{!420, !423, !425}
!427 = !{!423, !425}
!428 = !{!420, !423}
!429 = !{!420, !425}
!430 = !{!431}
!431 = distinct !{!431, !432, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 0"}
!432 = distinct !{!432, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64"}
!433 = !{!434}
!434 = distinct !{!434, !432, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 1"}
!435 = !{!436}
!436 = distinct !{!436, !432, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 2"}
!437 = !{!431, !434, !436}
!438 = !{!434, !436}
!439 = !{!431, !434}
!440 = !{!431, !436}
!441 = !{!442}
!442 = distinct !{!442, !443, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 0"}
!443 = distinct !{!443, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64"}
!444 = !{!445}
!445 = distinct !{!445, !443, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 1"}
!446 = !{!447}
!447 = distinct !{!447, !443, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_arm_64: argument 2"}
!448 = !{!442, !445, !447}
!449 = !{!445, !447}
!450 = !{!442, !445}
!451 = !{!442, !447}
!452 = !{!453}
!453 = distinct !{!453, !454, !"iree_uk_mmt4d_tile_f16f16f16_1x8x1_to_8x8x1_arm_64_fullfp16: argument 0"}
!454 = distinct !{!454, !"iree_uk_mmt4d_tile_f16f16f16_1x8x1_to_8x8x1_arm_64_fullfp16"}
!455 = !{!456}
!456 = distinct !{!456, !454, !"iree_uk_mmt4d_tile_f16f16f16_1x8x1_to_8x8x1_arm_64_fullfp16: argument 1"}
!457 = !{!458}
!458 = distinct !{!458, !454, !"iree_uk_mmt4d_tile_f16f16f16_1x8x1_to_8x8x1_arm_64_fullfp16: argument 2"}
!459 = !{!453, !456, !458}
!460 = !{!456, !458}
!461 = !{!453, !456}
!462 = !{!453, !458}
!463 = distinct !{!463, !149}
!464 = !{!465}
!465 = distinct !{!465, !466, !"iree_uk_mmt4d_tile_f16f16f16_1x8x1_to_8x8x1_arm_64_fullfp16: argument 0"}
!466 = distinct !{!466, !"iree_uk_mmt4d_tile_f16f16f16_1x8x1_to_8x8x1_arm_64_fullfp16"}
!467 = !{!468}
!468 = distinct !{!468, !466, !"iree_uk_mmt4d_tile_f16f16f16_1x8x1_to_8x8x1_arm_64_fullfp16: argument 1"}
!469 = !{!470}
!470 = distinct !{!470, !466, !"iree_uk_mmt4d_tile_f16f16f16_1x8x1_to_8x8x1_arm_64_fullfp16: argument 2"}
!471 = !{!465, !468, !470}
!472 = !{!468, !470}
!473 = !{!465, !468}
!474 = !{!465, !470}
!475 = !{!476}
!476 = distinct !{!476, !477, !"iree_uk_mmt4d_tile_f16f16f16_1x8x1_to_8x8x1_arm_64_fullfp16: argument 0"}
!477 = distinct !{!477, !"iree_uk_mmt4d_tile_f16f16f16_1x8x1_to_8x8x1_arm_64_fullfp16"}
!478 = !{!479}
!479 = distinct !{!479, !477, !"iree_uk_mmt4d_tile_f16f16f16_1x8x1_to_8x8x1_arm_64_fullfp16: argument 1"}
!480 = !{!481}
!481 = distinct !{!481, !477, !"iree_uk_mmt4d_tile_f16f16f16_1x8x1_to_8x8x1_arm_64_fullfp16: argument 2"}
!482 = !{!476, !479, !481}
!483 = !{!479, !481}
!484 = !{!476, !479}
!485 = !{!476, !481}
!486 = !{!487}
!487 = distinct !{!487, !488, !"iree_uk_mmt4d_tile_f16f16f16_1x8x1_to_8x8x1_arm_64_fullfp16: argument 0"}
!488 = distinct !{!488, !"iree_uk_mmt4d_tile_f16f16f16_1x8x1_to_8x8x1_arm_64_fullfp16"}
!489 = !{!490}
!490 = distinct !{!490, !488, !"iree_uk_mmt4d_tile_f16f16f16_1x8x1_to_8x8x1_arm_64_fullfp16: argument 1"}
!491 = !{!492}
!492 = distinct !{!492, !488, !"iree_uk_mmt4d_tile_f16f16f16_1x8x1_to_8x8x1_arm_64_fullfp16: argument 2"}
!493 = !{!487, !490, !492}
!494 = !{!490, !492}
!495 = !{!487, !490}
!496 = !{!487, !492}
!497 = !{!498}
!498 = distinct !{!498, !499, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 0"}
!499 = distinct !{!499, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16"}
!500 = !{!501}
!501 = distinct !{!501, !499, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 1"}
!502 = !{!503}
!503 = distinct !{!503, !499, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 2"}
!504 = !{!498, !501, !503}
!505 = !{!501, !503}
!506 = !{!498, !501}
!507 = !{!498, !503}
!508 = distinct !{!508, !149}
!509 = !{!510}
!510 = distinct !{!510, !511, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 0"}
!511 = distinct !{!511, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16"}
!512 = !{!513}
!513 = distinct !{!513, !511, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 1"}
!514 = !{!515}
!515 = distinct !{!515, !511, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 2"}
!516 = !{!510, !513, !515}
!517 = !{!513, !515}
!518 = !{!510, !513}
!519 = !{!510, !515}
!520 = !{!521}
!521 = distinct !{!521, !522, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 0"}
!522 = distinct !{!522, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16"}
!523 = !{!524}
!524 = distinct !{!524, !522, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 1"}
!525 = !{!526}
!526 = distinct !{!526, !522, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 2"}
!527 = !{!521, !524, !526}
!528 = !{!524, !526}
!529 = !{!521, !524}
!530 = !{!521, !526}
!531 = !{!532}
!532 = distinct !{!532, !533, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 0"}
!533 = distinct !{!533, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16"}
!534 = !{!535}
!535 = distinct !{!535, !533, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 1"}
!536 = !{!537}
!537 = distinct !{!537, !533, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 2"}
!538 = !{!532, !535, !537}
!539 = !{!535, !537}
!540 = !{!532, !535}
!541 = !{!532, !537}
!542 = !{!543}
!543 = distinct !{!543, !544, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 0"}
!544 = distinct !{!544, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16"}
!545 = !{!546}
!546 = distinct !{!546, !544, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 1"}
!547 = !{!548}
!548 = distinct !{!548, !544, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 2"}
!549 = !{!543, !546, !548}
!550 = !{!546, !548}
!551 = !{!543, !546}
!552 = !{!543, !548}
!553 = !{!554}
!554 = distinct !{!554, !555, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 0"}
!555 = distinct !{!555, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16"}
!556 = !{!557}
!557 = distinct !{!557, !555, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 1"}
!558 = !{!559}
!559 = distinct !{!559, !555, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 2"}
!560 = !{!554, !557, !559}
!561 = !{!557, !559}
!562 = !{!554, !557}
!563 = !{!554, !559}
!564 = !{!565}
!565 = distinct !{!565, !566, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 0"}
!566 = distinct !{!566, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16"}
!567 = !{!568}
!568 = distinct !{!568, !566, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 1"}
!569 = !{!570}
!570 = distinct !{!570, !566, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 2"}
!571 = !{!565, !568, !570}
!572 = !{!568, !570}
!573 = !{!565, !568}
!574 = !{!565, !570}
!575 = !{!576}
!576 = distinct !{!576, !577, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 0"}
!577 = distinct !{!577, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16"}
!578 = !{!579}
!579 = distinct !{!579, !577, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 1"}
!580 = !{!581}
!581 = distinct !{!581, !577, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x8x4_to_8x8x4_arm_64_bf16: argument 2"}
!582 = !{!576, !579, !581}
!583 = !{!579, !581}
!584 = !{!576, !579}
!585 = !{!576, !581}
!586 = !{!587}
!587 = distinct !{!587, !588, !"iree_uk_mmt4d_tile_s8s8s32_1x8x1_to_8x8x1_arm_64: argument 0"}
!588 = distinct !{!588, !"iree_uk_mmt4d_tile_s8s8s32_1x8x1_to_8x8x1_arm_64"}
!589 = !{!590}
!590 = distinct !{!590, !588, !"iree_uk_mmt4d_tile_s8s8s32_1x8x1_to_8x8x1_arm_64: argument 1"}
!591 = !{!592}
!592 = distinct !{!592, !588, !"iree_uk_mmt4d_tile_s8s8s32_1x8x1_to_8x8x1_arm_64: argument 2"}
!593 = !{!587, !590, !592}
!594 = !{!590, !592}
!595 = !{!587, !590}
!596 = !{!587, !592}
!597 = distinct !{!597, !149}
!598 = !{!599}
!599 = distinct !{!599, !600, !"iree_uk_mmt4d_tile_s8s8s32_1x8x1_to_8x8x1_arm_64: argument 0"}
!600 = distinct !{!600, !"iree_uk_mmt4d_tile_s8s8s32_1x8x1_to_8x8x1_arm_64"}
!601 = !{!602}
!602 = distinct !{!602, !600, !"iree_uk_mmt4d_tile_s8s8s32_1x8x1_to_8x8x1_arm_64: argument 1"}
!603 = !{!604}
!604 = distinct !{!604, !600, !"iree_uk_mmt4d_tile_s8s8s32_1x8x1_to_8x8x1_arm_64: argument 2"}
!605 = !{!599, !602, !604}
!606 = !{!602, !604}
!607 = !{!599, !602}
!608 = !{!599, !604}
!609 = !{!610}
!610 = distinct !{!610, !611, !"iree_uk_mmt4d_tile_s8s8s32_1x8x1_to_8x8x1_arm_64: argument 0"}
!611 = distinct !{!611, !"iree_uk_mmt4d_tile_s8s8s32_1x8x1_to_8x8x1_arm_64"}
!612 = !{!613}
!613 = distinct !{!613, !611, !"iree_uk_mmt4d_tile_s8s8s32_1x8x1_to_8x8x1_arm_64: argument 1"}
!614 = !{!615}
!615 = distinct !{!615, !611, !"iree_uk_mmt4d_tile_s8s8s32_1x8x1_to_8x8x1_arm_64: argument 2"}
!616 = !{!610, !613, !615}
!617 = !{!613, !615}
!618 = !{!610, !613}
!619 = !{!610, !615}
!620 = !{!621}
!621 = distinct !{!621, !622, !"iree_uk_mmt4d_tile_s8s8s32_1x8x1_to_8x8x1_arm_64: argument 0"}
!622 = distinct !{!622, !"iree_uk_mmt4d_tile_s8s8s32_1x8x1_to_8x8x1_arm_64"}
!623 = !{!624}
!624 = distinct !{!624, !622, !"iree_uk_mmt4d_tile_s8s8s32_1x8x1_to_8x8x1_arm_64: argument 1"}
!625 = !{!626}
!626 = distinct !{!626, !622, !"iree_uk_mmt4d_tile_s8s8s32_1x8x1_to_8x8x1_arm_64: argument 2"}
!627 = !{!621, !624, !626}
!628 = !{!624, !626}
!629 = !{!621, !624}
!630 = !{!621, !626}
!631 = !{!632}
!632 = distinct !{!632, !633, !"iree_uk_mmt4d_tile_s8s8s32_1x8x4_to_8x8x4_arm_64_dotprod: argument 0"}
!633 = distinct !{!633, !"iree_uk_mmt4d_tile_s8s8s32_1x8x4_to_8x8x4_arm_64_dotprod"}
!634 = !{!635}
!635 = distinct !{!635, !633, !"iree_uk_mmt4d_tile_s8s8s32_1x8x4_to_8x8x4_arm_64_dotprod: argument 1"}
!636 = !{!637}
!637 = distinct !{!637, !633, !"iree_uk_mmt4d_tile_s8s8s32_1x8x4_to_8x8x4_arm_64_dotprod: argument 2"}
!638 = !{!632, !635, !637}
!639 = !{!635, !637}
!640 = !{!632, !635}
!641 = !{!632, !637}
!642 = distinct !{!642, !149}
!643 = !{!644}
!644 = distinct !{!644, !645, !"iree_uk_mmt4d_tile_s8s8s32_1x8x4_to_8x8x4_arm_64_dotprod: argument 0"}
!645 = distinct !{!645, !"iree_uk_mmt4d_tile_s8s8s32_1x8x4_to_8x8x4_arm_64_dotprod"}
!646 = !{!647}
!647 = distinct !{!647, !645, !"iree_uk_mmt4d_tile_s8s8s32_1x8x4_to_8x8x4_arm_64_dotprod: argument 1"}
!648 = !{!649}
!649 = distinct !{!649, !645, !"iree_uk_mmt4d_tile_s8s8s32_1x8x4_to_8x8x4_arm_64_dotprod: argument 2"}
!650 = !{!644, !647, !649}
!651 = !{!647, !649}
!652 = !{!644, !647}
!653 = !{!644, !649}
!654 = !{!655}
!655 = distinct !{!655, !656, !"iree_uk_mmt4d_tile_s8s8s32_1x8x4_to_8x8x4_arm_64_dotprod: argument 0"}
!656 = distinct !{!656, !"iree_uk_mmt4d_tile_s8s8s32_1x8x4_to_8x8x4_arm_64_dotprod"}
!657 = !{!658}
!658 = distinct !{!658, !656, !"iree_uk_mmt4d_tile_s8s8s32_1x8x4_to_8x8x4_arm_64_dotprod: argument 1"}
!659 = !{!660}
!660 = distinct !{!660, !656, !"iree_uk_mmt4d_tile_s8s8s32_1x8x4_to_8x8x4_arm_64_dotprod: argument 2"}
!661 = !{!655, !658, !660}
!662 = !{!658, !660}
!663 = !{!655, !658}
!664 = !{!655, !660}
!665 = !{!666}
!666 = distinct !{!666, !667, !"iree_uk_mmt4d_tile_s8s8s32_1x8x4_to_8x8x4_arm_64_dotprod: argument 0"}
!667 = distinct !{!667, !"iree_uk_mmt4d_tile_s8s8s32_1x8x4_to_8x8x4_arm_64_dotprod"}
!668 = !{!669}
!669 = distinct !{!669, !667, !"iree_uk_mmt4d_tile_s8s8s32_1x8x4_to_8x8x4_arm_64_dotprod: argument 1"}
!670 = !{!671}
!671 = distinct !{!671, !667, !"iree_uk_mmt4d_tile_s8s8s32_1x8x4_to_8x8x4_arm_64_dotprod: argument 2"}
!672 = !{!666, !669, !671}
!673 = !{!669, !671}
!674 = !{!666, !669}
!675 = !{!666, !671}
!676 = !{!677}
!677 = distinct !{!677, !678, !"iree_uk_mmt4d_tile_s8s8s32_1x8x8_to_8x8x8_arm_64_i8mm: argument 0"}
!678 = distinct !{!678, !"iree_uk_mmt4d_tile_s8s8s32_1x8x8_to_8x8x8_arm_64_i8mm"}
!679 = !{!680}
!680 = distinct !{!680, !678, !"iree_uk_mmt4d_tile_s8s8s32_1x8x8_to_8x8x8_arm_64_i8mm: argument 1"}
!681 = !{!682}
!682 = distinct !{!682, !678, !"iree_uk_mmt4d_tile_s8s8s32_1x8x8_to_8x8x8_arm_64_i8mm: argument 2"}
!683 = !{!677, !680, !682}
!684 = !{!680, !682}
!685 = !{!677, !680}
!686 = !{!677, !682}
!687 = distinct !{!687, !149}
!688 = !{!689}
!689 = distinct !{!689, !690, !"iree_uk_mmt4d_tile_s8s8s32_1x8x8_to_8x8x8_arm_64_i8mm: argument 0"}
!690 = distinct !{!690, !"iree_uk_mmt4d_tile_s8s8s32_1x8x8_to_8x8x8_arm_64_i8mm"}
!691 = !{!692}
!692 = distinct !{!692, !690, !"iree_uk_mmt4d_tile_s8s8s32_1x8x8_to_8x8x8_arm_64_i8mm: argument 1"}
!693 = !{!694}
!694 = distinct !{!694, !690, !"iree_uk_mmt4d_tile_s8s8s32_1x8x8_to_8x8x8_arm_64_i8mm: argument 2"}
!695 = !{!689, !692, !694}
!696 = !{!692, !694}
!697 = !{!689, !692}
!698 = !{!689, !694}
!699 = !{!700}
!700 = distinct !{!700, !701, !"iree_uk_mmt4d_tile_s8s8s32_1x8x8_to_8x8x8_arm_64_i8mm: argument 0"}
!701 = distinct !{!701, !"iree_uk_mmt4d_tile_s8s8s32_1x8x8_to_8x8x8_arm_64_i8mm"}
!702 = !{!703}
!703 = distinct !{!703, !701, !"iree_uk_mmt4d_tile_s8s8s32_1x8x8_to_8x8x8_arm_64_i8mm: argument 1"}
!704 = !{!705}
!705 = distinct !{!705, !701, !"iree_uk_mmt4d_tile_s8s8s32_1x8x8_to_8x8x8_arm_64_i8mm: argument 2"}
!706 = !{!700, !703, !705}
!707 = !{!703, !705}
!708 = !{!700, !703}
!709 = !{!700, !705}
!710 = !{!711}
!711 = distinct !{!711, !712, !"iree_uk_mmt4d_tile_s8s8s32_1x8x8_to_8x8x8_arm_64_i8mm: argument 0"}
!712 = distinct !{!712, !"iree_uk_mmt4d_tile_s8s8s32_1x8x8_to_8x8x8_arm_64_i8mm"}
!713 = !{!714}
!714 = distinct !{!714, !712, !"iree_uk_mmt4d_tile_s8s8s32_1x8x8_to_8x8x8_arm_64_i8mm: argument 1"}
!715 = !{!716}
!716 = distinct !{!716, !712, !"iree_uk_mmt4d_tile_s8s8s32_1x8x8_to_8x8x8_arm_64_i8mm: argument 2"}
!717 = !{!711, !714, !716}
!718 = !{!714, !716}
!719 = !{!711, !714}
!720 = !{!711, !716}
!721 = !{!722}
!722 = distinct !{!722, !723, !"iree_uk_mmt4d_tile_s8s4s32_1x16x2_to_4x16x2_arm_64: argument 0"}
!723 = distinct !{!723, !"iree_uk_mmt4d_tile_s8s4s32_1x16x2_to_4x16x2_arm_64"}
!724 = !{!725}
!725 = distinct !{!725, !723, !"iree_uk_mmt4d_tile_s8s4s32_1x16x2_to_4x16x2_arm_64: argument 1"}
!726 = !{!727}
!727 = distinct !{!727, !723, !"iree_uk_mmt4d_tile_s8s4s32_1x16x2_to_4x16x2_arm_64: argument 2"}
!728 = !{!722, !725, !727}
!729 = !{!725, !727}
!730 = !{!722, !725}
!731 = !{!722, !727}
!732 = distinct !{!732, !149}
!733 = !{!734}
!734 = distinct !{!734, !735, !"iree_uk_mmt4d_tile_s8s4s32_1x16x2_to_4x16x2_arm_64: argument 0"}
!735 = distinct !{!735, !"iree_uk_mmt4d_tile_s8s4s32_1x16x2_to_4x16x2_arm_64"}
!736 = !{!737}
!737 = distinct !{!737, !735, !"iree_uk_mmt4d_tile_s8s4s32_1x16x2_to_4x16x2_arm_64: argument 1"}
!738 = !{!739}
!739 = distinct !{!739, !735, !"iree_uk_mmt4d_tile_s8s4s32_1x16x2_to_4x16x2_arm_64: argument 2"}
!740 = !{!734, !737, !739}
!741 = !{!737, !739}
!742 = !{!734, !737}
!743 = !{!734, !739}
!744 = !{!745}
!745 = distinct !{!745, !746, !"iree_uk_mmt4d_tile_s8s4s32_1x16x2_to_4x16x2_arm_64: argument 0"}
!746 = distinct !{!746, !"iree_uk_mmt4d_tile_s8s4s32_1x16x2_to_4x16x2_arm_64"}
!747 = !{!748}
!748 = distinct !{!748, !746, !"iree_uk_mmt4d_tile_s8s4s32_1x16x2_to_4x16x2_arm_64: argument 1"}
!749 = !{!750}
!750 = distinct !{!750, !746, !"iree_uk_mmt4d_tile_s8s4s32_1x16x2_to_4x16x2_arm_64: argument 2"}
!751 = !{!745, !748, !750}
!752 = !{!748, !750}
!753 = !{!745, !748}
!754 = !{!745, !750}
!755 = !{!756}
!756 = distinct !{!756, !757, !"iree_uk_mmt4d_tile_s8s4s32_1x8x8_to_8x8x8_arm_64_dotprod: argument 0"}
!757 = distinct !{!757, !"iree_uk_mmt4d_tile_s8s4s32_1x8x8_to_8x8x8_arm_64_dotprod"}
!758 = !{!759}
!759 = distinct !{!759, !757, !"iree_uk_mmt4d_tile_s8s4s32_1x8x8_to_8x8x8_arm_64_dotprod: argument 1"}
!760 = !{!761}
!761 = distinct !{!761, !757, !"iree_uk_mmt4d_tile_s8s4s32_1x8x8_to_8x8x8_arm_64_dotprod: argument 2"}
!762 = !{!756, !759, !761}
!763 = !{!759, !761}
!764 = !{!756, !759}
!765 = !{!756, !761}
!766 = distinct !{!766, !149}
!767 = !{!768}
!768 = distinct !{!768, !769, !"iree_uk_mmt4d_tile_s8s4s32_1x8x8_to_8x8x8_arm_64_dotprod: argument 0"}
!769 = distinct !{!769, !"iree_uk_mmt4d_tile_s8s4s32_1x8x8_to_8x8x8_arm_64_dotprod"}
!770 = !{!771}
!771 = distinct !{!771, !769, !"iree_uk_mmt4d_tile_s8s4s32_1x8x8_to_8x8x8_arm_64_dotprod: argument 1"}
!772 = !{!773}
!773 = distinct !{!773, !769, !"iree_uk_mmt4d_tile_s8s4s32_1x8x8_to_8x8x8_arm_64_dotprod: argument 2"}
!774 = !{!768, !771, !773}
!775 = !{!771, !773}
!776 = !{!768, !771}
!777 = !{!768, !773}
!778 = !{!779}
!779 = distinct !{!779, !780, !"iree_uk_mmt4d_tile_s8s4s32_1x8x8_to_8x8x8_arm_64_dotprod: argument 0"}
!780 = distinct !{!780, !"iree_uk_mmt4d_tile_s8s4s32_1x8x8_to_8x8x8_arm_64_dotprod"}
!781 = !{!782}
!782 = distinct !{!782, !780, !"iree_uk_mmt4d_tile_s8s4s32_1x8x8_to_8x8x8_arm_64_dotprod: argument 1"}
!783 = !{!784}
!784 = distinct !{!784, !780, !"iree_uk_mmt4d_tile_s8s4s32_1x8x8_to_8x8x8_arm_64_dotprod: argument 2"}
!785 = !{!779, !782, !784}
!786 = !{!782, !784}
!787 = !{!779, !782}
!788 = !{!779, !784}
!789 = !{!790}
!790 = distinct !{!790, !791, !"iree_uk_mmt4d_tile_s8s4s32_1x8x8_to_8x8x8_arm_64_dotprod: argument 0"}
!791 = distinct !{!791, !"iree_uk_mmt4d_tile_s8s4s32_1x8x8_to_8x8x8_arm_64_dotprod"}
!792 = !{!793}
!793 = distinct !{!793, !791, !"iree_uk_mmt4d_tile_s8s4s32_1x8x8_to_8x8x8_arm_64_dotprod: argument 1"}
!794 = !{!795}
!795 = distinct !{!795, !791, !"iree_uk_mmt4d_tile_s8s4s32_1x8x8_to_8x8x8_arm_64_dotprod: argument 2"}
!796 = !{!790, !793, !795}
!797 = !{!793, !795}
!798 = !{!790, !793}
!799 = !{!790, !795}
!800 = distinct !{!800, !149}
!801 = !{!802}
!802 = distinct !{!802, !803, !"iree_uk_mmt4d_tile_s8s4s32_2x8x16_to_4x8x16_arm_64_i8mm: argument 0"}
!803 = distinct !{!803, !"iree_uk_mmt4d_tile_s8s4s32_2x8x16_to_4x8x16_arm_64_i8mm"}
!804 = !{!805}
!805 = distinct !{!805, !803, !"iree_uk_mmt4d_tile_s8s4s32_2x8x16_to_4x8x16_arm_64_i8mm: argument 1"}
!806 = !{!807}
!807 = distinct !{!807, !803, !"iree_uk_mmt4d_tile_s8s4s32_2x8x16_to_4x8x16_arm_64_i8mm: argument 2"}
!808 = !{!802, !805, !807}
!809 = !{!805, !807}
!810 = !{!802, !805}
!811 = !{!802, !807}
!812 = distinct !{!812, !149}
!813 = !{!814}
!814 = distinct !{!814, !815, !"iree_uk_mmt4d_tile_s8s4s32_2x8x16_to_4x8x16_arm_64_i8mm: argument 0"}
!815 = distinct !{!815, !"iree_uk_mmt4d_tile_s8s4s32_2x8x16_to_4x8x16_arm_64_i8mm"}
!816 = !{!817}
!817 = distinct !{!817, !815, !"iree_uk_mmt4d_tile_s8s4s32_2x8x16_to_4x8x16_arm_64_i8mm: argument 1"}
!818 = !{!819}
!819 = distinct !{!819, !815, !"iree_uk_mmt4d_tile_s8s4s32_2x8x16_to_4x8x16_arm_64_i8mm: argument 2"}
!820 = !{!814, !817, !819}
!821 = !{!817, !819}
!822 = !{!814, !817}
!823 = !{!814, !819}
