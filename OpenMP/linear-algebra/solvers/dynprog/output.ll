; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%closure_loop_parallel_iter_4_fused_0 = type { ptr, ptr }
%closure_loop_parallel_iter_3_fused = type { ptr, ptr, ptr }
%closure_loop_parallel_iter_2_fused = type { ptr, ptr }
%closure_loop_parallel_iter_1_fused = type { ptr }
%closure_loop_parallel_iter_0_i_j_fused_0 = type { ptr }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global ptr null, align 8
@__TVMBackendParallelLaunch = linkonce dllexport local_unnamed_addr global ptr null, align 8
@.str = private constant [56 x i8] c"Assert fail: num_args == 4, main0: num_args should be 4\00", align 1
@.str.1 = private constant [74 x i8] c"Assert fail: not T.isnullptr(args), main0: TVMValue* arg pointer was NULL\00", align 1
@.str.2 = private constant [76 x i8] c"Assert fail: not T.isnullptr(arg_type_ids), main0: int* type_codes was NULL\00", align 1
@.str.3 = private constant [135 x i8] c"Assert fail: W_handle_code == 3 or W_handle_code == 13 or W_handle_code == 7 or W_handle_code == 4, main0: Expect arg[0] to be pointer\00", align 1
@.str.4 = private constant [135 x i8] c"Assert fail: c_handle_code == 3 or c_handle_code == 13 or c_handle_code == 7 or c_handle_code == 4, main0: Expect arg[1] to be pointer\00", align 1
@.str.5 = private constant [151 x i8] c"Assert fail: out_l_handle_code == 3 or out_l_handle_code == 13 or out_l_handle_code == 7 or out_l_handle_code == 4, main0: Expect arg[2] to be pointer\00", align 1
@.str.6 = private constant [151 x i8] c"Assert fail: sum_c_handle_code == 3 or sum_c_handle_code == 13 or sum_c_handle_code == 7 or sum_c_handle_code == 4, main0: Expect arg[3] to be pointer\00", align 1
@.str.7 = private constant [102 x i8] c"Assert fail: not T.isnullptr(W_handle), main0.W_handle is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.8 = private constant [104 x i8] c"Assert fail: 2 == T.tvm_struct_get(W_handle, 0, 4, \22int32\22), main0.W_handle.ndim is expected to equal 2\00", align 1
@.str.9 = private constant [102 x i8] c"Assert fail: not T.isnullptr(c_handle), main0.c_handle is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.10 = private constant [104 x i8] c"Assert fail: 2 == T.tvm_struct_get(c_handle, 0, 4, \22int32\22), main0.c_handle.ndim is expected to equal 2\00", align 1
@.str.11 = private constant [110 x i8] c"Assert fail: not T.isnullptr(out_l_handle), main0.out_l_handle is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.12 = private constant [112 x i8] c"Assert fail: 1 == T.tvm_struct_get(out_l_handle, 0, 4, \22int32\22), main0.out_l_handle.ndim is expected to equal 1\00", align 1
@.str.13 = private constant [110 x i8] c"Assert fail: not T.isnullptr(sum_c_handle), main0.sum_c_handle is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.14 = private constant [112 x i8] c"Assert fail: 3 == T.tvm_struct_get(sum_c_handle, 0, 4, \22int32\22), main0.sum_c_handle.ndim is expected to equal 3\00", align 1
@.str.15 = private constant [238 x i8] c"Assert fail: T.tvm_struct_get(W_handle, 0, 5, \22uint8\22) == T.uint8(0) and T.tvm_struct_get(W_handle, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(W_handle, 0, 7, \22uint16\22) == T.uint16(1), main0.W_handle.dtype is expected to be int32\00", align 1
@.str.16 = private constant [172 x i8] c"Assert fail: T.Cast(\22int32\22, main0_W_handle_shape[0]) == 50, Argument main0.W_handle.shape[0] has an unsatisfied constraint: 50 == T.Cast(\22int32\22, main0_W_handle_shape[0])\00", align 1
@.str.17 = private constant [172 x i8] c"Assert fail: T.Cast(\22int32\22, main0_W_handle_shape[1]) == 50, Argument main0.W_handle.shape[1] has an unsatisfied constraint: 50 == T.Cast(\22int32\22, main0_W_handle_shape[1])\00", align 1
@.str.18 = private constant [168 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, main0_W_handle_strides[1]) and 50 == T.Cast(\22int32\22, main0_W_handle_strides[0]), main0.W_handle.strides: expected to be compact array\00", align 1
@.str.19 = private constant [197 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(W_handle, 0, 8, \22uint64\22), Argument main0.W_handle.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(W_handle, 0, 8, \22uint64\22)\00", align 1
@.str.20 = private constant [177 x i8] c"Assert fail: T.tvm_struct_get(W_handle, 0, 10, \22int32\22) == 1, Argument main0.W_handle.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(W_handle, 0, 10, \22int32\22)\00", align 1
@.str.21 = private constant [90 x i8] c"Assert fail: not T.isnullptr(W), main0.W_handle is expected to have non-NULL data pointer\00", align 1
@.str.22 = private constant [238 x i8] c"Assert fail: T.tvm_struct_get(c_handle, 0, 5, \22uint8\22) == T.uint8(0) and T.tvm_struct_get(c_handle, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(c_handle, 0, 7, \22uint16\22) == T.uint16(1), main0.c_handle.dtype is expected to be int32\00", align 1
@.str.23 = private constant [172 x i8] c"Assert fail: T.Cast(\22int32\22, main0_c_handle_shape[0]) == 50, Argument main0.c_handle.shape[0] has an unsatisfied constraint: 50 == T.Cast(\22int32\22, main0_c_handle_shape[0])\00", align 1
@.str.24 = private constant [172 x i8] c"Assert fail: T.Cast(\22int32\22, main0_c_handle_shape[1]) == 50, Argument main0.c_handle.shape[1] has an unsatisfied constraint: 50 == T.Cast(\22int32\22, main0_c_handle_shape[1])\00", align 1
@.str.25 = private constant [168 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, main0_c_handle_strides[1]) and 50 == T.Cast(\22int32\22, main0_c_handle_strides[0]), main0.c_handle.strides: expected to be compact array\00", align 1
@.str.26 = private constant [197 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(c_handle, 0, 8, \22uint64\22), Argument main0.c_handle.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(c_handle, 0, 8, \22uint64\22)\00", align 1
@.str.27 = private constant [177 x i8] c"Assert fail: T.tvm_struct_get(c_handle, 0, 10, \22int32\22) == 1, Argument main0.c_handle.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(c_handle, 0, 10, \22int32\22)\00", align 1
@.str.28 = private constant [183 x i8] c"Assert fail: dev_id == T.tvm_struct_get(c_handle, 0, 9, \22int32\22), Argument main0.c_handle.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(c_handle, 0, 9, \22int32\22)\00", align 1
@.str.29 = private constant [90 x i8] c"Assert fail: not T.isnullptr(c), main0.c_handle is expected to have non-NULL data pointer\00", align 1
@.str.30 = private constant [254 x i8] c"Assert fail: T.tvm_struct_get(out_l_handle, 0, 5, \22uint8\22) == T.uint8(0) and T.tvm_struct_get(out_l_handle, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(out_l_handle, 0, 7, \22uint16\22) == T.uint16(1), main0.out_l_handle.dtype is expected to be int32\00", align 1
@.str.31 = private constant [182 x i8] c"Assert fail: T.Cast(\22int32\22, main0_out_l_handle_shape[0]) == 1, Argument main0.out_l_handle.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, main0_out_l_handle_shape[0])\00", align 1
@.str.33 = private constant [209 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(out_l_handle, 0, 8, \22uint64\22), Argument main0.out_l_handle.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(out_l_handle, 0, 8, \22uint64\22)\00", align 1
@.str.34 = private constant [189 x i8] c"Assert fail: T.tvm_struct_get(out_l_handle, 0, 10, \22int32\22) == 1, Argument main0.out_l_handle.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(out_l_handle, 0, 10, \22int32\22)\00", align 1
@.str.35 = private constant [195 x i8] c"Assert fail: dev_id == T.tvm_struct_get(out_l_handle, 0, 9, \22int32\22), Argument main0.out_l_handle.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(out_l_handle, 0, 9, \22int32\22)\00", align 1
@.str.36 = private constant [98 x i8] c"Assert fail: not T.isnullptr(out_l), main0.out_l_handle is expected to have non-NULL data pointer\00", align 1
@.str.37 = private constant [254 x i8] c"Assert fail: T.tvm_struct_get(sum_c_handle, 0, 5, \22uint8\22) == T.uint8(0) and T.tvm_struct_get(sum_c_handle, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(sum_c_handle, 0, 7, \22uint16\22) == T.uint16(1), main0.sum_c_handle.dtype is expected to be int32\00", align 1
@.str.38 = private constant [184 x i8] c"Assert fail: T.Cast(\22int32\22, main0_sum_c_handle_shape[0]) == 50, Argument main0.sum_c_handle.shape[0] has an unsatisfied constraint: 50 == T.Cast(\22int32\22, main0_sum_c_handle_shape[0])\00", align 1
@.str.39 = private constant [184 x i8] c"Assert fail: T.Cast(\22int32\22, main0_sum_c_handle_shape[1]) == 50, Argument main0.sum_c_handle.shape[1] has an unsatisfied constraint: 50 == T.Cast(\22int32\22, main0_sum_c_handle_shape[1])\00", align 1
@.str.40 = private constant [184 x i8] c"Assert fail: T.Cast(\22int32\22, main0_sum_c_handle_shape[2]) == 50, Argument main0.sum_c_handle.shape[2] has an unsatisfied constraint: 50 == T.Cast(\22int32\22, main0_sum_c_handle_shape[2])\00", align 1
@.str.41 = private constant [239 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, main0_sum_c_handle_strides[2]) and 50 == T.Cast(\22int32\22, main0_sum_c_handle_strides[1]) and 2500 == T.Cast(\22int32\22, main0_sum_c_handle_strides[0]), main0.sum_c_handle.strides: expected to be compact array\00", align 1
@.str.42 = private constant [209 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(sum_c_handle, 0, 8, \22uint64\22), Argument main0.sum_c_handle.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(sum_c_handle, 0, 8, \22uint64\22)\00", align 1
@.str.43 = private constant [189 x i8] c"Assert fail: T.tvm_struct_get(sum_c_handle, 0, 10, \22int32\22) == 1, Argument main0.sum_c_handle.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(sum_c_handle, 0, 10, \22int32\22)\00", align 1
@.str.44 = private constant [195 x i8] c"Assert fail: dev_id == T.tvm_struct_get(sum_c_handle, 0, 9, \22int32\22), Argument main0.sum_c_handle.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(sum_c_handle, 0, 9, \22int32\22)\00", align 1
@.str.45 = private constant [98 x i8] c"Assert fail: not T.isnullptr(sum_c), main0.sum_c_handle is expected to have non-NULL data pointer\00", align 1
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
  %0 = icmp eq i32 %num_args, 4, !dbg !18
  br i1 %0, label %assert_end, label %assert_fail, !dbg !18, !prof !19

common.ret:                                       ; preds = %assert_end96, %assert_fail95, %assert_fail93, %assert_fail91, %assert_fail89, %assert_fail87, %assert_fail83, %assert_fail81, %assert_fail79, %assert_fail77, %assert_fail75, %assert_fail73, %assert_fail71, %assert_fail69, %assert_fail63, %assert_fail61, %assert_fail59, %assert_fail57, %assert_fail55, %assert_fail53, %assert_fail51, %assert_fail47, %assert_fail45, %assert_fail43, %assert_fail41, %assert_fail39, %assert_fail37, %assert_fail35, %assert_fail33, %assert_fail31, %assert_fail29, %assert_fail27, %assert_fail25, %assert_fail23, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail7, %assert_fail5, %assert_fail3, %assert_fail1, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail27 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail33 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail39 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail45 ], [ -1, %assert_fail47 ], [ -1, %assert_fail51 ], [ -1, %assert_fail53 ], [ -1, %assert_fail55 ], [ -1, %assert_fail57 ], [ -1, %assert_fail59 ], [ -1, %assert_fail61 ], [ -1, %assert_fail63 ], [ -1, %assert_fail69 ], [ -1, %assert_fail71 ], [ -1, %assert_fail73 ], [ -1, %assert_fail75 ], [ -1, %assert_fail77 ], [ -1, %assert_fail79 ], [ -1, %assert_fail81 ], [ -1, %assert_fail83 ], [ -1, %assert_fail87 ], [ -1, %assert_fail89 ], [ -1, %assert_fail91 ], [ -1, %assert_fail93 ], [ -1, %assert_fail95 ], [ %206, %assert_end96 ]
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
  %.not97 = icmp eq ptr %arg_type_ids, null, !dbg !18
  br i1 %.not97, label %assert_fail3, label %assert_end4, !dbg !18, !prof !23

assert_fail3:                                     ; preds = %assert_end2
  %3 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %3(ptr nonnull @.str.2), !dbg !18
  br label %common.ret

assert_end4:                                      ; preds = %assert_end2
  %W_handle.code = load i32, ptr %arg_type_ids, align 4, !dbg !18, !tbaa !24
  tail call void @llvm.dbg.declare(metadata i32 %W_handle.code, metadata !35, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 %W_handle.code, metadata !35, metadata !DIExpression()), !dbg !18
  switch i32 %W_handle.code, label %assert_fail5 [
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
  %c_handle.code = load i32, ptr %5, align 4, !dbg !18, !tbaa !36
  tail call void @llvm.dbg.declare(metadata i32 %c_handle.code, metadata !38, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 %c_handle.code, metadata !38, metadata !DIExpression()), !dbg !18
  switch i32 %c_handle.code, label %assert_fail7 [
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
  %7 = getelementptr inbounds i8, ptr %arg_type_ids, i64 8, !dbg !18
  %out_l_handle.code = load i32, ptr %7, align 4, !dbg !18, !tbaa !39
  tail call void @llvm.dbg.declare(metadata i32 %out_l_handle.code, metadata !42, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 %out_l_handle.code, metadata !42, metadata !DIExpression()), !dbg !18
  switch i32 %out_l_handle.code, label %assert_fail9 [
    i32 13, label %assert_end10
    i32 7, label %assert_end10
    i32 4, label %assert_end10
    i32 3, label %assert_end10
  ], !dbg !18

assert_fail9:                                     ; preds = %assert_end8
  %8 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %8(ptr nonnull @.str.5), !dbg !18
  br label %common.ret

assert_end10:                                     ; preds = %assert_end8, %assert_end8, %assert_end8, %assert_end8
  %9 = getelementptr inbounds i8, ptr %arg_type_ids, i64 12, !dbg !18
  %sum_c_handle.code = load i32, ptr %9, align 4, !dbg !18, !tbaa !43
  tail call void @llvm.dbg.declare(metadata i32 %sum_c_handle.code, metadata !45, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 %sum_c_handle.code, metadata !45, metadata !DIExpression()), !dbg !18
  switch i32 %sum_c_handle.code, label %assert_fail11 [
    i32 13, label %assert_end12
    i32 7, label %assert_end12
    i32 4, label %assert_end12
    i32 3, label %assert_end12
  ], !dbg !18

assert_fail11:                                    ; preds = %assert_end10
  %10 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %10(ptr nonnull @.str.6), !dbg !18
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10, %assert_end10, %assert_end10, %assert_end10
  %W_handle = load ptr, ptr %args, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %W_handle, metadata !46, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %W_handle, metadata !46, metadata !DIExpression()), !dbg !18
  %11 = getelementptr inbounds i8, ptr %args, i64 8, !dbg !18
  %c_handle = load ptr, ptr %11, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %c_handle, metadata !47, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %c_handle, metadata !47, metadata !DIExpression()), !dbg !18
  %12 = getelementptr inbounds i8, ptr %args, i64 16, !dbg !18
  %out_l_handle = load ptr, ptr %12, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %out_l_handle, metadata !48, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %out_l_handle, metadata !48, metadata !DIExpression()), !dbg !18
  %13 = getelementptr inbounds i8, ptr %args, i64 24, !dbg !18
  %sum_c_handle = load ptr, ptr %13, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %sum_c_handle, metadata !49, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %sum_c_handle, metadata !49, metadata !DIExpression()), !dbg !18
  %.not98 = icmp eq ptr %W_handle, null, !dbg !18
  br i1 %.not98, label %assert_fail13, label %assert_end14, !dbg !18, !prof !23

assert_fail13:                                    ; preds = %assert_end12
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %14(ptr nonnull @.str.7), !dbg !18
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12
  %15 = getelementptr inbounds i8, ptr %W_handle, i64 16, !dbg !18
  %16 = load i32, ptr %15, align 4, !dbg !18
  %17 = icmp eq i32 %16, 2, !dbg !18
  br i1 %17, label %assert_end16, label %assert_fail15, !dbg !18, !prof !19

assert_fail15:                                    ; preds = %assert_end14
  %18 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %18(ptr nonnull @.str.8), !dbg !18
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14
  %19 = getelementptr inbounds i8, ptr %W_handle, i64 24, !dbg !18
  %main0.W_handle.shape = load ptr, ptr %19, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.W_handle.shape, metadata !50, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.W_handle.shape, metadata !50, metadata !DIExpression()), !dbg !18
  %20 = getelementptr inbounds i8, ptr %W_handle, i64 32, !dbg !18
  %main0.W_handle.strides = load ptr, ptr %20, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.W_handle.strides, metadata !53, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.W_handle.strides, metadata !53, metadata !DIExpression()), !dbg !18
  %21 = getelementptr inbounds i8, ptr %W_handle, i64 12, !dbg !18
  %dev_id = load i32, ptr %21, align 4, !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !54, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !54, metadata !DIExpression()), !dbg !18
  %W = load ptr, ptr %W_handle, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %W, metadata !55, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %W, metadata !55, metadata !DIExpression()), !dbg !18
  call void @llvm.assume(i1 true) [ "align"(ptr %W, i64 64) ], !dbg !18
  %.not99 = icmp eq ptr %c_handle, null, !dbg !18
  br i1 %.not99, label %assert_fail17, label %assert_end18, !dbg !18, !prof !23

assert_fail17:                                    ; preds = %assert_end16
  %22 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %22(ptr nonnull @.str.9), !dbg !18
  br label %common.ret

assert_end18:                                     ; preds = %assert_end16
  %23 = getelementptr inbounds i8, ptr %c_handle, i64 16, !dbg !18
  %24 = load i32, ptr %23, align 4, !dbg !18
  %25 = icmp eq i32 %24, 2, !dbg !18
  br i1 %25, label %assert_end20, label %assert_fail19, !dbg !18, !prof !19

assert_fail19:                                    ; preds = %assert_end18
  %26 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %26(ptr nonnull @.str.10), !dbg !18
  br label %common.ret

assert_end20:                                     ; preds = %assert_end18
  %27 = getelementptr inbounds i8, ptr %c_handle, i64 24, !dbg !18
  %main0.c_handle.shape = load ptr, ptr %27, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.c_handle.shape, metadata !56, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.c_handle.shape, metadata !56, metadata !DIExpression()), !dbg !18
  %28 = getelementptr inbounds i8, ptr %c_handle, i64 32, !dbg !18
  %main0.c_handle.strides = load ptr, ptr %28, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.c_handle.strides, metadata !57, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.c_handle.strides, metadata !57, metadata !DIExpression()), !dbg !18
  %c = load ptr, ptr %c_handle, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !58, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !58, metadata !DIExpression()), !dbg !18
  call void @llvm.assume(i1 true) [ "align"(ptr %c, i64 64) ], !dbg !18
  %.not100 = icmp eq ptr %out_l_handle, null, !dbg !18
  br i1 %.not100, label %assert_fail21, label %assert_end22, !dbg !18, !prof !23

assert_fail21:                                    ; preds = %assert_end20
  %29 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %29(ptr nonnull @.str.11), !dbg !18
  br label %common.ret

assert_end22:                                     ; preds = %assert_end20
  %30 = getelementptr inbounds i8, ptr %out_l_handle, i64 16, !dbg !18
  %31 = load i32, ptr %30, align 4, !dbg !18
  %32 = icmp eq i32 %31, 1, !dbg !18
  br i1 %32, label %assert_end24, label %assert_fail23, !dbg !18, !prof !19

assert_fail23:                                    ; preds = %assert_end22
  %33 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %33(ptr nonnull @.str.12), !dbg !18
  br label %common.ret

assert_end24:                                     ; preds = %assert_end22
  %34 = getelementptr inbounds i8, ptr %out_l_handle, i64 24, !dbg !18
  %main0.out_l_handle.shape = load ptr, ptr %34, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.out_l_handle.shape, metadata !59, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.out_l_handle.shape, metadata !59, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr poison, metadata !60, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr poison, metadata !60, metadata !DIExpression()), !dbg !18
  %out_l = load ptr, ptr %out_l_handle, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %out_l, metadata !61, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %out_l, metadata !61, metadata !DIExpression()), !dbg !18
  call void @llvm.assume(i1 true) [ "align"(ptr %out_l, i64 64) ], !dbg !18
  %.not101 = icmp eq ptr %sum_c_handle, null, !dbg !18
  br i1 %.not101, label %assert_fail25, label %assert_end26, !dbg !18, !prof !23

assert_fail25:                                    ; preds = %assert_end24
  %35 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %35(ptr nonnull @.str.13), !dbg !18
  br label %common.ret

assert_end26:                                     ; preds = %assert_end24
  %36 = getelementptr inbounds i8, ptr %sum_c_handle, i64 16, !dbg !18
  %37 = load i32, ptr %36, align 4, !dbg !18
  %38 = icmp eq i32 %37, 3, !dbg !18
  br i1 %38, label %assert_end28, label %assert_fail27, !dbg !18, !prof !19

assert_fail27:                                    ; preds = %assert_end26
  %39 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %39(ptr nonnull @.str.14), !dbg !18
  br label %common.ret

assert_end28:                                     ; preds = %assert_end26
  %40 = getelementptr inbounds i8, ptr %sum_c_handle, i64 24, !dbg !18
  %main0.sum_c_handle.shape = load ptr, ptr %40, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.sum_c_handle.shape, metadata !62, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.sum_c_handle.shape, metadata !62, metadata !DIExpression()), !dbg !18
  %41 = getelementptr inbounds i8, ptr %sum_c_handle, i64 32, !dbg !18
  %main0.sum_c_handle.strides = load ptr, ptr %41, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.sum_c_handle.strides, metadata !63, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.sum_c_handle.strides, metadata !63, metadata !DIExpression()), !dbg !18
  %sum_c = load ptr, ptr %sum_c_handle, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %sum_c, metadata !64, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %sum_c, metadata !64, metadata !DIExpression()), !dbg !18
  call void @llvm.assume(i1 true) [ "align"(ptr %sum_c, i64 64) ], !dbg !18
  %42 = getelementptr inbounds i8, ptr %W_handle, i64 22, !dbg !18
  %43 = load i16, ptr %42, align 2, !dbg !18
  %44 = icmp eq i16 %43, 1, !dbg !18
  %45 = getelementptr inbounds i8, ptr %W_handle, i64 21, !dbg !18
  %46 = load i8, ptr %45, align 1, !dbg !18
  %47 = icmp eq i8 %46, 32, !dbg !18
  %48 = getelementptr inbounds i8, ptr %W_handle, i64 20, !dbg !18
  %49 = load i8, ptr %48, align 1, !dbg !18
  %50 = icmp eq i8 %49, 0, !dbg !18
  %51 = and i1 %47, %50, !dbg !18
  %52 = and i1 %44, %51, !dbg !18
  br i1 %52, label %assert_end30, label %assert_fail29, !dbg !18, !prof !19

assert_fail29:                                    ; preds = %assert_end28
  %53 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %53(ptr nonnull @.str.15), !dbg !18
  br label %common.ret

assert_end30:                                     ; preds = %assert_end28
  %54 = load i64, ptr %main0.W_handle.shape, align 8, !dbg !18, !tbaa !65
  %55 = and i64 %54, 4294967295, !dbg !18
  %56 = icmp eq i64 %55, 50, !dbg !18
  br i1 %56, label %assert_end32, label %assert_fail31, !dbg !18, !prof !19

assert_fail31:                                    ; preds = %assert_end30
  %57 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %57(ptr nonnull @.str.16), !dbg !18
  br label %common.ret

assert_end32:                                     ; preds = %assert_end30
  %58 = getelementptr inbounds i8, ptr %main0.W_handle.shape, i64 8, !dbg !18
  %59 = load i64, ptr %58, align 8, !dbg !18, !tbaa !75
  %60 = and i64 %59, 4294967295, !dbg !18
  %61 = icmp eq i64 %60, 50, !dbg !18
  br i1 %61, label %assert_end34, label %assert_fail33, !dbg !18, !prof !19

assert_fail33:                                    ; preds = %assert_end32
  %62 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %62(ptr nonnull @.str.17), !dbg !18
  br label %common.ret

assert_end34:                                     ; preds = %assert_end32
  %.not102 = icmp eq ptr %main0.W_handle.strides, null, !dbg !18
  br i1 %.not102, label %if_end, label %if_then, !dbg !18, !prof !23

if_then:                                          ; preds = %assert_end34
  %63 = load i64, ptr %main0.W_handle.strides, align 8, !dbg !18, !tbaa !77
  %64 = and i64 %63, 4294967295, !dbg !18
  %65 = icmp eq i64 %64, 50, !dbg !18
  %66 = getelementptr inbounds i8, ptr %main0.W_handle.strides, i64 8, !dbg !18
  %67 = load i64, ptr %66, align 8, !dbg !18, !tbaa !87
  %68 = and i64 %67, 4294967295, !dbg !18
  %69 = icmp eq i64 %68, 1, !dbg !18
  %70 = and i1 %65, %69, !dbg !18
  br i1 %70, label %if_end, label %assert_fail35, !dbg !18, !prof !19

if_end:                                           ; preds = %if_then, %assert_end34
  %71 = getelementptr inbounds i8, ptr %W_handle, i64 40, !dbg !18
  %72 = load i64, ptr %71, align 8, !dbg !18
  %73 = icmp eq i64 %72, 0, !dbg !18
  br i1 %73, label %assert_end38, label %assert_fail37, !dbg !18, !prof !19

assert_fail35:                                    ; preds = %if_then
  %74 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %74(ptr nonnull @.str.18), !dbg !18
  br label %common.ret

assert_fail37:                                    ; preds = %if_end
  %75 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %75(ptr nonnull @.str.19), !dbg !18
  br label %common.ret

assert_end38:                                     ; preds = %if_end
  %76 = getelementptr inbounds i8, ptr %W_handle, i64 8, !dbg !18
  %77 = load i32, ptr %76, align 4, !dbg !18
  %78 = icmp eq i32 %77, 1, !dbg !18
  br i1 %78, label %assert_end40, label %assert_fail39, !dbg !18, !prof !19

assert_fail39:                                    ; preds = %assert_end38
  %79 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %79(ptr nonnull @.str.20), !dbg !18
  br label %common.ret

assert_end40:                                     ; preds = %assert_end38
  %.not103 = icmp eq ptr %W, null, !dbg !18
  br i1 %.not103, label %assert_fail41, label %assert_end42, !dbg !18, !prof !23

assert_fail41:                                    ; preds = %assert_end40
  %80 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %80(ptr nonnull @.str.21), !dbg !18
  br label %common.ret

assert_end42:                                     ; preds = %assert_end40
  %81 = getelementptr inbounds i8, ptr %c_handle, i64 22, !dbg !18
  %82 = load i16, ptr %81, align 2, !dbg !18
  %83 = icmp eq i16 %82, 1, !dbg !18
  %84 = getelementptr inbounds i8, ptr %c_handle, i64 21, !dbg !18
  %85 = load i8, ptr %84, align 1, !dbg !18
  %86 = icmp eq i8 %85, 32, !dbg !18
  %87 = getelementptr inbounds i8, ptr %c_handle, i64 20, !dbg !18
  %88 = load i8, ptr %87, align 1, !dbg !18
  %89 = icmp eq i8 %88, 0, !dbg !18
  %90 = and i1 %86, %89, !dbg !18
  %91 = and i1 %83, %90, !dbg !18
  br i1 %91, label %assert_end44, label %assert_fail43, !dbg !18, !prof !19

assert_fail43:                                    ; preds = %assert_end42
  %92 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %92(ptr nonnull @.str.22), !dbg !18
  br label %common.ret

assert_end44:                                     ; preds = %assert_end42
  %93 = load i64, ptr %main0.c_handle.shape, align 8, !dbg !18, !tbaa !89
  %94 = and i64 %93, 4294967295, !dbg !18
  %95 = icmp eq i64 %94, 50, !dbg !18
  br i1 %95, label %assert_end46, label %assert_fail45, !dbg !18, !prof !19

assert_fail45:                                    ; preds = %assert_end44
  %96 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %96(ptr nonnull @.str.23), !dbg !18
  br label %common.ret

assert_end46:                                     ; preds = %assert_end44
  %97 = getelementptr inbounds i8, ptr %main0.c_handle.shape, i64 8, !dbg !18
  %98 = load i64, ptr %97, align 8, !dbg !18, !tbaa !99
  %99 = and i64 %98, 4294967295, !dbg !18
  %100 = icmp eq i64 %99, 50, !dbg !18
  br i1 %100, label %assert_end48, label %assert_fail47, !dbg !18, !prof !19

assert_fail47:                                    ; preds = %assert_end46
  %101 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %101(ptr nonnull @.str.24), !dbg !18
  br label %common.ret

assert_end48:                                     ; preds = %assert_end46
  %.not104 = icmp eq ptr %main0.c_handle.strides, null, !dbg !18
  br i1 %.not104, label %if_end50, label %if_then49, !dbg !18, !prof !23

if_then49:                                        ; preds = %assert_end48
  %102 = load i64, ptr %main0.c_handle.strides, align 8, !dbg !18, !tbaa !101
  %103 = and i64 %102, 4294967295, !dbg !18
  %104 = icmp eq i64 %103, 50, !dbg !18
  %105 = getelementptr inbounds i8, ptr %main0.c_handle.strides, i64 8, !dbg !18
  %106 = load i64, ptr %105, align 8, !dbg !18, !tbaa !111
  %107 = and i64 %106, 4294967295, !dbg !18
  %108 = icmp eq i64 %107, 1, !dbg !18
  %109 = and i1 %104, %108, !dbg !18
  br i1 %109, label %if_end50, label %assert_fail51, !dbg !18, !prof !19

if_end50:                                         ; preds = %if_then49, %assert_end48
  %110 = getelementptr inbounds i8, ptr %c_handle, i64 40, !dbg !18
  %111 = load i64, ptr %110, align 8, !dbg !18
  %112 = icmp eq i64 %111, 0, !dbg !18
  br i1 %112, label %assert_end54, label %assert_fail53, !dbg !18, !prof !19

assert_fail51:                                    ; preds = %if_then49
  %113 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %113(ptr nonnull @.str.25), !dbg !18
  br label %common.ret

assert_fail53:                                    ; preds = %if_end50
  %114 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %114(ptr nonnull @.str.26), !dbg !18
  br label %common.ret

assert_end54:                                     ; preds = %if_end50
  %115 = getelementptr inbounds i8, ptr %c_handle, i64 8, !dbg !18
  %116 = load i32, ptr %115, align 4, !dbg !18
  %117 = icmp eq i32 %116, 1, !dbg !18
  br i1 %117, label %assert_end56, label %assert_fail55, !dbg !18, !prof !19

assert_fail55:                                    ; preds = %assert_end54
  %118 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %118(ptr nonnull @.str.27), !dbg !18
  br label %common.ret

assert_end56:                                     ; preds = %assert_end54
  %119 = getelementptr inbounds i8, ptr %c_handle, i64 12, !dbg !18
  %120 = load i32, ptr %119, align 4, !dbg !18
  %121 = icmp eq i32 %dev_id, %120, !dbg !18
  br i1 %121, label %assert_end58, label %assert_fail57, !dbg !18, !prof !19

assert_fail57:                                    ; preds = %assert_end56
  %122 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %122(ptr nonnull @.str.28), !dbg !18
  br label %common.ret

assert_end58:                                     ; preds = %assert_end56
  %.not105 = icmp eq ptr %c, null, !dbg !18
  br i1 %.not105, label %assert_fail59, label %assert_end60, !dbg !18, !prof !23

assert_fail59:                                    ; preds = %assert_end58
  %123 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %123(ptr nonnull @.str.29), !dbg !18
  br label %common.ret

assert_end60:                                     ; preds = %assert_end58
  %124 = getelementptr inbounds i8, ptr %out_l_handle, i64 22, !dbg !18
  %125 = load i16, ptr %124, align 2, !dbg !18
  %126 = icmp eq i16 %125, 1, !dbg !18
  %127 = getelementptr inbounds i8, ptr %out_l_handle, i64 21, !dbg !18
  %128 = load i8, ptr %127, align 1, !dbg !18
  %129 = icmp eq i8 %128, 32, !dbg !18
  %130 = getelementptr inbounds i8, ptr %out_l_handle, i64 20, !dbg !18
  %131 = load i8, ptr %130, align 1, !dbg !18
  %132 = icmp eq i8 %131, 0, !dbg !18
  %133 = and i1 %129, %132, !dbg !18
  %134 = and i1 %126, %133, !dbg !18
  br i1 %134, label %assert_end62, label %assert_fail61, !dbg !18, !prof !19

assert_fail61:                                    ; preds = %assert_end60
  %135 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %135(ptr nonnull @.str.30), !dbg !18
  br label %common.ret

assert_end62:                                     ; preds = %assert_end60
  %136 = load i64, ptr %main0.out_l_handle.shape, align 8, !dbg !18, !tbaa !113
  %137 = and i64 %136, 4294967295, !dbg !18
  %138 = icmp eq i64 %137, 1, !dbg !18
  br i1 %138, label %if_end66, label %assert_fail63, !dbg !18, !prof !19

assert_fail63:                                    ; preds = %assert_end62
  %139 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %139(ptr nonnull @.str.31), !dbg !18
  br label %common.ret

if_end66:                                         ; preds = %assert_end62
  %140 = getelementptr inbounds i8, ptr %out_l_handle, i64 40, !dbg !18
  %141 = load i64, ptr %140, align 8, !dbg !18
  %142 = icmp eq i64 %141, 0, !dbg !18
  br i1 %142, label %assert_end70, label %assert_fail69, !dbg !18, !prof !19

assert_fail69:                                    ; preds = %if_end66
  %143 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %143(ptr nonnull @.str.33), !dbg !18
  br label %common.ret

assert_end70:                                     ; preds = %if_end66
  %144 = getelementptr inbounds i8, ptr %out_l_handle, i64 8, !dbg !18
  %145 = load i32, ptr %144, align 4, !dbg !18
  %146 = icmp eq i32 %145, 1, !dbg !18
  br i1 %146, label %assert_end72, label %assert_fail71, !dbg !18, !prof !19

assert_fail71:                                    ; preds = %assert_end70
  %147 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %147(ptr nonnull @.str.34), !dbg !18
  br label %common.ret

assert_end72:                                     ; preds = %assert_end70
  %148 = getelementptr inbounds i8, ptr %out_l_handle, i64 12, !dbg !18
  %149 = load i32, ptr %148, align 4, !dbg !18
  %150 = icmp eq i32 %dev_id, %149, !dbg !18
  br i1 %150, label %assert_end74, label %assert_fail73, !dbg !18, !prof !19

assert_fail73:                                    ; preds = %assert_end72
  %151 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %151(ptr nonnull @.str.35), !dbg !18
  br label %common.ret

assert_end74:                                     ; preds = %assert_end72
  %.not106 = icmp eq ptr %out_l, null, !dbg !18
  br i1 %.not106, label %assert_fail75, label %assert_end76, !dbg !18, !prof !23

assert_fail75:                                    ; preds = %assert_end74
  %152 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %152(ptr nonnull @.str.36), !dbg !18
  br label %common.ret

assert_end76:                                     ; preds = %assert_end74
  %153 = getelementptr inbounds i8, ptr %sum_c_handle, i64 22, !dbg !18
  %154 = load i16, ptr %153, align 2, !dbg !18
  %155 = icmp eq i16 %154, 1, !dbg !18
  %156 = getelementptr inbounds i8, ptr %sum_c_handle, i64 21, !dbg !18
  %157 = load i8, ptr %156, align 1, !dbg !18
  %158 = icmp eq i8 %157, 32, !dbg !18
  %159 = getelementptr inbounds i8, ptr %sum_c_handle, i64 20, !dbg !18
  %160 = load i8, ptr %159, align 1, !dbg !18
  %161 = icmp eq i8 %160, 0, !dbg !18
  %162 = and i1 %158, %161, !dbg !18
  %163 = and i1 %155, %162, !dbg !18
  br i1 %163, label %assert_end78, label %assert_fail77, !dbg !18, !prof !19

assert_fail77:                                    ; preds = %assert_end76
  %164 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %164(ptr nonnull @.str.37), !dbg !18
  br label %common.ret

assert_end78:                                     ; preds = %assert_end76
  %165 = load i64, ptr %main0.sum_c_handle.shape, align 8, !dbg !18, !tbaa !123
  %166 = and i64 %165, 4294967295, !dbg !18
  %167 = icmp eq i64 %166, 50, !dbg !18
  br i1 %167, label %assert_end80, label %assert_fail79, !dbg !18, !prof !19

assert_fail79:                                    ; preds = %assert_end78
  %168 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %168(ptr nonnull @.str.38), !dbg !18
  br label %common.ret

assert_end80:                                     ; preds = %assert_end78
  %169 = getelementptr inbounds i8, ptr %main0.sum_c_handle.shape, i64 8, !dbg !18
  %170 = load i64, ptr %169, align 8, !dbg !18, !tbaa !133
  %171 = and i64 %170, 4294967295, !dbg !18
  %172 = icmp eq i64 %171, 50, !dbg !18
  br i1 %172, label %assert_end82, label %assert_fail81, !dbg !18, !prof !19

assert_fail81:                                    ; preds = %assert_end80
  %173 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %173(ptr nonnull @.str.39), !dbg !18
  br label %common.ret

assert_end82:                                     ; preds = %assert_end80
  %174 = getelementptr inbounds i8, ptr %main0.sum_c_handle.shape, i64 16, !dbg !18
  %175 = load i64, ptr %174, align 8, !dbg !18, !tbaa !135
  %176 = and i64 %175, 4294967295, !dbg !18
  %177 = icmp eq i64 %176, 50, !dbg !18
  br i1 %177, label %assert_end84, label %assert_fail83, !dbg !18, !prof !19

assert_fail83:                                    ; preds = %assert_end82
  %178 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %178(ptr nonnull @.str.40), !dbg !18
  br label %common.ret

assert_end84:                                     ; preds = %assert_end82
  %.not107 = icmp eq ptr %main0.sum_c_handle.strides, null, !dbg !18
  br i1 %.not107, label %if_end86, label %if_then85, !dbg !18, !prof !23

if_then85:                                        ; preds = %assert_end84
  %179 = load i64, ptr %main0.sum_c_handle.strides, align 8, !dbg !18, !tbaa !138
  %180 = and i64 %179, 4294967295, !dbg !18
  %181 = icmp eq i64 %180, 2500, !dbg !18
  %182 = getelementptr inbounds i8, ptr %main0.sum_c_handle.strides, i64 8, !dbg !18
  %183 = load i64, ptr %182, align 8, !dbg !18, !tbaa !148
  %184 = and i64 %183, 4294967295, !dbg !18
  %185 = icmp eq i64 %184, 50, !dbg !18
  %186 = getelementptr inbounds i8, ptr %main0.sum_c_handle.strides, i64 16, !dbg !18
  %187 = load i64, ptr %186, align 8, !dbg !18, !tbaa !150
  %188 = and i64 %187, 4294967295, !dbg !18
  %189 = icmp eq i64 %188, 1, !dbg !18
  %190 = and i1 %185, %189, !dbg !18
  %191 = and i1 %181, %190, !dbg !18
  br i1 %191, label %if_end86, label %assert_fail87, !dbg !18, !prof !19

if_end86:                                         ; preds = %if_then85, %assert_end84
  %192 = getelementptr inbounds i8, ptr %sum_c_handle, i64 40, !dbg !18
  %193 = load i64, ptr %192, align 8, !dbg !18
  %194 = icmp eq i64 %193, 0, !dbg !18
  br i1 %194, label %assert_end90, label %assert_fail89, !dbg !18, !prof !19

assert_fail87:                                    ; preds = %if_then85
  %195 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %195(ptr nonnull @.str.41), !dbg !18
  br label %common.ret

assert_fail89:                                    ; preds = %if_end86
  %196 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %196(ptr nonnull @.str.42), !dbg !18
  br label %common.ret

assert_end90:                                     ; preds = %if_end86
  %197 = getelementptr inbounds i8, ptr %sum_c_handle, i64 8, !dbg !18
  %198 = load i32, ptr %197, align 4, !dbg !18
  %199 = icmp eq i32 %198, 1, !dbg !18
  br i1 %199, label %assert_end92, label %assert_fail91, !dbg !18, !prof !19

assert_fail91:                                    ; preds = %assert_end90
  %200 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %200(ptr nonnull @.str.43), !dbg !18
  br label %common.ret

assert_end92:                                     ; preds = %assert_end90
  %201 = getelementptr inbounds i8, ptr %sum_c_handle, i64 12, !dbg !18
  %202 = load i32, ptr %201, align 4, !dbg !18
  %203 = icmp eq i32 %dev_id, %202, !dbg !18
  br i1 %203, label %assert_end94, label %assert_fail93, !dbg !18, !prof !19

assert_fail93:                                    ; preds = %assert_end92
  %204 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %204(ptr nonnull @.str.44), !dbg !18
  br label %common.ret

assert_end94:                                     ; preds = %assert_end92
  %.not108 = icmp eq ptr %sum_c, null, !dbg !18
  br i1 %.not108, label %assert_fail95, label %assert_end96, !dbg !18, !prof !23

assert_fail95:                                    ; preds = %assert_end94
  %205 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %205(ptr nonnull @.str.45), !dbg !18
  br label %common.ret

assert_end96:                                     ; preds = %assert_end94
  %206 = tail call fastcc i32 @main0_compute_(ptr nonnull %c, ptr nonnull %sum_c, ptr nonnull %W, ptr nonnull %out_l), !dbg !18
  br label %common.ret
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: noinline
define internal fastcc i32 @main0_compute_(ptr noalias align 64 %c, ptr noalias align 64 %sum_c, ptr noalias align 64 %W, ptr noalias align 64 %out_l) unnamed_addr #2 !dbg !153 {
entry:
  tail call void @llvm.dbg.value(metadata ptr %c, metadata !157, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata ptr %sum_c, metadata !158, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata ptr %W, metadata !159, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata ptr %out_l, metadata !160, metadata !DIExpression()), !dbg !161
  %0 = alloca %closure_loop_parallel_iter_4_fused_0, align 8, !dbg !161
  %1 = alloca %closure_loop_parallel_iter_3_fused, align 8, !dbg !161
  %2 = alloca %closure_loop_parallel_iter_2_fused, align 8, !dbg !161
  %3 = alloca %closure_loop_parallel_iter_1_fused, align 8, !dbg !161
  %4 = alloca %closure_loop_parallel_iter_0_i_j_fused_0, align 8, !dbg !161
  store ptr %c, ptr %4, align 8, !dbg !161
  %5 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !dbg !161, !tbaa !20
  %6 = call i32 %5(ptr nonnull @__tvm_parallel_lambda, ptr nonnull %4, i32 0), !dbg !161
  %7 = icmp eq i32 %6, 0, !dbg !161
  br i1 %7, label %call_end, label %common.ret, !dbg !161, !prof !19

common.ret:                                       ; preds = %call_end6, %call_end4, %call_end2, %call_end, %entry
  %common.ret.op = phi i32 [ %6, %entry ], [ %9, %call_end ], [ %13, %call_end2 ], [ %18, %call_end4 ], [ %22, %call_end6 ]
  ret i32 %common.ret.op, !dbg !161

call_end:                                         ; preds = %entry
  store ptr %sum_c, ptr %3, align 8, !dbg !161
  %8 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !dbg !161, !tbaa !20
  %9 = call i32 %8(ptr nonnull @__tvm_parallel_lambda.46, ptr nonnull %3, i32 0), !dbg !161
  %10 = icmp eq i32 %9, 0, !dbg !161
  br i1 %10, label %call_end2, label %common.ret, !dbg !161, !prof !19

call_end2:                                        ; preds = %call_end
  store ptr %sum_c, ptr %2, align 8, !dbg !161
  %11 = getelementptr inbounds i8, ptr %2, i64 8, !dbg !161
  store ptr %c, ptr %11, align 8, !dbg !161
  %12 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !dbg !161, !tbaa !20
  %13 = call i32 %12(ptr nonnull @__tvm_parallel_lambda.47, ptr nonnull %2, i32 0), !dbg !161
  %14 = icmp eq i32 %13, 0, !dbg !161
  br i1 %14, label %call_end4, label %common.ret, !dbg !161, !prof !19

call_end4:                                        ; preds = %call_end2
  store ptr %c, ptr %1, align 8, !dbg !161
  %15 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !161
  store ptr %sum_c, ptr %15, align 8, !dbg !161
  %16 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !161
  store ptr %W, ptr %16, align 8, !dbg !161
  %17 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !dbg !161, !tbaa !20
  %18 = call i32 %17(ptr nonnull @__tvm_parallel_lambda.48, ptr nonnull %1, i32 0), !dbg !161
  %19 = icmp eq i32 %18, 0, !dbg !161
  br i1 %19, label %call_end6, label %common.ret, !dbg !161, !prof !19

call_end6:                                        ; preds = %call_end4
  store ptr %out_l, ptr %0, align 8, !dbg !161
  %20 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !161
  store ptr %c, ptr %20, align 8, !dbg !161
  %21 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !dbg !161, !tbaa !20
  %22 = call i32 %21(ptr nonnull @__tvm_parallel_lambda.49, ptr nonnull %0, i32 0), !dbg !161
  br label %common.ret
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none)
define private noundef i32 @__tvm_parallel_lambda(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %c = load ptr, ptr %1, align 8, !dbg !161
  %2 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !161
  %num_task = load i32, ptr %2, align 4, !dbg !161
  %3 = add nsw i32 %num_task, 390624, !dbg !161
  %4 = sdiv i32 %3, %num_task, !dbg !161
  %5 = add nsw i32 %task_id, 1, !dbg !161
  %6 = mul nsw i32 %4, %5, !dbg !161
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 390625), !dbg !161
  %8 = mul nsw i32 %4, %task_id, !dbg !161
  tail call void @llvm.dbg.declare(metadata i32 %8, metadata !162, metadata !DIExpression()), !dbg !161
  %9 = icmp slt i32 %8, %7, !dbg !161
  br i1 %9, label %for_body_iter_0_i_j_fused_0, label %for_end_iter_0_i_j_fused_0, !dbg !161, !prof !163

for_body_iter_0_i_j_fused_0:                      ; preds = %parallel_closure_entry, %for_body_iter_0_i_j_fused_0
  %iter_0_i_j_fused_01 = phi i32 [ %265, %for_body_iter_0_i_j_fused_0 ], [ %8, %parallel_closure_entry ]
  tail call void @llvm.dbg.declare(metadata i32 %iter_0_i_j_fused_01, metadata !162, metadata !DIExpression()), !dbg !161
  %10 = mul nsw i32 %iter_0_i_j_fused_01, 14, !dbg !161
  %11 = insertelement <64 x i32> poison, i32 %10, i64 0, !dbg !161
  %12 = or disjoint i32 %10, 1, !dbg !161
  %13 = insertelement <64 x i32> %11, i32 %12, i64 1, !dbg !161
  %14 = insertelement <2 x i32> poison, i32 %10, i64 0, !dbg !161
  %15 = shufflevector <2 x i32> %14, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !161
  %16 = add nsw <2 x i32> %15, <i32 2, i32 3>, !dbg !161
  %17 = shufflevector <2 x i32> %16, <2 x i32> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !161
  %18 = shufflevector <64 x i32> %13, <64 x i32> %17, <64 x i32> <i32 0, i32 1, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !161
  %19 = insertelement <32 x i32> poison, i32 %10, i64 0, !dbg !161
  %20 = shufflevector <32 x i32> %19, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !161
  %21 = add nsw <32 x i32> %20, <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35>, !dbg !161
  %22 = shufflevector <32 x i32> %21, <32 x i32> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !161
  %23 = shufflevector <64 x i32> %18, <64 x i32> %22, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !161
  %24 = insertelement <16 x i32> poison, i32 %10, i64 0, !dbg !161
  %25 = shufflevector <16 x i32> %24, <16 x i32> poison, <16 x i32> zeroinitializer, !dbg !161
  %26 = add nsw <16 x i32> %25, <i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51>, !dbg !161
  %27 = shufflevector <16 x i32> %26, <16 x i32> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !161
  %28 = shufflevector <64 x i32> %23, <64 x i32> %27, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !161
  %29 = insertelement <8 x i32> poison, i32 %10, i64 0, !dbg !161
  %30 = shufflevector <8 x i32> %29, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !161
  %31 = add nsw <8 x i32> %30, <i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59>, !dbg !161
  %32 = shufflevector <8 x i32> %31, <8 x i32> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !161
  %33 = shufflevector <64 x i32> %28, <64 x i32> %32, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !161
  %34 = insertelement <4 x i32> poison, i32 %10, i64 0, !dbg !161
  %35 = shufflevector <4 x i32> %34, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !161
  %36 = add nsw <4 x i32> %35, <i32 60, i32 61, i32 62, i32 63>, !dbg !161
  %37 = shufflevector <4 x i32> %36, <4 x i32> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !161
  %38 = shufflevector <64 x i32> %33, <64 x i32> %37, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 64, i32 65, i32 66, i32 67>, !dbg !161
  %39 = srem <64 x i32> %38, <i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50>, !dbg !161
  %40 = shl nsw i32 %iter_0_i_j_fused_01, 6, !dbg !161
  %41 = insertelement <64 x i32> poison, i32 %40, i64 0, !dbg !161
  %42 = or disjoint i32 %40, 1, !dbg !161
  %43 = insertelement <64 x i32> %41, i32 %42, i64 1, !dbg !161
  %44 = insertelement <2 x i32> poison, i32 %40, i64 0, !dbg !161
  %45 = shufflevector <2 x i32> %44, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !161
  %46 = or disjoint <2 x i32> %45, <i32 2, i32 3>, !dbg !161
  %47 = shufflevector <2 x i32> %46, <2 x i32> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !161
  %48 = shufflevector <64 x i32> %43, <64 x i32> %47, <64 x i32> <i32 0, i32 1, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !161
  %49 = insertelement <32 x i32> poison, i32 %40, i64 0, !dbg !161
  %50 = shufflevector <32 x i32> %49, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !161
  %51 = or disjoint <32 x i32> %50, <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35>, !dbg !161
  %52 = shufflevector <32 x i32> %51, <32 x i32> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !161
  %53 = shufflevector <64 x i32> %48, <64 x i32> %52, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !161
  %54 = insertelement <16 x i32> poison, i32 %40, i64 0, !dbg !161
  %55 = shufflevector <16 x i32> %54, <16 x i32> poison, <16 x i32> zeroinitializer, !dbg !161
  %56 = or disjoint <16 x i32> %55, <i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51>, !dbg !161
  %57 = shufflevector <16 x i32> %56, <16 x i32> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !161
  %58 = shufflevector <64 x i32> %53, <64 x i32> %57, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !161
  %59 = insertelement <8 x i32> poison, i32 %40, i64 0, !dbg !161
  %60 = shufflevector <8 x i32> %59, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !161
  %61 = or disjoint <8 x i32> %60, <i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59>, !dbg !161
  %62 = shufflevector <8 x i32> %61, <8 x i32> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !161
  %63 = shufflevector <64 x i32> %58, <64 x i32> %62, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !161
  %64 = insertelement <4 x i32> poison, i32 %40, i64 0, !dbg !161
  %65 = shufflevector <4 x i32> %64, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !161
  %66 = or disjoint <4 x i32> %65, <i32 60, i32 61, i32 62, i32 63>, !dbg !161
  %67 = shufflevector <4 x i32> %66, <4 x i32> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !161
  %68 = shufflevector <64 x i32> %63, <64 x i32> %67, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 64, i32 65, i32 66, i32 67>, !dbg !161
  %69 = sdiv <64 x i32> %68, <i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50>, !dbg !161
  %70 = srem <64 x i32> %69, <i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50>, !dbg !161
  %71 = mul nsw <64 x i32> %70, <i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50, i32 50>, !dbg !161
  %72 = add nsw <64 x i32> %71, %39, !dbg !161
  %73 = extractelement <64 x i32> %72, i64 0, !dbg !161
  %74 = sext i32 %73 to i64, !dbg !161
  %75 = getelementptr inbounds i32, ptr %c, i64 %74, !dbg !161
  store i32 0, ptr %75, align 4, !dbg !161, !tbaa !164
  %76 = extractelement <64 x i32> %72, i64 1, !dbg !161
  %77 = sext i32 %76 to i64, !dbg !161
  %78 = getelementptr inbounds i32, ptr %c, i64 %77, !dbg !161
  store i32 0, ptr %78, align 4, !dbg !161, !tbaa !164
  %79 = extractelement <64 x i32> %72, i64 2, !dbg !161
  %80 = sext i32 %79 to i64, !dbg !161
  %81 = getelementptr inbounds i32, ptr %c, i64 %80, !dbg !161
  store i32 0, ptr %81, align 4, !dbg !161, !tbaa !164
  %82 = extractelement <64 x i32> %72, i64 3, !dbg !161
  %83 = sext i32 %82 to i64, !dbg !161
  %84 = getelementptr inbounds i32, ptr %c, i64 %83, !dbg !161
  store i32 0, ptr %84, align 4, !dbg !161, !tbaa !164
  %85 = extractelement <64 x i32> %72, i64 4, !dbg !161
  %86 = sext i32 %85 to i64, !dbg !161
  %87 = getelementptr inbounds i32, ptr %c, i64 %86, !dbg !161
  store i32 0, ptr %87, align 4, !dbg !161, !tbaa !164
  %88 = extractelement <64 x i32> %72, i64 5, !dbg !161
  %89 = sext i32 %88 to i64, !dbg !161
  %90 = getelementptr inbounds i32, ptr %c, i64 %89, !dbg !161
  store i32 0, ptr %90, align 4, !dbg !161, !tbaa !164
  %91 = extractelement <64 x i32> %72, i64 6, !dbg !161
  %92 = sext i32 %91 to i64, !dbg !161
  %93 = getelementptr inbounds i32, ptr %c, i64 %92, !dbg !161
  store i32 0, ptr %93, align 4, !dbg !161, !tbaa !164
  %94 = extractelement <64 x i32> %72, i64 7, !dbg !161
  %95 = sext i32 %94 to i64, !dbg !161
  %96 = getelementptr inbounds i32, ptr %c, i64 %95, !dbg !161
  store i32 0, ptr %96, align 4, !dbg !161, !tbaa !164
  %97 = extractelement <64 x i32> %72, i64 8, !dbg !161
  %98 = sext i32 %97 to i64, !dbg !161
  %99 = getelementptr inbounds i32, ptr %c, i64 %98, !dbg !161
  store i32 0, ptr %99, align 4, !dbg !161, !tbaa !164
  %100 = extractelement <64 x i32> %72, i64 9, !dbg !161
  %101 = sext i32 %100 to i64, !dbg !161
  %102 = getelementptr inbounds i32, ptr %c, i64 %101, !dbg !161
  store i32 0, ptr %102, align 4, !dbg !161, !tbaa !164
  %103 = extractelement <64 x i32> %72, i64 10, !dbg !161
  %104 = sext i32 %103 to i64, !dbg !161
  %105 = getelementptr inbounds i32, ptr %c, i64 %104, !dbg !161
  store i32 0, ptr %105, align 4, !dbg !161, !tbaa !164
  %106 = extractelement <64 x i32> %72, i64 11, !dbg !161
  %107 = sext i32 %106 to i64, !dbg !161
  %108 = getelementptr inbounds i32, ptr %c, i64 %107, !dbg !161
  store i32 0, ptr %108, align 4, !dbg !161, !tbaa !164
  %109 = extractelement <64 x i32> %72, i64 12, !dbg !161
  %110 = sext i32 %109 to i64, !dbg !161
  %111 = getelementptr inbounds i32, ptr %c, i64 %110, !dbg !161
  store i32 0, ptr %111, align 4, !dbg !161, !tbaa !164
  %112 = extractelement <64 x i32> %72, i64 13, !dbg !161
  %113 = sext i32 %112 to i64, !dbg !161
  %114 = getelementptr inbounds i32, ptr %c, i64 %113, !dbg !161
  store i32 0, ptr %114, align 4, !dbg !161, !tbaa !164
  %115 = extractelement <64 x i32> %72, i64 14, !dbg !161
  %116 = sext i32 %115 to i64, !dbg !161
  %117 = getelementptr inbounds i32, ptr %c, i64 %116, !dbg !161
  store i32 0, ptr %117, align 4, !dbg !161, !tbaa !164
  %118 = extractelement <64 x i32> %72, i64 15, !dbg !161
  %119 = sext i32 %118 to i64, !dbg !161
  %120 = getelementptr inbounds i32, ptr %c, i64 %119, !dbg !161
  store i32 0, ptr %120, align 4, !dbg !161, !tbaa !164
  %121 = extractelement <64 x i32> %72, i64 16, !dbg !161
  %122 = sext i32 %121 to i64, !dbg !161
  %123 = getelementptr inbounds i32, ptr %c, i64 %122, !dbg !161
  store i32 0, ptr %123, align 4, !dbg !161, !tbaa !164
  %124 = extractelement <64 x i32> %72, i64 17, !dbg !161
  %125 = sext i32 %124 to i64, !dbg !161
  %126 = getelementptr inbounds i32, ptr %c, i64 %125, !dbg !161
  store i32 0, ptr %126, align 4, !dbg !161, !tbaa !164
  %127 = extractelement <64 x i32> %72, i64 18, !dbg !161
  %128 = sext i32 %127 to i64, !dbg !161
  %129 = getelementptr inbounds i32, ptr %c, i64 %128, !dbg !161
  store i32 0, ptr %129, align 4, !dbg !161, !tbaa !164
  %130 = extractelement <64 x i32> %72, i64 19, !dbg !161
  %131 = sext i32 %130 to i64, !dbg !161
  %132 = getelementptr inbounds i32, ptr %c, i64 %131, !dbg !161
  store i32 0, ptr %132, align 4, !dbg !161, !tbaa !164
  %133 = extractelement <64 x i32> %72, i64 20, !dbg !161
  %134 = sext i32 %133 to i64, !dbg !161
  %135 = getelementptr inbounds i32, ptr %c, i64 %134, !dbg !161
  store i32 0, ptr %135, align 4, !dbg !161, !tbaa !164
  %136 = extractelement <64 x i32> %72, i64 21, !dbg !161
  %137 = sext i32 %136 to i64, !dbg !161
  %138 = getelementptr inbounds i32, ptr %c, i64 %137, !dbg !161
  store i32 0, ptr %138, align 4, !dbg !161, !tbaa !164
  %139 = extractelement <64 x i32> %72, i64 22, !dbg !161
  %140 = sext i32 %139 to i64, !dbg !161
  %141 = getelementptr inbounds i32, ptr %c, i64 %140, !dbg !161
  store i32 0, ptr %141, align 4, !dbg !161, !tbaa !164
  %142 = extractelement <64 x i32> %72, i64 23, !dbg !161
  %143 = sext i32 %142 to i64, !dbg !161
  %144 = getelementptr inbounds i32, ptr %c, i64 %143, !dbg !161
  store i32 0, ptr %144, align 4, !dbg !161, !tbaa !164
  %145 = extractelement <64 x i32> %72, i64 24, !dbg !161
  %146 = sext i32 %145 to i64, !dbg !161
  %147 = getelementptr inbounds i32, ptr %c, i64 %146, !dbg !161
  store i32 0, ptr %147, align 4, !dbg !161, !tbaa !164
  %148 = extractelement <64 x i32> %72, i64 25, !dbg !161
  %149 = sext i32 %148 to i64, !dbg !161
  %150 = getelementptr inbounds i32, ptr %c, i64 %149, !dbg !161
  store i32 0, ptr %150, align 4, !dbg !161, !tbaa !164
  %151 = extractelement <64 x i32> %72, i64 26, !dbg !161
  %152 = sext i32 %151 to i64, !dbg !161
  %153 = getelementptr inbounds i32, ptr %c, i64 %152, !dbg !161
  store i32 0, ptr %153, align 4, !dbg !161, !tbaa !164
  %154 = extractelement <64 x i32> %72, i64 27, !dbg !161
  %155 = sext i32 %154 to i64, !dbg !161
  %156 = getelementptr inbounds i32, ptr %c, i64 %155, !dbg !161
  store i32 0, ptr %156, align 4, !dbg !161, !tbaa !164
  %157 = extractelement <64 x i32> %72, i64 28, !dbg !161
  %158 = sext i32 %157 to i64, !dbg !161
  %159 = getelementptr inbounds i32, ptr %c, i64 %158, !dbg !161
  store i32 0, ptr %159, align 4, !dbg !161, !tbaa !164
  %160 = extractelement <64 x i32> %72, i64 29, !dbg !161
  %161 = sext i32 %160 to i64, !dbg !161
  %162 = getelementptr inbounds i32, ptr %c, i64 %161, !dbg !161
  store i32 0, ptr %162, align 4, !dbg !161, !tbaa !164
  %163 = extractelement <64 x i32> %72, i64 30, !dbg !161
  %164 = sext i32 %163 to i64, !dbg !161
  %165 = getelementptr inbounds i32, ptr %c, i64 %164, !dbg !161
  store i32 0, ptr %165, align 4, !dbg !161, !tbaa !164
  %166 = extractelement <64 x i32> %72, i64 31, !dbg !161
  %167 = sext i32 %166 to i64, !dbg !161
  %168 = getelementptr inbounds i32, ptr %c, i64 %167, !dbg !161
  store i32 0, ptr %168, align 4, !dbg !161, !tbaa !164
  %169 = extractelement <64 x i32> %72, i64 32, !dbg !161
  %170 = sext i32 %169 to i64, !dbg !161
  %171 = getelementptr inbounds i32, ptr %c, i64 %170, !dbg !161
  store i32 0, ptr %171, align 4, !dbg !161, !tbaa !164
  %172 = extractelement <64 x i32> %72, i64 33, !dbg !161
  %173 = sext i32 %172 to i64, !dbg !161
  %174 = getelementptr inbounds i32, ptr %c, i64 %173, !dbg !161
  store i32 0, ptr %174, align 4, !dbg !161, !tbaa !164
  %175 = extractelement <64 x i32> %72, i64 34, !dbg !161
  %176 = sext i32 %175 to i64, !dbg !161
  %177 = getelementptr inbounds i32, ptr %c, i64 %176, !dbg !161
  store i32 0, ptr %177, align 4, !dbg !161, !tbaa !164
  %178 = extractelement <64 x i32> %72, i64 35, !dbg !161
  %179 = sext i32 %178 to i64, !dbg !161
  %180 = getelementptr inbounds i32, ptr %c, i64 %179, !dbg !161
  store i32 0, ptr %180, align 4, !dbg !161, !tbaa !164
  %181 = extractelement <64 x i32> %72, i64 36, !dbg !161
  %182 = sext i32 %181 to i64, !dbg !161
  %183 = getelementptr inbounds i32, ptr %c, i64 %182, !dbg !161
  store i32 0, ptr %183, align 4, !dbg !161, !tbaa !164
  %184 = extractelement <64 x i32> %72, i64 37, !dbg !161
  %185 = sext i32 %184 to i64, !dbg !161
  %186 = getelementptr inbounds i32, ptr %c, i64 %185, !dbg !161
  store i32 0, ptr %186, align 4, !dbg !161, !tbaa !164
  %187 = extractelement <64 x i32> %72, i64 38, !dbg !161
  %188 = sext i32 %187 to i64, !dbg !161
  %189 = getelementptr inbounds i32, ptr %c, i64 %188, !dbg !161
  store i32 0, ptr %189, align 4, !dbg !161, !tbaa !164
  %190 = extractelement <64 x i32> %72, i64 39, !dbg !161
  %191 = sext i32 %190 to i64, !dbg !161
  %192 = getelementptr inbounds i32, ptr %c, i64 %191, !dbg !161
  store i32 0, ptr %192, align 4, !dbg !161, !tbaa !164
  %193 = extractelement <64 x i32> %72, i64 40, !dbg !161
  %194 = sext i32 %193 to i64, !dbg !161
  %195 = getelementptr inbounds i32, ptr %c, i64 %194, !dbg !161
  store i32 0, ptr %195, align 4, !dbg !161, !tbaa !164
  %196 = extractelement <64 x i32> %72, i64 41, !dbg !161
  %197 = sext i32 %196 to i64, !dbg !161
  %198 = getelementptr inbounds i32, ptr %c, i64 %197, !dbg !161
  store i32 0, ptr %198, align 4, !dbg !161, !tbaa !164
  %199 = extractelement <64 x i32> %72, i64 42, !dbg !161
  %200 = sext i32 %199 to i64, !dbg !161
  %201 = getelementptr inbounds i32, ptr %c, i64 %200, !dbg !161
  store i32 0, ptr %201, align 4, !dbg !161, !tbaa !164
  %202 = extractelement <64 x i32> %72, i64 43, !dbg !161
  %203 = sext i32 %202 to i64, !dbg !161
  %204 = getelementptr inbounds i32, ptr %c, i64 %203, !dbg !161
  store i32 0, ptr %204, align 4, !dbg !161, !tbaa !164
  %205 = extractelement <64 x i32> %72, i64 44, !dbg !161
  %206 = sext i32 %205 to i64, !dbg !161
  %207 = getelementptr inbounds i32, ptr %c, i64 %206, !dbg !161
  store i32 0, ptr %207, align 4, !dbg !161, !tbaa !164
  %208 = extractelement <64 x i32> %72, i64 45, !dbg !161
  %209 = sext i32 %208 to i64, !dbg !161
  %210 = getelementptr inbounds i32, ptr %c, i64 %209, !dbg !161
  store i32 0, ptr %210, align 4, !dbg !161, !tbaa !164
  %211 = extractelement <64 x i32> %72, i64 46, !dbg !161
  %212 = sext i32 %211 to i64, !dbg !161
  %213 = getelementptr inbounds i32, ptr %c, i64 %212, !dbg !161
  store i32 0, ptr %213, align 4, !dbg !161, !tbaa !164
  %214 = extractelement <64 x i32> %72, i64 47, !dbg !161
  %215 = sext i32 %214 to i64, !dbg !161
  %216 = getelementptr inbounds i32, ptr %c, i64 %215, !dbg !161
  store i32 0, ptr %216, align 4, !dbg !161, !tbaa !164
  %217 = extractelement <64 x i32> %72, i64 48, !dbg !161
  %218 = sext i32 %217 to i64, !dbg !161
  %219 = getelementptr inbounds i32, ptr %c, i64 %218, !dbg !161
  store i32 0, ptr %219, align 4, !dbg !161, !tbaa !164
  %220 = extractelement <64 x i32> %72, i64 49, !dbg !161
  %221 = sext i32 %220 to i64, !dbg !161
  %222 = getelementptr inbounds i32, ptr %c, i64 %221, !dbg !161
  store i32 0, ptr %222, align 4, !dbg !161, !tbaa !164
  %223 = extractelement <64 x i32> %72, i64 50, !dbg !161
  %224 = sext i32 %223 to i64, !dbg !161
  %225 = getelementptr inbounds i32, ptr %c, i64 %224, !dbg !161
  store i32 0, ptr %225, align 4, !dbg !161, !tbaa !164
  %226 = extractelement <64 x i32> %72, i64 51, !dbg !161
  %227 = sext i32 %226 to i64, !dbg !161
  %228 = getelementptr inbounds i32, ptr %c, i64 %227, !dbg !161
  store i32 0, ptr %228, align 4, !dbg !161, !tbaa !164
  %229 = extractelement <64 x i32> %72, i64 52, !dbg !161
  %230 = sext i32 %229 to i64, !dbg !161
  %231 = getelementptr inbounds i32, ptr %c, i64 %230, !dbg !161
  store i32 0, ptr %231, align 4, !dbg !161, !tbaa !164
  %232 = extractelement <64 x i32> %72, i64 53, !dbg !161
  %233 = sext i32 %232 to i64, !dbg !161
  %234 = getelementptr inbounds i32, ptr %c, i64 %233, !dbg !161
  store i32 0, ptr %234, align 4, !dbg !161, !tbaa !164
  %235 = extractelement <64 x i32> %72, i64 54, !dbg !161
  %236 = sext i32 %235 to i64, !dbg !161
  %237 = getelementptr inbounds i32, ptr %c, i64 %236, !dbg !161
  store i32 0, ptr %237, align 4, !dbg !161, !tbaa !164
  %238 = extractelement <64 x i32> %72, i64 55, !dbg !161
  %239 = sext i32 %238 to i64, !dbg !161
  %240 = getelementptr inbounds i32, ptr %c, i64 %239, !dbg !161
  store i32 0, ptr %240, align 4, !dbg !161, !tbaa !164
  %241 = extractelement <64 x i32> %72, i64 56, !dbg !161
  %242 = sext i32 %241 to i64, !dbg !161
  %243 = getelementptr inbounds i32, ptr %c, i64 %242, !dbg !161
  store i32 0, ptr %243, align 4, !dbg !161, !tbaa !164
  %244 = extractelement <64 x i32> %72, i64 57, !dbg !161
  %245 = sext i32 %244 to i64, !dbg !161
  %246 = getelementptr inbounds i32, ptr %c, i64 %245, !dbg !161
  store i32 0, ptr %246, align 4, !dbg !161, !tbaa !164
  %247 = extractelement <64 x i32> %72, i64 58, !dbg !161
  %248 = sext i32 %247 to i64, !dbg !161
  %249 = getelementptr inbounds i32, ptr %c, i64 %248, !dbg !161
  store i32 0, ptr %249, align 4, !dbg !161, !tbaa !164
  %250 = extractelement <64 x i32> %72, i64 59, !dbg !161
  %251 = sext i32 %250 to i64, !dbg !161
  %252 = getelementptr inbounds i32, ptr %c, i64 %251, !dbg !161
  store i32 0, ptr %252, align 4, !dbg !161, !tbaa !164
  %253 = extractelement <64 x i32> %72, i64 60, !dbg !161
  %254 = sext i32 %253 to i64, !dbg !161
  %255 = getelementptr inbounds i32, ptr %c, i64 %254, !dbg !161
  store i32 0, ptr %255, align 4, !dbg !161, !tbaa !164
  %256 = extractelement <64 x i32> %72, i64 61, !dbg !161
  %257 = sext i32 %256 to i64, !dbg !161
  %258 = getelementptr inbounds i32, ptr %c, i64 %257, !dbg !161
  store i32 0, ptr %258, align 4, !dbg !161, !tbaa !164
  %259 = extractelement <64 x i32> %72, i64 62, !dbg !161
  %260 = sext i32 %259 to i64, !dbg !161
  %261 = getelementptr inbounds i32, ptr %c, i64 %260, !dbg !161
  store i32 0, ptr %261, align 4, !dbg !161, !tbaa !164
  %262 = extractelement <64 x i32> %72, i64 63, !dbg !161
  %263 = sext i32 %262 to i64, !dbg !161
  %264 = getelementptr inbounds i32, ptr %c, i64 %263, !dbg !161
  store i32 0, ptr %264, align 4, !dbg !161, !tbaa !164
  %265 = add nsw i32 %iter_0_i_j_fused_01, 1, !dbg !161
  tail call void @llvm.dbg.declare(metadata i32 %265, metadata !162, metadata !DIExpression()), !dbg !161
  %exitcond.not = icmp eq i32 %265, %7, !dbg !161
  br i1 %exitcond.not, label %for_end_iter_0_i_j_fused_0, label %for_body_iter_0_i_j_fused_0, !dbg !161, !prof !166

for_end_iter_0_i_j_fused_0:                       ; preds = %for_body_iter_0_i_j_fused_0, %parallel_closure_entry
  ret i32 0, !dbg !161
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none)
define private noundef i32 @__tvm_parallel_lambda.46(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %2 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !161
  %num_task = load i32, ptr %2, align 4, !dbg !161
  %3 = add nsw i32 %num_task, 9999, !dbg !161
  %4 = sdiv i32 %3, %num_task, !dbg !161
  %5 = add nsw i32 %task_id, 1, !dbg !161
  %6 = mul nsw i32 %4, %5, !dbg !161
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 10000), !dbg !161
  %8 = mul nsw i32 %4, %task_id, !dbg !161
  tail call void @llvm.dbg.declare(metadata i32 %8, metadata !167, metadata !DIExpression()), !dbg !161
  %9 = icmp slt i32 %8, %7, !dbg !161
  br i1 %9, label %for_begin_i_1_0.preheader.lr.ph, label %for_end_iter_1_fused, !dbg !161, !prof !163

for_begin_i_1_0.preheader.lr.ph:                  ; preds = %parallel_closure_entry
  %sum_c = load ptr, ptr %1, align 8, !dbg !161
  %invariant.gep = getelementptr inbounds i8, ptr %sum_c, i64 200
  br label %for_begin_i_1_0.preheader, !dbg !161

for_begin_i_1_0.preheader:                        ; preds = %for_begin_i_1_0.preheader.lr.ph, %for_end_i_1_0
  %iter_1_fused3 = phi i32 [ %8, %for_begin_i_1_0.preheader.lr.ph ], [ %11, %for_end_i_1_0 ]
  tail call void @llvm.dbg.declare(metadata i32 %iter_1_fused3, metadata !167, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.declare(metadata i32 0, metadata !168, metadata !DIExpression()), !dbg !161
  br label %for_begin_j_1_0_fused.s.preheader, !dbg !161

for_end_iter_1_fused:                             ; preds = %for_end_i_1_0, %parallel_closure_entry
  ret i32 0, !dbg !161

for_begin_j_1_0_fused.s.preheader:                ; preds = %for_begin_i_1_0.preheader, %for_end_j_1_0_fused.s
  %indvars.iv5 = phi i64 [ 0, %for_begin_i_1_0.preheader ], [ %indvars.iv.next6, %for_end_j_1_0_fused.s ]
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv5, metadata !168, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.declare(metadata i32 0, metadata !169, metadata !DIExpression()), !dbg !161
  %10 = mul nuw nsw i64 %indvars.iv5, 2551
  %invariant.gep10 = getelementptr inbounds i32, ptr %invariant.gep, i64 %10, !dbg !161
  br label %for_body_j_1_0_fused.s, !dbg !161

for_end_i_1_0:                                    ; preds = %for_end_j_1_0_fused.s
  %11 = add nsw i32 %iter_1_fused3, 1, !dbg !161
  tail call void @llvm.dbg.declare(metadata i32 %11, metadata !167, metadata !DIExpression()), !dbg !161
  %exitcond9.not = icmp eq i32 %11, %7, !dbg !161
  br i1 %exitcond9.not, label %for_end_iter_1_fused, label %for_begin_i_1_0.preheader, !dbg !161, !prof !166

for_body_j_1_0_fused.s:                           ; preds = %if_end.1, %for_begin_j_1_0_fused.s.preheader
  %indvars.iv = phi i64 [ 0, %for_begin_j_1_0_fused.s.preheader ], [ %indvars.iv.next.1, %if_end.1 ]
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv, metadata !169, metadata !DIExpression()), !dbg !161
  %12 = add nuw nsw i64 %indvars.iv, %indvars.iv5, !dbg !161
  %13 = icmp ult i64 %12, 49, !dbg !161
  br i1 %13, label %if_then, label %if_end, !dbg !161, !prof !19

for_end_j_1_0_fused.s:                            ; preds = %if_end
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv.next6, metadata !168, metadata !DIExpression()), !dbg !161
  %exitcond8.not = icmp eq i64 %indvars.iv.next6, 49, !dbg !161
  br i1 %exitcond8.not, label %for_end_i_1_0, label %for_begin_j_1_0_fused.s.preheader, !dbg !161, !prof !170

if_then:                                          ; preds = %for_body_j_1_0_fused.s
  %14 = mul nuw nsw i64 %indvars.iv, 50, !dbg !161
  %gep11 = getelementptr inbounds i32, ptr %invariant.gep10, i64 %14, !dbg !161
  store i32 0, ptr %gep11, align 4, !dbg !161, !tbaa !171
  br label %if_end, !dbg !161

if_end:                                           ; preds = %if_then, %for_body_j_1_0_fused.s
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1, !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !169, metadata !DIExpression()), !dbg !161
  %exitcond.not = icmp eq i64 %indvars.iv, 48, !dbg !161
  br i1 %exitcond.not, label %for_end_j_1_0_fused.s, label %for_body_j_1_0_fused.s.1, !dbg !161, !prof !170

for_body_j_1_0_fused.s.1:                         ; preds = %if_end
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !169, metadata !DIExpression()), !dbg !161
  %15 = add nuw nsw i64 %indvars.iv.next, %indvars.iv5, !dbg !161
  %16 = icmp ult i64 %15, 49, !dbg !161
  br i1 %16, label %if_then.1, label %if_end.1, !dbg !161, !prof !19

if_then.1:                                        ; preds = %for_body_j_1_0_fused.s.1
  %17 = mul nuw nsw i64 %indvars.iv.next, 50, !dbg !161
  %gep11.1 = getelementptr inbounds i32, ptr %invariant.gep10, i64 %17, !dbg !161
  store i32 0, ptr %gep11.1, align 4, !dbg !161, !tbaa !171
  br label %if_end.1, !dbg !161

if_end.1:                                         ; preds = %if_then.1, %for_body_j_1_0_fused.s.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv.next.1, metadata !169, metadata !DIExpression()), !dbg !161
  br label %for_body_j_1_0_fused.s
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define private noundef i32 @__tvm_parallel_lambda.47(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #4 {
parallel_closure_entry:
  %sum_c = load ptr, ptr %1, align 8, !dbg !161
  %2 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !161
  %num_task = load i32, ptr %2, align 4, !dbg !161
  %3 = add nsw i32 %num_task, 9999, !dbg !161
  %4 = sdiv i32 %3, %num_task, !dbg !161
  %5 = add nsw i32 %task_id, 1, !dbg !161
  %6 = mul nsw i32 %4, %5, !dbg !161
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 10000), !dbg !161
  %8 = mul nsw i32 %4, %task_id, !dbg !161
  tail call void @llvm.dbg.declare(metadata i32 %8, metadata !173, metadata !DIExpression()), !dbg !161
  %9 = icmp slt i32 %8, %7, !dbg !161
  br i1 %9, label %for_begin_i_1_1.preheader.lr.ph, label %for_end_iter_2_fused, !dbg !161, !prof !163

for_begin_i_1_1.preheader.lr.ph:                  ; preds = %parallel_closure_entry
  %10 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !161
  %c = load ptr, ptr %10, align 8, !dbg !161
  %invariant.gep = getelementptr inbounds i8, ptr %c, i64 204
  %invariant.gep1 = getelementptr inbounds i8, ptr %c, i64 4
  %invariant.gep30 = getelementptr i8, ptr %sum_c, i64 200
  br label %for_begin_i_1_1.preheader, !dbg !161

for_begin_i_1_1.preheader:                        ; preds = %for_begin_i_1_1.preheader.lr.ph, %for_end_i_1_1
  %iter_2_fused7 = phi i32 [ %8, %for_begin_i_1_1.preheader.lr.ph ], [ %14, %for_end_i_1_1 ]
  tail call void @llvm.dbg.declare(metadata i32 %iter_2_fused7, metadata !173, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.declare(metadata i32 0, metadata !174, metadata !DIExpression()), !dbg !161
  br label %for_begin_j_1_1.preheader, !dbg !161

for_end_iter_2_fused:                             ; preds = %for_end_i_1_1, %parallel_closure_entry
  ret i32 0, !dbg !161

for_begin_j_1_1.preheader:                        ; preds = %for_begin_i_1_1.preheader, %for_end_j_1_1
  %indvars.iv14 = phi i64 [ 0, %for_begin_i_1_1.preheader ], [ %indvars.iv.next15, %for_end_j_1_1 ]
  %11 = mul nuw nsw i64 %indvars.iv14, 10204
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv14, metadata !174, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.declare(metadata i32 0, metadata !175, metadata !DIExpression()), !dbg !161
  %12 = mul nuw nsw i64 %indvars.iv14, 51
  %13 = mul nuw nsw i64 %indvars.iv14, 2551
  %invariant.gep22 = getelementptr inbounds i32, ptr %invariant.gep, i64 %12, !dbg !161
  %invariant.gep20 = getelementptr inbounds i32, ptr %invariant.gep1, i64 %12
  %invariant.gep24 = getelementptr inbounds i32, ptr %sum_c, i64 %13, !dbg !161
  %gep31 = getelementptr i8, ptr %invariant.gep30, i64 %11
  br label %for_body_j_1_1, !dbg !161

for_end_i_1_1:                                    ; preds = %for_end_j_1_1
  %14 = add nsw i32 %iter_2_fused7, 1, !dbg !161
  tail call void @llvm.dbg.declare(metadata i32 %14, metadata !173, metadata !DIExpression()), !dbg !161
  %exitcond19.not = icmp eq i32 %14, %7, !dbg !161
  br i1 %exitcond19.not, label %for_end_iter_2_fused, label %for_begin_i_1_1.preheader, !dbg !161, !prof !166

for_body_j_1_1:                                   ; preds = %for_begin_j_1_1.preheader, %if_end
  %indvars.iv10 = phi i64 [ 0, %for_begin_j_1_1.preheader ], [ %indvars.iv.next11, %if_end ]
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv10, metadata !175, metadata !DIExpression()), !dbg !161
  %15 = add nuw nsw i64 %indvars.iv10, %indvars.iv14, !dbg !161
  %16 = icmp ult i64 %15, 49, !dbg !161
  tail call void @llvm.dbg.declare(metadata i32 0, metadata !176, metadata !DIExpression()), !dbg !161
  %17 = icmp ne i64 %indvars.iv10, 0, !dbg !161
  %or.cond = and i1 %16, %17, !dbg !161
  br i1 %or.cond, label %for_body_k.lr.ph, label %if_end, !dbg !161, !prof !177

for_body_k.lr.ph:                                 ; preds = %for_body_j_1_1
  %18 = mul nuw nsw i64 %indvars.iv10, 200, !dbg !161
  %scevgep = getelementptr i8, ptr %gep31, i64 %18, !dbg !161
  %19 = mul nuw nsw i64 %indvars.iv10, 50
  %gep23 = getelementptr inbounds i32, ptr %invariant.gep22, i64 %indvars.iv10
  %gep25 = getelementptr inbounds i32, ptr %invariant.gep24, i64 %19
  %load_initial = load i32, ptr %scevgep, align 4
  %xtraiter = and i64 %indvars.iv10, 1, !dbg !161
  %20 = icmp eq i64 %indvars.iv10, 1, !dbg !161
  br i1 %20, label %if_end.loopexit.unr-lcssa, label %for_body_k.lr.ph.new, !dbg !161, !prof !178

for_body_k.lr.ph.new:                             ; preds = %for_body_k.lr.ph
  %unroll_iter = and i64 %indvars.iv10, 62, !dbg !161
  %invariant.gep26 = getelementptr inbounds i8, ptr %gep25, i64 204, !dbg !161
  %invariant.gep28 = getelementptr inbounds i8, ptr %gep25, i64 204, !dbg !161
  br label %for_body_k, !dbg !161

for_end_j_1_1:                                    ; preds = %if_end
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1, !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv.next15, metadata !174, metadata !DIExpression()), !dbg !161
  %exitcond18.not = icmp eq i64 %indvars.iv.next15, 49, !dbg !161
  br i1 %exitcond18.not, label %for_end_i_1_1, label %for_begin_j_1_1.preheader, !dbg !161, !prof !170

if_end.loopexit.unr-lcssa:                        ; preds = %for_body_k, %for_body_k.lr.ph
  %store_forwarded.unr = phi i32 [ %load_initial, %for_body_k.lr.ph ], [ %37, %for_body_k ]
  %indvars.iv.unr = phi i64 [ 0, %for_body_k.lr.ph ], [ %indvars.iv.next.1, %for_body_k ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !161
  br i1 %lcmp.mod.not, label %if_end, label %for_body_k.epil, !dbg !161, !prof !179

for_body_k.epil:                                  ; preds = %if_end.loopexit.unr-lcssa
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv.unr, metadata !176, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 %12, metadata !180, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 %12, metadata !180, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 poison, metadata !181, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 poison, metadata !181, metadata !DIExpression()), !dbg !161
  %21 = mul nuw nsw i64 %indvars.iv.unr, 50, !dbg !161
  %gep.epil = getelementptr inbounds i32, ptr %gep23, i64 %21, !dbg !161
  %22 = load i32, ptr %gep.epil, align 4, !dbg !161, !tbaa !164
  %gep21.epil = getelementptr inbounds i32, ptr %invariant.gep20, i64 %indvars.iv.unr, !dbg !161
  %23 = load i32, ptr %gep21.epil, align 4, !dbg !161, !tbaa !164
  %24 = getelementptr inbounds i32, ptr %gep25, i64 %indvars.iv.unr, !dbg !161
  %25 = add i32 %23, %22, !dbg !161
  %26 = add i32 %25, %store_forwarded.unr, !dbg !161
  %27 = getelementptr inbounds i8, ptr %24, i64 204, !dbg !161
  store i32 %26, ptr %27, align 4, !dbg !161, !tbaa !171
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv.unr, metadata !176, metadata !DIExpression(DW_OP_plus_uconst, 1)), !dbg !161
  br label %if_end, !dbg !161

if_end:                                           ; preds = %for_body_k.epil, %if_end.loopexit.unr-lcssa, %for_body_j_1_1
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv.next11, metadata !175, metadata !DIExpression()), !dbg !161
  %exitcond13.not = icmp eq i64 %indvars.iv.next11, 49, !dbg !161
  br i1 %exitcond13.not, label %for_end_j_1_1, label %for_body_j_1_1, !dbg !161, !prof !170

for_body_k:                                       ; preds = %for_body_k, %for_body_k.lr.ph.new
  %store_forwarded = phi i32 [ %load_initial, %for_body_k.lr.ph.new ], [ %37, %for_body_k ], !dbg !161
  %indvars.iv = phi i64 [ 0, %for_body_k.lr.ph.new ], [ %indvars.iv.next.1, %for_body_k ]
  %niter = phi i64 [ 0, %for_body_k.lr.ph.new ], [ %niter.next.1, %for_body_k ]
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv, metadata !176, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 %12, metadata !180, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 %12, metadata !180, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 poison, metadata !181, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 poison, metadata !181, metadata !DIExpression()), !dbg !161
  %28 = mul nuw nsw i64 %indvars.iv, 50, !dbg !161
  %gep = getelementptr inbounds i32, ptr %gep23, i64 %28, !dbg !161
  %29 = load i32, ptr %gep, align 4, !dbg !161, !tbaa !164
  %gep21 = getelementptr inbounds i32, ptr %invariant.gep20, i64 %indvars.iv, !dbg !161
  %30 = load i32, ptr %gep21, align 4, !dbg !161, !tbaa !164
  %31 = add i32 %30, %29, !dbg !161
  %32 = add i32 %31, %store_forwarded, !dbg !161
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %indvars.iv, !dbg !161
  store i32 %32, ptr %gep27, align 4, !dbg !161, !tbaa !171
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1, !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !176, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !176, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 %12, metadata !180, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 %12, metadata !180, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 poison, metadata !181, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 poison, metadata !181, metadata !DIExpression()), !dbg !161
  %33 = mul nuw nsw i64 %indvars.iv.next, 50, !dbg !161
  %gep.1 = getelementptr inbounds i32, ptr %gep23, i64 %33, !dbg !161
  %34 = load i32, ptr %gep.1, align 4, !dbg !161, !tbaa !164
  %gep21.1 = getelementptr inbounds i32, ptr %invariant.gep20, i64 %indvars.iv.next, !dbg !161
  %35 = load i32, ptr %gep21.1, align 4, !dbg !161, !tbaa !164
  %36 = add i32 %35, %34, !dbg !161
  %37 = add i32 %36, %32, !dbg !161
  %gep29 = getelementptr inbounds i32, ptr %invariant.gep28, i64 %indvars.iv.next, !dbg !161
  store i32 %37, ptr %gep29, align 4, !dbg !161, !tbaa !171
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv.next.1, metadata !176, metadata !DIExpression()), !dbg !161
  %niter.next.1 = add i64 %niter, 2, !dbg !161
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !161
  br i1 %niter.ncmp.1, label %if_end.loopexit.unr-lcssa, label %for_body_k, !dbg !161, !prof !182
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define private noundef i32 @__tvm_parallel_lambda.48(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #4 {
parallel_closure_entry:
  %c = load ptr, ptr %1, align 8, !dbg !161
  %2 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !161
  %W = load ptr, ptr %2, align 8, !dbg !161
  %3 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !161
  %num_task = load i32, ptr %3, align 4, !dbg !161
  %4 = add nsw i32 %num_task, 9999, !dbg !161
  %5 = sdiv i32 %4, %num_task, !dbg !161
  %6 = add nsw i32 %task_id, 1, !dbg !161
  %7 = mul nsw i32 %5, %6, !dbg !161
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 10000), !dbg !161
  %9 = mul nsw i32 %5, %task_id, !dbg !161
  tail call void @llvm.dbg.declare(metadata i32 %9, metadata !183, metadata !DIExpression()), !dbg !161
  %10 = icmp slt i32 %9, %8, !dbg !161
  br i1 %10, label %for_begin_i_1_2.preheader.lr.ph, label %for_end_iter_3_fused, !dbg !161, !prof !163

for_begin_i_1_2.preheader.lr.ph:                  ; preds = %parallel_closure_entry
  %11 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !161
  %sum_c = load ptr, ptr %11, align 8, !dbg !161
  %invariant.gep = getelementptr inbounds i8, ptr %sum_c, i64 200
  br label %for_begin_i_1_2.preheader, !dbg !161

for_begin_i_1_2.preheader:                        ; preds = %for_begin_i_1_2.preheader.lr.ph, %for_end_i_1_2
  %iter_3_fused3 = phi i32 [ %9, %for_begin_i_1_2.preheader.lr.ph ], [ %15, %for_end_i_1_2 ]
  tail call void @llvm.dbg.declare(metadata i32 %iter_3_fused3, metadata !183, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.declare(metadata i32 0, metadata !184, metadata !DIExpression()), !dbg !161
  br label %for_begin_j_1_2_fused.s.preheader, !dbg !161

for_end_iter_3_fused:                             ; preds = %for_end_i_1_2, %parallel_closure_entry
  ret i32 0, !dbg !161

for_begin_j_1_2_fused.s.preheader:                ; preds = %for_begin_i_1_2.preheader, %for_end_j_1_2_fused.s
  %indvars.iv6 = phi i64 [ 0, %for_begin_i_1_2.preheader ], [ %indvars.iv.next7, %for_end_j_1_2_fused.s ]
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv6, metadata !184, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.declare(metadata i32 0, metadata !185, metadata !DIExpression()), !dbg !161
  %12 = mul nuw nsw i64 %indvars.iv6, 51
  %13 = add nuw nsw i64 %12, 1
  %14 = mul nuw nsw i64 %indvars.iv6, 2551
  %invariant.gep11 = getelementptr inbounds i32, ptr %invariant.gep, i64 %14, !dbg !161
  br label %for_body_j_1_2_fused.s, !dbg !161

for_end_i_1_2:                                    ; preds = %for_end_j_1_2_fused.s
  %15 = add nsw i32 %iter_3_fused3, 1, !dbg !161
  tail call void @llvm.dbg.declare(metadata i32 %15, metadata !183, metadata !DIExpression()), !dbg !161
  %exitcond10.not = icmp eq i32 %15, %8, !dbg !161
  br i1 %exitcond10.not, label %for_end_iter_3_fused, label %for_begin_i_1_2.preheader, !dbg !161, !prof !166

for_body_j_1_2_fused.s:                           ; preds = %if_end.1, %for_begin_j_1_2_fused.s.preheader
  %indvars.iv = phi i64 [ 0, %for_begin_j_1_2_fused.s.preheader ], [ %indvars.iv.next.1, %if_end.1 ]
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv, metadata !185, metadata !DIExpression()), !dbg !161
  %16 = add nuw nsw i64 %indvars.iv, %indvars.iv6, !dbg !161
  %17 = icmp ult i64 %16, 49, !dbg !161
  br i1 %17, label %if_then, label %if_end, !dbg !161, !prof !19

for_end_j_1_2_fused.s:                            ; preds = %if_end
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv.next7, metadata !184, metadata !DIExpression()), !dbg !161
  %exitcond9.not = icmp eq i64 %indvars.iv.next7, 49, !dbg !161
  br i1 %exitcond9.not, label %for_end_i_1_2, label %for_begin_j_1_2_fused.s.preheader, !dbg !161, !prof !170

if_then:                                          ; preds = %for_body_j_1_2_fused.s
  %18 = add nuw nsw i64 %13, %indvars.iv, !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 %18, metadata !186, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 %18, metadata !186, metadata !DIExpression()), !dbg !161
  %19 = getelementptr inbounds i32, ptr %W, i64 %18, !dbg !161
  %20 = load i32, ptr %19, align 4, !dbg !161, !tbaa !187
  %21 = mul nuw nsw i64 %indvars.iv, 51, !dbg !161
  %gep12 = getelementptr inbounds i32, ptr %invariant.gep11, i64 %21, !dbg !161
  %22 = load i32, ptr %gep12, align 4, !dbg !161, !tbaa !171
  %23 = add nsw i32 %22, %20, !dbg !161
  %24 = getelementptr inbounds i32, ptr %c, i64 %18, !dbg !161
  store i32 %23, ptr %24, align 4, !dbg !161, !tbaa !164
  br label %if_end, !dbg !161

if_end:                                           ; preds = %if_then, %for_body_j_1_2_fused.s
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1, !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !185, metadata !DIExpression()), !dbg !161
  %exitcond.not = icmp eq i64 %indvars.iv, 48, !dbg !161
  br i1 %exitcond.not, label %for_end_j_1_2_fused.s, label %for_body_j_1_2_fused.s.1, !dbg !161, !prof !170

for_body_j_1_2_fused.s.1:                         ; preds = %if_end
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !185, metadata !DIExpression()), !dbg !161
  %25 = add nuw nsw i64 %indvars.iv.next, %indvars.iv6, !dbg !161
  %26 = icmp ult i64 %25, 49, !dbg !161
  br i1 %26, label %if_then.1, label %if_end.1, !dbg !161, !prof !19

if_then.1:                                        ; preds = %for_body_j_1_2_fused.s.1
  %27 = add nuw nsw i64 %13, %indvars.iv.next, !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 %27, metadata !186, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 %27, metadata !186, metadata !DIExpression()), !dbg !161
  %28 = getelementptr inbounds i32, ptr %W, i64 %27, !dbg !161
  %29 = load i32, ptr %28, align 4, !dbg !161, !tbaa !187
  %30 = mul nuw nsw i64 %indvars.iv.next, 51, !dbg !161
  %gep12.1 = getelementptr inbounds i32, ptr %invariant.gep11, i64 %30, !dbg !161
  %31 = load i32, ptr %gep12.1, align 4, !dbg !161, !tbaa !171
  %32 = add nsw i32 %31, %29, !dbg !161
  %33 = getelementptr inbounds i32, ptr %c, i64 %27, !dbg !161
  store i32 %32, ptr %33, align 4, !dbg !161, !tbaa !164
  br label %if_end.1, !dbg !161

if_end.1:                                         ; preds = %if_then.1, %for_body_j_1_2_fused.s.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !161
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv.next.1, metadata !185, metadata !DIExpression()), !dbg !161
  br label %for_body_j_1_2_fused.s
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define private noundef i32 @__tvm_parallel_lambda.49(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #4 {
parallel_closure_entry:
  %out_l = load ptr, ptr %1, align 8, !dbg !161
  %2 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !161
  %num_task = load i32, ptr %2, align 4, !dbg !161
  %3 = add nsw i32 %num_task, 156, !dbg !161
  %4 = sdiv i32 %3, %num_task, !dbg !161
  %5 = add nsw i32 %task_id, 1, !dbg !161
  %6 = mul nsw i32 %4, %5, !dbg !161
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 157), !dbg !161
  %8 = mul nsw i32 %4, %task_id, !dbg !161
  tail call void @llvm.dbg.declare(metadata i32 %8, metadata !189, metadata !DIExpression()), !dbg !161
  %9 = icmp slt i32 %8, %7, !dbg !161
  br i1 %9, label %for_begin_iter_4_fused_1.s.preheader.lr.ph, label %for_end_iter_4_fused_0, !dbg !161, !prof !163

for_begin_iter_4_fused_1.s.preheader.lr.ph:       ; preds = %parallel_closure_entry
  %10 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !161
  %c = load ptr, ptr %10, align 8, !dbg !161
  %11 = getelementptr inbounds i8, ptr %c, i64 196
  br label %for_begin_iter_4_fused_1.s.preheader, !dbg !161

for_begin_iter_4_fused_1.s.preheader:             ; preds = %for_begin_iter_4_fused_1.s.preheader.lr.ph, %for_end_iter_4_fused_1.s
  %iter_4_fused_02 = phi i32 [ %8, %for_begin_iter_4_fused_1.s.preheader.lr.ph ], [ %16, %for_end_iter_4_fused_1.s ]
  tail call void @llvm.dbg.declare(metadata i32 %iter_4_fused_02, metadata !189, metadata !DIExpression()), !dbg !161
  %12 = shl nsw i32 %iter_4_fused_02, 2
  tail call void @llvm.dbg.declare(metadata i32 0, metadata !190, metadata !DIExpression()), !dbg !161
  br label %for_body_iter_4_fused_1.s, !dbg !161

for_end_iter_4_fused_0:                           ; preds = %for_end_iter_4_fused_1.s, %parallel_closure_entry
  ret i32 0, !dbg !161

for_body_iter_4_fused_1.s:                        ; preds = %if_end.1, %for_begin_iter_4_fused_1.s.preheader
  %iter_4_fused_1.s1 = phi i32 [ 0, %for_begin_iter_4_fused_1.s.preheader ], [ %26, %if_end.1 ]
  tail call void @llvm.dbg.declare(metadata i32 %iter_4_fused_1.s1, metadata !190, metadata !DIExpression()), !dbg !161
  %13 = lshr i32 %iter_4_fused_1.s1, 4, !dbg !161
  %14 = add nuw nsw i32 %13, %12, !dbg !161
  %15 = icmp slt i32 %14, 625, !dbg !161
  br i1 %15, label %if_then, label %if_end, !dbg !161, !prof !19

for_end_iter_4_fused_1.s:                         ; preds = %if_end.1
  %16 = add nsw i32 %iter_4_fused_02, 1, !dbg !161
  tail call void @llvm.dbg.declare(metadata i32 %16, metadata !189, metadata !DIExpression()), !dbg !161
  %exitcond3.not = icmp eq i32 %16, %7, !dbg !161
  br i1 %exitcond3.not, label %for_end_iter_4_fused_0, label %for_begin_iter_4_fused_1.s.preheader, !dbg !161, !prof !166

if_then:                                          ; preds = %for_body_iter_4_fused_1.s
  %17 = load i32, ptr %11, align 4, !dbg !161, !tbaa !191
  %18 = load i32, ptr %out_l, align 64, !dbg !161, !tbaa !201
  %19 = add nsw i32 %18, %17, !dbg !161
  store i32 %19, ptr %out_l, align 64, !dbg !161, !tbaa !201
  br label %if_end, !dbg !161

if_end:                                           ; preds = %if_then, %for_body_iter_4_fused_1.s
  tail call void @llvm.dbg.declare(metadata i32 %iter_4_fused_1.s1, metadata !190, metadata !DIExpression(DW_OP_plus_uconst, 1)), !dbg !161
  tail call void @llvm.dbg.declare(metadata i32 %iter_4_fused_1.s1, metadata !190, metadata !DIExpression(DW_OP_plus_uconst, 1)), !dbg !161
  %20 = lshr i32 %iter_4_fused_1.s1, 4, !dbg !161
  %21 = add nuw nsw i32 %20, %12, !dbg !161
  %22 = icmp slt i32 %21, 625, !dbg !161
  br i1 %22, label %if_then.1, label %if_end.1, !dbg !161, !prof !19

if_then.1:                                        ; preds = %if_end
  %23 = load i32, ptr %11, align 4, !dbg !161, !tbaa !191
  %24 = load i32, ptr %out_l, align 64, !dbg !161, !tbaa !201
  %25 = add nsw i32 %24, %23, !dbg !161
  store i32 %25, ptr %out_l, align 64, !dbg !161, !tbaa !201
  br label %if_end.1, !dbg !161

if_end.1:                                         ; preds = %if_then.1, %if_end
  %26 = add nuw nsw i32 %iter_4_fused_1.s1, 2, !dbg !161
  tail call void @llvm.dbg.declare(metadata i32 %26, metadata !190, metadata !DIExpression()), !dbg !161
  %exitcond.not.1 = icmp eq i32 %26, 64, !dbg !161
  br i1 %exitcond.not.1, label %for_end_iter_4_fused_1.s, label %for_body_iter_4_fused_1.s, !dbg !161, !prof !212
}

; Function Attrs: nofree nosync nounwind memory(none)
define weak dso_local half @__truncsfhf2(float %a0) local_unnamed_addr #5 section ".text.tvm.fp16.conv" {
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
define weak dso_local float @__extendhfsf2(half %a0) local_unnamed_addr #5 section ".text.tvm.fp16.conv" {
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
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare half @llvm.fabs.f16(half) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { "target-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { noinline "target-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) "target-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "target-cpu"="generic" }
attributes #5 = { nofree nosync nounwind memory(none) "target-cpu"="generic" "target-features" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!25 = !{!"0x495a070.w4.b0", !26, i64 0}
!26 = !{!"0x495a070.w8.b0", !27, i64 0}
!27 = !{!"0x495a070.w16.b0", !28, i64 0}
!28 = !{!"0x495a070.w32.b0", !29, i64 0}
!29 = !{!"0x495a070.w64.b0", !30, i64 0}
!30 = !{!"0x495a070.w128.b0", !31, i64 0}
!31 = !{!"0x495a070.w256.b0", !32, i64 0}
!32 = !{!"0x495a070.w512.b0", !33, i64 0}
!33 = !{!"0x495a070.w1024.b0", !34, i64 0}
!34 = !{!"0x495a070", !22, i64 0}
!35 = !DILocalVariable(name: "W_handle.code", scope: !5, file: !1, type: !8)
!36 = !{!37, !37, i64 0}
!37 = !{!"0x495a070.w4.b4", !26, i64 0}
!38 = !DILocalVariable(name: "c_handle.code", scope: !5, file: !1, type: !8)
!39 = !{!40, !40, i64 0}
!40 = !{!"0x495a070.w4.b8", !41, i64 0}
!41 = !{!"0x495a070.w8.b8", !27, i64 0}
!42 = !DILocalVariable(name: "out_l_handle.code", scope: !5, file: !1, type: !8)
!43 = !{!44, !44, i64 0}
!44 = !{!"0x495a070.w4.b12", !41, i64 0}
!45 = !DILocalVariable(name: "sum_c_handle.code", scope: !5, file: !1, type: !8)
!46 = !DILocalVariable(name: "W_handle", scope: !5, file: !1, type: !9)
!47 = !DILocalVariable(name: "c_handle", scope: !5, file: !1, type: !9)
!48 = !DILocalVariable(name: "out_l_handle", scope: !5, file: !1, type: !9)
!49 = !DILocalVariable(name: "sum_c_handle", scope: !5, file: !1, type: !9)
!50 = !DILocalVariable(name: "main0.W_handle.shape", scope: !5, file: !1, type: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52)
!52 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!53 = !DILocalVariable(name: "main0.W_handle.strides", scope: !5, file: !1, type: !51)
!54 = !DILocalVariable(name: "dev_id", scope: !5, file: !1, type: !8)
!55 = !DILocalVariable(name: "W", scope: !5, file: !1, type: !10)
!56 = !DILocalVariable(name: "main0.c_handle.shape", scope: !5, file: !1, type: !51)
!57 = !DILocalVariable(name: "main0.c_handle.strides", scope: !5, file: !1, type: !51)
!58 = !DILocalVariable(name: "c", scope: !5, file: !1, type: !10)
!59 = !DILocalVariable(name: "main0.out_l_handle.shape", scope: !5, file: !1, type: !51)
!60 = !DILocalVariable(name: "main0.out_l_handle.strides", scope: !5, file: !1, type: !51)
!61 = !DILocalVariable(name: "out_l", scope: !5, file: !1, type: !10)
!62 = !DILocalVariable(name: "main0.sum_c_handle.shape", scope: !5, file: !1, type: !51)
!63 = !DILocalVariable(name: "main0.sum_c_handle.strides", scope: !5, file: !1, type: !51)
!64 = !DILocalVariable(name: "sum_c", scope: !5, file: !1, type: !10)
!65 = !{!66, !66, i64 0}
!66 = !{!"0x48ec370.w8.b0", !67, i64 0}
!67 = !{!"0x48ec370.w16.b0", !68, i64 0}
!68 = !{!"0x48ec370.w32.b0", !69, i64 0}
!69 = !{!"0x48ec370.w64.b0", !70, i64 0}
!70 = !{!"0x48ec370.w128.b0", !71, i64 0}
!71 = !{!"0x48ec370.w256.b0", !72, i64 0}
!72 = !{!"0x48ec370.w512.b0", !73, i64 0}
!73 = !{!"0x48ec370.w1024.b0", !74, i64 0}
!74 = !{!"0x48ec370", !22, i64 0}
!75 = !{!76, !76, i64 0}
!76 = !{!"0x48ec370.w8.b8", !67, i64 0}
!77 = !{!78, !78, i64 0}
!78 = !{!"0x49ab430.w8.b0", !79, i64 0}
!79 = !{!"0x49ab430.w16.b0", !80, i64 0}
!80 = !{!"0x49ab430.w32.b0", !81, i64 0}
!81 = !{!"0x49ab430.w64.b0", !82, i64 0}
!82 = !{!"0x49ab430.w128.b0", !83, i64 0}
!83 = !{!"0x49ab430.w256.b0", !84, i64 0}
!84 = !{!"0x49ab430.w512.b0", !85, i64 0}
!85 = !{!"0x49ab430.w1024.b0", !86, i64 0}
!86 = !{!"0x49ab430", !22, i64 0}
!87 = !{!88, !88, i64 0}
!88 = !{!"0x49ab430.w8.b8", !79, i64 0}
!89 = !{!90, !90, i64 0}
!90 = !{!"0x49764f0.w8.b0", !91, i64 0}
!91 = !{!"0x49764f0.w16.b0", !92, i64 0}
!92 = !{!"0x49764f0.w32.b0", !93, i64 0}
!93 = !{!"0x49764f0.w64.b0", !94, i64 0}
!94 = !{!"0x49764f0.w128.b0", !95, i64 0}
!95 = !{!"0x49764f0.w256.b0", !96, i64 0}
!96 = !{!"0x49764f0.w512.b0", !97, i64 0}
!97 = !{!"0x49764f0.w1024.b0", !98, i64 0}
!98 = !{!"0x49764f0", !22, i64 0}
!99 = !{!100, !100, i64 0}
!100 = !{!"0x49764f0.w8.b8", !91, i64 0}
!101 = !{!102, !102, i64 0}
!102 = !{!"0x4976be0.w8.b0", !103, i64 0}
!103 = !{!"0x4976be0.w16.b0", !104, i64 0}
!104 = !{!"0x4976be0.w32.b0", !105, i64 0}
!105 = !{!"0x4976be0.w64.b0", !106, i64 0}
!106 = !{!"0x4976be0.w128.b0", !107, i64 0}
!107 = !{!"0x4976be0.w256.b0", !108, i64 0}
!108 = !{!"0x4976be0.w512.b0", !109, i64 0}
!109 = !{!"0x4976be0.w1024.b0", !110, i64 0}
!110 = !{!"0x4976be0", !22, i64 0}
!111 = !{!112, !112, i64 0}
!112 = !{!"0x4976be0.w8.b8", !103, i64 0}
!113 = !{!114, !114, i64 0}
!114 = !{!"0x4925670.w8.b0", !115, i64 0}
!115 = !{!"0x4925670.w16.b0", !116, i64 0}
!116 = !{!"0x4925670.w32.b0", !117, i64 0}
!117 = !{!"0x4925670.w64.b0", !118, i64 0}
!118 = !{!"0x4925670.w128.b0", !119, i64 0}
!119 = !{!"0x4925670.w256.b0", !120, i64 0}
!120 = !{!"0x4925670.w512.b0", !121, i64 0}
!121 = !{!"0x4925670.w1024.b0", !122, i64 0}
!122 = !{!"0x4925670", !22, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"0x48ee740.w8.b0", !125, i64 0}
!125 = !{!"0x48ee740.w16.b0", !126, i64 0}
!126 = !{!"0x48ee740.w32.b0", !127, i64 0}
!127 = !{!"0x48ee740.w64.b0", !128, i64 0}
!128 = !{!"0x48ee740.w128.b0", !129, i64 0}
!129 = !{!"0x48ee740.w256.b0", !130, i64 0}
!130 = !{!"0x48ee740.w512.b0", !131, i64 0}
!131 = !{!"0x48ee740.w1024.b0", !132, i64 0}
!132 = !{!"0x48ee740", !22, i64 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"0x48ee740.w8.b8", !125, i64 0}
!135 = !{!136, !136, i64 0}
!136 = !{!"0x48ee740.w8.b16", !137, i64 0}
!137 = !{!"0x48ee740.w16.b16", !126, i64 0}
!138 = !{!139, !139, i64 0}
!139 = !{!"0x48ef9f0.w8.b0", !140, i64 0}
!140 = !{!"0x48ef9f0.w16.b0", !141, i64 0}
!141 = !{!"0x48ef9f0.w32.b0", !142, i64 0}
!142 = !{!"0x48ef9f0.w64.b0", !143, i64 0}
!143 = !{!"0x48ef9f0.w128.b0", !144, i64 0}
!144 = !{!"0x48ef9f0.w256.b0", !145, i64 0}
!145 = !{!"0x48ef9f0.w512.b0", !146, i64 0}
!146 = !{!"0x48ef9f0.w1024.b0", !147, i64 0}
!147 = !{!"0x48ef9f0", !22, i64 0}
!148 = !{!149, !149, i64 0}
!149 = !{!"0x48ef9f0.w8.b8", !140, i64 0}
!150 = !{!151, !151, i64 0}
!151 = !{!"0x48ef9f0.w8.b16", !152, i64 0}
!152 = !{!"0x48ef9f0.w16.b16", !141, i64 0}
!153 = distinct !DISubprogram(name: "main0_compute_", scope: !1, file: !1, type: !154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !156)
!154 = !DISubroutineType(types: !155)
!155 = !{!8, !10, !10, !10, !10}
!156 = !{!157, !158, !159, !160}
!157 = !DILocalVariable(name: "c", arg: 1, scope: !153, file: !1, type: !10)
!158 = !DILocalVariable(name: "sum_c", arg: 2, scope: !153, file: !1, type: !10)
!159 = !DILocalVariable(name: "W", arg: 3, scope: !153, file: !1, type: !10)
!160 = !DILocalVariable(name: "out_l", arg: 4, scope: !153, file: !1, type: !10)
!161 = !DILocation(line: 0, scope: !153)
!162 = !DILocalVariable(name: "iter_0_i_j_fused_0", scope: !153, file: !1, type: !8)
!163 = !{!"branch_weights", i32 127, i32 1}
!164 = !{!165, !165, i64 0}
!165 = !{!"0x43837b0", !22, i64 0}
!166 = !{!"branch_weights", i32 127, i32 134217601}
!167 = !DILocalVariable(name: "iter_1_fused", scope: !153, file: !1, type: !8)
!168 = !DILocalVariable(name: "i_1_0", scope: !153, file: !1, type: !8)
!169 = !DILocalVariable(name: "j_1_0_fused.s", scope: !153, file: !1, type: !8)
!170 = !{!"branch_weights", i32 1, i32 1048575}
!171 = !{!172, !172, i64 0}
!172 = !{!"0x4309f00", !22, i64 0}
!173 = !DILocalVariable(name: "iter_2_fused", scope: !153, file: !1, type: !8)
!174 = !DILocalVariable(name: "i_1_1", scope: !153, file: !1, type: !8)
!175 = !DILocalVariable(name: "j_1_1", scope: !153, file: !1, type: !8)
!176 = !DILocalVariable(name: "k", scope: !153, file: !1, type: !8)
!177 = !{!"branch_weights", i32 133169152, i32 1048704}
!178 = !{!"branch_weights", i32 1, i32 127}
!179 = !{!"branch_weights", i32 1, i32 1}
!180 = !DILocalVariable(name: "cse_var_2", scope: !153, file: !1, type: !8)
!181 = !DILocalVariable(name: "cse_var_1", scope: !153, file: !1, type: !8)
!182 = !{!"branch_weights", i32 127, i32 67108705}
!183 = !DILocalVariable(name: "iter_3_fused", scope: !153, file: !1, type: !8)
!184 = !DILocalVariable(name: "i_1_2", scope: !153, file: !1, type: !8)
!185 = !DILocalVariable(name: "j_1_2_fused.s", scope: !153, file: !1, type: !8)
!186 = !DILocalVariable(name: "cse_var_3", scope: !153, file: !1, type: !8)
!187 = !{!188, !188, i64 0}
!188 = !{!"0x447ebb0", !22, i64 0}
!189 = !DILocalVariable(name: "iter_4_fused_0", scope: !153, file: !1, type: !8)
!190 = !DILocalVariable(name: "iter_4_fused_1.s", scope: !153, file: !1, type: !8)
!191 = !{!192, !192, i64 0}
!192 = !{!"0x43837b0.w4.b196", !193, i64 0}
!193 = !{!"0x43837b0.w8.b192", !194, i64 0}
!194 = !{!"0x43837b0.w16.b192", !195, i64 0}
!195 = !{!"0x43837b0.w32.b192", !196, i64 0}
!196 = !{!"0x43837b0.w64.b192", !197, i64 0}
!197 = !{!"0x43837b0.w128.b128", !198, i64 0}
!198 = !{!"0x43837b0.w256.b0", !199, i64 0}
!199 = !{!"0x43837b0.w512.b0", !200, i64 0}
!200 = !{!"0x43837b0.w1024.b0", !165, i64 0}
!201 = !{!202, !202, i64 0}
!202 = !{!"0x4361d70.w4.b0", !203, i64 0}
!203 = !{!"0x4361d70.w8.b0", !204, i64 0}
!204 = !{!"0x4361d70.w16.b0", !205, i64 0}
!205 = !{!"0x4361d70.w32.b0", !206, i64 0}
!206 = !{!"0x4361d70.w64.b0", !207, i64 0}
!207 = !{!"0x4361d70.w128.b0", !208, i64 0}
!208 = !{!"0x4361d70.w256.b0", !209, i64 0}
!209 = !{!"0x4361d70.w512.b0", !210, i64 0}
!210 = !{!"0x4361d70.w1024.b0", !211, i64 0}
!211 = !{!"0x4361d70", !22, i64 0}
!212 = !{!"branch_weights", i32 1, i32 524287}
