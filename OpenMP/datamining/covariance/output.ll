; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%closure_loop_parallel_i_j_fused_0 = type { ptr, ptr }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global ptr null, align 8
@__TVMBackendParallelLaunch = linkonce dllexport local_unnamed_addr global ptr null, align 8
@.str = private constant [56 x i8] c"Assert fail: num_args == 2, main0: num_args should be 2\00", align 1
@.str.1 = private constant [74 x i8] c"Assert fail: not T.isnullptr(args), main0: TVMValue* arg pointer was NULL\00", align 1
@.str.2 = private constant [76 x i8] c"Assert fail: not T.isnullptr(arg_type_ids), main0: int* type_codes was NULL\00", align 1
@.str.3 = private constant [147 x i8] c"Assert fail: data_handle_code == 3 or data_handle_code == 13 or data_handle_code == 7 or data_handle_code == 4, main0: Expect arg[0] to be pointer\00", align 1
@.str.4 = private constant [147 x i8] c"Assert fail: mean_handle_code == 3 or mean_handle_code == 13 or mean_handle_code == 7 or mean_handle_code == 4, main0: Expect arg[1] to be pointer\00", align 1
@.str.5 = private constant [108 x i8] c"Assert fail: not T.isnullptr(data_handle), main0.data_handle is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.6 = private constant [110 x i8] c"Assert fail: 2 == T.tvm_struct_get(data_handle, 0, 4, \22int32\22), main0.data_handle.ndim is expected to equal 2\00", align 1
@.str.7 = private constant [108 x i8] c"Assert fail: not T.isnullptr(mean_handle), main0.mean_handle is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.8 = private constant [110 x i8] c"Assert fail: 1 == T.tvm_struct_get(mean_handle, 0, 4, \22int32\22), main0.mean_handle.ndim is expected to equal 1\00", align 1
@.str.9 = private constant [252 x i8] c"Assert fail: T.tvm_struct_get(data_handle, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(data_handle, 0, 6, \22uint8\22) == T.uint8(64) and T.tvm_struct_get(data_handle, 0, 7, \22uint16\22) == T.uint16(1), main0.data_handle.dtype is expected to be float64\00", align 1
@.str.10 = private constant [185 x i8] c"Assert fail: T.Cast(\22int32\22, main0_data_handle_shape[0]) == 1000, Argument main0.data_handle.shape[0] has an unsatisfied constraint: 1000 == T.Cast(\22int32\22, main0_data_handle_shape[0])\00", align 1
@.str.11 = private constant [185 x i8] c"Assert fail: T.Cast(\22int32\22, main0_data_handle_shape[1]) == 1000, Argument main0.data_handle.shape[1] has an unsatisfied constraint: 1000 == T.Cast(\22int32\22, main0_data_handle_shape[1])\00", align 1
@.str.12 = private constant [179 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, main0_data_handle_strides[1]) and 1000 == T.Cast(\22int32\22, main0_data_handle_strides[0]), main0.data_handle.strides: expected to be compact array\00", align 1
@.str.13 = private constant [206 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(data_handle, 0, 8, \22uint64\22), Argument main0.data_handle.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(data_handle, 0, 8, \22uint64\22)\00", align 1
@.str.14 = private constant [186 x i8] c"Assert fail: T.tvm_struct_get(data_handle, 0, 10, \22int32\22) == 1, Argument main0.data_handle.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(data_handle, 0, 10, \22int32\22)\00", align 1
@.str.15 = private constant [96 x i8] c"Assert fail: not T.isnullptr(data), main0.data_handle is expected to have non-NULL data pointer\00", align 1
@.str.16 = private constant [252 x i8] c"Assert fail: T.tvm_struct_get(mean_handle, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(mean_handle, 0, 6, \22uint8\22) == T.uint8(64) and T.tvm_struct_get(mean_handle, 0, 7, \22uint16\22) == T.uint16(1), main0.mean_handle.dtype is expected to be float64\00", align 1
@.str.17 = private constant [185 x i8] c"Assert fail: T.Cast(\22int32\22, main0_mean_handle_shape[0]) == 1000, Argument main0.mean_handle.shape[0] has an unsatisfied constraint: 1000 == T.Cast(\22int32\22, main0_mean_handle_shape[0])\00", align 1
@.str.18 = private constant [121 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, main0_mean_handle_strides[0]), main0.mean_handle.strides: expected to be compact array\00", align 1
@.str.19 = private constant [206 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(mean_handle, 0, 8, \22uint64\22), Argument main0.mean_handle.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(mean_handle, 0, 8, \22uint64\22)\00", align 1
@.str.20 = private constant [186 x i8] c"Assert fail: T.tvm_struct_get(mean_handle, 0, 10, \22int32\22) == 1, Argument main0.mean_handle.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(mean_handle, 0, 10, \22int32\22)\00", align 1
@.str.21 = private constant [192 x i8] c"Assert fail: dev_id == T.tvm_struct_get(mean_handle, 0, 9, \22int32\22), Argument main0.mean_handle.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(mean_handle, 0, 9, \22int32\22)\00", align 1
@.str.22 = private constant [96 x i8] c"Assert fail: not T.isnullptr(mean), main0.mean_handle is expected to have non-NULL data pointer\00", align 1
@__tvm_main__ = weak dllexport local_unnamed_addr constant [6 x i8] c"main0\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

define dllexport i32 @main0(ptr noalias readonly %args, ptr noalias readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !5 {
entry:
  tail call void @llvm.dbg.value(metadata ptr %args, metadata !12, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !13, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.value(metadata i32 %num_args, metadata !14, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !15, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !16, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !17, metadata !DIExpression()), !dbg !18
  %0 = icmp eq i32 %num_args, 2, !dbg !18
  br i1 %0, label %assert_end, label %assert_fail, !dbg !18, !prof !19

common.ret:                                       ; preds = %assert_end46, %assert_fail45, %assert_fail43, %assert_fail41, %assert_fail39, %assert_fail37, %assert_fail33, %assert_fail31, %assert_fail29, %assert_fail27, %assert_fail25, %assert_fail23, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail7, %assert_fail5, %assert_fail3, %assert_fail1, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail27 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail33 ], [ -1, %assert_fail37 ], [ -1, %assert_fail39 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail45 ], [ %95, %assert_end46 ]
  ret i32 %common.ret.op, !dbg !18

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %1(ptr nonnull @.str), !dbg !18
  br label %common.ret

assert_end:                                       ; preds = %entry
  %.not = icmp eq ptr %args, null, !dbg !18
  br i1 %.not, label %assert_fail1, label %assert_end2, !dbg !18, !prof !23

assert_fail1:                                     ; preds = %assert_end
  %2 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %2(ptr nonnull @.str.1), !dbg !18
  br label %common.ret

assert_end2:                                      ; preds = %assert_end
  %.not47 = icmp eq ptr %arg_type_ids, null, !dbg !18
  br i1 %.not47, label %assert_fail3, label %assert_end4, !dbg !18, !prof !23

assert_fail3:                                     ; preds = %assert_end2
  %3 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %3(ptr nonnull @.str.2), !dbg !18
  br label %common.ret

assert_end4:                                      ; preds = %assert_end2
  %data_handle.code = load i32, ptr %arg_type_ids, align 4, !dbg !18, !tbaa !24
  tail call void @llvm.dbg.declare(metadata i32 %data_handle.code, metadata !35, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 %data_handle.code, metadata !35, metadata !DIExpression()), !dbg !18
  switch i32 %data_handle.code, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ], !dbg !18

assert_fail5:                                     ; preds = %assert_end4
  %4 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %4(ptr nonnull @.str.3), !dbg !18
  br label %common.ret

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  %5 = getelementptr inbounds i8, ptr %arg_type_ids, i64 4, !dbg !18
  %mean_handle.code = load i32, ptr %5, align 4, !dbg !18, !tbaa !36
  tail call void @llvm.dbg.declare(metadata i32 %mean_handle.code, metadata !38, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 %mean_handle.code, metadata !38, metadata !DIExpression()), !dbg !18
  switch i32 %mean_handle.code, label %assert_fail7 [
    i32 13, label %assert_end8
    i32 7, label %assert_end8
    i32 4, label %assert_end8
    i32 3, label %assert_end8
  ], !dbg !18

assert_fail7:                                     ; preds = %assert_end6
  %6 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %6(ptr nonnull @.str.4), !dbg !18
  br label %common.ret

assert_end8:                                      ; preds = %assert_end6, %assert_end6, %assert_end6, %assert_end6
  %data_handle = load ptr, ptr %args, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %data_handle, metadata !39, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %data_handle, metadata !39, metadata !DIExpression()), !dbg !18
  %7 = getelementptr inbounds i8, ptr %args, i64 8, !dbg !18
  %mean_handle = load ptr, ptr %7, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %mean_handle, metadata !40, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %mean_handle, metadata !40, metadata !DIExpression()), !dbg !18
  %.not48 = icmp eq ptr %data_handle, null, !dbg !18
  br i1 %.not48, label %assert_fail9, label %assert_end10, !dbg !18, !prof !23

assert_fail9:                                     ; preds = %assert_end8
  %8 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %8(ptr nonnull @.str.5), !dbg !18
  br label %common.ret

assert_end10:                                     ; preds = %assert_end8
  %9 = getelementptr inbounds i8, ptr %data_handle, i64 16, !dbg !18
  %10 = load i32, ptr %9, align 4, !dbg !18
  %11 = icmp eq i32 %10, 2, !dbg !18
  br i1 %11, label %assert_end12, label %assert_fail11, !dbg !18, !prof !19

assert_fail11:                                    ; preds = %assert_end10
  %12 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %12(ptr nonnull @.str.6), !dbg !18
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10
  %13 = getelementptr inbounds i8, ptr %data_handle, i64 24, !dbg !18
  %main0.data_handle.shape = load ptr, ptr %13, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.data_handle.shape, metadata !41, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.data_handle.shape, metadata !41, metadata !DIExpression()), !dbg !18
  %14 = getelementptr inbounds i8, ptr %data_handle, i64 32, !dbg !18
  %main0.data_handle.strides = load ptr, ptr %14, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.data_handle.strides, metadata !44, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.data_handle.strides, metadata !44, metadata !DIExpression()), !dbg !18
  %15 = getelementptr inbounds i8, ptr %data_handle, i64 12, !dbg !18
  %dev_id = load i32, ptr %15, align 4, !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !45, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !45, metadata !DIExpression()), !dbg !18
  %data = load ptr, ptr %data_handle, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %data, metadata !46, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %data, metadata !46, metadata !DIExpression()), !dbg !18
  call void @llvm.assume(i1 true) [ "align"(ptr %data, i64 64) ], !dbg !18
  %.not49 = icmp eq ptr %mean_handle, null, !dbg !18
  br i1 %.not49, label %assert_fail13, label %assert_end14, !dbg !18, !prof !23

assert_fail13:                                    ; preds = %assert_end12
  %16 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %16(ptr nonnull @.str.7), !dbg !18
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12
  %17 = getelementptr inbounds i8, ptr %mean_handle, i64 16, !dbg !18
  %18 = load i32, ptr %17, align 4, !dbg !18
  %19 = icmp eq i32 %18, 1, !dbg !18
  br i1 %19, label %assert_end16, label %assert_fail15, !dbg !18, !prof !19

assert_fail15:                                    ; preds = %assert_end14
  %20 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %20(ptr nonnull @.str.8), !dbg !18
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14
  %21 = getelementptr inbounds i8, ptr %mean_handle, i64 24, !dbg !18
  %main0.mean_handle.shape = load ptr, ptr %21, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.mean_handle.shape, metadata !49, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.mean_handle.shape, metadata !49, metadata !DIExpression()), !dbg !18
  %22 = getelementptr inbounds i8, ptr %mean_handle, i64 32, !dbg !18
  %main0.mean_handle.strides = load ptr, ptr %22, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.mean_handle.strides, metadata !50, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.mean_handle.strides, metadata !50, metadata !DIExpression()), !dbg !18
  %mean = load ptr, ptr %mean_handle, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %mean, metadata !51, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %mean, metadata !51, metadata !DIExpression()), !dbg !18
  call void @llvm.assume(i1 true) [ "align"(ptr %mean, i64 64) ], !dbg !18
  %23 = getelementptr inbounds i8, ptr %data_handle, i64 22, !dbg !18
  %24 = load i16, ptr %23, align 2, !dbg !18
  %25 = icmp eq i16 %24, 1, !dbg !18
  %26 = getelementptr inbounds i8, ptr %data_handle, i64 21, !dbg !18
  %27 = load i8, ptr %26, align 1, !dbg !18
  %28 = icmp eq i8 %27, 64, !dbg !18
  %29 = getelementptr inbounds i8, ptr %data_handle, i64 20, !dbg !18
  %30 = load i8, ptr %29, align 1, !dbg !18
  %31 = icmp eq i8 %30, 2, !dbg !18
  %32 = and i1 %28, %31, !dbg !18
  %33 = and i1 %25, %32, !dbg !18
  br i1 %33, label %assert_end18, label %assert_fail17, !dbg !18, !prof !19

assert_fail17:                                    ; preds = %assert_end16
  %34 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %34(ptr nonnull @.str.9), !dbg !18
  br label %common.ret

assert_end18:                                     ; preds = %assert_end16
  %35 = load i64, ptr %main0.data_handle.shape, align 8, !dbg !18, !tbaa !52
  %36 = and i64 %35, 4294967295, !dbg !18
  %37 = icmp eq i64 %36, 1000, !dbg !18
  br i1 %37, label %assert_end20, label %assert_fail19, !dbg !18, !prof !19

assert_fail19:                                    ; preds = %assert_end18
  %38 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %38(ptr nonnull @.str.10), !dbg !18
  br label %common.ret

assert_end20:                                     ; preds = %assert_end18
  %39 = getelementptr inbounds i8, ptr %main0.data_handle.shape, i64 8, !dbg !18
  %40 = load i64, ptr %39, align 8, !dbg !18, !tbaa !62
  %41 = and i64 %40, 4294967295, !dbg !18
  %42 = icmp eq i64 %41, 1000, !dbg !18
  br i1 %42, label %assert_end22, label %assert_fail21, !dbg !18, !prof !19

assert_fail21:                                    ; preds = %assert_end20
  %43 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %43(ptr nonnull @.str.11), !dbg !18
  br label %common.ret

assert_end22:                                     ; preds = %assert_end20
  %.not50 = icmp eq ptr %main0.data_handle.strides, null, !dbg !18
  br i1 %.not50, label %if_end, label %if_then, !dbg !18, !prof !23

if_then:                                          ; preds = %assert_end22
  %44 = load i64, ptr %main0.data_handle.strides, align 8, !dbg !18, !tbaa !64
  %45 = and i64 %44, 4294967295, !dbg !18
  %46 = icmp eq i64 %45, 1000, !dbg !18
  %47 = getelementptr inbounds i8, ptr %main0.data_handle.strides, i64 8, !dbg !18
  %48 = load i64, ptr %47, align 8, !dbg !18, !tbaa !74
  %49 = and i64 %48, 4294967295, !dbg !18
  %50 = icmp eq i64 %49, 1, !dbg !18
  %51 = and i1 %46, %50, !dbg !18
  br i1 %51, label %if_end, label %assert_fail23, !dbg !18, !prof !19

if_end:                                           ; preds = %if_then, %assert_end22
  %52 = getelementptr inbounds i8, ptr %data_handle, i64 40, !dbg !18
  %53 = load i64, ptr %52, align 8, !dbg !18
  %54 = icmp eq i64 %53, 0, !dbg !18
  br i1 %54, label %assert_end26, label %assert_fail25, !dbg !18, !prof !19

assert_fail23:                                    ; preds = %if_then
  %55 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %55(ptr nonnull @.str.12), !dbg !18
  br label %common.ret

assert_fail25:                                    ; preds = %if_end
  %56 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %56(ptr nonnull @.str.13), !dbg !18
  br label %common.ret

assert_end26:                                     ; preds = %if_end
  %57 = getelementptr inbounds i8, ptr %data_handle, i64 8, !dbg !18
  %58 = load i32, ptr %57, align 4, !dbg !18
  %59 = icmp eq i32 %58, 1, !dbg !18
  br i1 %59, label %assert_end28, label %assert_fail27, !dbg !18, !prof !19

assert_fail27:                                    ; preds = %assert_end26
  %60 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %60(ptr nonnull @.str.14), !dbg !18
  br label %common.ret

assert_end28:                                     ; preds = %assert_end26
  %.not51 = icmp eq ptr %data, null, !dbg !18
  br i1 %.not51, label %assert_fail29, label %assert_end30, !dbg !18, !prof !23

assert_fail29:                                    ; preds = %assert_end28
  %61 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %61(ptr nonnull @.str.15), !dbg !18
  br label %common.ret

assert_end30:                                     ; preds = %assert_end28
  %62 = getelementptr inbounds i8, ptr %mean_handle, i64 22, !dbg !18
  %63 = load i16, ptr %62, align 2, !dbg !18
  %64 = icmp eq i16 %63, 1, !dbg !18
  %65 = getelementptr inbounds i8, ptr %mean_handle, i64 21, !dbg !18
  %66 = load i8, ptr %65, align 1, !dbg !18
  %67 = icmp eq i8 %66, 64, !dbg !18
  %68 = getelementptr inbounds i8, ptr %mean_handle, i64 20, !dbg !18
  %69 = load i8, ptr %68, align 1, !dbg !18
  %70 = icmp eq i8 %69, 2, !dbg !18
  %71 = and i1 %67, %70, !dbg !18
  %72 = and i1 %64, %71, !dbg !18
  br i1 %72, label %assert_end32, label %assert_fail31, !dbg !18, !prof !19

assert_fail31:                                    ; preds = %assert_end30
  %73 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %73(ptr nonnull @.str.16), !dbg !18
  br label %common.ret

assert_end32:                                     ; preds = %assert_end30
  %74 = load i64, ptr %main0.mean_handle.shape, align 8, !dbg !18, !tbaa !76
  %75 = and i64 %74, 4294967295, !dbg !18
  %76 = icmp eq i64 %75, 1000, !dbg !18
  br i1 %76, label %assert_end34, label %assert_fail33, !dbg !18, !prof !19

assert_fail33:                                    ; preds = %assert_end32
  %77 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %77(ptr nonnull @.str.17), !dbg !18
  br label %common.ret

assert_end34:                                     ; preds = %assert_end32
  %.not52 = icmp eq ptr %main0.mean_handle.strides, null, !dbg !18
  br i1 %.not52, label %if_end36, label %if_then35, !dbg !18, !prof !23

if_then35:                                        ; preds = %assert_end34
  %78 = load i64, ptr %main0.mean_handle.strides, align 8, !dbg !18, !tbaa !86
  %79 = and i64 %78, 4294967295, !dbg !18
  %80 = icmp eq i64 %79, 1, !dbg !18
  br i1 %80, label %if_end36, label %assert_fail37, !dbg !18, !prof !19

if_end36:                                         ; preds = %if_then35, %assert_end34
  %81 = getelementptr inbounds i8, ptr %mean_handle, i64 40, !dbg !18
  %82 = load i64, ptr %81, align 8, !dbg !18
  %83 = icmp eq i64 %82, 0, !dbg !18
  br i1 %83, label %assert_end40, label %assert_fail39, !dbg !18, !prof !19

assert_fail37:                                    ; preds = %if_then35
  %84 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %84(ptr nonnull @.str.18), !dbg !18
  br label %common.ret

assert_fail39:                                    ; preds = %if_end36
  %85 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %85(ptr nonnull @.str.19), !dbg !18
  br label %common.ret

assert_end40:                                     ; preds = %if_end36
  %86 = getelementptr inbounds i8, ptr %mean_handle, i64 8, !dbg !18
  %87 = load i32, ptr %86, align 4, !dbg !18
  %88 = icmp eq i32 %87, 1, !dbg !18
  br i1 %88, label %assert_end42, label %assert_fail41, !dbg !18, !prof !19

assert_fail41:                                    ; preds = %assert_end40
  %89 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %89(ptr nonnull @.str.20), !dbg !18
  br label %common.ret

assert_end42:                                     ; preds = %assert_end40
  %90 = getelementptr inbounds i8, ptr %mean_handle, i64 12, !dbg !18
  %91 = load i32, ptr %90, align 4, !dbg !18
  %92 = icmp eq i32 %dev_id, %91, !dbg !18
  br i1 %92, label %assert_end44, label %assert_fail43, !dbg !18, !prof !19

assert_fail43:                                    ; preds = %assert_end42
  %93 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %93(ptr nonnull @.str.21), !dbg !18
  br label %common.ret

assert_end44:                                     ; preds = %assert_end42
  %.not53 = icmp eq ptr %mean, null, !dbg !18
  br i1 %.not53, label %assert_fail45, label %assert_end46, !dbg !18, !prof !23

assert_fail45:                                    ; preds = %assert_end44
  %94 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %94(ptr nonnull @.str.22), !dbg !18
  br label %common.ret

assert_end46:                                     ; preds = %assert_end44
  %95 = tail call fastcc i32 @main0_compute_(ptr nonnull %data, ptr nonnull %mean), !dbg !18
  br label %common.ret
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: noinline
define internal fastcc i32 @main0_compute_(ptr noalias align 64 %data, ptr noalias align 64 %mean) unnamed_addr #2 !dbg !96 {
entry:
  tail call void @llvm.dbg.value(metadata ptr %data, metadata !100, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata ptr %mean, metadata !101, metadata !DIExpression()), !dbg !102
  %0 = alloca %closure_loop_parallel_i_j_fused_0, align 8, !dbg !102
  store ptr %data, ptr %0, align 8, !dbg !102
  %1 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !102
  store ptr %mean, ptr %1, align 8, !dbg !102
  %2 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !dbg !102, !tbaa !20
  %3 = call i32 %2(ptr nonnull @__tvm_parallel_lambda, ptr nonnull %0, i32 0), !dbg !102
  ret i32 %3, !dbg !102
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define private noundef i32 @__tvm_parallel_lambda(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %data = load ptr, ptr %1, align 8, !dbg !102
  %2 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !102
  %mean = load ptr, ptr %2, align 8, !dbg !102
  %3 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !102
  %num_task = load i32, ptr %3, align 4, !dbg !102
  %4 = add nsw i32 %num_task, 15624, !dbg !102
  %5 = sdiv i32 %4, %num_task, !dbg !102
  %6 = add nsw i32 %task_id, 1, !dbg !102
  %7 = mul nsw i32 %5, %6, !dbg !102
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 15625), !dbg !102
  %9 = mul nsw i32 %5, %task_id, !dbg !102
  tail call void @llvm.dbg.declare(metadata i32 %9, metadata !103, metadata !DIExpression()), !dbg !102
  %10 = icmp slt i32 %9, %8, !dbg !102
  br i1 %10, label %for_body_i_j_fused_0.preheader, label %for_end_i_j_fused_0, !dbg !102, !prof !104

for_body_i_j_fused_0.preheader:                   ; preds = %parallel_closure_entry
  %smin = sext i32 %9 to i64, !dbg !102
  br label %for_body_i_j_fused_0, !dbg !102

for_body_i_j_fused_0:                             ; preds = %for_body_i_j_fused_0.preheader, %for_body_i_j_fused_0
  %indvars.iv = phi i64 [ %smin, %for_body_i_j_fused_0.preheader ], [ %indvars.iv.next, %for_body_i_j_fused_0 ]
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv, metadata !103, metadata !DIExpression()), !dbg !102
  %11 = shl nsw i64 %indvars.iv, 6, !dbg !102
  tail call void @llvm.dbg.declare(metadata i64 %11, metadata !105, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.declare(metadata i64 %11, metadata !105, metadata !DIExpression()), !dbg !102
  %12 = trunc nsw i64 %11 to i32, !dbg !102
  %13 = insertelement <64 x i32> poison, i32 %12, i64 0, !dbg !102
  %14 = trunc i64 %11 to i32, !dbg !102
  %15 = or disjoint i32 %14, 1, !dbg !102
  %16 = insertelement <64 x i32> %13, i32 %15, i64 1, !dbg !102
  %17 = trunc i64 %11 to i32, !dbg !102
  %18 = insertelement <2 x i32> poison, i32 %17, i64 0, !dbg !102
  %19 = shufflevector <2 x i32> %18, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !102
  %20 = or disjoint <2 x i32> %19, <i32 2, i32 3>, !dbg !102
  %21 = shufflevector <2 x i32> %20, <2 x i32> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !102
  %22 = shufflevector <64 x i32> %16, <64 x i32> %21, <64 x i32> <i32 0, i32 1, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !102
  %23 = trunc i64 %11 to i32, !dbg !102
  %24 = insertelement <32 x i32> poison, i32 %23, i64 0, !dbg !102
  %25 = shufflevector <32 x i32> %24, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !102
  %26 = or disjoint <32 x i32> %25, <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35>, !dbg !102
  %27 = shufflevector <32 x i32> %26, <32 x i32> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !102
  %28 = shufflevector <64 x i32> %22, <64 x i32> %27, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !102
  %29 = trunc i64 %11 to i32, !dbg !102
  %30 = insertelement <16 x i32> poison, i32 %29, i64 0, !dbg !102
  %31 = shufflevector <16 x i32> %30, <16 x i32> poison, <16 x i32> zeroinitializer, !dbg !102
  %32 = or disjoint <16 x i32> %31, <i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51>, !dbg !102
  %33 = shufflevector <16 x i32> %32, <16 x i32> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !102
  %34 = shufflevector <64 x i32> %28, <64 x i32> %33, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !102
  %35 = trunc i64 %11 to i32, !dbg !102
  %36 = insertelement <8 x i32> poison, i32 %35, i64 0, !dbg !102
  %37 = shufflevector <8 x i32> %36, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !102
  %38 = or disjoint <8 x i32> %37, <i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59>, !dbg !102
  %39 = shufflevector <8 x i32> %38, <8 x i32> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !102
  %40 = shufflevector <64 x i32> %34, <64 x i32> %39, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !102
  %41 = trunc i64 %11 to i32, !dbg !102
  %42 = insertelement <4 x i32> poison, i32 %41, i64 0, !dbg !102
  %43 = shufflevector <4 x i32> %42, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !102
  %44 = or disjoint <4 x i32> %43, <i32 60, i32 61, i32 62, i32 63>, !dbg !102
  %45 = shufflevector <4 x i32> %44, <4 x i32> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !102
  %46 = shufflevector <64 x i32> %40, <64 x i32> %45, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 64, i32 65, i32 66, i32 67>, !dbg !102
  %47 = srem <64 x i32> %46, <i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000>, !dbg !102
  %48 = extractelement <64 x i32> %47, i64 0, !dbg !102
  %49 = sext i32 %48 to i64, !dbg !102
  %50 = getelementptr inbounds double, ptr %mean, i64 %49, !dbg !102
  %51 = load double, ptr %50, align 8, !dbg !102, !tbaa !106
  %52 = extractelement <64 x i32> %47, i64 1, !dbg !102
  %53 = sext i32 %52 to i64, !dbg !102
  %54 = getelementptr inbounds double, ptr %mean, i64 %53, !dbg !102
  %55 = load double, ptr %54, align 8, !dbg !102, !tbaa !106
  %56 = extractelement <64 x i32> %47, i64 2, !dbg !102
  %57 = sext i32 %56 to i64, !dbg !102
  %58 = getelementptr inbounds double, ptr %mean, i64 %57, !dbg !102
  %59 = load double, ptr %58, align 8, !dbg !102, !tbaa !106
  %60 = extractelement <64 x i32> %47, i64 3, !dbg !102
  %61 = sext i32 %60 to i64, !dbg !102
  %62 = getelementptr inbounds double, ptr %mean, i64 %61, !dbg !102
  %63 = load double, ptr %62, align 8, !dbg !102, !tbaa !106
  %64 = extractelement <64 x i32> %47, i64 4, !dbg !102
  %65 = sext i32 %64 to i64, !dbg !102
  %66 = getelementptr inbounds double, ptr %mean, i64 %65, !dbg !102
  %67 = load double, ptr %66, align 8, !dbg !102, !tbaa !106
  %68 = extractelement <64 x i32> %47, i64 5, !dbg !102
  %69 = sext i32 %68 to i64, !dbg !102
  %70 = getelementptr inbounds double, ptr %mean, i64 %69, !dbg !102
  %71 = load double, ptr %70, align 8, !dbg !102, !tbaa !106
  %72 = extractelement <64 x i32> %47, i64 6, !dbg !102
  %73 = sext i32 %72 to i64, !dbg !102
  %74 = getelementptr inbounds double, ptr %mean, i64 %73, !dbg !102
  %75 = load double, ptr %74, align 8, !dbg !102, !tbaa !106
  %76 = extractelement <64 x i32> %47, i64 7, !dbg !102
  %77 = sext i32 %76 to i64, !dbg !102
  %78 = getelementptr inbounds double, ptr %mean, i64 %77, !dbg !102
  %79 = load double, ptr %78, align 8, !dbg !102, !tbaa !106
  %80 = extractelement <64 x i32> %47, i64 8, !dbg !102
  %81 = sext i32 %80 to i64, !dbg !102
  %82 = getelementptr inbounds double, ptr %mean, i64 %81, !dbg !102
  %83 = load double, ptr %82, align 8, !dbg !102, !tbaa !106
  %84 = extractelement <64 x i32> %47, i64 9, !dbg !102
  %85 = sext i32 %84 to i64, !dbg !102
  %86 = getelementptr inbounds double, ptr %mean, i64 %85, !dbg !102
  %87 = load double, ptr %86, align 8, !dbg !102, !tbaa !106
  %88 = extractelement <64 x i32> %47, i64 10, !dbg !102
  %89 = sext i32 %88 to i64, !dbg !102
  %90 = getelementptr inbounds double, ptr %mean, i64 %89, !dbg !102
  %91 = load double, ptr %90, align 8, !dbg !102, !tbaa !106
  %92 = extractelement <64 x i32> %47, i64 11, !dbg !102
  %93 = sext i32 %92 to i64, !dbg !102
  %94 = getelementptr inbounds double, ptr %mean, i64 %93, !dbg !102
  %95 = load double, ptr %94, align 8, !dbg !102, !tbaa !106
  %96 = extractelement <64 x i32> %47, i64 12, !dbg !102
  %97 = sext i32 %96 to i64, !dbg !102
  %98 = getelementptr inbounds double, ptr %mean, i64 %97, !dbg !102
  %99 = load double, ptr %98, align 8, !dbg !102, !tbaa !106
  %100 = extractelement <64 x i32> %47, i64 13, !dbg !102
  %101 = sext i32 %100 to i64, !dbg !102
  %102 = getelementptr inbounds double, ptr %mean, i64 %101, !dbg !102
  %103 = load double, ptr %102, align 8, !dbg !102, !tbaa !106
  %104 = extractelement <64 x i32> %47, i64 14, !dbg !102
  %105 = sext i32 %104 to i64, !dbg !102
  %106 = getelementptr inbounds double, ptr %mean, i64 %105, !dbg !102
  %107 = load double, ptr %106, align 8, !dbg !102, !tbaa !106
  %108 = extractelement <64 x i32> %47, i64 15, !dbg !102
  %109 = sext i32 %108 to i64, !dbg !102
  %110 = getelementptr inbounds double, ptr %mean, i64 %109, !dbg !102
  %111 = load double, ptr %110, align 8, !dbg !102, !tbaa !106
  %112 = extractelement <64 x i32> %47, i64 16, !dbg !102
  %113 = sext i32 %112 to i64, !dbg !102
  %114 = getelementptr inbounds double, ptr %mean, i64 %113, !dbg !102
  %115 = load double, ptr %114, align 8, !dbg !102, !tbaa !106
  %116 = extractelement <64 x i32> %47, i64 17, !dbg !102
  %117 = sext i32 %116 to i64, !dbg !102
  %118 = getelementptr inbounds double, ptr %mean, i64 %117, !dbg !102
  %119 = load double, ptr %118, align 8, !dbg !102, !tbaa !106
  %120 = extractelement <64 x i32> %47, i64 18, !dbg !102
  %121 = sext i32 %120 to i64, !dbg !102
  %122 = getelementptr inbounds double, ptr %mean, i64 %121, !dbg !102
  %123 = load double, ptr %122, align 8, !dbg !102, !tbaa !106
  %124 = extractelement <64 x i32> %47, i64 19, !dbg !102
  %125 = sext i32 %124 to i64, !dbg !102
  %126 = getelementptr inbounds double, ptr %mean, i64 %125, !dbg !102
  %127 = load double, ptr %126, align 8, !dbg !102, !tbaa !106
  %128 = extractelement <64 x i32> %47, i64 20, !dbg !102
  %129 = sext i32 %128 to i64, !dbg !102
  %130 = getelementptr inbounds double, ptr %mean, i64 %129, !dbg !102
  %131 = load double, ptr %130, align 8, !dbg !102, !tbaa !106
  %132 = extractelement <64 x i32> %47, i64 21, !dbg !102
  %133 = sext i32 %132 to i64, !dbg !102
  %134 = getelementptr inbounds double, ptr %mean, i64 %133, !dbg !102
  %135 = load double, ptr %134, align 8, !dbg !102, !tbaa !106
  %136 = extractelement <64 x i32> %47, i64 22, !dbg !102
  %137 = sext i32 %136 to i64, !dbg !102
  %138 = getelementptr inbounds double, ptr %mean, i64 %137, !dbg !102
  %139 = load double, ptr %138, align 8, !dbg !102, !tbaa !106
  %140 = extractelement <64 x i32> %47, i64 23, !dbg !102
  %141 = sext i32 %140 to i64, !dbg !102
  %142 = getelementptr inbounds double, ptr %mean, i64 %141, !dbg !102
  %143 = load double, ptr %142, align 8, !dbg !102, !tbaa !106
  %144 = extractelement <64 x i32> %47, i64 24, !dbg !102
  %145 = sext i32 %144 to i64, !dbg !102
  %146 = getelementptr inbounds double, ptr %mean, i64 %145, !dbg !102
  %147 = load double, ptr %146, align 8, !dbg !102, !tbaa !106
  %148 = extractelement <64 x i32> %47, i64 25, !dbg !102
  %149 = sext i32 %148 to i64, !dbg !102
  %150 = getelementptr inbounds double, ptr %mean, i64 %149, !dbg !102
  %151 = load double, ptr %150, align 8, !dbg !102, !tbaa !106
  %152 = extractelement <64 x i32> %47, i64 26, !dbg !102
  %153 = sext i32 %152 to i64, !dbg !102
  %154 = getelementptr inbounds double, ptr %mean, i64 %153, !dbg !102
  %155 = load double, ptr %154, align 8, !dbg !102, !tbaa !106
  %156 = extractelement <64 x i32> %47, i64 27, !dbg !102
  %157 = sext i32 %156 to i64, !dbg !102
  %158 = getelementptr inbounds double, ptr %mean, i64 %157, !dbg !102
  %159 = load double, ptr %158, align 8, !dbg !102, !tbaa !106
  %160 = extractelement <64 x i32> %47, i64 28, !dbg !102
  %161 = sext i32 %160 to i64, !dbg !102
  %162 = getelementptr inbounds double, ptr %mean, i64 %161, !dbg !102
  %163 = load double, ptr %162, align 8, !dbg !102, !tbaa !106
  %164 = extractelement <64 x i32> %47, i64 29, !dbg !102
  %165 = sext i32 %164 to i64, !dbg !102
  %166 = getelementptr inbounds double, ptr %mean, i64 %165, !dbg !102
  %167 = load double, ptr %166, align 8, !dbg !102, !tbaa !106
  %168 = extractelement <64 x i32> %47, i64 30, !dbg !102
  %169 = sext i32 %168 to i64, !dbg !102
  %170 = getelementptr inbounds double, ptr %mean, i64 %169, !dbg !102
  %171 = load double, ptr %170, align 8, !dbg !102, !tbaa !106
  %172 = extractelement <64 x i32> %47, i64 31, !dbg !102
  %173 = sext i32 %172 to i64, !dbg !102
  %174 = getelementptr inbounds double, ptr %mean, i64 %173, !dbg !102
  %175 = load double, ptr %174, align 8, !dbg !102, !tbaa !106
  %176 = extractelement <64 x i32> %47, i64 32, !dbg !102
  %177 = sext i32 %176 to i64, !dbg !102
  %178 = getelementptr inbounds double, ptr %mean, i64 %177, !dbg !102
  %179 = load double, ptr %178, align 8, !dbg !102, !tbaa !106
  %180 = extractelement <64 x i32> %47, i64 33, !dbg !102
  %181 = sext i32 %180 to i64, !dbg !102
  %182 = getelementptr inbounds double, ptr %mean, i64 %181, !dbg !102
  %183 = load double, ptr %182, align 8, !dbg !102, !tbaa !106
  %184 = extractelement <64 x i32> %47, i64 34, !dbg !102
  %185 = sext i32 %184 to i64, !dbg !102
  %186 = getelementptr inbounds double, ptr %mean, i64 %185, !dbg !102
  %187 = load double, ptr %186, align 8, !dbg !102, !tbaa !106
  %188 = extractelement <64 x i32> %47, i64 35, !dbg !102
  %189 = sext i32 %188 to i64, !dbg !102
  %190 = getelementptr inbounds double, ptr %mean, i64 %189, !dbg !102
  %191 = load double, ptr %190, align 8, !dbg !102, !tbaa !106
  %192 = extractelement <64 x i32> %47, i64 36, !dbg !102
  %193 = sext i32 %192 to i64, !dbg !102
  %194 = getelementptr inbounds double, ptr %mean, i64 %193, !dbg !102
  %195 = load double, ptr %194, align 8, !dbg !102, !tbaa !106
  %196 = extractelement <64 x i32> %47, i64 37, !dbg !102
  %197 = sext i32 %196 to i64, !dbg !102
  %198 = getelementptr inbounds double, ptr %mean, i64 %197, !dbg !102
  %199 = load double, ptr %198, align 8, !dbg !102, !tbaa !106
  %200 = extractelement <64 x i32> %47, i64 38, !dbg !102
  %201 = sext i32 %200 to i64, !dbg !102
  %202 = getelementptr inbounds double, ptr %mean, i64 %201, !dbg !102
  %203 = load double, ptr %202, align 8, !dbg !102, !tbaa !106
  %204 = extractelement <64 x i32> %47, i64 39, !dbg !102
  %205 = sext i32 %204 to i64, !dbg !102
  %206 = getelementptr inbounds double, ptr %mean, i64 %205, !dbg !102
  %207 = load double, ptr %206, align 8, !dbg !102, !tbaa !106
  %208 = extractelement <64 x i32> %47, i64 40, !dbg !102
  %209 = sext i32 %208 to i64, !dbg !102
  %210 = getelementptr inbounds double, ptr %mean, i64 %209, !dbg !102
  %211 = load double, ptr %210, align 8, !dbg !102, !tbaa !106
  %212 = extractelement <64 x i32> %47, i64 41, !dbg !102
  %213 = sext i32 %212 to i64, !dbg !102
  %214 = getelementptr inbounds double, ptr %mean, i64 %213, !dbg !102
  %215 = load double, ptr %214, align 8, !dbg !102, !tbaa !106
  %216 = extractelement <64 x i32> %47, i64 42, !dbg !102
  %217 = sext i32 %216 to i64, !dbg !102
  %218 = getelementptr inbounds double, ptr %mean, i64 %217, !dbg !102
  %219 = load double, ptr %218, align 8, !dbg !102, !tbaa !106
  %220 = extractelement <64 x i32> %47, i64 43, !dbg !102
  %221 = sext i32 %220 to i64, !dbg !102
  %222 = getelementptr inbounds double, ptr %mean, i64 %221, !dbg !102
  %223 = load double, ptr %222, align 8, !dbg !102, !tbaa !106
  %224 = extractelement <64 x i32> %47, i64 44, !dbg !102
  %225 = sext i32 %224 to i64, !dbg !102
  %226 = getelementptr inbounds double, ptr %mean, i64 %225, !dbg !102
  %227 = load double, ptr %226, align 8, !dbg !102, !tbaa !106
  %228 = extractelement <64 x i32> %47, i64 45, !dbg !102
  %229 = sext i32 %228 to i64, !dbg !102
  %230 = getelementptr inbounds double, ptr %mean, i64 %229, !dbg !102
  %231 = load double, ptr %230, align 8, !dbg !102, !tbaa !106
  %232 = extractelement <64 x i32> %47, i64 46, !dbg !102
  %233 = sext i32 %232 to i64, !dbg !102
  %234 = getelementptr inbounds double, ptr %mean, i64 %233, !dbg !102
  %235 = load double, ptr %234, align 8, !dbg !102, !tbaa !106
  %236 = extractelement <64 x i32> %47, i64 47, !dbg !102
  %237 = sext i32 %236 to i64, !dbg !102
  %238 = getelementptr inbounds double, ptr %mean, i64 %237, !dbg !102
  %239 = load double, ptr %238, align 8, !dbg !102, !tbaa !106
  %240 = extractelement <64 x i32> %47, i64 48, !dbg !102
  %241 = sext i32 %240 to i64, !dbg !102
  %242 = getelementptr inbounds double, ptr %mean, i64 %241, !dbg !102
  %243 = load double, ptr %242, align 8, !dbg !102, !tbaa !106
  %244 = extractelement <64 x i32> %47, i64 49, !dbg !102
  %245 = sext i32 %244 to i64, !dbg !102
  %246 = getelementptr inbounds double, ptr %mean, i64 %245, !dbg !102
  %247 = load double, ptr %246, align 8, !dbg !102, !tbaa !106
  %248 = extractelement <64 x i32> %47, i64 50, !dbg !102
  %249 = sext i32 %248 to i64, !dbg !102
  %250 = getelementptr inbounds double, ptr %mean, i64 %249, !dbg !102
  %251 = load double, ptr %250, align 8, !dbg !102, !tbaa !106
  %252 = extractelement <64 x i32> %47, i64 51, !dbg !102
  %253 = sext i32 %252 to i64, !dbg !102
  %254 = getelementptr inbounds double, ptr %mean, i64 %253, !dbg !102
  %255 = load double, ptr %254, align 8, !dbg !102, !tbaa !106
  %256 = extractelement <64 x i32> %47, i64 52, !dbg !102
  %257 = sext i32 %256 to i64, !dbg !102
  %258 = getelementptr inbounds double, ptr %mean, i64 %257, !dbg !102
  %259 = load double, ptr %258, align 8, !dbg !102, !tbaa !106
  %260 = extractelement <64 x i32> %47, i64 53, !dbg !102
  %261 = sext i32 %260 to i64, !dbg !102
  %262 = getelementptr inbounds double, ptr %mean, i64 %261, !dbg !102
  %263 = load double, ptr %262, align 8, !dbg !102, !tbaa !106
  %264 = extractelement <64 x i32> %47, i64 54, !dbg !102
  %265 = sext i32 %264 to i64, !dbg !102
  %266 = getelementptr inbounds double, ptr %mean, i64 %265, !dbg !102
  %267 = load double, ptr %266, align 8, !dbg !102, !tbaa !106
  %268 = extractelement <64 x i32> %47, i64 55, !dbg !102
  %269 = sext i32 %268 to i64, !dbg !102
  %270 = getelementptr inbounds double, ptr %mean, i64 %269, !dbg !102
  %271 = load double, ptr %270, align 8, !dbg !102, !tbaa !106
  %272 = extractelement <64 x i32> %47, i64 56, !dbg !102
  %273 = sext i32 %272 to i64, !dbg !102
  %274 = getelementptr inbounds double, ptr %mean, i64 %273, !dbg !102
  %275 = load double, ptr %274, align 8, !dbg !102, !tbaa !106
  %276 = extractelement <64 x i32> %47, i64 57, !dbg !102
  %277 = sext i32 %276 to i64, !dbg !102
  %278 = getelementptr inbounds double, ptr %mean, i64 %277, !dbg !102
  %279 = load double, ptr %278, align 8, !dbg !102, !tbaa !106
  %280 = extractelement <64 x i32> %47, i64 58, !dbg !102
  %281 = sext i32 %280 to i64, !dbg !102
  %282 = getelementptr inbounds double, ptr %mean, i64 %281, !dbg !102
  %283 = load double, ptr %282, align 8, !dbg !102, !tbaa !106
  %284 = extractelement <64 x i32> %47, i64 59, !dbg !102
  %285 = sext i32 %284 to i64, !dbg !102
  %286 = getelementptr inbounds double, ptr %mean, i64 %285, !dbg !102
  %287 = load double, ptr %286, align 8, !dbg !102, !tbaa !106
  %288 = extractelement <64 x i32> %47, i64 60, !dbg !102
  %289 = sext i32 %288 to i64, !dbg !102
  %290 = getelementptr inbounds double, ptr %mean, i64 %289, !dbg !102
  %291 = load double, ptr %290, align 8, !dbg !102, !tbaa !106
  %292 = extractelement <64 x i32> %47, i64 61, !dbg !102
  %293 = sext i32 %292 to i64, !dbg !102
  %294 = getelementptr inbounds double, ptr %mean, i64 %293, !dbg !102
  %295 = load double, ptr %294, align 8, !dbg !102, !tbaa !106
  %296 = extractelement <64 x i32> %47, i64 62, !dbg !102
  %297 = sext i32 %296 to i64, !dbg !102
  %298 = getelementptr inbounds double, ptr %mean, i64 %297, !dbg !102
  %299 = load double, ptr %298, align 8, !dbg !102, !tbaa !106
  %300 = extractelement <64 x i32> %47, i64 63, !dbg !102
  %301 = sext i32 %300 to i64, !dbg !102
  %302 = getelementptr inbounds double, ptr %mean, i64 %301, !dbg !102
  %303 = load double, ptr %302, align 8, !dbg !102, !tbaa !106
  %304 = insertelement <64 x double> <double poison, double poison, double poison, double poison, double poison, double poison, double poison, double poison, double poison, double poison, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef, double undef>, double %51, i64 0, !dbg !102
  %305 = insertelement <64 x double> %304, double %55, i64 1, !dbg !102
  %306 = insertelement <64 x double> %305, double %59, i64 2, !dbg !102
  %307 = insertelement <64 x double> %306, double %63, i64 3, !dbg !102
  %308 = insertelement <64 x double> %307, double %67, i64 4, !dbg !102
  %309 = insertelement <64 x double> %308, double %71, i64 5, !dbg !102
  %310 = insertelement <64 x double> %309, double %75, i64 6, !dbg !102
  %311 = insertelement <64 x double> %310, double %79, i64 7, !dbg !102
  %312 = insertelement <64 x double> %311, double %83, i64 8, !dbg !102
  %313 = insertelement <64 x double> %312, double %87, i64 9, !dbg !102
  %314 = insertelement <64 x double> %313, double %91, i64 10, !dbg !102
  %315 = insertelement <64 x double> %314, double %95, i64 11, !dbg !102
  %316 = insertelement <64 x double> %315, double %99, i64 12, !dbg !102
  %317 = insertelement <64 x double> %316, double %103, i64 13, !dbg !102
  %318 = insertelement <64 x double> %317, double %107, i64 14, !dbg !102
  %319 = insertelement <64 x double> %318, double %111, i64 15, !dbg !102
  %320 = insertelement <64 x double> %319, double %115, i64 16, !dbg !102
  %321 = insertelement <64 x double> %320, double %119, i64 17, !dbg !102
  %322 = insertelement <64 x double> %321, double %123, i64 18, !dbg !102
  %323 = insertelement <64 x double> %322, double %127, i64 19, !dbg !102
  %324 = insertelement <64 x double> %323, double %131, i64 20, !dbg !102
  %325 = insertelement <64 x double> %324, double %135, i64 21, !dbg !102
  %326 = insertelement <64 x double> %325, double %139, i64 22, !dbg !102
  %327 = insertelement <64 x double> %326, double %143, i64 23, !dbg !102
  %328 = insertelement <64 x double> %327, double %147, i64 24, !dbg !102
  %329 = insertelement <64 x double> %328, double %151, i64 25, !dbg !102
  %330 = insertelement <64 x double> %329, double %155, i64 26, !dbg !102
  %331 = insertelement <64 x double> %330, double %159, i64 27, !dbg !102
  %332 = insertelement <64 x double> %331, double %163, i64 28, !dbg !102
  %333 = insertelement <64 x double> %332, double %167, i64 29, !dbg !102
  %334 = insertelement <64 x double> %333, double %171, i64 30, !dbg !102
  %335 = insertelement <64 x double> %334, double %175, i64 31, !dbg !102
  %336 = insertelement <64 x double> %335, double %179, i64 32, !dbg !102
  %337 = insertelement <64 x double> %336, double %183, i64 33, !dbg !102
  %338 = insertelement <64 x double> %337, double %187, i64 34, !dbg !102
  %339 = insertelement <64 x double> %338, double %191, i64 35, !dbg !102
  %340 = insertelement <64 x double> %339, double %195, i64 36, !dbg !102
  %341 = insertelement <64 x double> %340, double %199, i64 37, !dbg !102
  %342 = insertelement <64 x double> %341, double %203, i64 38, !dbg !102
  %343 = insertelement <64 x double> %342, double %207, i64 39, !dbg !102
  %344 = insertelement <64 x double> %343, double %211, i64 40, !dbg !102
  %345 = insertelement <64 x double> %344, double %215, i64 41, !dbg !102
  %346 = insertelement <64 x double> %345, double %219, i64 42, !dbg !102
  %347 = insertelement <64 x double> %346, double %223, i64 43, !dbg !102
  %348 = insertelement <64 x double> %347, double %227, i64 44, !dbg !102
  %349 = insertelement <64 x double> %348, double %231, i64 45, !dbg !102
  %350 = insertelement <64 x double> %349, double %235, i64 46, !dbg !102
  %351 = insertelement <64 x double> %350, double %239, i64 47, !dbg !102
  %352 = insertelement <64 x double> %351, double %243, i64 48, !dbg !102
  %353 = insertelement <64 x double> %352, double %247, i64 49, !dbg !102
  %354 = insertelement <64 x double> %353, double %251, i64 50, !dbg !102
  %355 = insertelement <64 x double> %354, double %255, i64 51, !dbg !102
  %356 = insertelement <64 x double> %355, double %259, i64 52, !dbg !102
  %357 = insertelement <64 x double> %356, double %263, i64 53, !dbg !102
  %358 = insertelement <64 x double> %357, double %267, i64 54, !dbg !102
  %359 = insertelement <64 x double> %358, double %271, i64 55, !dbg !102
  %360 = insertelement <64 x double> %359, double %275, i64 56, !dbg !102
  %361 = insertelement <64 x double> %360, double %279, i64 57, !dbg !102
  %362 = insertelement <64 x double> %361, double %283, i64 58, !dbg !102
  %363 = insertelement <64 x double> %362, double %287, i64 59, !dbg !102
  %364 = insertelement <64 x double> %363, double %291, i64 60, !dbg !102
  %365 = insertelement <64 x double> %364, double %295, i64 61, !dbg !102
  %366 = insertelement <64 x double> %365, double %299, i64 62, !dbg !102
  %367 = insertelement <64 x double> %366, double %303, i64 63, !dbg !102
  %368 = getelementptr inbounds double, ptr %data, i64 %11, !dbg !102
  %369 = load <64 x double>, ptr %368, align 64, !dbg !102, !tbaa !108
  %370 = fsub <64 x double> %369, %367, !dbg !102
  store <64 x double> %370, ptr %368, align 64, !dbg !102, !tbaa !108
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !102
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !103, metadata !DIExpression()), !dbg !102
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !102
  %exitcond.not = icmp eq i32 %8, %lftr.wideiv, !dbg !102
  br i1 %exitcond.not, label %for_end_i_j_fused_0, label %for_body_i_j_fused_0, !dbg !102, !prof !110

for_end_i_j_fused_0:                              ; preds = %for_body_i_j_fused_0, %parallel_closure_entry
  ret i32 0, !dbg !102
}

; Function Attrs: nofree nosync nounwind memory(none)
define weak dso_local half @__truncsfhf2(float %a0) local_unnamed_addr #4 section ".text.tvm.fp16.conv" {
b0:
  %v0 = bitcast float %a0 to i32
  %0 = tail call float @llvm.fabs.f32(float %a0)
  %v1 = bitcast float %0 to i32
  %v2 = add nsw i32 %v1, -947912704
  %v3 = add nsw i32 %v1, -1199570944
  %v4 = icmp ult i32 %v2, %v3
  br i1 %v4, label %b1, label %b5

b1:                                               ; preds = %b0
  %v5 = lshr i32 %v0, 13
  %v7 = add nsw i32 %v5, -114688
  %v8 = and i32 %v0, 8191
  %v9 = icmp ugt i32 %v8, 4096
  br i1 %v9, label %b2, label %b3

b2:                                               ; preds = %b1
  %v10 = add nsw i32 %v5, -114687
  br label %b13

b3:                                               ; preds = %b1
  %v11 = icmp eq i32 %v8, 4096
  br i1 %v11, label %b4, label %b13

b4:                                               ; preds = %b3
  %v13 = and i32 %v5, 1
  %v14 = add nsw i32 %v7, %v13
  br label %b13

b5:                                               ; preds = %b0
  %v15 = icmp ugt i32 %v1, 2139095040
  br i1 %v15, label %b6, label %b7

b6:                                               ; preds = %b5
  %v16 = lshr i32 %v0, 13
  %v17 = and i32 %v16, 511
  %v18 = or disjoint i32 %v17, 32256
  br label %b13

b7:                                               ; preds = %b5
  %v19 = icmp ugt i32 %v1, 1199570943
  br i1 %v19, label %b13, label %b8

b8:                                               ; preds = %b7
  %v20 = icmp ult i32 %v1, 754974720
  br i1 %v20, label %b13, label %b9

b9:                                               ; preds = %b8
  %v21 = lshr i32 %v1, 23
  %v22 = sub nsw i32 113, %v21
  %v23 = and i32 %v0, 8388607
  %v24 = or disjoint i32 %v23, 8388608
  %v25 = add nsw i32 %v21, -81
  %v26 = shl i32 %v24, %v25
  %v27 = icmp ne i32 %v26, 0
  %v28 = lshr i32 %v24, %v22
  %v29 = zext i1 %v27 to i32
  %v30 = lshr i32 %v28, 13
  %v31 = and i32 %v28, 8191
  %v32 = or i32 %v31, %v29
  %v33 = icmp ugt i32 %v32, 4096
  br i1 %v33, label %b10, label %b11

b10:                                              ; preds = %b9
  %v34 = add nuw nsw i32 %v30, 1
  br label %b13

b11:                                              ; preds = %b9
  %v35 = icmp eq i32 %v32, 4096
  br i1 %v35, label %b12, label %b13

b12:                                              ; preds = %b11
  %v36 = and i32 %v30, 1
  %v37 = add nuw nsw i32 %v36, %v30
  br label %b13

b13:                                              ; preds = %b12, %b11, %b10, %b8, %b7, %b6, %b4, %b3, %b2
  %v38 = phi i32 [ %v18, %b6 ], [ %v10, %b2 ], [ %v14, %b4 ], [ %v7, %b3 ], [ 31744, %b7 ], [ 0, %b8 ], [ %v34, %b10 ], [ %v37, %b12 ], [ %v30, %b11 ]
  %v39 = lshr i32 %v0, 16
  %v40 = and i32 %v39, 32768
  %v41 = or i32 %v38, %v40
  %vlast = trunc i32 %v41 to i16
  %vres = bitcast i16 %vlast to half
  ret half %vres
}

; Function Attrs: nofree nosync nounwind memory(none)
define weak dso_local float @__extendhfsf2(half %a0) local_unnamed_addr #4 section ".text.tvm.fp16.conv" {
b0:
  %0 = tail call half @llvm.fabs.f16(half %a0)
  %v1 = bitcast half %0 to i16
  %v2 = zext nneg i16 %v1 to i32
  %v3 = add nsw i16 %v1, -1024
  %v4 = icmp ult i16 %v3, 30720
  br i1 %v4, label %b1, label %b2

b1:                                               ; preds = %b0
  %v5 = shl nuw nsw i32 %v2, 13
  %v6 = add nuw nsw i32 %v5, 939524096
  br label %b6

b2:                                               ; preds = %b0
  %v7 = icmp ugt i16 %v1, 31743
  br i1 %v7, label %b3, label %b4

b3:                                               ; preds = %b2
  %v8 = shl nuw nsw i32 %v2, 13
  %v9 = or i32 %v8, 2139095040
  br label %b6

b4:                                               ; preds = %b2
  %v10 = icmp eq i16 %v1, 0
  br i1 %v10, label %b6, label %b5

b5:                                               ; preds = %b4
  %v11 = icmp ult i16 %v1, 256
  %v12 = lshr i32 %v2, 8
  %v13 = select i1 %v11, i32 %v2, i32 %v12
  %v14 = select i1 %v11, i32 32, i32 24
  %v15 = icmp ult i32 %v13, 16
  %v16 = lshr i32 %v13, 4
  %v17 = add nsw i32 %v14, -4
  %v18 = select i1 %v15, i32 %v13, i32 %v16
  %v19 = select i1 %v15, i32 %v14, i32 %v17
  %v20 = icmp ult i32 %v18, 4
  %v21 = lshr i32 %v18, 2
  %v22 = add nsw i32 %v19, -2
  %v23 = select i1 %v20, i32 %v18, i32 %v21
  %v24 = select i1 %v20, i32 %v19, i32 %v22
  %v25 = icmp ult i32 %v23, 2
  %v26 = sub nsw i32 0, %v23
  %v27 = select i1 %v25, i32 %v26, i32 -2
  %v28 = add nsw i32 %v27, %v24
  %v29 = add nsw i32 %v28, -8
  %v30 = shl i32 %v2, %v29
  %v31 = xor i32 %v30, 8388608
  %v32 = shl i32 %v28, 23
  %v33 = sub i32 1124073472, %v32
  %v34 = or i32 %v31, %v33
  br label %b6

b6:                                               ; preds = %b5, %b4, %b3, %b1
  %v35 = phi i32 [ %v6, %b1 ], [ %v9, %b3 ], [ %v34, %b5 ], [ 0, %b4 ]
  %vinp = bitcast half %a0 to i16
  %v36 = and i16 %vinp, -32768
  %v37 = zext i16 %v36 to i32
  %v38 = shl nuw i32 %v37, 16
  %v39 = or i32 %v35, %v38
  %v40 = bitcast i32 %v39 to float
  ret float %v40
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare half @llvm.fabs.f16(half) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { "target-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { noinline "target-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "target-cpu"="generic" }
attributes #4 = { nofree nosync nounwind memory(none) "target-cpu"="generic" "target-features" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "TVM", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "IRModule.CodeGenLLVM", directory: ".")
!2 = !{i32 2, !"tvm_target", !"llvm -mtriple=x86_64-unknown-linux-gnu"}
!3 = !{i32 4, !"Debug Info Version", i32 3}
!4 = !{i32 4, !"Dwarf Version", i32 4}
!5 = distinct !DISubprogram(name: "main0", scope: !1, file: !1, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !9, !10, !8, !9, !10, !9}
!8 = !DIBasicType(name: "int32", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8)
!11 = !{!12, !13, !14, !15, !16, !17}
!12 = !DILocalVariable(name: "args", arg: 1, scope: !5, file: !1, type: !9)
!13 = !DILocalVariable(name: "arg_type_ids", arg: 2, scope: !5, file: !1, type: !10)
!14 = !DILocalVariable(name: "num_args", arg: 3, scope: !5, file: !1, type: !8)
!15 = !DILocalVariable(name: "out_ret_value", arg: 4, scope: !5, file: !1, type: !9)
!16 = !DILocalVariable(name: "out_ret_tcode", arg: 5, scope: !5, file: !1, type: !10)
!17 = !DILocalVariable(name: "resource_handle", arg: 6, scope: !5, file: !1, type: !9)
!18 = !DILocation(line: 0, scope: !5)
!19 = !{!"branch_weights", i32 1048576, i32 1}
!20 = !{!21, !21, i64 0}
!21 = !{!"ctx_ptr", !22, i64 0}
!22 = !{!"tvm-tbaa"}
!23 = !{!"branch_weights", i32 1, i32 1048576}
!24 = !{!25, !25, i64 0}
!25 = !{!"0x430a2a0.w4.b0", !26, i64 0}
!26 = !{!"0x430a2a0.w8.b0", !27, i64 0}
!27 = !{!"0x430a2a0.w16.b0", !28, i64 0}
!28 = !{!"0x430a2a0.w32.b0", !29, i64 0}
!29 = !{!"0x430a2a0.w64.b0", !30, i64 0}
!30 = !{!"0x430a2a0.w128.b0", !31, i64 0}
!31 = !{!"0x430a2a0.w256.b0", !32, i64 0}
!32 = !{!"0x430a2a0.w512.b0", !33, i64 0}
!33 = !{!"0x430a2a0.w1024.b0", !34, i64 0}
!34 = !{!"0x430a2a0", !22, i64 0}
!35 = !DILocalVariable(name: "data_handle.code", scope: !5, file: !1, type: !8)
!36 = !{!37, !37, i64 0}
!37 = !{!"0x430a2a0.w4.b4", !26, i64 0}
!38 = !DILocalVariable(name: "mean_handle.code", scope: !5, file: !1, type: !8)
!39 = !DILocalVariable(name: "data_handle", scope: !5, file: !1, type: !9)
!40 = !DILocalVariable(name: "mean_handle", scope: !5, file: !1, type: !9)
!41 = !DILocalVariable(name: "main0.data_handle.shape", scope: !5, file: !1, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43)
!43 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!44 = !DILocalVariable(name: "main0.data_handle.strides", scope: !5, file: !1, type: !42)
!45 = !DILocalVariable(name: "dev_id", scope: !5, file: !1, type: !8)
!46 = !DILocalVariable(name: "data", scope: !5, file: !1, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48)
!48 = !DIBasicType(name: "float64", size: 64, encoding: DW_ATE_float)
!49 = !DILocalVariable(name: "main0.mean_handle.shape", scope: !5, file: !1, type: !42)
!50 = !DILocalVariable(name: "main0.mean_handle.strides", scope: !5, file: !1, type: !42)
!51 = !DILocalVariable(name: "mean", scope: !5, file: !1, type: !47)
!52 = !{!53, !53, i64 0}
!53 = !{!"0x429a2f0.w8.b0", !54, i64 0}
!54 = !{!"0x429a2f0.w16.b0", !55, i64 0}
!55 = !{!"0x429a2f0.w32.b0", !56, i64 0}
!56 = !{!"0x429a2f0.w64.b0", !57, i64 0}
!57 = !{!"0x429a2f0.w128.b0", !58, i64 0}
!58 = !{!"0x429a2f0.w256.b0", !59, i64 0}
!59 = !{!"0x429a2f0.w512.b0", !60, i64 0}
!60 = !{!"0x429a2f0.w1024.b0", !61, i64 0}
!61 = !{!"0x429a2f0", !22, i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"0x429a2f0.w8.b8", !54, i64 0}
!64 = !{!65, !65, i64 0}
!65 = !{!"0x42ecf50.w8.b0", !66, i64 0}
!66 = !{!"0x42ecf50.w16.b0", !67, i64 0}
!67 = !{!"0x42ecf50.w32.b0", !68, i64 0}
!68 = !{!"0x42ecf50.w64.b0", !69, i64 0}
!69 = !{!"0x42ecf50.w128.b0", !70, i64 0}
!70 = !{!"0x42ecf50.w256.b0", !71, i64 0}
!71 = !{!"0x42ecf50.w512.b0", !72, i64 0}
!72 = !{!"0x42ecf50.w1024.b0", !73, i64 0}
!73 = !{!"0x42ecf50", !22, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"0x42ecf50.w8.b8", !66, i64 0}
!76 = !{!77, !77, i64 0}
!77 = !{!"0x42ef8d0.w8.b0", !78, i64 0}
!78 = !{!"0x42ef8d0.w16.b0", !79, i64 0}
!79 = !{!"0x42ef8d0.w32.b0", !80, i64 0}
!80 = !{!"0x42ef8d0.w64.b0", !81, i64 0}
!81 = !{!"0x42ef8d0.w128.b0", !82, i64 0}
!82 = !{!"0x42ef8d0.w256.b0", !83, i64 0}
!83 = !{!"0x42ef8d0.w512.b0", !84, i64 0}
!84 = !{!"0x42ef8d0.w1024.b0", !85, i64 0}
!85 = !{!"0x42ef8d0", !22, i64 0}
!86 = !{!87, !87, i64 0}
!87 = !{!"0x42efbc0.w8.b0", !88, i64 0}
!88 = !{!"0x42efbc0.w16.b0", !89, i64 0}
!89 = !{!"0x42efbc0.w32.b0", !90, i64 0}
!90 = !{!"0x42efbc0.w64.b0", !91, i64 0}
!91 = !{!"0x42efbc0.w128.b0", !92, i64 0}
!92 = !{!"0x42efbc0.w256.b0", !93, i64 0}
!93 = !{!"0x42efbc0.w512.b0", !94, i64 0}
!94 = !{!"0x42efbc0.w1024.b0", !95, i64 0}
!95 = !{!"0x42efbc0", !22, i64 0}
!96 = distinct !DISubprogram(name: "main0_compute_", scope: !1, file: !1, type: !97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !99)
!97 = !DISubroutineType(types: !98)
!98 = !{!8, !47, !47}
!99 = !{!100, !101}
!100 = !DILocalVariable(name: "data", arg: 1, scope: !96, file: !1, type: !47)
!101 = !DILocalVariable(name: "mean", arg: 2, scope: !96, file: !1, type: !47)
!102 = !DILocation(line: 0, scope: !96)
!103 = !DILocalVariable(name: "i_j_fused_0", scope: !96, file: !1, type: !8)
!104 = !{!"branch_weights", i32 127, i32 1}
!105 = !DILocalVariable(name: "cse_var_1", scope: !96, file: !1, type: !8)
!106 = !{!107, !107, i64 0}
!107 = !{!"0x3fe3f60", !22, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"0x3ee6130", !22, i64 0}
!110 = !{!"branch_weights", i32 127, i32 134217601}
