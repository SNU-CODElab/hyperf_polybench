; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%closure_loop_parallel_t_3_i_2_fused = type { ptr, ptr, ptr }
%closure_loop_parallel_t_2_i_1_fused = type { ptr, ptr }
%closure_loop_parallel_t_1_i_j_1_fused_0 = type { ptr, ptr }
%closure_loop_parallel_t_0_j_fused_0 = type { ptr, ptr }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global ptr null, align 8
@__TVMBackendParallelLaunch = linkonce dllexport local_unnamed_addr global ptr null, align 8
@.str = private constant [56 x i8] c"Assert fail: num_args == 4, main0: num_args should be 4\00", align 1
@.str.1 = private constant [74 x i8] c"Assert fail: not T.isnullptr(args), main0: TVMValue* arg pointer was NULL\00", align 1
@.str.2 = private constant [76 x i8] c"Assert fail: not T.isnullptr(arg_type_ids), main0: int* type_codes was NULL\00", align 1
@.str.3 = private constant [155 x i8] c"Assert fail: _fict__handle_code == 3 or _fict__handle_code == 13 or _fict__handle_code == 7 or _fict__handle_code == 4, main0: Expect arg[0] to be pointer\00", align 1
@.str.4 = private constant [139 x i8] c"Assert fail: ex_handle_code == 3 or ex_handle_code == 13 or ex_handle_code == 7 or ex_handle_code == 4, main0: Expect arg[1] to be pointer\00", align 1
@.str.5 = private constant [139 x i8] c"Assert fail: ey_handle_code == 3 or ey_handle_code == 13 or ey_handle_code == 7 or ey_handle_code == 4, main0: Expect arg[2] to be pointer\00", align 1
@.str.6 = private constant [139 x i8] c"Assert fail: hz_handle_code == 3 or hz_handle_code == 13 or hz_handle_code == 7 or hz_handle_code == 4, main0: Expect arg[3] to be pointer\00", align 1
@.str.7 = private constant [112 x i8] c"Assert fail: not T.isnullptr(_fict__handle), main0._fict__handle is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.8 = private constant [114 x i8] c"Assert fail: 1 == T.tvm_struct_get(_fict__handle, 0, 4, \22int32\22), main0._fict__handle.ndim is expected to equal 1\00", align 1
@.str.9 = private constant [104 x i8] c"Assert fail: not T.isnullptr(ex_handle), main0.ex_handle is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.10 = private constant [106 x i8] c"Assert fail: 2 == T.tvm_struct_get(ex_handle, 0, 4, \22int32\22), main0.ex_handle.ndim is expected to equal 2\00", align 1
@.str.11 = private constant [104 x i8] c"Assert fail: not T.isnullptr(ey_handle), main0.ey_handle is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.12 = private constant [106 x i8] c"Assert fail: 2 == T.tvm_struct_get(ey_handle, 0, 4, \22int32\22), main0.ey_handle.ndim is expected to equal 2\00", align 1
@.str.13 = private constant [104 x i8] c"Assert fail: not T.isnullptr(hz_handle), main0.hz_handle is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.14 = private constant [106 x i8] c"Assert fail: 2 == T.tvm_struct_get(hz_handle, 0, 4, \22int32\22), main0.hz_handle.ndim is expected to equal 2\00", align 1
@.str.15 = private constant [260 x i8] c"Assert fail: T.tvm_struct_get(_fict__handle, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(_fict__handle, 0, 6, \22uint8\22) == T.uint8(64) and T.tvm_struct_get(_fict__handle, 0, 7, \22uint16\22) == T.uint16(1), main0._fict__handle.dtype is expected to be float64\00", align 1
@.str.16 = private constant [187 x i8] c"Assert fail: T.Cast(\22int32\22, main0__fict__handle_shape[0]) == 50, Argument main0._fict__handle.shape[0] has an unsatisfied constraint: 50 == T.Cast(\22int32\22, main0__fict__handle_shape[0])\00", align 1
@.str.17 = private constant [125 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, main0__fict__handle_strides[0]), main0._fict__handle.strides: expected to be compact array\00", align 1
@.str.18 = private constant [212 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(_fict__handle, 0, 8, \22uint64\22), Argument main0._fict__handle.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(_fict__handle, 0, 8, \22uint64\22)\00", align 1
@.str.19 = private constant [192 x i8] c"Assert fail: T.tvm_struct_get(_fict__handle, 0, 10, \22int32\22) == 1, Argument main0._fict__handle.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(_fict__handle, 0, 10, \22int32\22)\00", align 1
@.str.20 = private constant [100 x i8] c"Assert fail: not T.isnullptr(_fict_), main0._fict__handle is expected to have non-NULL data pointer\00", align 1
@.str.21 = private constant [244 x i8] c"Assert fail: T.tvm_struct_get(ex_handle, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(ex_handle, 0, 6, \22uint8\22) == T.uint8(64) and T.tvm_struct_get(ex_handle, 0, 7, \22uint16\22) == T.uint16(1), main0.ex_handle.dtype is expected to be float64\00", align 1
@.str.22 = private constant [179 x i8] c"Assert fail: T.Cast(\22int32\22, main0_ex_handle_shape[0]) == 1000, Argument main0.ex_handle.shape[0] has an unsatisfied constraint: 1000 == T.Cast(\22int32\22, main0_ex_handle_shape[0])\00", align 1
@.str.23 = private constant [179 x i8] c"Assert fail: T.Cast(\22int32\22, main0_ex_handle_shape[1]) == 1000, Argument main0.ex_handle.shape[1] has an unsatisfied constraint: 1000 == T.Cast(\22int32\22, main0_ex_handle_shape[1])\00", align 1
@.str.24 = private constant [173 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, main0_ex_handle_strides[1]) and 1000 == T.Cast(\22int32\22, main0_ex_handle_strides[0]), main0.ex_handle.strides: expected to be compact array\00", align 1
@.str.25 = private constant [200 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(ex_handle, 0, 8, \22uint64\22), Argument main0.ex_handle.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(ex_handle, 0, 8, \22uint64\22)\00", align 1
@.str.26 = private constant [180 x i8] c"Assert fail: T.tvm_struct_get(ex_handle, 0, 10, \22int32\22) == 1, Argument main0.ex_handle.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(ex_handle, 0, 10, \22int32\22)\00", align 1
@.str.27 = private constant [186 x i8] c"Assert fail: dev_id == T.tvm_struct_get(ex_handle, 0, 9, \22int32\22), Argument main0.ex_handle.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(ex_handle, 0, 9, \22int32\22)\00", align 1
@.str.28 = private constant [92 x i8] c"Assert fail: not T.isnullptr(ex), main0.ex_handle is expected to have non-NULL data pointer\00", align 1
@.str.29 = private constant [244 x i8] c"Assert fail: T.tvm_struct_get(ey_handle, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(ey_handle, 0, 6, \22uint8\22) == T.uint8(64) and T.tvm_struct_get(ey_handle, 0, 7, \22uint16\22) == T.uint16(1), main0.ey_handle.dtype is expected to be float64\00", align 1
@.str.30 = private constant [179 x i8] c"Assert fail: T.Cast(\22int32\22, main0_ey_handle_shape[0]) == 1000, Argument main0.ey_handle.shape[0] has an unsatisfied constraint: 1000 == T.Cast(\22int32\22, main0_ey_handle_shape[0])\00", align 1
@.str.31 = private constant [179 x i8] c"Assert fail: T.Cast(\22int32\22, main0_ey_handle_shape[1]) == 1000, Argument main0.ey_handle.shape[1] has an unsatisfied constraint: 1000 == T.Cast(\22int32\22, main0_ey_handle_shape[1])\00", align 1
@.str.32 = private constant [173 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, main0_ey_handle_strides[1]) and 1000 == T.Cast(\22int32\22, main0_ey_handle_strides[0]), main0.ey_handle.strides: expected to be compact array\00", align 1
@.str.33 = private constant [200 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(ey_handle, 0, 8, \22uint64\22), Argument main0.ey_handle.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(ey_handle, 0, 8, \22uint64\22)\00", align 1
@.str.34 = private constant [180 x i8] c"Assert fail: T.tvm_struct_get(ey_handle, 0, 10, \22int32\22) == 1, Argument main0.ey_handle.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(ey_handle, 0, 10, \22int32\22)\00", align 1
@.str.35 = private constant [186 x i8] c"Assert fail: dev_id == T.tvm_struct_get(ey_handle, 0, 9, \22int32\22), Argument main0.ey_handle.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(ey_handle, 0, 9, \22int32\22)\00", align 1
@.str.36 = private constant [92 x i8] c"Assert fail: not T.isnullptr(ey), main0.ey_handle is expected to have non-NULL data pointer\00", align 1
@.str.37 = private constant [244 x i8] c"Assert fail: T.tvm_struct_get(hz_handle, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(hz_handle, 0, 6, \22uint8\22) == T.uint8(64) and T.tvm_struct_get(hz_handle, 0, 7, \22uint16\22) == T.uint16(1), main0.hz_handle.dtype is expected to be float64\00", align 1
@.str.38 = private constant [179 x i8] c"Assert fail: T.Cast(\22int32\22, main0_hz_handle_shape[0]) == 1000, Argument main0.hz_handle.shape[0] has an unsatisfied constraint: 1000 == T.Cast(\22int32\22, main0_hz_handle_shape[0])\00", align 1
@.str.39 = private constant [179 x i8] c"Assert fail: T.Cast(\22int32\22, main0_hz_handle_shape[1]) == 1000, Argument main0.hz_handle.shape[1] has an unsatisfied constraint: 1000 == T.Cast(\22int32\22, main0_hz_handle_shape[1])\00", align 1
@.str.40 = private constant [173 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, main0_hz_handle_strides[1]) and 1000 == T.Cast(\22int32\22, main0_hz_handle_strides[0]), main0.hz_handle.strides: expected to be compact array\00", align 1
@.str.41 = private constant [200 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(hz_handle, 0, 8, \22uint64\22), Argument main0.hz_handle.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(hz_handle, 0, 8, \22uint64\22)\00", align 1
@.str.42 = private constant [180 x i8] c"Assert fail: T.tvm_struct_get(hz_handle, 0, 10, \22int32\22) == 1, Argument main0.hz_handle.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(hz_handle, 0, 10, \22int32\22)\00", align 1
@.str.43 = private constant [186 x i8] c"Assert fail: dev_id == T.tvm_struct_get(hz_handle, 0, 9, \22int32\22), Argument main0.hz_handle.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(hz_handle, 0, 9, \22int32\22)\00", align 1
@.str.44 = private constant [92 x i8] c"Assert fail: not T.isnullptr(hz), main0.hz_handle is expected to have non-NULL data pointer\00", align 1
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

common.ret:                                       ; preds = %assert_end94, %assert_fail93, %assert_fail91, %assert_fail89, %assert_fail87, %assert_fail85, %assert_fail81, %assert_fail79, %assert_fail77, %assert_fail75, %assert_fail73, %assert_fail71, %assert_fail69, %assert_fail67, %assert_fail63, %assert_fail61, %assert_fail59, %assert_fail57, %assert_fail55, %assert_fail53, %assert_fail51, %assert_fail49, %assert_fail45, %assert_fail43, %assert_fail41, %assert_fail39, %assert_fail37, %assert_fail35, %assert_fail33, %assert_fail31, %assert_fail29, %assert_fail27, %assert_fail25, %assert_fail23, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail7, %assert_fail5, %assert_fail3, %assert_fail1, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail27 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail33 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail39 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail45 ], [ -1, %assert_fail49 ], [ -1, %assert_fail51 ], [ -1, %assert_fail53 ], [ -1, %assert_fail55 ], [ -1, %assert_fail57 ], [ -1, %assert_fail59 ], [ -1, %assert_fail61 ], [ -1, %assert_fail63 ], [ -1, %assert_fail67 ], [ -1, %assert_fail69 ], [ -1, %assert_fail71 ], [ -1, %assert_fail73 ], [ -1, %assert_fail75 ], [ -1, %assert_fail77 ], [ -1, %assert_fail79 ], [ -1, %assert_fail81 ], [ -1, %assert_fail85 ], [ -1, %assert_fail87 ], [ -1, %assert_fail89 ], [ -1, %assert_fail91 ], [ -1, %assert_fail93 ], [ %201, %assert_end94 ]
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
  %.not95 = icmp eq ptr %arg_type_ids, null, !dbg !18
  br i1 %.not95, label %assert_fail3, label %assert_end4, !dbg !18, !prof !23

assert_fail3:                                     ; preds = %assert_end2
  %3 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %3(ptr nonnull @.str.2), !dbg !18
  br label %common.ret

assert_end4:                                      ; preds = %assert_end2
  %_fict__handle.code = load i32, ptr %arg_type_ids, align 4, !dbg !18, !tbaa !24
  tail call void @llvm.dbg.declare(metadata i32 %_fict__handle.code, metadata !35, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 %_fict__handle.code, metadata !35, metadata !DIExpression()), !dbg !18
  switch i32 %_fict__handle.code, label %assert_fail5 [
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
  %ex_handle.code = load i32, ptr %5, align 4, !dbg !18, !tbaa !36
  tail call void @llvm.dbg.declare(metadata i32 %ex_handle.code, metadata !38, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 %ex_handle.code, metadata !38, metadata !DIExpression()), !dbg !18
  switch i32 %ex_handle.code, label %assert_fail7 [
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
  %ey_handle.code = load i32, ptr %7, align 4, !dbg !18, !tbaa !39
  tail call void @llvm.dbg.declare(metadata i32 %ey_handle.code, metadata !42, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 %ey_handle.code, metadata !42, metadata !DIExpression()), !dbg !18
  switch i32 %ey_handle.code, label %assert_fail9 [
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
  %hz_handle.code = load i32, ptr %9, align 4, !dbg !18, !tbaa !43
  tail call void @llvm.dbg.declare(metadata i32 %hz_handle.code, metadata !45, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 %hz_handle.code, metadata !45, metadata !DIExpression()), !dbg !18
  switch i32 %hz_handle.code, label %assert_fail11 [
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
  %_fict__handle = load ptr, ptr %args, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %_fict__handle, metadata !46, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %_fict__handle, metadata !46, metadata !DIExpression()), !dbg !18
  %11 = getelementptr inbounds i8, ptr %args, i64 8, !dbg !18
  %ex_handle = load ptr, ptr %11, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %ex_handle, metadata !47, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %ex_handle, metadata !47, metadata !DIExpression()), !dbg !18
  %12 = getelementptr inbounds i8, ptr %args, i64 16, !dbg !18
  %ey_handle = load ptr, ptr %12, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %ey_handle, metadata !48, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %ey_handle, metadata !48, metadata !DIExpression()), !dbg !18
  %13 = getelementptr inbounds i8, ptr %args, i64 24, !dbg !18
  %hz_handle = load ptr, ptr %13, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %hz_handle, metadata !49, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %hz_handle, metadata !49, metadata !DIExpression()), !dbg !18
  %.not96 = icmp eq ptr %_fict__handle, null, !dbg !18
  br i1 %.not96, label %assert_fail13, label %assert_end14, !dbg !18, !prof !23

assert_fail13:                                    ; preds = %assert_end12
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %14(ptr nonnull @.str.7), !dbg !18
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12
  %15 = getelementptr inbounds i8, ptr %_fict__handle, i64 16, !dbg !18
  %16 = load i32, ptr %15, align 4, !dbg !18
  %17 = icmp eq i32 %16, 1, !dbg !18
  br i1 %17, label %assert_end16, label %assert_fail15, !dbg !18, !prof !19

assert_fail15:                                    ; preds = %assert_end14
  %18 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %18(ptr nonnull @.str.8), !dbg !18
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14
  %19 = getelementptr inbounds i8, ptr %_fict__handle, i64 24, !dbg !18
  %main0._fict__handle.shape = load ptr, ptr %19, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0._fict__handle.shape, metadata !50, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0._fict__handle.shape, metadata !50, metadata !DIExpression()), !dbg !18
  %20 = getelementptr inbounds i8, ptr %_fict__handle, i64 32, !dbg !18
  %main0._fict__handle.strides = load ptr, ptr %20, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0._fict__handle.strides, metadata !53, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0._fict__handle.strides, metadata !53, metadata !DIExpression()), !dbg !18
  %21 = getelementptr inbounds i8, ptr %_fict__handle, i64 12, !dbg !18
  %dev_id = load i32, ptr %21, align 4, !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !54, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !54, metadata !DIExpression()), !dbg !18
  %_fict_ = load ptr, ptr %_fict__handle, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %_fict_, metadata !55, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %_fict_, metadata !55, metadata !DIExpression()), !dbg !18
  call void @llvm.assume(i1 true) [ "align"(ptr %_fict_, i64 64) ], !dbg !18
  %.not97 = icmp eq ptr %ex_handle, null, !dbg !18
  br i1 %.not97, label %assert_fail17, label %assert_end18, !dbg !18, !prof !23

assert_fail17:                                    ; preds = %assert_end16
  %22 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %22(ptr nonnull @.str.9), !dbg !18
  br label %common.ret

assert_end18:                                     ; preds = %assert_end16
  %23 = getelementptr inbounds i8, ptr %ex_handle, i64 16, !dbg !18
  %24 = load i32, ptr %23, align 4, !dbg !18
  %25 = icmp eq i32 %24, 2, !dbg !18
  br i1 %25, label %assert_end20, label %assert_fail19, !dbg !18, !prof !19

assert_fail19:                                    ; preds = %assert_end18
  %26 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %26(ptr nonnull @.str.10), !dbg !18
  br label %common.ret

assert_end20:                                     ; preds = %assert_end18
  %27 = getelementptr inbounds i8, ptr %ex_handle, i64 24, !dbg !18
  %main0.ex_handle.shape = load ptr, ptr %27, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.ex_handle.shape, metadata !58, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.ex_handle.shape, metadata !58, metadata !DIExpression()), !dbg !18
  %28 = getelementptr inbounds i8, ptr %ex_handle, i64 32, !dbg !18
  %main0.ex_handle.strides = load ptr, ptr %28, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.ex_handle.strides, metadata !59, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.ex_handle.strides, metadata !59, metadata !DIExpression()), !dbg !18
  %ex = load ptr, ptr %ex_handle, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %ex, metadata !60, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %ex, metadata !60, metadata !DIExpression()), !dbg !18
  call void @llvm.assume(i1 true) [ "align"(ptr %ex, i64 64) ], !dbg !18
  %.not98 = icmp eq ptr %ey_handle, null, !dbg !18
  br i1 %.not98, label %assert_fail21, label %assert_end22, !dbg !18, !prof !23

assert_fail21:                                    ; preds = %assert_end20
  %29 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %29(ptr nonnull @.str.11), !dbg !18
  br label %common.ret

assert_end22:                                     ; preds = %assert_end20
  %30 = getelementptr inbounds i8, ptr %ey_handle, i64 16, !dbg !18
  %31 = load i32, ptr %30, align 4, !dbg !18
  %32 = icmp eq i32 %31, 2, !dbg !18
  br i1 %32, label %assert_end24, label %assert_fail23, !dbg !18, !prof !19

assert_fail23:                                    ; preds = %assert_end22
  %33 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %33(ptr nonnull @.str.12), !dbg !18
  br label %common.ret

assert_end24:                                     ; preds = %assert_end22
  %34 = getelementptr inbounds i8, ptr %ey_handle, i64 24, !dbg !18
  %main0.ey_handle.shape = load ptr, ptr %34, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.ey_handle.shape, metadata !61, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.ey_handle.shape, metadata !61, metadata !DIExpression()), !dbg !18
  %35 = getelementptr inbounds i8, ptr %ey_handle, i64 32, !dbg !18
  %main0.ey_handle.strides = load ptr, ptr %35, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.ey_handle.strides, metadata !62, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.ey_handle.strides, metadata !62, metadata !DIExpression()), !dbg !18
  %ey = load ptr, ptr %ey_handle, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %ey, metadata !63, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %ey, metadata !63, metadata !DIExpression()), !dbg !18
  call void @llvm.assume(i1 true) [ "align"(ptr %ey, i64 64) ], !dbg !18
  %.not99 = icmp eq ptr %hz_handle, null, !dbg !18
  br i1 %.not99, label %assert_fail25, label %assert_end26, !dbg !18, !prof !23

assert_fail25:                                    ; preds = %assert_end24
  %36 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %36(ptr nonnull @.str.13), !dbg !18
  br label %common.ret

assert_end26:                                     ; preds = %assert_end24
  %37 = getelementptr inbounds i8, ptr %hz_handle, i64 16, !dbg !18
  %38 = load i32, ptr %37, align 4, !dbg !18
  %39 = icmp eq i32 %38, 2, !dbg !18
  br i1 %39, label %assert_end28, label %assert_fail27, !dbg !18, !prof !19

assert_fail27:                                    ; preds = %assert_end26
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %40(ptr nonnull @.str.14), !dbg !18
  br label %common.ret

assert_end28:                                     ; preds = %assert_end26
  %41 = getelementptr inbounds i8, ptr %hz_handle, i64 24, !dbg !18
  %main0.hz_handle.shape = load ptr, ptr %41, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.hz_handle.shape, metadata !64, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.hz_handle.shape, metadata !64, metadata !DIExpression()), !dbg !18
  %42 = getelementptr inbounds i8, ptr %hz_handle, i64 32, !dbg !18
  %main0.hz_handle.strides = load ptr, ptr %42, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.hz_handle.strides, metadata !65, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.hz_handle.strides, metadata !65, metadata !DIExpression()), !dbg !18
  %hz = load ptr, ptr %hz_handle, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %hz, metadata !66, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %hz, metadata !66, metadata !DIExpression()), !dbg !18
  call void @llvm.assume(i1 true) [ "align"(ptr %hz, i64 64) ], !dbg !18
  %43 = getelementptr inbounds i8, ptr %_fict__handle, i64 22, !dbg !18
  %44 = load i16, ptr %43, align 2, !dbg !18
  %45 = icmp eq i16 %44, 1, !dbg !18
  %46 = getelementptr inbounds i8, ptr %_fict__handle, i64 21, !dbg !18
  %47 = load i8, ptr %46, align 1, !dbg !18
  %48 = icmp eq i8 %47, 64, !dbg !18
  %49 = getelementptr inbounds i8, ptr %_fict__handle, i64 20, !dbg !18
  %50 = load i8, ptr %49, align 1, !dbg !18
  %51 = icmp eq i8 %50, 2, !dbg !18
  %52 = and i1 %48, %51, !dbg !18
  %53 = and i1 %45, %52, !dbg !18
  br i1 %53, label %assert_end30, label %assert_fail29, !dbg !18, !prof !19

assert_fail29:                                    ; preds = %assert_end28
  %54 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %54(ptr nonnull @.str.15), !dbg !18
  br label %common.ret

assert_end30:                                     ; preds = %assert_end28
  %55 = load i64, ptr %main0._fict__handle.shape, align 8, !dbg !18, !tbaa !67
  %56 = and i64 %55, 4294967295, !dbg !18
  %57 = icmp eq i64 %56, 50, !dbg !18
  br i1 %57, label %assert_end32, label %assert_fail31, !dbg !18, !prof !19

assert_fail31:                                    ; preds = %assert_end30
  %58 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %58(ptr nonnull @.str.16), !dbg !18
  br label %common.ret

assert_end32:                                     ; preds = %assert_end30
  %.not100 = icmp eq ptr %main0._fict__handle.strides, null, !dbg !18
  br i1 %.not100, label %if_end, label %if_then, !dbg !18, !prof !23

if_then:                                          ; preds = %assert_end32
  %59 = load i64, ptr %main0._fict__handle.strides, align 8, !dbg !18, !tbaa !77
  %60 = and i64 %59, 4294967295, !dbg !18
  %61 = icmp eq i64 %60, 1, !dbg !18
  br i1 %61, label %if_end, label %assert_fail33, !dbg !18, !prof !19

if_end:                                           ; preds = %if_then, %assert_end32
  %62 = getelementptr inbounds i8, ptr %_fict__handle, i64 40, !dbg !18
  %63 = load i64, ptr %62, align 8, !dbg !18
  %64 = icmp eq i64 %63, 0, !dbg !18
  br i1 %64, label %assert_end36, label %assert_fail35, !dbg !18, !prof !19

assert_fail33:                                    ; preds = %if_then
  %65 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %65(ptr nonnull @.str.17), !dbg !18
  br label %common.ret

assert_fail35:                                    ; preds = %if_end
  %66 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %66(ptr nonnull @.str.18), !dbg !18
  br label %common.ret

assert_end36:                                     ; preds = %if_end
  %67 = getelementptr inbounds i8, ptr %_fict__handle, i64 8, !dbg !18
  %68 = load i32, ptr %67, align 4, !dbg !18
  %69 = icmp eq i32 %68, 1, !dbg !18
  br i1 %69, label %assert_end38, label %assert_fail37, !dbg !18, !prof !19

assert_fail37:                                    ; preds = %assert_end36
  %70 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %70(ptr nonnull @.str.19), !dbg !18
  br label %common.ret

assert_end38:                                     ; preds = %assert_end36
  %.not101 = icmp eq ptr %_fict_, null, !dbg !18
  br i1 %.not101, label %assert_fail39, label %assert_end40, !dbg !18, !prof !23

assert_fail39:                                    ; preds = %assert_end38
  %71 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %71(ptr nonnull @.str.20), !dbg !18
  br label %common.ret

assert_end40:                                     ; preds = %assert_end38
  %72 = getelementptr inbounds i8, ptr %ex_handle, i64 22, !dbg !18
  %73 = load i16, ptr %72, align 2, !dbg !18
  %74 = icmp eq i16 %73, 1, !dbg !18
  %75 = getelementptr inbounds i8, ptr %ex_handle, i64 21, !dbg !18
  %76 = load i8, ptr %75, align 1, !dbg !18
  %77 = icmp eq i8 %76, 64, !dbg !18
  %78 = getelementptr inbounds i8, ptr %ex_handle, i64 20, !dbg !18
  %79 = load i8, ptr %78, align 1, !dbg !18
  %80 = icmp eq i8 %79, 2, !dbg !18
  %81 = and i1 %77, %80, !dbg !18
  %82 = and i1 %74, %81, !dbg !18
  br i1 %82, label %assert_end42, label %assert_fail41, !dbg !18, !prof !19

assert_fail41:                                    ; preds = %assert_end40
  %83 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %83(ptr nonnull @.str.21), !dbg !18
  br label %common.ret

assert_end42:                                     ; preds = %assert_end40
  %84 = load i64, ptr %main0.ex_handle.shape, align 8, !dbg !18, !tbaa !87
  %85 = and i64 %84, 4294967295, !dbg !18
  %86 = icmp eq i64 %85, 1000, !dbg !18
  br i1 %86, label %assert_end44, label %assert_fail43, !dbg !18, !prof !19

assert_fail43:                                    ; preds = %assert_end42
  %87 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %87(ptr nonnull @.str.22), !dbg !18
  br label %common.ret

assert_end44:                                     ; preds = %assert_end42
  %88 = getelementptr inbounds i8, ptr %main0.ex_handle.shape, i64 8, !dbg !18
  %89 = load i64, ptr %88, align 8, !dbg !18, !tbaa !97
  %90 = and i64 %89, 4294967295, !dbg !18
  %91 = icmp eq i64 %90, 1000, !dbg !18
  br i1 %91, label %assert_end46, label %assert_fail45, !dbg !18, !prof !19

assert_fail45:                                    ; preds = %assert_end44
  %92 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %92(ptr nonnull @.str.23), !dbg !18
  br label %common.ret

assert_end46:                                     ; preds = %assert_end44
  %.not102 = icmp eq ptr %main0.ex_handle.strides, null, !dbg !18
  br i1 %.not102, label %if_end48, label %if_then47, !dbg !18, !prof !23

if_then47:                                        ; preds = %assert_end46
  %93 = load i64, ptr %main0.ex_handle.strides, align 8, !dbg !18, !tbaa !99
  %94 = and i64 %93, 4294967295, !dbg !18
  %95 = icmp eq i64 %94, 1000, !dbg !18
  %96 = getelementptr inbounds i8, ptr %main0.ex_handle.strides, i64 8, !dbg !18
  %97 = load i64, ptr %96, align 8, !dbg !18, !tbaa !109
  %98 = and i64 %97, 4294967295, !dbg !18
  %99 = icmp eq i64 %98, 1, !dbg !18
  %100 = and i1 %95, %99, !dbg !18
  br i1 %100, label %if_end48, label %assert_fail49, !dbg !18, !prof !19

if_end48:                                         ; preds = %if_then47, %assert_end46
  %101 = getelementptr inbounds i8, ptr %ex_handle, i64 40, !dbg !18
  %102 = load i64, ptr %101, align 8, !dbg !18
  %103 = icmp eq i64 %102, 0, !dbg !18
  br i1 %103, label %assert_end52, label %assert_fail51, !dbg !18, !prof !19

assert_fail49:                                    ; preds = %if_then47
  %104 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %104(ptr nonnull @.str.24), !dbg !18
  br label %common.ret

assert_fail51:                                    ; preds = %if_end48
  %105 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %105(ptr nonnull @.str.25), !dbg !18
  br label %common.ret

assert_end52:                                     ; preds = %if_end48
  %106 = getelementptr inbounds i8, ptr %ex_handle, i64 8, !dbg !18
  %107 = load i32, ptr %106, align 4, !dbg !18
  %108 = icmp eq i32 %107, 1, !dbg !18
  br i1 %108, label %assert_end54, label %assert_fail53, !dbg !18, !prof !19

assert_fail53:                                    ; preds = %assert_end52
  %109 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %109(ptr nonnull @.str.26), !dbg !18
  br label %common.ret

assert_end54:                                     ; preds = %assert_end52
  %110 = getelementptr inbounds i8, ptr %ex_handle, i64 12, !dbg !18
  %111 = load i32, ptr %110, align 4, !dbg !18
  %112 = icmp eq i32 %dev_id, %111, !dbg !18
  br i1 %112, label %assert_end56, label %assert_fail55, !dbg !18, !prof !19

assert_fail55:                                    ; preds = %assert_end54
  %113 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %113(ptr nonnull @.str.27), !dbg !18
  br label %common.ret

assert_end56:                                     ; preds = %assert_end54
  %.not103 = icmp eq ptr %ex, null, !dbg !18
  br i1 %.not103, label %assert_fail57, label %assert_end58, !dbg !18, !prof !23

assert_fail57:                                    ; preds = %assert_end56
  %114 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %114(ptr nonnull @.str.28), !dbg !18
  br label %common.ret

assert_end58:                                     ; preds = %assert_end56
  %115 = getelementptr inbounds i8, ptr %ey_handle, i64 22, !dbg !18
  %116 = load i16, ptr %115, align 2, !dbg !18
  %117 = icmp eq i16 %116, 1, !dbg !18
  %118 = getelementptr inbounds i8, ptr %ey_handle, i64 21, !dbg !18
  %119 = load i8, ptr %118, align 1, !dbg !18
  %120 = icmp eq i8 %119, 64, !dbg !18
  %121 = getelementptr inbounds i8, ptr %ey_handle, i64 20, !dbg !18
  %122 = load i8, ptr %121, align 1, !dbg !18
  %123 = icmp eq i8 %122, 2, !dbg !18
  %124 = and i1 %120, %123, !dbg !18
  %125 = and i1 %117, %124, !dbg !18
  br i1 %125, label %assert_end60, label %assert_fail59, !dbg !18, !prof !19

assert_fail59:                                    ; preds = %assert_end58
  %126 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %126(ptr nonnull @.str.29), !dbg !18
  br label %common.ret

assert_end60:                                     ; preds = %assert_end58
  %127 = load i64, ptr %main0.ey_handle.shape, align 8, !dbg !18, !tbaa !111
  %128 = and i64 %127, 4294967295, !dbg !18
  %129 = icmp eq i64 %128, 1000, !dbg !18
  br i1 %129, label %assert_end62, label %assert_fail61, !dbg !18, !prof !19

assert_fail61:                                    ; preds = %assert_end60
  %130 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %130(ptr nonnull @.str.30), !dbg !18
  br label %common.ret

assert_end62:                                     ; preds = %assert_end60
  %131 = getelementptr inbounds i8, ptr %main0.ey_handle.shape, i64 8, !dbg !18
  %132 = load i64, ptr %131, align 8, !dbg !18, !tbaa !121
  %133 = and i64 %132, 4294967295, !dbg !18
  %134 = icmp eq i64 %133, 1000, !dbg !18
  br i1 %134, label %assert_end64, label %assert_fail63, !dbg !18, !prof !19

assert_fail63:                                    ; preds = %assert_end62
  %135 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %135(ptr nonnull @.str.31), !dbg !18
  br label %common.ret

assert_end64:                                     ; preds = %assert_end62
  %.not104 = icmp eq ptr %main0.ey_handle.strides, null, !dbg !18
  br i1 %.not104, label %if_end66, label %if_then65, !dbg !18, !prof !23

if_then65:                                        ; preds = %assert_end64
  %136 = load i64, ptr %main0.ey_handle.strides, align 8, !dbg !18, !tbaa !123
  %137 = and i64 %136, 4294967295, !dbg !18
  %138 = icmp eq i64 %137, 1000, !dbg !18
  %139 = getelementptr inbounds i8, ptr %main0.ey_handle.strides, i64 8, !dbg !18
  %140 = load i64, ptr %139, align 8, !dbg !18, !tbaa !133
  %141 = and i64 %140, 4294967295, !dbg !18
  %142 = icmp eq i64 %141, 1, !dbg !18
  %143 = and i1 %138, %142, !dbg !18
  br i1 %143, label %if_end66, label %assert_fail67, !dbg !18, !prof !19

if_end66:                                         ; preds = %if_then65, %assert_end64
  %144 = getelementptr inbounds i8, ptr %ey_handle, i64 40, !dbg !18
  %145 = load i64, ptr %144, align 8, !dbg !18
  %146 = icmp eq i64 %145, 0, !dbg !18
  br i1 %146, label %assert_end70, label %assert_fail69, !dbg !18, !prof !19

assert_fail67:                                    ; preds = %if_then65
  %147 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %147(ptr nonnull @.str.32), !dbg !18
  br label %common.ret

assert_fail69:                                    ; preds = %if_end66
  %148 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %148(ptr nonnull @.str.33), !dbg !18
  br label %common.ret

assert_end70:                                     ; preds = %if_end66
  %149 = getelementptr inbounds i8, ptr %ey_handle, i64 8, !dbg !18
  %150 = load i32, ptr %149, align 4, !dbg !18
  %151 = icmp eq i32 %150, 1, !dbg !18
  br i1 %151, label %assert_end72, label %assert_fail71, !dbg !18, !prof !19

assert_fail71:                                    ; preds = %assert_end70
  %152 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %152(ptr nonnull @.str.34), !dbg !18
  br label %common.ret

assert_end72:                                     ; preds = %assert_end70
  %153 = getelementptr inbounds i8, ptr %ey_handle, i64 12, !dbg !18
  %154 = load i32, ptr %153, align 4, !dbg !18
  %155 = icmp eq i32 %dev_id, %154, !dbg !18
  br i1 %155, label %assert_end74, label %assert_fail73, !dbg !18, !prof !19

assert_fail73:                                    ; preds = %assert_end72
  %156 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %156(ptr nonnull @.str.35), !dbg !18
  br label %common.ret

assert_end74:                                     ; preds = %assert_end72
  %.not105 = icmp eq ptr %ey, null, !dbg !18
  br i1 %.not105, label %assert_fail75, label %assert_end76, !dbg !18, !prof !23

assert_fail75:                                    ; preds = %assert_end74
  %157 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %157(ptr nonnull @.str.36), !dbg !18
  br label %common.ret

assert_end76:                                     ; preds = %assert_end74
  %158 = getelementptr inbounds i8, ptr %hz_handle, i64 22, !dbg !18
  %159 = load i16, ptr %158, align 2, !dbg !18
  %160 = icmp eq i16 %159, 1, !dbg !18
  %161 = getelementptr inbounds i8, ptr %hz_handle, i64 21, !dbg !18
  %162 = load i8, ptr %161, align 1, !dbg !18
  %163 = icmp eq i8 %162, 64, !dbg !18
  %164 = getelementptr inbounds i8, ptr %hz_handle, i64 20, !dbg !18
  %165 = load i8, ptr %164, align 1, !dbg !18
  %166 = icmp eq i8 %165, 2, !dbg !18
  %167 = and i1 %163, %166, !dbg !18
  %168 = and i1 %160, %167, !dbg !18
  br i1 %168, label %assert_end78, label %assert_fail77, !dbg !18, !prof !19

assert_fail77:                                    ; preds = %assert_end76
  %169 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %169(ptr nonnull @.str.37), !dbg !18
  br label %common.ret

assert_end78:                                     ; preds = %assert_end76
  %170 = load i64, ptr %main0.hz_handle.shape, align 8, !dbg !18, !tbaa !135
  %171 = and i64 %170, 4294967295, !dbg !18
  %172 = icmp eq i64 %171, 1000, !dbg !18
  br i1 %172, label %assert_end80, label %assert_fail79, !dbg !18, !prof !19

assert_fail79:                                    ; preds = %assert_end78
  %173 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %173(ptr nonnull @.str.38), !dbg !18
  br label %common.ret

assert_end80:                                     ; preds = %assert_end78
  %174 = getelementptr inbounds i8, ptr %main0.hz_handle.shape, i64 8, !dbg !18
  %175 = load i64, ptr %174, align 8, !dbg !18, !tbaa !145
  %176 = and i64 %175, 4294967295, !dbg !18
  %177 = icmp eq i64 %176, 1000, !dbg !18
  br i1 %177, label %assert_end82, label %assert_fail81, !dbg !18, !prof !19

assert_fail81:                                    ; preds = %assert_end80
  %178 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %178(ptr nonnull @.str.39), !dbg !18
  br label %common.ret

assert_end82:                                     ; preds = %assert_end80
  %.not106 = icmp eq ptr %main0.hz_handle.strides, null, !dbg !18
  br i1 %.not106, label %if_end84, label %if_then83, !dbg !18, !prof !23

if_then83:                                        ; preds = %assert_end82
  %179 = load i64, ptr %main0.hz_handle.strides, align 8, !dbg !18, !tbaa !147
  %180 = and i64 %179, 4294967295, !dbg !18
  %181 = icmp eq i64 %180, 1000, !dbg !18
  %182 = getelementptr inbounds i8, ptr %main0.hz_handle.strides, i64 8, !dbg !18
  %183 = load i64, ptr %182, align 8, !dbg !18, !tbaa !157
  %184 = and i64 %183, 4294967295, !dbg !18
  %185 = icmp eq i64 %184, 1, !dbg !18
  %186 = and i1 %181, %185, !dbg !18
  br i1 %186, label %if_end84, label %assert_fail85, !dbg !18, !prof !19

if_end84:                                         ; preds = %if_then83, %assert_end82
  %187 = getelementptr inbounds i8, ptr %hz_handle, i64 40, !dbg !18
  %188 = load i64, ptr %187, align 8, !dbg !18
  %189 = icmp eq i64 %188, 0, !dbg !18
  br i1 %189, label %assert_end88, label %assert_fail87, !dbg !18, !prof !19

assert_fail85:                                    ; preds = %if_then83
  %190 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %190(ptr nonnull @.str.40), !dbg !18
  br label %common.ret

assert_fail87:                                    ; preds = %if_end84
  %191 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %191(ptr nonnull @.str.41), !dbg !18
  br label %common.ret

assert_end88:                                     ; preds = %if_end84
  %192 = getelementptr inbounds i8, ptr %hz_handle, i64 8, !dbg !18
  %193 = load i32, ptr %192, align 4, !dbg !18
  %194 = icmp eq i32 %193, 1, !dbg !18
  br i1 %194, label %assert_end90, label %assert_fail89, !dbg !18, !prof !19

assert_fail89:                                    ; preds = %assert_end88
  %195 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %195(ptr nonnull @.str.42), !dbg !18
  br label %common.ret

assert_end90:                                     ; preds = %assert_end88
  %196 = getelementptr inbounds i8, ptr %hz_handle, i64 12, !dbg !18
  %197 = load i32, ptr %196, align 4, !dbg !18
  %198 = icmp eq i32 %dev_id, %197, !dbg !18
  br i1 %198, label %assert_end92, label %assert_fail91, !dbg !18, !prof !19

assert_fail91:                                    ; preds = %assert_end90
  %199 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %199(ptr nonnull @.str.43), !dbg !18
  br label %common.ret

assert_end92:                                     ; preds = %assert_end90
  %.not107 = icmp eq ptr %hz, null, !dbg !18
  br i1 %.not107, label %assert_fail93, label %assert_end94, !dbg !18, !prof !23

assert_fail93:                                    ; preds = %assert_end92
  %200 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %200(ptr nonnull @.str.44), !dbg !18
  br label %common.ret

assert_end94:                                     ; preds = %assert_end92
  %201 = tail call fastcc i32 @main0_compute_(ptr nonnull %ey, ptr nonnull %_fict_, ptr nonnull %hz, ptr nonnull %ex), !dbg !18
  br label %common.ret
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: noinline
define internal fastcc i32 @main0_compute_(ptr noalias align 64 %ey, ptr noalias align 64 %_fict_, ptr noalias align 64 %hz, ptr noalias align 64 %ex) unnamed_addr #2 !dbg !159 {
entry:
  tail call void @llvm.dbg.value(metadata ptr %ey, metadata !163, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata ptr %_fict_, metadata !164, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata ptr %hz, metadata !165, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata ptr %ex, metadata !166, metadata !DIExpression()), !dbg !167
  %0 = alloca %closure_loop_parallel_t_3_i_2_fused, align 8, !dbg !167
  %1 = alloca %closure_loop_parallel_t_2_i_1_fused, align 8, !dbg !167
  %2 = alloca %closure_loop_parallel_t_1_i_j_1_fused_0, align 8, !dbg !167
  %3 = alloca %closure_loop_parallel_t_0_j_fused_0, align 8, !dbg !167
  store ptr %ey, ptr %3, align 8, !dbg !167
  %4 = getelementptr inbounds i8, ptr %3, i64 8, !dbg !167
  store ptr %_fict_, ptr %4, align 8, !dbg !167
  %5 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !dbg !167, !tbaa !20
  %6 = call i32 %5(ptr nonnull @__tvm_parallel_lambda, ptr nonnull %3, i32 0), !dbg !167
  %7 = icmp eq i32 %6, 0, !dbg !167
  br i1 %7, label %call_end, label %common.ret, !dbg !167, !prof !19

common.ret:                                       ; preds = %call_end4, %call_end2, %call_end, %entry
  %common.ret.op = phi i32 [ %6, %entry ], [ %10, %call_end ], [ %14, %call_end2 ], [ %19, %call_end4 ]
  ret i32 %common.ret.op, !dbg !167

call_end:                                         ; preds = %entry
  store ptr %ey, ptr %2, align 8, !dbg !167
  %8 = getelementptr inbounds i8, ptr %2, i64 8, !dbg !167
  store ptr %hz, ptr %8, align 8, !dbg !167
  %9 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !dbg !167, !tbaa !20
  %10 = call i32 %9(ptr nonnull @__tvm_parallel_lambda.45, ptr nonnull %2, i32 0), !dbg !167
  %11 = icmp eq i32 %10, 0, !dbg !167
  br i1 %11, label %call_end2, label %common.ret, !dbg !167, !prof !19

call_end2:                                        ; preds = %call_end
  store ptr %ex, ptr %1, align 8, !dbg !167
  %12 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !167
  store ptr %hz, ptr %12, align 8, !dbg !167
  %13 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !dbg !167, !tbaa !20
  %14 = call i32 %13(ptr nonnull @__tvm_parallel_lambda.46, ptr nonnull %1, i32 0), !dbg !167
  %15 = icmp eq i32 %14, 0, !dbg !167
  br i1 %15, label %call_end4, label %common.ret, !dbg !167, !prof !19

call_end4:                                        ; preds = %call_end2
  store ptr %hz, ptr %0, align 8, !dbg !167
  %16 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !167
  store ptr %ex, ptr %16, align 8, !dbg !167
  %17 = getelementptr inbounds i8, ptr %0, i64 16, !dbg !167
  store ptr %ey, ptr %17, align 8, !dbg !167
  %18 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !dbg !167, !tbaa !20
  %19 = call i32 %18(ptr nonnull @__tvm_parallel_lambda.47, ptr nonnull %0, i32 0), !dbg !167
  br label %common.ret
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define private noundef i32 @__tvm_parallel_lambda(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %ey = load ptr, ptr %1, align 8, !dbg !167
  %2 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !167
  %_fict_ = load ptr, ptr %2, align 8, !dbg !167
  %3 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !167
  %num_task = load i32, ptr %3, align 4, !dbg !167
  %4 = add nsw i32 %num_task, 781, !dbg !167
  %5 = sdiv i32 %4, %num_task, !dbg !167
  %6 = add nsw i32 %task_id, 1, !dbg !167
  %7 = mul nsw i32 %5, %6, !dbg !167
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 782), !dbg !167
  %9 = mul nsw i32 %5, %task_id, !dbg !167
  tail call void @llvm.dbg.declare(metadata i32 %9, metadata !168, metadata !DIExpression()), !dbg !167
  %10 = icmp slt i32 %9, %8, !dbg !167
  br i1 %10, label %for_begin_t_0_j_fused_1.s.preheader, label %for_end_t_0_j_fused_0, !dbg !167, !prof !169

for_begin_t_0_j_fused_1.s.preheader:              ; preds = %parallel_closure_entry, %for_end_t_0_j_fused_1.s
  %t_0_j_fused_02 = phi i32 [ %17, %for_end_t_0_j_fused_1.s ], [ %9, %parallel_closure_entry ]
  tail call void @llvm.dbg.declare(metadata i32 %t_0_j_fused_02, metadata !168, metadata !DIExpression()), !dbg !167
  %11 = shl nsw i32 %t_0_j_fused_02, 2
  tail call void @llvm.dbg.declare(metadata i32 0, metadata !170, metadata !DIExpression()), !dbg !167
  %12 = shl nsw i32 %t_0_j_fused_02, 3
  %13 = shl nsw i32 %t_0_j_fused_02, 6
  br label %for_body_t_0_j_fused_1.s, !dbg !167

for_end_t_0_j_fused_0:                            ; preds = %for_end_t_0_j_fused_1.s, %parallel_closure_entry
  ret i32 0, !dbg !167

for_body_t_0_j_fused_1.s:                         ; preds = %for_begin_t_0_j_fused_1.s.preheader, %if_end
  %t_0_j_fused_1.s1 = phi i32 [ 0, %for_begin_t_0_j_fused_1.s.preheader ], [ %28, %if_end ]
  tail call void @llvm.dbg.declare(metadata i32 %t_0_j_fused_1.s1, metadata !170, metadata !DIExpression()), !dbg !167
  %14 = lshr i32 %t_0_j_fused_1.s1, 4, !dbg !167
  %15 = add nuw nsw i32 %14, %11, !dbg !167
  %16 = icmp slt i32 %15, 3125, !dbg !167
  br i1 %16, label %if_then, label %if_end, !dbg !167, !prof !19

for_end_t_0_j_fused_1.s:                          ; preds = %if_end
  %17 = add nsw i32 %t_0_j_fused_02, 1, !dbg !167
  tail call void @llvm.dbg.declare(metadata i32 %17, metadata !168, metadata !DIExpression()), !dbg !167
  %exitcond3.not = icmp eq i32 %17, %8, !dbg !167
  br i1 %exitcond3.not, label %for_end_t_0_j_fused_0, label %for_begin_t_0_j_fused_1.s.preheader, !dbg !167, !prof !171

if_then:                                          ; preds = %for_body_t_0_j_fused_1.s
  %18 = lshr i32 %t_0_j_fused_1.s1, 3, !dbg !167
  %19 = add nuw nsw i32 %18, %12, !dbg !167
  %20 = sdiv i32 %19, 125, !dbg !167
  %21 = sext i32 %20 to i64, !dbg !167
  %22 = getelementptr inbounds double, ptr %_fict_, i64 %21, !dbg !167
  %23 = load double, ptr %22, align 8, !dbg !167, !tbaa !172
  %24 = add nuw nsw i32 %t_0_j_fused_1.s1, %13, !dbg !167
  %25 = srem i32 %24, 1000, !dbg !167
  %26 = sext i32 %25 to i64, !dbg !167
  %27 = getelementptr inbounds double, ptr %ey, i64 %26, !dbg !167
  store double %23, ptr %27, align 8, !dbg !167, !tbaa !174
  br label %if_end, !dbg !167

if_end:                                           ; preds = %if_then, %for_body_t_0_j_fused_1.s
  %28 = add nuw nsw i32 %t_0_j_fused_1.s1, 1, !dbg !167
  tail call void @llvm.dbg.declare(metadata i32 %28, metadata !170, metadata !DIExpression()), !dbg !167
  %exitcond.not = icmp eq i32 %28, 64, !dbg !167
  br i1 %exitcond.not, label %for_end_t_0_j_fused_1.s, label %for_body_t_0_j_fused_1.s, !dbg !167, !prof !176
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define private noundef i32 @__tvm_parallel_lambda.45(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %ey = load ptr, ptr %1, align 8, !dbg !167
  %2 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !167
  %hz = load ptr, ptr %2, align 8, !dbg !167
  %3 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !167
  %num_task = load i32, ptr %3, align 4, !dbg !167
  %4 = add nsw i32 %num_task, 780468, !dbg !167
  %5 = sdiv i32 %4, %num_task, !dbg !167
  %6 = add nsw i32 %task_id, 1, !dbg !167
  %7 = mul nsw i32 %5, %6, !dbg !167
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 780469), !dbg !167
  %9 = mul nsw i32 %5, %task_id, !dbg !167
  tail call void @llvm.dbg.declare(metadata i32 %9, metadata !177, metadata !DIExpression()), !dbg !167
  %10 = icmp slt i32 %9, %8, !dbg !167
  br i1 %10, label %for_begin_t_1_i_j_1_fused_1.s.preheader, label %for_end_t_1_i_j_1_fused_0, !dbg !167, !prof !169

for_begin_t_1_i_j_1_fused_1.s.preheader:          ; preds = %parallel_closure_entry, %for_end_t_1_i_j_1_fused_1.s
  %t_1_i_j_1_fused_02 = phi i32 [ %16, %for_end_t_1_i_j_1_fused_1.s ], [ %9, %parallel_closure_entry ]
  tail call void @llvm.dbg.declare(metadata i32 %t_1_i_j_1_fused_02, metadata !177, metadata !DIExpression()), !dbg !167
  %11 = shl nsw i32 %t_1_i_j_1_fused_02, 2
  tail call void @llvm.dbg.declare(metadata i32 0, metadata !178, metadata !DIExpression()), !dbg !167
  %12 = shl nsw i32 %t_1_i_j_1_fused_02, 6
  br label %for_body_t_1_i_j_1_fused_1.s, !dbg !167

for_end_t_1_i_j_1_fused_0:                        ; preds = %for_end_t_1_i_j_1_fused_1.s, %parallel_closure_entry
  ret i32 0, !dbg !167

for_body_t_1_i_j_1_fused_1.s:                     ; preds = %for_begin_t_1_i_j_1_fused_1.s.preheader, %if_end
  %t_1_i_j_1_fused_1.s1 = phi i32 [ 0, %for_begin_t_1_i_j_1_fused_1.s.preheader ], [ %29, %if_end ]
  tail call void @llvm.dbg.declare(metadata i32 %t_1_i_j_1_fused_1.s1, metadata !178, metadata !DIExpression()), !dbg !167
  %13 = lshr i32 %t_1_i_j_1_fused_1.s1, 4, !dbg !167
  %14 = add nuw nsw i32 %13, %11, !dbg !167
  %15 = icmp slt i32 %14, 3121875, !dbg !167
  br i1 %15, label %if_then, label %if_end, !dbg !167, !prof !19

for_end_t_1_i_j_1_fused_1.s:                      ; preds = %if_end
  %16 = add nsw i32 %t_1_i_j_1_fused_02, 1, !dbg !167
  tail call void @llvm.dbg.declare(metadata i32 %16, metadata !177, metadata !DIExpression()), !dbg !167
  %exitcond3.not = icmp eq i32 %16, %8, !dbg !167
  br i1 %exitcond3.not, label %for_end_t_1_i_j_1_fused_0, label %for_begin_t_1_i_j_1_fused_1.s.preheader, !dbg !167, !prof !171

if_then:                                          ; preds = %for_body_t_1_i_j_1_fused_1.s
  %17 = add nuw nsw i32 %t_1_i_j_1_fused_1.s1, %12, !dbg !167
  %cse_var_2 = srem i32 %17, 999000, !dbg !167
  tail call void @llvm.dbg.declare(metadata i32 %cse_var_2, metadata !179, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.declare(metadata i32 %cse_var_2, metadata !179, metadata !DIExpression()), !dbg !167
  %cse_var_1 = add nsw i32 %cse_var_2, 1000, !dbg !167
  tail call void @llvm.dbg.declare(metadata i32 %cse_var_1, metadata !180, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.declare(metadata i32 %cse_var_1, metadata !180, metadata !DIExpression()), !dbg !167
  %18 = sext i32 %cse_var_2 to i64, !dbg !167
  %19 = getelementptr inbounds double, ptr %hz, i64 %18, !dbg !167
  %20 = load double, ptr %19, align 8, !dbg !167, !tbaa !181
  %21 = sext i32 %cse_var_1 to i64, !dbg !167
  %22 = getelementptr inbounds double, ptr %hz, i64 %21, !dbg !167
  %23 = load double, ptr %22, align 8, !dbg !167, !tbaa !181
  %24 = fsub double %23, %20, !dbg !167
  %25 = fmul double %24, 5.000000e-01, !dbg !167
  %26 = getelementptr inbounds double, ptr %ey, i64 %21, !dbg !167
  %27 = load double, ptr %26, align 8, !dbg !167, !tbaa !174
  %28 = fsub double %27, %25, !dbg !167
  store double %28, ptr %26, align 8, !dbg !167, !tbaa !174
  br label %if_end, !dbg !167

if_end:                                           ; preds = %if_then, %for_body_t_1_i_j_1_fused_1.s
  %29 = add nuw nsw i32 %t_1_i_j_1_fused_1.s1, 1, !dbg !167
  tail call void @llvm.dbg.declare(metadata i32 %29, metadata !178, metadata !DIExpression()), !dbg !167
  %exitcond.not = icmp eq i32 %29, 64, !dbg !167
  br i1 %exitcond.not, label %for_end_t_1_i_j_1_fused_1.s, label %for_body_t_1_i_j_1_fused_1.s, !dbg !167, !prof !176
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define private noundef i32 @__tvm_parallel_lambda.46(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %ex = load ptr, ptr %1, align 8, !dbg !167
  %2 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !167
  %hz = load ptr, ptr %2, align 8, !dbg !167
  %3 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !167
  %num_task = load i32, ptr %3, align 4, !dbg !167
  %4 = add nsw i32 %num_task, 49999, !dbg !167
  %5 = sdiv i32 %4, %num_task, !dbg !167
  %6 = add nsw i32 %task_id, 1, !dbg !167
  %7 = mul nsw i32 %5, %6, !dbg !167
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 50000), !dbg !167
  %9 = mul nsw i32 %5, %task_id, !dbg !167
  tail call void @llvm.dbg.declare(metadata i32 %9, metadata !183, metadata !DIExpression()), !dbg !167
  %10 = icmp slt i32 %9, %8, !dbg !167
  br i1 %10, label %for_begin_j_2.preheader.preheader, label %for_end_t_2_i_1_fused, !dbg !167, !prof !169

for_begin_j_2.preheader.preheader:                ; preds = %parallel_closure_entry
  %invariant.gep = getelementptr i8, ptr %hz, i64 7968, !dbg !167
  %invariant.gep12 = getelementptr i8, ptr %hz, i64 7976, !dbg !167
  %invariant.gep14 = getelementptr i8, ptr %hz, i64 7984, !dbg !167
  br label %for_begin_j_2.preheader, !dbg !167

for_begin_j_2.preheader:                          ; preds = %for_begin_j_2.preheader.preheader, %for_body_j_2
  %t_2_i_1_fused2 = phi i32 [ %56, %for_body_j_2 ], [ %9, %for_begin_j_2.preheader.preheader ]
  tail call void @llvm.dbg.declare(metadata i32 %t_2_i_1_fused2, metadata !183, metadata !DIExpression()), !dbg !167
  %11 = srem i32 %t_2_i_1_fused2, 1000
  %12 = mul nsw i32 %11, 1000
  tail call void @llvm.dbg.declare(metadata i32 0, metadata !184, metadata !DIExpression()), !dbg !167
  %13 = sext i32 %12 to i64, !dbg !167
  br label %vector.body, !dbg !167

vector.body:                                      ; preds = %vector.body, %for_begin_j_2.preheader
  %index = phi i64 [ 0, %for_begin_j_2.preheader ], [ %index.next, %vector.body ], !dbg !167
  %14 = add nsw i64 %index, %13, !dbg !167
  %15 = or disjoint i64 %14, 1, !dbg !167
  %16 = getelementptr inbounds double, ptr %hz, i64 %14, !dbg !167
  %17 = getelementptr inbounds i8, ptr %16, i64 16, !dbg !167
  %wide.load = load <2 x double>, ptr %16, align 8, !dbg !167, !tbaa !181
  %wide.load7 = load <2 x double>, ptr %17, align 8, !dbg !167, !tbaa !181
  %18 = getelementptr inbounds double, ptr %hz, i64 %15, !dbg !167
  %19 = getelementptr inbounds i8, ptr %18, i64 16, !dbg !167
  %wide.load8 = load <2 x double>, ptr %18, align 8, !dbg !167, !tbaa !181
  %wide.load9 = load <2 x double>, ptr %19, align 8, !dbg !167, !tbaa !181
  %20 = fsub <2 x double> %wide.load8, %wide.load, !dbg !167
  %21 = fsub <2 x double> %wide.load9, %wide.load7, !dbg !167
  %22 = fmul <2 x double> %20, <double 5.000000e-01, double 5.000000e-01>, !dbg !167
  %23 = fmul <2 x double> %21, <double 5.000000e-01, double 5.000000e-01>, !dbg !167
  %24 = getelementptr inbounds double, ptr %ex, i64 %15, !dbg !167
  %25 = getelementptr inbounds i8, ptr %24, i64 16, !dbg !167
  %wide.load10 = load <2 x double>, ptr %24, align 8, !dbg !167, !tbaa !185
  %wide.load11 = load <2 x double>, ptr %25, align 8, !dbg !167, !tbaa !185
  %26 = fsub <2 x double> %wide.load10, %22, !dbg !167
  %27 = fsub <2 x double> %wide.load11, %23, !dbg !167
  store <2 x double> %26, ptr %24, align 8, !dbg !167, !tbaa !185
  store <2 x double> %27, ptr %25, align 8, !dbg !167, !tbaa !185
  %index.next = add nuw i64 %index, 4, !dbg !167
  %28 = icmp eq i64 %index.next, 996, !dbg !167
  br i1 %28, label %for_body_j_2, label %vector.body, !dbg !167, !prof !187, !llvm.loop !188

for_end_t_2_i_1_fused:                            ; preds = %for_body_j_2, %parallel_closure_entry
  ret i32 0, !dbg !167

for_body_j_2:                                     ; preds = %vector.body
  tail call void @llvm.dbg.declare(metadata i64 996, metadata !184, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 %13, metadata !191, metadata !DIExpression(DW_OP_plus_uconst, 996)), !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 %13, metadata !191, metadata !DIExpression(DW_OP_plus_uconst, 996)), !dbg !167
  %29 = add nsw i64 %13, 997, !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 %29, metadata !192, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 %29, metadata !192, metadata !DIExpression()), !dbg !167
  %gep = getelementptr double, ptr %invariant.gep, i64 %13, !dbg !167
  %30 = load double, ptr %gep, align 8, !dbg !167, !tbaa !181
  %31 = getelementptr inbounds double, ptr %hz, i64 %29, !dbg !167
  %32 = load double, ptr %31, align 8, !dbg !167, !tbaa !181
  %33 = fsub double %32, %30, !dbg !167
  %34 = fmul double %33, 5.000000e-01, !dbg !167
  %35 = getelementptr inbounds double, ptr %ex, i64 %29, !dbg !167
  %36 = load double, ptr %35, align 8, !dbg !167, !tbaa !185
  %37 = fsub double %36, %34, !dbg !167
  store double %37, ptr %35, align 8, !dbg !167, !tbaa !185
  tail call void @llvm.dbg.declare(metadata i64 997, metadata !184, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 997, metadata !184, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 %13, metadata !191, metadata !DIExpression(DW_OP_plus_uconst, 997)), !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 %13, metadata !191, metadata !DIExpression(DW_OP_plus_uconst, 997)), !dbg !167
  %38 = add nsw i64 %13, 998, !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 %38, metadata !192, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 %38, metadata !192, metadata !DIExpression()), !dbg !167
  %gep13 = getelementptr double, ptr %invariant.gep12, i64 %13, !dbg !167
  %39 = load double, ptr %gep13, align 8, !dbg !167, !tbaa !181
  %40 = getelementptr inbounds double, ptr %hz, i64 %38, !dbg !167
  %41 = load double, ptr %40, align 8, !dbg !167, !tbaa !181
  %42 = fsub double %41, %39, !dbg !167
  %43 = fmul double %42, 5.000000e-01, !dbg !167
  %44 = getelementptr inbounds double, ptr %ex, i64 %38, !dbg !167
  %45 = load double, ptr %44, align 8, !dbg !167, !tbaa !185
  %46 = fsub double %45, %43, !dbg !167
  store double %46, ptr %44, align 8, !dbg !167, !tbaa !185
  tail call void @llvm.dbg.declare(metadata i64 998, metadata !184, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 998, metadata !184, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 %13, metadata !191, metadata !DIExpression(DW_OP_plus_uconst, 998)), !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 %13, metadata !191, metadata !DIExpression(DW_OP_plus_uconst, 998)), !dbg !167
  %47 = add nsw i64 %13, 999, !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 %47, metadata !192, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 %47, metadata !192, metadata !DIExpression()), !dbg !167
  %gep15 = getelementptr double, ptr %invariant.gep14, i64 %13, !dbg !167
  %48 = load double, ptr %gep15, align 8, !dbg !167, !tbaa !181
  %49 = getelementptr inbounds double, ptr %hz, i64 %47, !dbg !167
  %50 = load double, ptr %49, align 8, !dbg !167, !tbaa !181
  %51 = fsub double %50, %48, !dbg !167
  %52 = fmul double %51, 5.000000e-01, !dbg !167
  %53 = getelementptr inbounds double, ptr %ex, i64 %47, !dbg !167
  %54 = load double, ptr %53, align 8, !dbg !167, !tbaa !185
  %55 = fsub double %54, %52, !dbg !167
  store double %55, ptr %53, align 8, !dbg !167, !tbaa !185
  tail call void @llvm.dbg.declare(metadata i64 999, metadata !184, metadata !DIExpression()), !dbg !167
  %56 = add nsw i32 %t_2_i_1_fused2, 1, !dbg !167
  tail call void @llvm.dbg.declare(metadata i32 %56, metadata !183, metadata !DIExpression()), !dbg !167
  %exitcond6.not = icmp eq i32 %56, %8, !dbg !167
  br i1 %exitcond6.not, label %for_end_t_2_i_1_fused, label %for_begin_j_2.preheader, !dbg !167, !prof !171
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define private noundef i32 @__tvm_parallel_lambda.47(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %hz = load ptr, ptr %1, align 8, !dbg !167
  %2 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !167
  %ex = load ptr, ptr %2, align 8, !dbg !167
  %3 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !167
  %ey = load ptr, ptr %3, align 8, !dbg !167
  %4 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !167
  %num_task = load i32, ptr %4, align 4, !dbg !167
  %5 = add nsw i32 %num_task, 49949, !dbg !167
  %6 = sdiv i32 %5, %num_task, !dbg !167
  %7 = add nsw i32 %task_id, 1, !dbg !167
  %8 = mul nsw i32 %6, %7, !dbg !167
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 49950), !dbg !167
  %10 = mul nsw i32 %6, %task_id, !dbg !167
  tail call void @llvm.dbg.declare(metadata i32 %10, metadata !193, metadata !DIExpression()), !dbg !167
  %11 = icmp slt i32 %10, %9, !dbg !167
  br i1 %11, label %for_begin_j_3.preheader, label %for_end_t_3_i_2_fused, !dbg !167, !prof !169

for_begin_j_3.preheader:                          ; preds = %parallel_closure_entry, %for_body_j_3
  %t_3_i_2_fused2 = phi i32 [ %85, %for_body_j_3 ], [ %10, %parallel_closure_entry ]
  tail call void @llvm.dbg.declare(metadata i32 %t_3_i_2_fused2, metadata !193, metadata !DIExpression()), !dbg !167
  %12 = srem i32 %t_3_i_2_fused2, 999
  %13 = mul nsw i32 %12, 1000
  tail call void @llvm.dbg.declare(metadata i32 0, metadata !194, metadata !DIExpression()), !dbg !167
  %14 = sext i32 %13 to i64, !dbg !167
  br label %vector.body, !dbg !167

vector.body:                                      ; preds = %vector.body, %for_begin_j_3.preheader
  %index = phi i64 [ 0, %for_begin_j_3.preheader ], [ %index.next, %vector.body ], !dbg !167
  %15 = add nsw i64 %index, %14, !dbg !167
  %16 = getelementptr inbounds double, ptr %ey, i64 %15, !dbg !167
  %17 = getelementptr inbounds i8, ptr %16, i64 16, !dbg !167
  %wide.load = load <2 x double>, ptr %16, align 8, !dbg !167, !tbaa !174
  %wide.load6 = load <2 x double>, ptr %17, align 8, !dbg !167, !tbaa !174
  %18 = getelementptr i8, ptr %16, i64 8000, !dbg !167
  %19 = getelementptr i8, ptr %16, i64 8016, !dbg !167
  %wide.load7 = load <2 x double>, ptr %18, align 8, !dbg !167, !tbaa !174
  %wide.load8 = load <2 x double>, ptr %19, align 8, !dbg !167, !tbaa !174
  %20 = getelementptr inbounds double, ptr %ex, i64 %15, !dbg !167
  %21 = getelementptr inbounds i8, ptr %20, i64 16, !dbg !167
  %wide.load9 = load <2 x double>, ptr %20, align 8, !dbg !167, !tbaa !185
  %wide.load10 = load <2 x double>, ptr %21, align 8, !dbg !167, !tbaa !185
  %22 = getelementptr i8, ptr %20, i64 8, !dbg !167
  %23 = getelementptr i8, ptr %20, i64 24, !dbg !167
  %wide.load11 = load <2 x double>, ptr %22, align 8, !dbg !167, !tbaa !185
  %wide.load12 = load <2 x double>, ptr %23, align 8, !dbg !167, !tbaa !185
  %24 = fsub <2 x double> %wide.load11, %wide.load9, !dbg !167
  %25 = fsub <2 x double> %wide.load12, %wide.load10, !dbg !167
  %26 = fadd <2 x double> %wide.load7, %24, !dbg !167
  %27 = fadd <2 x double> %wide.load8, %25, !dbg !167
  %28 = fsub <2 x double> %26, %wide.load, !dbg !167
  %29 = fsub <2 x double> %27, %wide.load6, !dbg !167
  %30 = fmul <2 x double> %28, <double 0x3FE6666666666666, double 0x3FE6666666666666>, !dbg !167
  %31 = fmul <2 x double> %29, <double 0x3FE6666666666666, double 0x3FE6666666666666>, !dbg !167
  %32 = getelementptr inbounds double, ptr %hz, i64 %15, !dbg !167
  %33 = getelementptr inbounds i8, ptr %32, i64 16, !dbg !167
  %wide.load13 = load <2 x double>, ptr %32, align 8, !dbg !167, !tbaa !181
  %wide.load14 = load <2 x double>, ptr %33, align 8, !dbg !167, !tbaa !181
  %34 = fsub <2 x double> %wide.load13, %30, !dbg !167
  %35 = fsub <2 x double> %wide.load14, %31, !dbg !167
  store <2 x double> %34, ptr %32, align 8, !dbg !167, !tbaa !181
  store <2 x double> %35, ptr %33, align 8, !dbg !167, !tbaa !181
  %index.next = add nuw i64 %index, 4, !dbg !167
  %36 = icmp eq i64 %index.next, 996, !dbg !167
  br i1 %36, label %for_body_j_3, label %vector.body, !dbg !167, !prof !187, !llvm.loop !195

for_end_t_3_i_2_fused:                            ; preds = %for_body_j_3, %parallel_closure_entry
  ret i32 0, !dbg !167

for_body_j_3:                                     ; preds = %vector.body
  tail call void @llvm.dbg.declare(metadata i64 996, metadata !194, metadata !DIExpression()), !dbg !167
  %37 = add nsw i64 %14, 996, !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 %37, metadata !196, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 %37, metadata !196, metadata !DIExpression()), !dbg !167
  %38 = getelementptr inbounds double, ptr %ey, i64 %37, !dbg !167
  %39 = load double, ptr %38, align 8, !dbg !167, !tbaa !174
  %40 = getelementptr i8, ptr %38, i64 8000, !dbg !167
  %41 = load double, ptr %40, align 8, !dbg !167, !tbaa !174
  %42 = getelementptr inbounds double, ptr %ex, i64 %37, !dbg !167
  %43 = load double, ptr %42, align 8, !dbg !167, !tbaa !185
  %44 = getelementptr i8, ptr %42, i64 8, !dbg !167
  %45 = load double, ptr %44, align 8, !dbg !167, !tbaa !185
  %46 = fsub double %45, %43, !dbg !167
  %47 = fadd double %41, %46, !dbg !167
  %48 = fsub double %47, %39, !dbg !167
  %49 = fmul double %48, 0x3FE6666666666666, !dbg !167
  %50 = getelementptr inbounds double, ptr %hz, i64 %37, !dbg !167
  %51 = load double, ptr %50, align 8, !dbg !167, !tbaa !181
  %52 = fsub double %51, %49, !dbg !167
  store double %52, ptr %50, align 8, !dbg !167, !tbaa !181
  tail call void @llvm.dbg.declare(metadata i64 997, metadata !194, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 997, metadata !194, metadata !DIExpression()), !dbg !167
  %53 = add nsw i64 %14, 997, !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 %53, metadata !196, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 %53, metadata !196, metadata !DIExpression()), !dbg !167
  %54 = getelementptr inbounds double, ptr %ey, i64 %53, !dbg !167
  %55 = load double, ptr %54, align 8, !dbg !167, !tbaa !174
  %56 = getelementptr i8, ptr %54, i64 8000, !dbg !167
  %57 = load double, ptr %56, align 8, !dbg !167, !tbaa !174
  %58 = getelementptr inbounds double, ptr %ex, i64 %53, !dbg !167
  %59 = load double, ptr %58, align 8, !dbg !167, !tbaa !185
  %60 = getelementptr i8, ptr %58, i64 8, !dbg !167
  %61 = load double, ptr %60, align 8, !dbg !167, !tbaa !185
  %62 = fsub double %61, %59, !dbg !167
  %63 = fadd double %57, %62, !dbg !167
  %64 = fsub double %63, %55, !dbg !167
  %65 = fmul double %64, 0x3FE6666666666666, !dbg !167
  %66 = getelementptr inbounds double, ptr %hz, i64 %53, !dbg !167
  %67 = load double, ptr %66, align 8, !dbg !167, !tbaa !181
  %68 = fsub double %67, %65, !dbg !167
  store double %68, ptr %66, align 8, !dbg !167, !tbaa !181
  tail call void @llvm.dbg.declare(metadata i64 998, metadata !194, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 998, metadata !194, metadata !DIExpression()), !dbg !167
  %69 = add nsw i64 %14, 998, !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 %69, metadata !196, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.declare(metadata i64 %69, metadata !196, metadata !DIExpression()), !dbg !167
  %70 = getelementptr inbounds double, ptr %ey, i64 %69, !dbg !167
  %71 = load double, ptr %70, align 8, !dbg !167, !tbaa !174
  %72 = getelementptr i8, ptr %70, i64 8000, !dbg !167
  %73 = load double, ptr %72, align 8, !dbg !167, !tbaa !174
  %74 = getelementptr inbounds double, ptr %ex, i64 %69, !dbg !167
  %75 = load double, ptr %74, align 8, !dbg !167, !tbaa !185
  %76 = getelementptr i8, ptr %74, i64 8, !dbg !167
  %77 = load double, ptr %76, align 8, !dbg !167, !tbaa !185
  %78 = fsub double %77, %75, !dbg !167
  %79 = fadd double %73, %78, !dbg !167
  %80 = fsub double %79, %71, !dbg !167
  %81 = fmul double %80, 0x3FE6666666666666, !dbg !167
  %82 = getelementptr inbounds double, ptr %hz, i64 %69, !dbg !167
  %83 = load double, ptr %82, align 8, !dbg !167, !tbaa !181
  %84 = fsub double %83, %81, !dbg !167
  store double %84, ptr %82, align 8, !dbg !167, !tbaa !181
  tail call void @llvm.dbg.declare(metadata i64 999, metadata !194, metadata !DIExpression()), !dbg !167
  %85 = add nsw i32 %t_3_i_2_fused2, 1, !dbg !167
  tail call void @llvm.dbg.declare(metadata i32 %85, metadata !193, metadata !DIExpression()), !dbg !167
  %exitcond5.not = icmp eq i32 %85, %9, !dbg !167
  br i1 %exitcond5.not, label %for_end_t_3_i_2_fused, label %for_begin_j_3.preheader, !dbg !167, !prof !171
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
!25 = !{!"0x2d085f0.w4.b0", !26, i64 0}
!26 = !{!"0x2d085f0.w8.b0", !27, i64 0}
!27 = !{!"0x2d085f0.w16.b0", !28, i64 0}
!28 = !{!"0x2d085f0.w32.b0", !29, i64 0}
!29 = !{!"0x2d085f0.w64.b0", !30, i64 0}
!30 = !{!"0x2d085f0.w128.b0", !31, i64 0}
!31 = !{!"0x2d085f0.w256.b0", !32, i64 0}
!32 = !{!"0x2d085f0.w512.b0", !33, i64 0}
!33 = !{!"0x2d085f0.w1024.b0", !34, i64 0}
!34 = !{!"0x2d085f0", !22, i64 0}
!35 = !DILocalVariable(name: "_fict__handle.code", scope: !5, file: !1, type: !8)
!36 = !{!37, !37, i64 0}
!37 = !{!"0x2d085f0.w4.b4", !26, i64 0}
!38 = !DILocalVariable(name: "ex_handle.code", scope: !5, file: !1, type: !8)
!39 = !{!40, !40, i64 0}
!40 = !{!"0x2d085f0.w4.b8", !41, i64 0}
!41 = !{!"0x2d085f0.w8.b8", !27, i64 0}
!42 = !DILocalVariable(name: "ey_handle.code", scope: !5, file: !1, type: !8)
!43 = !{!44, !44, i64 0}
!44 = !{!"0x2d085f0.w4.b12", !41, i64 0}
!45 = !DILocalVariable(name: "hz_handle.code", scope: !5, file: !1, type: !8)
!46 = !DILocalVariable(name: "_fict__handle", scope: !5, file: !1, type: !9)
!47 = !DILocalVariable(name: "ex_handle", scope: !5, file: !1, type: !9)
!48 = !DILocalVariable(name: "ey_handle", scope: !5, file: !1, type: !9)
!49 = !DILocalVariable(name: "hz_handle", scope: !5, file: !1, type: !9)
!50 = !DILocalVariable(name: "main0._fict__handle.shape", scope: !5, file: !1, type: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52)
!52 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!53 = !DILocalVariable(name: "main0._fict__handle.strides", scope: !5, file: !1, type: !51)
!54 = !DILocalVariable(name: "dev_id", scope: !5, file: !1, type: !8)
!55 = !DILocalVariable(name: "_fict_", scope: !5, file: !1, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57)
!57 = !DIBasicType(name: "float64", size: 64, encoding: DW_ATE_float)
!58 = !DILocalVariable(name: "main0.ex_handle.shape", scope: !5, file: !1, type: !51)
!59 = !DILocalVariable(name: "main0.ex_handle.strides", scope: !5, file: !1, type: !51)
!60 = !DILocalVariable(name: "ex", scope: !5, file: !1, type: !56)
!61 = !DILocalVariable(name: "main0.ey_handle.shape", scope: !5, file: !1, type: !51)
!62 = !DILocalVariable(name: "main0.ey_handle.strides", scope: !5, file: !1, type: !51)
!63 = !DILocalVariable(name: "ey", scope: !5, file: !1, type: !56)
!64 = !DILocalVariable(name: "main0.hz_handle.shape", scope: !5, file: !1, type: !51)
!65 = !DILocalVariable(name: "main0.hz_handle.strides", scope: !5, file: !1, type: !51)
!66 = !DILocalVariable(name: "hz", scope: !5, file: !1, type: !56)
!67 = !{!68, !68, i64 0}
!68 = !{!"0x2b528a0.w8.b0", !69, i64 0}
!69 = !{!"0x2b528a0.w16.b0", !70, i64 0}
!70 = !{!"0x2b528a0.w32.b0", !71, i64 0}
!71 = !{!"0x2b528a0.w64.b0", !72, i64 0}
!72 = !{!"0x2b528a0.w128.b0", !73, i64 0}
!73 = !{!"0x2b528a0.w256.b0", !74, i64 0}
!74 = !{!"0x2b528a0.w512.b0", !75, i64 0}
!75 = !{!"0x2b528a0.w1024.b0", !76, i64 0}
!76 = !{!"0x2b528a0", !22, i64 0}
!77 = !{!78, !78, i64 0}
!78 = !{!"0x2cc27b0.w8.b0", !79, i64 0}
!79 = !{!"0x2cc27b0.w16.b0", !80, i64 0}
!80 = !{!"0x2cc27b0.w32.b0", !81, i64 0}
!81 = !{!"0x2cc27b0.w64.b0", !82, i64 0}
!82 = !{!"0x2cc27b0.w128.b0", !83, i64 0}
!83 = !{!"0x2cc27b0.w256.b0", !84, i64 0}
!84 = !{!"0x2cc27b0.w512.b0", !85, i64 0}
!85 = !{!"0x2cc27b0.w1024.b0", !86, i64 0}
!86 = !{!"0x2cc27b0", !22, i64 0}
!87 = !{!88, !88, i64 0}
!88 = !{!"0x2be82d0.w8.b0", !89, i64 0}
!89 = !{!"0x2be82d0.w16.b0", !90, i64 0}
!90 = !{!"0x2be82d0.w32.b0", !91, i64 0}
!91 = !{!"0x2be82d0.w64.b0", !92, i64 0}
!92 = !{!"0x2be82d0.w128.b0", !93, i64 0}
!93 = !{!"0x2be82d0.w256.b0", !94, i64 0}
!94 = !{!"0x2be82d0.w512.b0", !95, i64 0}
!95 = !{!"0x2be82d0.w1024.b0", !96, i64 0}
!96 = !{!"0x2be82d0", !22, i64 0}
!97 = !{!98, !98, i64 0}
!98 = !{!"0x2be82d0.w8.b8", !89, i64 0}
!99 = !{!100, !100, i64 0}
!100 = !{!"0x2b7c160.w8.b0", !101, i64 0}
!101 = !{!"0x2b7c160.w16.b0", !102, i64 0}
!102 = !{!"0x2b7c160.w32.b0", !103, i64 0}
!103 = !{!"0x2b7c160.w64.b0", !104, i64 0}
!104 = !{!"0x2b7c160.w128.b0", !105, i64 0}
!105 = !{!"0x2b7c160.w256.b0", !106, i64 0}
!106 = !{!"0x2b7c160.w512.b0", !107, i64 0}
!107 = !{!"0x2b7c160.w1024.b0", !108, i64 0}
!108 = !{!"0x2b7c160", !22, i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"0x2b7c160.w8.b8", !101, i64 0}
!111 = !{!112, !112, i64 0}
!112 = !{!"0x2b7e980.w8.b0", !113, i64 0}
!113 = !{!"0x2b7e980.w16.b0", !114, i64 0}
!114 = !{!"0x2b7e980.w32.b0", !115, i64 0}
!115 = !{!"0x2b7e980.w64.b0", !116, i64 0}
!116 = !{!"0x2b7e980.w128.b0", !117, i64 0}
!117 = !{!"0x2b7e980.w256.b0", !118, i64 0}
!118 = !{!"0x2b7e980.w512.b0", !119, i64 0}
!119 = !{!"0x2b7e980.w1024.b0", !120, i64 0}
!120 = !{!"0x2b7e980", !22, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"0x2b7e980.w8.b8", !113, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"0x2ba5810.w8.b0", !125, i64 0}
!125 = !{!"0x2ba5810.w16.b0", !126, i64 0}
!126 = !{!"0x2ba5810.w32.b0", !127, i64 0}
!127 = !{!"0x2ba5810.w64.b0", !128, i64 0}
!128 = !{!"0x2ba5810.w128.b0", !129, i64 0}
!129 = !{!"0x2ba5810.w256.b0", !130, i64 0}
!130 = !{!"0x2ba5810.w512.b0", !131, i64 0}
!131 = !{!"0x2ba5810.w1024.b0", !132, i64 0}
!132 = !{!"0x2ba5810", !22, i64 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"0x2ba5810.w8.b8", !125, i64 0}
!135 = !{!136, !136, i64 0}
!136 = !{!"0x2ba7d20.w8.b0", !137, i64 0}
!137 = !{!"0x2ba7d20.w16.b0", !138, i64 0}
!138 = !{!"0x2ba7d20.w32.b0", !139, i64 0}
!139 = !{!"0x2ba7d20.w64.b0", !140, i64 0}
!140 = !{!"0x2ba7d20.w128.b0", !141, i64 0}
!141 = !{!"0x2ba7d20.w256.b0", !142, i64 0}
!142 = !{!"0x2ba7d20.w512.b0", !143, i64 0}
!143 = !{!"0x2ba7d20.w1024.b0", !144, i64 0}
!144 = !{!"0x2ba7d20", !22, i64 0}
!145 = !{!146, !146, i64 0}
!146 = !{!"0x2ba7d20.w8.b8", !137, i64 0}
!147 = !{!148, !148, i64 0}
!148 = !{!"0x2d10a80.w8.b0", !149, i64 0}
!149 = !{!"0x2d10a80.w16.b0", !150, i64 0}
!150 = !{!"0x2d10a80.w32.b0", !151, i64 0}
!151 = !{!"0x2d10a80.w64.b0", !152, i64 0}
!152 = !{!"0x2d10a80.w128.b0", !153, i64 0}
!153 = !{!"0x2d10a80.w256.b0", !154, i64 0}
!154 = !{!"0x2d10a80.w512.b0", !155, i64 0}
!155 = !{!"0x2d10a80.w1024.b0", !156, i64 0}
!156 = !{!"0x2d10a80", !22, i64 0}
!157 = !{!158, !158, i64 0}
!158 = !{!"0x2d10a80.w8.b8", !149, i64 0}
!159 = distinct !DISubprogram(name: "main0_compute_", scope: !1, file: !1, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !162)
!160 = !DISubroutineType(types: !161)
!161 = !{!8, !56, !56, !56, !56}
!162 = !{!163, !164, !165, !166}
!163 = !DILocalVariable(name: "ey", arg: 1, scope: !159, file: !1, type: !56)
!164 = !DILocalVariable(name: "_fict_", arg: 2, scope: !159, file: !1, type: !56)
!165 = !DILocalVariable(name: "hz", arg: 3, scope: !159, file: !1, type: !56)
!166 = !DILocalVariable(name: "ex", arg: 4, scope: !159, file: !1, type: !56)
!167 = !DILocation(line: 0, scope: !159)
!168 = !DILocalVariable(name: "t_0_j_fused_0", scope: !159, file: !1, type: !8)
!169 = !{!"branch_weights", i32 127, i32 1}
!170 = !DILocalVariable(name: "t_0_j_fused_1.s", scope: !159, file: !1, type: !8)
!171 = !{!"branch_weights", i32 127, i32 134217601}
!172 = !{!173, !173, i64 0}
!173 = !{!"0x26f32c0", !22, i64 0}
!174 = !{!175, !175, i64 0}
!175 = !{!"0x287b300", !22, i64 0}
!176 = !{!"branch_weights", i32 1, i32 1048575}
!177 = !DILocalVariable(name: "t_1_i_j_1_fused_0", scope: !159, file: !1, type: !8)
!178 = !DILocalVariable(name: "t_1_i_j_1_fused_1.s", scope: !159, file: !1, type: !8)
!179 = !DILocalVariable(name: "cse_var_2", scope: !159, file: !1, type: !8)
!180 = !DILocalVariable(name: "cse_var_1", scope: !159, file: !1, type: !8)
!181 = !{!182, !182, i64 0}
!182 = !{!"0x2701950", !22, i64 0}
!183 = !DILocalVariable(name: "t_2_i_1_fused", scope: !159, file: !1, type: !8)
!184 = !DILocalVariable(name: "j_2", scope: !159, file: !1, type: !8)
!185 = !{!186, !186, i64 0}
!186 = !{!"0x26fed20", !22, i64 0}
!187 = !{!"branch_weights", i32 1, i32 262143}
!188 = distinct !{!188, !189, !190}
!189 = !{!"llvm.loop.isvectorized", i32 1}
!190 = !{!"llvm.loop.unroll.runtime.disable"}
!191 = !DILocalVariable(name: "cse_var_4", scope: !159, file: !1, type: !8)
!192 = !DILocalVariable(name: "cse_var_3", scope: !159, file: !1, type: !8)
!193 = !DILocalVariable(name: "t_3_i_2_fused", scope: !159, file: !1, type: !8)
!194 = !DILocalVariable(name: "j_3", scope: !159, file: !1, type: !8)
!195 = distinct !{!195, !189, !190}
!196 = !DILocalVariable(name: "cse_var_5", scope: !159, file: !1, type: !8)
