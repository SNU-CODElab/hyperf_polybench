; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%closure_loop_parallel_t_1_i_1_fused = type { ptr, ptr }
%closure_loop_parallel_t_0_i_fused = type { ptr, ptr }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global ptr null, align 8
@__TVMBackendParallelLaunch = linkonce dllexport local_unnamed_addr global ptr null, align 8
@.str = private constant [56 x i8] c"Assert fail: num_args == 2, main0: num_args should be 2\00", align 1
@.str.1 = private constant [74 x i8] c"Assert fail: not T.isnullptr(args), main0: TVMValue* arg pointer was NULL\00", align 1
@.str.2 = private constant [76 x i8] c"Assert fail: not T.isnullptr(arg_type_ids), main0: int* type_codes was NULL\00", align 1
@.str.3 = private constant [135 x i8] c"Assert fail: A_handle_code == 3 or A_handle_code == 13 or A_handle_code == 7 or A_handle_code == 4, main0: Expect arg[0] to be pointer\00", align 1
@.str.4 = private constant [135 x i8] c"Assert fail: B_handle_code == 3 or B_handle_code == 13 or B_handle_code == 7 or B_handle_code == 4, main0: Expect arg[1] to be pointer\00", align 1
@.str.5 = private constant [102 x i8] c"Assert fail: not T.isnullptr(A_handle), main0.A_handle is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.6 = private constant [104 x i8] c"Assert fail: 2 == T.tvm_struct_get(A_handle, 0, 4, \22int32\22), main0.A_handle.ndim is expected to equal 2\00", align 1
@.str.7 = private constant [102 x i8] c"Assert fail: not T.isnullptr(B_handle), main0.B_handle is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.8 = private constant [104 x i8] c"Assert fail: 2 == T.tvm_struct_get(B_handle, 0, 4, \22int32\22), main0.B_handle.ndim is expected to equal 2\00", align 1
@.str.9 = private constant [240 x i8] c"Assert fail: T.tvm_struct_get(A_handle, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(A_handle, 0, 6, \22uint8\22) == T.uint8(64) and T.tvm_struct_get(A_handle, 0, 7, \22uint16\22) == T.uint16(1), main0.A_handle.dtype is expected to be float64\00", align 1
@.str.10 = private constant [176 x i8] c"Assert fail: T.Cast(\22int32\22, main0_A_handle_shape[0]) == 1000, Argument main0.A_handle.shape[0] has an unsatisfied constraint: 1000 == T.Cast(\22int32\22, main0_A_handle_shape[0])\00", align 1
@.str.11 = private constant [176 x i8] c"Assert fail: T.Cast(\22int32\22, main0_A_handle_shape[1]) == 1000, Argument main0.A_handle.shape[1] has an unsatisfied constraint: 1000 == T.Cast(\22int32\22, main0_A_handle_shape[1])\00", align 1
@.str.12 = private constant [170 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, main0_A_handle_strides[1]) and 1000 == T.Cast(\22int32\22, main0_A_handle_strides[0]), main0.A_handle.strides: expected to be compact array\00", align 1
@.str.13 = private constant [197 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(A_handle, 0, 8, \22uint64\22), Argument main0.A_handle.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(A_handle, 0, 8, \22uint64\22)\00", align 1
@.str.14 = private constant [177 x i8] c"Assert fail: T.tvm_struct_get(A_handle, 0, 10, \22int32\22) == 1, Argument main0.A_handle.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(A_handle, 0, 10, \22int32\22)\00", align 1
@.str.15 = private constant [90 x i8] c"Assert fail: not T.isnullptr(A), main0.A_handle is expected to have non-NULL data pointer\00", align 1
@.str.16 = private constant [240 x i8] c"Assert fail: T.tvm_struct_get(B_handle, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(B_handle, 0, 6, \22uint8\22) == T.uint8(64) and T.tvm_struct_get(B_handle, 0, 7, \22uint16\22) == T.uint16(1), main0.B_handle.dtype is expected to be float64\00", align 1
@.str.17 = private constant [176 x i8] c"Assert fail: T.Cast(\22int32\22, main0_B_handle_shape[0]) == 1000, Argument main0.B_handle.shape[0] has an unsatisfied constraint: 1000 == T.Cast(\22int32\22, main0_B_handle_shape[0])\00", align 1
@.str.18 = private constant [176 x i8] c"Assert fail: T.Cast(\22int32\22, main0_B_handle_shape[1]) == 1000, Argument main0.B_handle.shape[1] has an unsatisfied constraint: 1000 == T.Cast(\22int32\22, main0_B_handle_shape[1])\00", align 1
@.str.19 = private constant [170 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, main0_B_handle_strides[1]) and 1000 == T.Cast(\22int32\22, main0_B_handle_strides[0]), main0.B_handle.strides: expected to be compact array\00", align 1
@.str.20 = private constant [197 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(B_handle, 0, 8, \22uint64\22), Argument main0.B_handle.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(B_handle, 0, 8, \22uint64\22)\00", align 1
@.str.21 = private constant [177 x i8] c"Assert fail: T.tvm_struct_get(B_handle, 0, 10, \22int32\22) == 1, Argument main0.B_handle.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(B_handle, 0, 10, \22int32\22)\00", align 1
@.str.22 = private constant [183 x i8] c"Assert fail: dev_id == T.tvm_struct_get(B_handle, 0, 9, \22int32\22), Argument main0.B_handle.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(B_handle, 0, 9, \22int32\22)\00", align 1
@.str.23 = private constant [90 x i8] c"Assert fail: not T.isnullptr(B), main0.B_handle is expected to have non-NULL data pointer\00", align 1
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

common.ret:                                       ; preds = %assert_end48, %assert_fail47, %assert_fail45, %assert_fail43, %assert_fail41, %assert_fail39, %assert_fail35, %assert_fail33, %assert_fail31, %assert_fail29, %assert_fail27, %assert_fail25, %assert_fail23, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail7, %assert_fail5, %assert_fail3, %assert_fail1, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail27 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail33 ], [ -1, %assert_fail35 ], [ -1, %assert_fail39 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail45 ], [ -1, %assert_fail47 ], [ %105, %assert_end48 ]
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
  %.not49 = icmp eq ptr %arg_type_ids, null, !dbg !18
  br i1 %.not49, label %assert_fail3, label %assert_end4, !dbg !18, !prof !23

assert_fail3:                                     ; preds = %assert_end2
  %3 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %3(ptr nonnull @.str.2), !dbg !18
  br label %common.ret

assert_end4:                                      ; preds = %assert_end2
  %A_handle.code = load i32, ptr %arg_type_ids, align 4, !dbg !18, !tbaa !24
  tail call void @llvm.dbg.declare(metadata i32 %A_handle.code, metadata !35, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 %A_handle.code, metadata !35, metadata !DIExpression()), !dbg !18
  switch i32 %A_handle.code, label %assert_fail5 [
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
  %B_handle.code = load i32, ptr %5, align 4, !dbg !18, !tbaa !36
  tail call void @llvm.dbg.declare(metadata i32 %B_handle.code, metadata !38, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 %B_handle.code, metadata !38, metadata !DIExpression()), !dbg !18
  switch i32 %B_handle.code, label %assert_fail7 [
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
  %A_handle = load ptr, ptr %args, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %A_handle, metadata !39, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %A_handle, metadata !39, metadata !DIExpression()), !dbg !18
  %7 = getelementptr inbounds i8, ptr %args, i64 8, !dbg !18
  %B_handle = load ptr, ptr %7, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %B_handle, metadata !40, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %B_handle, metadata !40, metadata !DIExpression()), !dbg !18
  %.not50 = icmp eq ptr %A_handle, null, !dbg !18
  br i1 %.not50, label %assert_fail9, label %assert_end10, !dbg !18, !prof !23

assert_fail9:                                     ; preds = %assert_end8
  %8 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %8(ptr nonnull @.str.5), !dbg !18
  br label %common.ret

assert_end10:                                     ; preds = %assert_end8
  %9 = getelementptr inbounds i8, ptr %A_handle, i64 16, !dbg !18
  %10 = load i32, ptr %9, align 4, !dbg !18
  %11 = icmp eq i32 %10, 2, !dbg !18
  br i1 %11, label %assert_end12, label %assert_fail11, !dbg !18, !prof !19

assert_fail11:                                    ; preds = %assert_end10
  %12 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %12(ptr nonnull @.str.6), !dbg !18
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10
  %13 = getelementptr inbounds i8, ptr %A_handle, i64 24, !dbg !18
  %main0.A_handle.shape = load ptr, ptr %13, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.A_handle.shape, metadata !41, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.A_handle.shape, metadata !41, metadata !DIExpression()), !dbg !18
  %14 = getelementptr inbounds i8, ptr %A_handle, i64 32, !dbg !18
  %main0.A_handle.strides = load ptr, ptr %14, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.A_handle.strides, metadata !44, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.A_handle.strides, metadata !44, metadata !DIExpression()), !dbg !18
  %15 = getelementptr inbounds i8, ptr %A_handle, i64 12, !dbg !18
  %dev_id = load i32, ptr %15, align 4, !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !45, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !45, metadata !DIExpression()), !dbg !18
  %A = load ptr, ptr %A_handle, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %A, metadata !46, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %A, metadata !46, metadata !DIExpression()), !dbg !18
  call void @llvm.assume(i1 true) [ "align"(ptr %A, i64 64) ], !dbg !18
  %.not51 = icmp eq ptr %B_handle, null, !dbg !18
  br i1 %.not51, label %assert_fail13, label %assert_end14, !dbg !18, !prof !23

assert_fail13:                                    ; preds = %assert_end12
  %16 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %16(ptr nonnull @.str.7), !dbg !18
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12
  %17 = getelementptr inbounds i8, ptr %B_handle, i64 16, !dbg !18
  %18 = load i32, ptr %17, align 4, !dbg !18
  %19 = icmp eq i32 %18, 2, !dbg !18
  br i1 %19, label %assert_end16, label %assert_fail15, !dbg !18, !prof !19

assert_fail15:                                    ; preds = %assert_end14
  %20 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %20(ptr nonnull @.str.8), !dbg !18
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14
  %21 = getelementptr inbounds i8, ptr %B_handle, i64 24, !dbg !18
  %main0.B_handle.shape = load ptr, ptr %21, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.B_handle.shape, metadata !49, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.B_handle.shape, metadata !49, metadata !DIExpression()), !dbg !18
  %22 = getelementptr inbounds i8, ptr %B_handle, i64 32, !dbg !18
  %main0.B_handle.strides = load ptr, ptr %22, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.B_handle.strides, metadata !50, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.B_handle.strides, metadata !50, metadata !DIExpression()), !dbg !18
  %B = load ptr, ptr %B_handle, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %B, metadata !51, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %B, metadata !51, metadata !DIExpression()), !dbg !18
  call void @llvm.assume(i1 true) [ "align"(ptr %B, i64 64) ], !dbg !18
  %23 = getelementptr inbounds i8, ptr %A_handle, i64 22, !dbg !18
  %24 = load i16, ptr %23, align 2, !dbg !18
  %25 = icmp eq i16 %24, 1, !dbg !18
  %26 = getelementptr inbounds i8, ptr %A_handle, i64 21, !dbg !18
  %27 = load i8, ptr %26, align 1, !dbg !18
  %28 = icmp eq i8 %27, 64, !dbg !18
  %29 = getelementptr inbounds i8, ptr %A_handle, i64 20, !dbg !18
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
  %35 = load i64, ptr %main0.A_handle.shape, align 8, !dbg !18, !tbaa !52
  %36 = and i64 %35, 4294967295, !dbg !18
  %37 = icmp eq i64 %36, 1000, !dbg !18
  br i1 %37, label %assert_end20, label %assert_fail19, !dbg !18, !prof !19

assert_fail19:                                    ; preds = %assert_end18
  %38 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %38(ptr nonnull @.str.10), !dbg !18
  br label %common.ret

assert_end20:                                     ; preds = %assert_end18
  %39 = getelementptr inbounds i8, ptr %main0.A_handle.shape, i64 8, !dbg !18
  %40 = load i64, ptr %39, align 8, !dbg !18, !tbaa !62
  %41 = and i64 %40, 4294967295, !dbg !18
  %42 = icmp eq i64 %41, 1000, !dbg !18
  br i1 %42, label %assert_end22, label %assert_fail21, !dbg !18, !prof !19

assert_fail21:                                    ; preds = %assert_end20
  %43 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %43(ptr nonnull @.str.11), !dbg !18
  br label %common.ret

assert_end22:                                     ; preds = %assert_end20
  %.not52 = icmp eq ptr %main0.A_handle.strides, null, !dbg !18
  br i1 %.not52, label %if_end, label %if_then, !dbg !18, !prof !23

if_then:                                          ; preds = %assert_end22
  %44 = load i64, ptr %main0.A_handle.strides, align 8, !dbg !18, !tbaa !64
  %45 = and i64 %44, 4294967295, !dbg !18
  %46 = icmp eq i64 %45, 1000, !dbg !18
  %47 = getelementptr inbounds i8, ptr %main0.A_handle.strides, i64 8, !dbg !18
  %48 = load i64, ptr %47, align 8, !dbg !18, !tbaa !74
  %49 = and i64 %48, 4294967295, !dbg !18
  %50 = icmp eq i64 %49, 1, !dbg !18
  %51 = and i1 %46, %50, !dbg !18
  br i1 %51, label %if_end, label %assert_fail23, !dbg !18, !prof !19

if_end:                                           ; preds = %if_then, %assert_end22
  %52 = getelementptr inbounds i8, ptr %A_handle, i64 40, !dbg !18
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
  %57 = getelementptr inbounds i8, ptr %A_handle, i64 8, !dbg !18
  %58 = load i32, ptr %57, align 4, !dbg !18
  %59 = icmp eq i32 %58, 1, !dbg !18
  br i1 %59, label %assert_end28, label %assert_fail27, !dbg !18, !prof !19

assert_fail27:                                    ; preds = %assert_end26
  %60 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %60(ptr nonnull @.str.14), !dbg !18
  br label %common.ret

assert_end28:                                     ; preds = %assert_end26
  %.not53 = icmp eq ptr %A, null, !dbg !18
  br i1 %.not53, label %assert_fail29, label %assert_end30, !dbg !18, !prof !23

assert_fail29:                                    ; preds = %assert_end28
  %61 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %61(ptr nonnull @.str.15), !dbg !18
  br label %common.ret

assert_end30:                                     ; preds = %assert_end28
  %62 = getelementptr inbounds i8, ptr %B_handle, i64 22, !dbg !18
  %63 = load i16, ptr %62, align 2, !dbg !18
  %64 = icmp eq i16 %63, 1, !dbg !18
  %65 = getelementptr inbounds i8, ptr %B_handle, i64 21, !dbg !18
  %66 = load i8, ptr %65, align 1, !dbg !18
  %67 = icmp eq i8 %66, 64, !dbg !18
  %68 = getelementptr inbounds i8, ptr %B_handle, i64 20, !dbg !18
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
  %74 = load i64, ptr %main0.B_handle.shape, align 8, !dbg !18, !tbaa !76
  %75 = and i64 %74, 4294967295, !dbg !18
  %76 = icmp eq i64 %75, 1000, !dbg !18
  br i1 %76, label %assert_end34, label %assert_fail33, !dbg !18, !prof !19

assert_fail33:                                    ; preds = %assert_end32
  %77 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %77(ptr nonnull @.str.17), !dbg !18
  br label %common.ret

assert_end34:                                     ; preds = %assert_end32
  %78 = getelementptr inbounds i8, ptr %main0.B_handle.shape, i64 8, !dbg !18
  %79 = load i64, ptr %78, align 8, !dbg !18, !tbaa !86
  %80 = and i64 %79, 4294967295, !dbg !18
  %81 = icmp eq i64 %80, 1000, !dbg !18
  br i1 %81, label %assert_end36, label %assert_fail35, !dbg !18, !prof !19

assert_fail35:                                    ; preds = %assert_end34
  %82 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %82(ptr nonnull @.str.18), !dbg !18
  br label %common.ret

assert_end36:                                     ; preds = %assert_end34
  %.not54 = icmp eq ptr %main0.B_handle.strides, null, !dbg !18
  br i1 %.not54, label %if_end38, label %if_then37, !dbg !18, !prof !23

if_then37:                                        ; preds = %assert_end36
  %83 = load i64, ptr %main0.B_handle.strides, align 8, !dbg !18, !tbaa !88
  %84 = and i64 %83, 4294967295, !dbg !18
  %85 = icmp eq i64 %84, 1000, !dbg !18
  %86 = getelementptr inbounds i8, ptr %main0.B_handle.strides, i64 8, !dbg !18
  %87 = load i64, ptr %86, align 8, !dbg !18, !tbaa !98
  %88 = and i64 %87, 4294967295, !dbg !18
  %89 = icmp eq i64 %88, 1, !dbg !18
  %90 = and i1 %85, %89, !dbg !18
  br i1 %90, label %if_end38, label %assert_fail39, !dbg !18, !prof !19

if_end38:                                         ; preds = %if_then37, %assert_end36
  %91 = getelementptr inbounds i8, ptr %B_handle, i64 40, !dbg !18
  %92 = load i64, ptr %91, align 8, !dbg !18
  %93 = icmp eq i64 %92, 0, !dbg !18
  br i1 %93, label %assert_end42, label %assert_fail41, !dbg !18, !prof !19

assert_fail39:                                    ; preds = %if_then37
  %94 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %94(ptr nonnull @.str.19), !dbg !18
  br label %common.ret

assert_fail41:                                    ; preds = %if_end38
  %95 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %95(ptr nonnull @.str.20), !dbg !18
  br label %common.ret

assert_end42:                                     ; preds = %if_end38
  %96 = getelementptr inbounds i8, ptr %B_handle, i64 8, !dbg !18
  %97 = load i32, ptr %96, align 4, !dbg !18
  %98 = icmp eq i32 %97, 1, !dbg !18
  br i1 %98, label %assert_end44, label %assert_fail43, !dbg !18, !prof !19

assert_fail43:                                    ; preds = %assert_end42
  %99 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %99(ptr nonnull @.str.21), !dbg !18
  br label %common.ret

assert_end44:                                     ; preds = %assert_end42
  %100 = getelementptr inbounds i8, ptr %B_handle, i64 12, !dbg !18
  %101 = load i32, ptr %100, align 4, !dbg !18
  %102 = icmp eq i32 %dev_id, %101, !dbg !18
  br i1 %102, label %assert_end46, label %assert_fail45, !dbg !18, !prof !19

assert_fail45:                                    ; preds = %assert_end44
  %103 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %103(ptr nonnull @.str.22), !dbg !18
  br label %common.ret

assert_end46:                                     ; preds = %assert_end44
  %.not55 = icmp eq ptr %B, null, !dbg !18
  br i1 %.not55, label %assert_fail47, label %assert_end48, !dbg !18, !prof !23

assert_fail47:                                    ; preds = %assert_end46
  %104 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %104(ptr nonnull @.str.23), !dbg !18
  br label %common.ret

assert_end48:                                     ; preds = %assert_end46
  %105 = tail call fastcc i32 @main0_compute_(ptr nonnull %B, ptr nonnull %A), !dbg !18
  br label %common.ret
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: noinline
define internal fastcc i32 @main0_compute_(ptr noalias align 64 %B, ptr noalias align 64 %A) unnamed_addr #2 !dbg !100 {
entry:
  tail call void @llvm.dbg.value(metadata ptr %B, metadata !104, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.value(metadata ptr %A, metadata !105, metadata !DIExpression()), !dbg !106
  %0 = alloca %closure_loop_parallel_t_1_i_1_fused, align 8, !dbg !106
  %1 = alloca %closure_loop_parallel_t_0_i_fused, align 8, !dbg !106
  store ptr %B, ptr %1, align 8, !dbg !106
  %2 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !106
  store ptr %A, ptr %2, align 8, !dbg !106
  %3 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !dbg !106, !tbaa !20
  %4 = call i32 %3(ptr nonnull @__tvm_parallel_lambda, ptr nonnull %1, i32 0), !dbg !106
  %5 = icmp eq i32 %4, 0, !dbg !106
  br i1 %5, label %call_end, label %common.ret, !dbg !106, !prof !19

common.ret:                                       ; preds = %call_end, %entry
  %common.ret.op = phi i32 [ %4, %entry ], [ %8, %call_end ]
  ret i32 %common.ret.op, !dbg !106

call_end:                                         ; preds = %entry
  store ptr %A, ptr %0, align 8, !dbg !106
  %6 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !106
  store ptr %B, ptr %6, align 8, !dbg !106
  %7 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !dbg !106, !tbaa !20
  %8 = call i32 %7(ptr nonnull @__tvm_parallel_lambda.24, ptr nonnull %0, i32 0), !dbg !106
  br label %common.ret
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define private noundef i32 @__tvm_parallel_lambda(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %B = load ptr, ptr %1, align 8, !dbg !106
  %2 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !106
  %A = load ptr, ptr %2, align 8, !dbg !106
  %3 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !106
  %num_task = load i32, ptr %3, align 4, !dbg !106
  %4 = add nsw i32 %num_task, 19959, !dbg !106
  %5 = sdiv i32 %4, %num_task, !dbg !106
  %6 = add nsw i32 %task_id, 1, !dbg !106
  %7 = mul nsw i32 %5, %6, !dbg !106
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 19960), !dbg !106
  %9 = mul nsw i32 %5, %task_id, !dbg !106
  tail call void @llvm.dbg.declare(metadata i32 %9, metadata !107, metadata !DIExpression()), !dbg !106
  %10 = icmp slt i32 %9, %8, !dbg !106
  br i1 %10, label %for_begin_j.preheader, label %for_end_t_0_i_fused, !dbg !106, !prof !108

for_begin_j.preheader:                            ; preds = %parallel_closure_entry, %for_end_j
  %t_0_i_fused2 = phi i32 [ %29, %for_end_j ], [ %9, %parallel_closure_entry ]
  tail call void @llvm.dbg.declare(metadata i32 %t_0_i_fused2, metadata !107, metadata !DIExpression()), !dbg !106
  %11 = srem i32 %t_0_i_fused2, 998
  %12 = mul nsw i32 %11, 1000
  tail call void @llvm.dbg.declare(metadata i32 0, metadata !109, metadata !DIExpression()), !dbg !106
  %13 = sext i32 %12 to i64, !dbg !106
  br label %vector.body, !dbg !106

vector.body:                                      ; preds = %vector.body, %for_begin_j.preheader
  %index = phi i64 [ 0, %for_begin_j.preheader ], [ %index.next, %vector.body ], !dbg !106
  %14 = add nsw i64 %index, %13, !dbg !106
  %15 = add nsw i64 %14, 1001, !dbg !106
  %16 = getelementptr double, ptr %A, i64 %14, !dbg !106
  %17 = getelementptr i8, ptr %16, i64 8, !dbg !106
  %wide.load = load <2 x double>, ptr %17, align 8, !dbg !106, !tbaa !110
  %18 = getelementptr i8, ptr %16, i64 16008, !dbg !106
  %wide.load7 = load <2 x double>, ptr %18, align 8, !dbg !106, !tbaa !110
  %19 = getelementptr i8, ptr %16, i64 8016, !dbg !106
  %wide.load8 = load <2 x double>, ptr %19, align 8, !dbg !106, !tbaa !110
  %20 = getelementptr i8, ptr %16, i64 8000, !dbg !106
  %wide.load9 = load <2 x double>, ptr %20, align 8, !dbg !106, !tbaa !110
  %21 = getelementptr inbounds double, ptr %A, i64 %15, !dbg !106
  %wide.load10 = load <2 x double>, ptr %21, align 8, !dbg !106, !tbaa !110
  %22 = fadd <2 x double> %wide.load9, %wide.load10, !dbg !106
  %23 = fadd <2 x double> %wide.load8, %22, !dbg !106
  %24 = fadd <2 x double> %wide.load7, %23, !dbg !106
  %25 = fadd <2 x double> %wide.load, %24, !dbg !106
  %26 = fmul <2 x double> %25, <double 2.000000e-01, double 2.000000e-01>, !dbg !106
  %27 = getelementptr inbounds double, ptr %B, i64 %15, !dbg !106
  store <2 x double> %26, ptr %27, align 8, !dbg !106, !tbaa !112
  %index.next = add nuw i64 %index, 2, !dbg !106
  %28 = icmp eq i64 %index.next, 998, !dbg !106
  br i1 %28, label %for_end_j, label %vector.body, !dbg !106, !prof !114, !llvm.loop !115

for_end_t_0_i_fused:                              ; preds = %for_end_j, %parallel_closure_entry
  ret i32 0, !dbg !106

for_end_j:                                        ; preds = %vector.body
  %29 = add nsw i32 %t_0_i_fused2, 1, !dbg !106
  tail call void @llvm.dbg.declare(metadata i32 %29, metadata !107, metadata !DIExpression()), !dbg !106
  %exitcond6.not = icmp eq i32 %29, %8, !dbg !106
  br i1 %exitcond6.not, label %for_end_t_0_i_fused, label %for_begin_j.preheader, !dbg !106, !prof !118
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define private noundef i32 @__tvm_parallel_lambda.24(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %A = load ptr, ptr %1, align 8, !dbg !106
  %2 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !106
  %B = load ptr, ptr %2, align 8, !dbg !106
  %3 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !106
  %num_task = load i32, ptr %3, align 4, !dbg !106
  %4 = add nsw i32 %num_task, 19959, !dbg !106
  %5 = sdiv i32 %4, %num_task, !dbg !106
  %6 = add nsw i32 %task_id, 1, !dbg !106
  %7 = mul nsw i32 %5, %6, !dbg !106
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 19960), !dbg !106
  %9 = mul nsw i32 %5, %task_id, !dbg !106
  tail call void @llvm.dbg.declare(metadata i32 %9, metadata !119, metadata !DIExpression()), !dbg !106
  %10 = icmp slt i32 %9, %8, !dbg !106
  br i1 %10, label %for_begin_j_1.preheader, label %for_end_t_1_i_1_fused, !dbg !106, !prof !108

for_begin_j_1.preheader:                          ; preds = %parallel_closure_entry, %for_body_j_1
  %t_1_i_1_fused2 = phi i32 [ %39, %for_body_j_1 ], [ %9, %parallel_closure_entry ]
  tail call void @llvm.dbg.declare(metadata i32 %t_1_i_1_fused2, metadata !119, metadata !DIExpression()), !dbg !106
  %11 = srem i32 %t_1_i_1_fused2, 998
  %12 = mul nsw i32 %11, 1000
  %13 = add nsw i32 %12, 1001
  tail call void @llvm.dbg.declare(metadata i32 0, metadata !120, metadata !DIExpression()), !dbg !106
  %14 = sext i32 %13 to i64, !dbg !106
  br label %vector.body, !dbg !106

vector.body:                                      ; preds = %vector.body, %for_begin_j_1.preheader
  %index = phi i64 [ 0, %for_begin_j_1.preheader ], [ %index.next.2, %vector.body ], !dbg !106
  %15 = add nsw i64 %index, %14, !dbg !106
  %16 = getelementptr inbounds double, ptr %B, i64 %15, !dbg !106
  %17 = getelementptr inbounds i8, ptr %16, i64 16, !dbg !106
  %wide.load = load <2 x double>, ptr %16, align 8, !dbg !106, !tbaa !112
  %wide.load9 = load <2 x double>, ptr %17, align 8, !dbg !106, !tbaa !112
  %18 = getelementptr inbounds double, ptr %A, i64 %15, !dbg !106
  %19 = getelementptr inbounds i8, ptr %18, i64 16, !dbg !106
  store <2 x double> %wide.load, ptr %18, align 8, !dbg !106, !tbaa !110
  store <2 x double> %wide.load9, ptr %19, align 8, !dbg !106, !tbaa !110
  %index.next = add nuw nsw i64 %index, 4, !dbg !106
  %20 = add nsw i64 %index.next, %14, !dbg !106
  %21 = getelementptr inbounds double, ptr %B, i64 %20, !dbg !106
  %22 = getelementptr inbounds i8, ptr %21, i64 16, !dbg !106
  %wide.load.1 = load <2 x double>, ptr %21, align 8, !dbg !106, !tbaa !112
  %wide.load9.1 = load <2 x double>, ptr %22, align 8, !dbg !106, !tbaa !112
  %23 = getelementptr inbounds double, ptr %A, i64 %20, !dbg !106
  %24 = getelementptr inbounds i8, ptr %23, i64 16, !dbg !106
  store <2 x double> %wide.load.1, ptr %23, align 8, !dbg !106, !tbaa !110
  store <2 x double> %wide.load9.1, ptr %24, align 8, !dbg !106, !tbaa !110
  %index.next.1 = add nuw nsw i64 %index, 8, !dbg !106
  %25 = add nsw i64 %index.next.1, %14, !dbg !106
  %26 = getelementptr inbounds double, ptr %B, i64 %25, !dbg !106
  %27 = getelementptr inbounds i8, ptr %26, i64 16, !dbg !106
  %wide.load.2 = load <2 x double>, ptr %26, align 8, !dbg !106, !tbaa !112
  %wide.load9.2 = load <2 x double>, ptr %27, align 8, !dbg !106, !tbaa !112
  %28 = getelementptr inbounds double, ptr %A, i64 %25, !dbg !106
  %29 = getelementptr inbounds i8, ptr %28, i64 16, !dbg !106
  store <2 x double> %wide.load.2, ptr %28, align 8, !dbg !106, !tbaa !110
  store <2 x double> %wide.load9.2, ptr %29, align 8, !dbg !106, !tbaa !110
  %index.next.2 = add nuw nsw i64 %index, 12, !dbg !106
  %30 = icmp eq i64 %index.next.2, 996, !dbg !106
  br i1 %30, label %for_body_j_1, label %vector.body, !dbg !106, !prof !121, !llvm.loop !122

for_end_t_1_i_1_fused:                            ; preds = %for_body_j_1, %parallel_closure_entry
  ret i32 0, !dbg !106

for_body_j_1:                                     ; preds = %vector.body
  tail call void @llvm.dbg.declare(metadata i64 996, metadata !120, metadata !DIExpression()), !dbg !106
  %31 = add nsw i64 %14, 996, !dbg !106
  tail call void @llvm.dbg.declare(metadata i64 %31, metadata !123, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.declare(metadata i64 %31, metadata !123, metadata !DIExpression()), !dbg !106
  %32 = getelementptr inbounds double, ptr %B, i64 %31, !dbg !106
  %33 = load double, ptr %32, align 8, !dbg !106, !tbaa !112
  %34 = getelementptr inbounds double, ptr %A, i64 %31, !dbg !106
  store double %33, ptr %34, align 8, !dbg !106, !tbaa !110
  tail call void @llvm.dbg.declare(metadata i64 997, metadata !120, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.declare(metadata i64 997, metadata !120, metadata !DIExpression()), !dbg !106
  %35 = add nsw i64 %14, 997, !dbg !106
  tail call void @llvm.dbg.declare(metadata i64 %35, metadata !123, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.declare(metadata i64 %35, metadata !123, metadata !DIExpression()), !dbg !106
  %36 = getelementptr inbounds double, ptr %B, i64 %35, !dbg !106
  %37 = load double, ptr %36, align 8, !dbg !106, !tbaa !112
  %38 = getelementptr inbounds double, ptr %A, i64 %35, !dbg !106
  store double %37, ptr %38, align 8, !dbg !106, !tbaa !110
  tail call void @llvm.dbg.declare(metadata i64 998, metadata !120, metadata !DIExpression()), !dbg !106
  %39 = add nsw i32 %t_1_i_1_fused2, 1, !dbg !106
  tail call void @llvm.dbg.declare(metadata i32 %39, metadata !119, metadata !DIExpression()), !dbg !106
  %exitcond8.not = icmp eq i32 %39, %8, !dbg !106
  br i1 %exitcond8.not, label %for_end_t_1_i_1_fused, label %for_begin_j_1.preheader, !dbg !106, !prof !118
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
!25 = !{!"0x45e0510.w4.b0", !26, i64 0}
!26 = !{!"0x45e0510.w8.b0", !27, i64 0}
!27 = !{!"0x45e0510.w16.b0", !28, i64 0}
!28 = !{!"0x45e0510.w32.b0", !29, i64 0}
!29 = !{!"0x45e0510.w64.b0", !30, i64 0}
!30 = !{!"0x45e0510.w128.b0", !31, i64 0}
!31 = !{!"0x45e0510.w256.b0", !32, i64 0}
!32 = !{!"0x45e0510.w512.b0", !33, i64 0}
!33 = !{!"0x45e0510.w1024.b0", !34, i64 0}
!34 = !{!"0x45e0510", !22, i64 0}
!35 = !DILocalVariable(name: "A_handle.code", scope: !5, file: !1, type: !8)
!36 = !{!37, !37, i64 0}
!37 = !{!"0x45e0510.w4.b4", !26, i64 0}
!38 = !DILocalVariable(name: "B_handle.code", scope: !5, file: !1, type: !8)
!39 = !DILocalVariable(name: "A_handle", scope: !5, file: !1, type: !9)
!40 = !DILocalVariable(name: "B_handle", scope: !5, file: !1, type: !9)
!41 = !DILocalVariable(name: "main0.A_handle.shape", scope: !5, file: !1, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43)
!43 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!44 = !DILocalVariable(name: "main0.A_handle.strides", scope: !5, file: !1, type: !42)
!45 = !DILocalVariable(name: "dev_id", scope: !5, file: !1, type: !8)
!46 = !DILocalVariable(name: "A", scope: !5, file: !1, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48)
!48 = !DIBasicType(name: "float64", size: 64, encoding: DW_ATE_float)
!49 = !DILocalVariable(name: "main0.B_handle.shape", scope: !5, file: !1, type: !42)
!50 = !DILocalVariable(name: "main0.B_handle.strides", scope: !5, file: !1, type: !42)
!51 = !DILocalVariable(name: "B", scope: !5, file: !1, type: !47)
!52 = !{!53, !53, i64 0}
!53 = !{!"0x45e0470.w8.b0", !54, i64 0}
!54 = !{!"0x45e0470.w16.b0", !55, i64 0}
!55 = !{!"0x45e0470.w32.b0", !56, i64 0}
!56 = !{!"0x45e0470.w64.b0", !57, i64 0}
!57 = !{!"0x45e0470.w128.b0", !58, i64 0}
!58 = !{!"0x45e0470.w256.b0", !59, i64 0}
!59 = !{!"0x45e0470.w512.b0", !60, i64 0}
!60 = !{!"0x45e0470.w1024.b0", !61, i64 0}
!61 = !{!"0x45e0470", !22, i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"0x45e0470.w8.b8", !54, i64 0}
!64 = !{!65, !65, i64 0}
!65 = !{!"0x45dd440.w8.b0", !66, i64 0}
!66 = !{!"0x45dd440.w16.b0", !67, i64 0}
!67 = !{!"0x45dd440.w32.b0", !68, i64 0}
!68 = !{!"0x45dd440.w64.b0", !69, i64 0}
!69 = !{!"0x45dd440.w128.b0", !70, i64 0}
!70 = !{!"0x45dd440.w256.b0", !71, i64 0}
!71 = !{!"0x45dd440.w512.b0", !72, i64 0}
!72 = !{!"0x45dd440.w1024.b0", !73, i64 0}
!73 = !{!"0x45dd440", !22, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"0x45dd440.w8.b8", !66, i64 0}
!76 = !{!77, !77, i64 0}
!77 = !{!"0x4626fe0.w8.b0", !78, i64 0}
!78 = !{!"0x4626fe0.w16.b0", !79, i64 0}
!79 = !{!"0x4626fe0.w32.b0", !80, i64 0}
!80 = !{!"0x4626fe0.w64.b0", !81, i64 0}
!81 = !{!"0x4626fe0.w128.b0", !82, i64 0}
!82 = !{!"0x4626fe0.w256.b0", !83, i64 0}
!83 = !{!"0x4626fe0.w512.b0", !84, i64 0}
!84 = !{!"0x4626fe0.w1024.b0", !85, i64 0}
!85 = !{!"0x4626fe0", !22, i64 0}
!86 = !{!87, !87, i64 0}
!87 = !{!"0x4626fe0.w8.b8", !78, i64 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"0x46276d0.w8.b0", !90, i64 0}
!90 = !{!"0x46276d0.w16.b0", !91, i64 0}
!91 = !{!"0x46276d0.w32.b0", !92, i64 0}
!92 = !{!"0x46276d0.w64.b0", !93, i64 0}
!93 = !{!"0x46276d0.w128.b0", !94, i64 0}
!94 = !{!"0x46276d0.w256.b0", !95, i64 0}
!95 = !{!"0x46276d0.w512.b0", !96, i64 0}
!96 = !{!"0x46276d0.w1024.b0", !97, i64 0}
!97 = !{!"0x46276d0", !22, i64 0}
!98 = !{!99, !99, i64 0}
!99 = !{!"0x46276d0.w8.b8", !90, i64 0}
!100 = distinct !DISubprogram(name: "main0_compute_", scope: !1, file: !1, type: !101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !103)
!101 = !DISubroutineType(types: !102)
!102 = !{!8, !47, !47}
!103 = !{!104, !105}
!104 = !DILocalVariable(name: "B", arg: 1, scope: !100, file: !1, type: !47)
!105 = !DILocalVariable(name: "A", arg: 2, scope: !100, file: !1, type: !47)
!106 = !DILocation(line: 0, scope: !100)
!107 = !DILocalVariable(name: "t_0_i_fused", scope: !100, file: !1, type: !8)
!108 = !{!"branch_weights", i32 127, i32 1}
!109 = !DILocalVariable(name: "j", scope: !100, file: !1, type: !8)
!110 = !{!111, !111, i64 0}
!111 = !{!"0x41b42c0", !22, i64 0}
!112 = !{!113, !113, i64 0}
!113 = !{!"0x4230820", !22, i64 0}
!114 = !{!"branch_weights", i32 1, i32 524287}
!115 = distinct !{!115, !116, !117}
!116 = !{!"llvm.loop.isvectorized", i32 1}
!117 = !{!"llvm.loop.unroll.runtime.disable"}
!118 = !{!"branch_weights", i32 127, i32 134217601}
!119 = !DILocalVariable(name: "t_1_i_1_fused", scope: !100, file: !1, type: !8)
!120 = !DILocalVariable(name: "j_1", scope: !100, file: !1, type: !8)
!121 = !{!"branch_weights", i32 1, i32 87380}
!122 = distinct !{!122, !116, !117}
!123 = !DILocalVariable(name: "cse_var_3", scope: !100, file: !1, type: !8)
