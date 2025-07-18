; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%closure_loop_parallel_t_i_fused = type { ptr }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global ptr null, align 8
@__TVMBackendParallelLaunch = linkonce dllexport local_unnamed_addr global ptr null, align 8
@.str = private constant [56 x i8] c"Assert fail: num_args == 1, main0: num_args should be 1\00", align 1
@.str.1 = private constant [74 x i8] c"Assert fail: not T.isnullptr(args), main0: TVMValue* arg pointer was NULL\00", align 1
@.str.2 = private constant [76 x i8] c"Assert fail: not T.isnullptr(arg_type_ids), main0: int* type_codes was NULL\00", align 1
@.str.3 = private constant [135 x i8] c"Assert fail: A_handle_code == 3 or A_handle_code == 13 or A_handle_code == 7 or A_handle_code == 4, main0: Expect arg[0] to be pointer\00", align 1
@.str.4 = private constant [102 x i8] c"Assert fail: not T.isnullptr(A_handle), main0.A_handle is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.5 = private constant [104 x i8] c"Assert fail: 2 == T.tvm_struct_get(A_handle, 0, 4, \22int32\22), main0.A_handle.ndim is expected to equal 2\00", align 1
@.str.6 = private constant [240 x i8] c"Assert fail: T.tvm_struct_get(A_handle, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(A_handle, 0, 6, \22uint8\22) == T.uint8(64) and T.tvm_struct_get(A_handle, 0, 7, \22uint16\22) == T.uint16(1), main0.A_handle.dtype is expected to be float64\00", align 1
@.str.7 = private constant [176 x i8] c"Assert fail: T.Cast(\22int32\22, main0_A_handle_shape[0]) == 2000, Argument main0.A_handle.shape[0] has an unsatisfied constraint: 2000 == T.Cast(\22int32\22, main0_A_handle_shape[0])\00", align 1
@.str.8 = private constant [176 x i8] c"Assert fail: T.Cast(\22int32\22, main0_A_handle_shape[1]) == 2000, Argument main0.A_handle.shape[1] has an unsatisfied constraint: 2000 == T.Cast(\22int32\22, main0_A_handle_shape[1])\00", align 1
@.str.9 = private constant [170 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, main0_A_handle_strides[1]) and 2000 == T.Cast(\22int32\22, main0_A_handle_strides[0]), main0.A_handle.strides: expected to be compact array\00", align 1
@.str.10 = private constant [197 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(A_handle, 0, 8, \22uint64\22), Argument main0.A_handle.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(A_handle, 0, 8, \22uint64\22)\00", align 1
@.str.11 = private constant [177 x i8] c"Assert fail: T.tvm_struct_get(A_handle, 0, 10, \22int32\22) == 1, Argument main0.A_handle.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(A_handle, 0, 10, \22int32\22)\00", align 1
@.str.12 = private constant [90 x i8] c"Assert fail: not T.isnullptr(A), main0.A_handle is expected to have non-NULL data pointer\00", align 1
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
  %0 = icmp eq i32 %num_args, 1, !dbg !18
  br i1 %0, label %assert_end, label %assert_fail, !dbg !18, !prof !19

common.ret:                                       ; preds = %assert_end24, %assert_fail23, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail7, %assert_fail5, %assert_fail3, %assert_fail1, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail23 ], [ %51, %assert_end24 ]
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
  %.not25 = icmp eq ptr %arg_type_ids, null, !dbg !18
  br i1 %.not25, label %assert_fail3, label %assert_end4, !dbg !18, !prof !23

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
  %A_handle = load ptr, ptr %args, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %A_handle, metadata !36, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %A_handle, metadata !36, metadata !DIExpression()), !dbg !18
  %.not26 = icmp eq ptr %A_handle, null, !dbg !18
  br i1 %.not26, label %assert_fail7, label %assert_end8, !dbg !18, !prof !23

assert_fail7:                                     ; preds = %assert_end6
  %5 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %5(ptr nonnull @.str.4), !dbg !18
  br label %common.ret

assert_end8:                                      ; preds = %assert_end6
  %6 = getelementptr inbounds i8, ptr %A_handle, i64 16, !dbg !18
  %7 = load i32, ptr %6, align 4, !dbg !18
  %8 = icmp eq i32 %7, 2, !dbg !18
  br i1 %8, label %assert_end10, label %assert_fail9, !dbg !18, !prof !19

assert_fail9:                                     ; preds = %assert_end8
  %9 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %9(ptr nonnull @.str.5), !dbg !18
  br label %common.ret

assert_end10:                                     ; preds = %assert_end8
  %10 = getelementptr inbounds i8, ptr %A_handle, i64 24, !dbg !18
  %main0.A_handle.shape = load ptr, ptr %10, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.A_handle.shape, metadata !37, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.A_handle.shape, metadata !37, metadata !DIExpression()), !dbg !18
  %11 = getelementptr inbounds i8, ptr %A_handle, i64 32, !dbg !18
  %main0.A_handle.strides = load ptr, ptr %11, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.A_handle.strides, metadata !40, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %main0.A_handle.strides, metadata !40, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 poison, metadata !41, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata i32 poison, metadata !41, metadata !DIExpression()), !dbg !18
  %A = load ptr, ptr %A_handle, align 8, !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %A, metadata !42, metadata !DIExpression()), !dbg !18
  tail call void @llvm.dbg.declare(metadata ptr %A, metadata !42, metadata !DIExpression()), !dbg !18
  call void @llvm.assume(i1 true) [ "align"(ptr %A, i64 64) ], !dbg !18
  %12 = getelementptr inbounds i8, ptr %A_handle, i64 22, !dbg !18
  %13 = load i16, ptr %12, align 2, !dbg !18
  %14 = icmp eq i16 %13, 1, !dbg !18
  %15 = getelementptr inbounds i8, ptr %A_handle, i64 21, !dbg !18
  %16 = load i8, ptr %15, align 1, !dbg !18
  %17 = icmp eq i8 %16, 64, !dbg !18
  %18 = getelementptr inbounds i8, ptr %A_handle, i64 20, !dbg !18
  %19 = load i8, ptr %18, align 1, !dbg !18
  %20 = icmp eq i8 %19, 2, !dbg !18
  %21 = and i1 %17, %20, !dbg !18
  %22 = and i1 %14, %21, !dbg !18
  br i1 %22, label %assert_end12, label %assert_fail11, !dbg !18, !prof !19

assert_fail11:                                    ; preds = %assert_end10
  %23 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %23(ptr nonnull @.str.6), !dbg !18
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10
  %24 = load i64, ptr %main0.A_handle.shape, align 8, !dbg !18, !tbaa !45
  %25 = and i64 %24, 4294967295, !dbg !18
  %26 = icmp eq i64 %25, 2000, !dbg !18
  br i1 %26, label %assert_end14, label %assert_fail13, !dbg !18, !prof !19

assert_fail13:                                    ; preds = %assert_end12
  %27 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %27(ptr nonnull @.str.7), !dbg !18
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12
  %28 = getelementptr inbounds i8, ptr %main0.A_handle.shape, i64 8, !dbg !18
  %29 = load i64, ptr %28, align 8, !dbg !18, !tbaa !55
  %30 = and i64 %29, 4294967295, !dbg !18
  %31 = icmp eq i64 %30, 2000, !dbg !18
  br i1 %31, label %assert_end16, label %assert_fail15, !dbg !18, !prof !19

assert_fail15:                                    ; preds = %assert_end14
  %32 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %32(ptr nonnull @.str.8), !dbg !18
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14
  %.not27 = icmp eq ptr %main0.A_handle.strides, null, !dbg !18
  br i1 %.not27, label %if_end, label %if_then, !dbg !18, !prof !23

if_then:                                          ; preds = %assert_end16
  %33 = load i64, ptr %main0.A_handle.strides, align 8, !dbg !18, !tbaa !57
  %34 = and i64 %33, 4294967295, !dbg !18
  %35 = icmp eq i64 %34, 2000, !dbg !18
  %36 = getelementptr inbounds i8, ptr %main0.A_handle.strides, i64 8, !dbg !18
  %37 = load i64, ptr %36, align 8, !dbg !18, !tbaa !67
  %38 = and i64 %37, 4294967295, !dbg !18
  %39 = icmp eq i64 %38, 1, !dbg !18
  %40 = and i1 %35, %39, !dbg !18
  br i1 %40, label %if_end, label %assert_fail17, !dbg !18, !prof !19

if_end:                                           ; preds = %if_then, %assert_end16
  %41 = getelementptr inbounds i8, ptr %A_handle, i64 40, !dbg !18
  %42 = load i64, ptr %41, align 8, !dbg !18
  %43 = icmp eq i64 %42, 0, !dbg !18
  br i1 %43, label %assert_end20, label %assert_fail19, !dbg !18, !prof !19

assert_fail17:                                    ; preds = %if_then
  %44 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %44(ptr nonnull @.str.9), !dbg !18
  br label %common.ret

assert_fail19:                                    ; preds = %if_end
  %45 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %45(ptr nonnull @.str.10), !dbg !18
  br label %common.ret

assert_end20:                                     ; preds = %if_end
  %46 = getelementptr inbounds i8, ptr %A_handle, i64 8, !dbg !18
  %47 = load i32, ptr %46, align 4, !dbg !18
  %48 = icmp eq i32 %47, 1, !dbg !18
  br i1 %48, label %assert_end22, label %assert_fail21, !dbg !18, !prof !19

assert_fail21:                                    ; preds = %assert_end20
  %49 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %49(ptr nonnull @.str.11), !dbg !18
  br label %common.ret

assert_end22:                                     ; preds = %assert_end20
  %.not28 = icmp eq ptr %A, null, !dbg !18
  br i1 %.not28, label %assert_fail23, label %assert_end24, !dbg !18, !prof !23

assert_fail23:                                    ; preds = %assert_end22
  %50 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !18, !tbaa !20
  tail call void %50(ptr nonnull @.str.12), !dbg !18
  br label %common.ret

assert_end24:                                     ; preds = %assert_end22
  %51 = tail call fastcc i32 @main0_compute_(ptr nonnull %A), !dbg !18
  br label %common.ret
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: noinline
define internal fastcc i32 @main0_compute_(ptr noalias align 64 %A) unnamed_addr #2 !dbg !69 {
entry:
  tail call void @llvm.dbg.value(metadata ptr %A, metadata !73, metadata !DIExpression()), !dbg !74
  %0 = alloca %closure_loop_parallel_t_i_fused, align 8, !dbg !74
  store ptr %A, ptr %0, align 8, !dbg !74
  %1 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !dbg !74, !tbaa !20
  %2 = call i32 %1(ptr nonnull @__tvm_parallel_lambda, ptr nonnull %0, i32 0), !dbg !74
  ret i32 %2, !dbg !74
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define private noundef i32 @__tvm_parallel_lambda(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %A = load ptr, ptr %1, align 8, !dbg !74
  %2 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !74
  %num_task = load i32, ptr %2, align 4, !dbg !74
  %3 = add nsw i32 %num_task, 39959, !dbg !74
  %4 = sdiv i32 %3, %num_task, !dbg !74
  %5 = add nsw i32 %task_id, 1, !dbg !74
  %6 = mul nsw i32 %4, %5, !dbg !74
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 39960), !dbg !74
  %8 = mul nsw i32 %4, %task_id, !dbg !74
  tail call void @llvm.dbg.declare(metadata i32 %8, metadata !75, metadata !DIExpression()), !dbg !74
  %9 = icmp slt i32 %8, %7, !dbg !74
  br i1 %9, label %for_begin_j.preheader.preheader, label %for_end_t_i_fused, !dbg !74, !prof !76

for_begin_j.preheader.preheader:                  ; preds = %parallel_closure_entry
  %scevgep = getelementptr i8, ptr %A, i64 16000, !dbg !74
  br label %for_begin_j.preheader, !dbg !74

for_begin_j.preheader:                            ; preds = %for_begin_j.preheader.preheader, %for_end_j
  %t_i_fused2 = phi i32 [ %38, %for_end_j ], [ %8, %for_begin_j.preheader.preheader ]
  tail call void @llvm.dbg.declare(metadata i32 %t_i_fused2, metadata !75, metadata !DIExpression()), !dbg !74
  %10 = srem i32 %t_i_fused2, 1998
  %11 = mul nsw i32 %10, 2000
  tail call void @llvm.dbg.declare(metadata i32 0, metadata !77, metadata !DIExpression()), !dbg !74
  %12 = sext i32 %11 to i64, !dbg !74
  %invariant.gep = getelementptr double, ptr %A, i64 %12, !dbg !74
  %13 = shl nsw i64 %12, 3, !dbg !74
  %scevgep6 = getelementptr i8, ptr %scevgep, i64 %13, !dbg !74
  %load_initial = load double, ptr %scevgep6, align 8
  br label %for_body_j, !dbg !74

for_end_t_i_fused:                                ; preds = %for_end_j, %parallel_closure_entry
  ret i32 0, !dbg !74

for_body_j:                                       ; preds = %for_begin_j.preheader, %for_body_j
  %store_forwarded = phi double [ %load_initial, %for_begin_j.preheader ], [ %37, %for_body_j ], !dbg !74
  %indvars.iv = phi i64 [ 0, %for_begin_j.preheader ], [ %indvars.iv.next, %for_body_j ]
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv, metadata !77, metadata !DIExpression()), !dbg !74
  tail call void @llvm.dbg.declare(metadata i64 poison, metadata !78, metadata !DIExpression()), !dbg !74
  tail call void @llvm.dbg.declare(metadata i64 poison, metadata !78, metadata !DIExpression()), !dbg !74
  tail call void @llvm.dbg.declare(metadata i64 poison, metadata !79, metadata !DIExpression(DW_OP_plus_uconst, 2001)), !dbg !74
  tail call void @llvm.dbg.declare(metadata i64 poison, metadata !79, metadata !DIExpression(DW_OP_plus_uconst, 2001)), !dbg !74
  %gep = getelementptr double, ptr %invariant.gep, i64 %indvars.iv, !dbg !74
  %14 = getelementptr i8, ptr %gep, i64 32016, !dbg !74
  %15 = load double, ptr %14, align 8, !dbg !74, !tbaa !80
  %16 = getelementptr i8, ptr %gep, i64 32008, !dbg !74
  %17 = load double, ptr %16, align 8, !dbg !74, !tbaa !80
  %18 = getelementptr i8, ptr %gep, i64 32000, !dbg !74
  %19 = load double, ptr %18, align 8, !dbg !74, !tbaa !80
  %20 = getelementptr i8, ptr %gep, i64 16016, !dbg !74
  %21 = load double, ptr %20, align 8, !dbg !74, !tbaa !80
  %22 = getelementptr i8, ptr %gep, i64 16008, !dbg !74
  %23 = load double, ptr %22, align 8, !dbg !74, !tbaa !80
  %24 = getelementptr i8, ptr %gep, i64 16, !dbg !74
  %25 = load double, ptr %24, align 8, !dbg !74, !tbaa !80
  %26 = getelementptr i8, ptr %gep, i64 8, !dbg !74
  %27 = load double, ptr %26, align 8, !dbg !74, !tbaa !80
  %28 = load double, ptr %gep, align 8, !dbg !74, !tbaa !80
  %29 = fadd double %27, %28, !dbg !74
  %30 = fadd double %25, %29, !dbg !74
  %31 = fadd double %store_forwarded, %30, !dbg !74
  %32 = fadd double %23, %31, !dbg !74
  %33 = fadd double %21, %32, !dbg !74
  %34 = fadd double %19, %33, !dbg !74
  %35 = fadd double %17, %34, !dbg !74
  %36 = fadd double %15, %35, !dbg !74
  %37 = fmul double %36, 0x3FBC71C71C71C71C, !dbg !74
  store double %37, ptr %22, align 8, !dbg !74, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !74
  tail call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !77, metadata !DIExpression()), !dbg !74
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1998, !dbg !74
  br i1 %exitcond.not, label %for_end_j, label %for_body_j, !dbg !74, !prof !82

for_end_j:                                        ; preds = %for_body_j
  %38 = add nsw i32 %t_i_fused2, 1, !dbg !74
  tail call void @llvm.dbg.declare(metadata i32 %38, metadata !75, metadata !DIExpression()), !dbg !74
  %exitcond5.not = icmp eq i32 %38, %7, !dbg !74
  br i1 %exitcond5.not, label %for_end_t_i_fused, label %for_begin_j.preheader, !dbg !74, !prof !83
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
!25 = !{!"0x547f070.w4.b0", !26, i64 0}
!26 = !{!"0x547f070.w8.b0", !27, i64 0}
!27 = !{!"0x547f070.w16.b0", !28, i64 0}
!28 = !{!"0x547f070.w32.b0", !29, i64 0}
!29 = !{!"0x547f070.w64.b0", !30, i64 0}
!30 = !{!"0x547f070.w128.b0", !31, i64 0}
!31 = !{!"0x547f070.w256.b0", !32, i64 0}
!32 = !{!"0x547f070.w512.b0", !33, i64 0}
!33 = !{!"0x547f070.w1024.b0", !34, i64 0}
!34 = !{!"0x547f070", !22, i64 0}
!35 = !DILocalVariable(name: "A_handle.code", scope: !5, file: !1, type: !8)
!36 = !DILocalVariable(name: "A_handle", scope: !5, file: !1, type: !9)
!37 = !DILocalVariable(name: "main0.A_handle.shape", scope: !5, file: !1, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39)
!39 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!40 = !DILocalVariable(name: "main0.A_handle.strides", scope: !5, file: !1, type: !38)
!41 = !DILocalVariable(name: "dev_id", scope: !5, file: !1, type: !8)
!42 = !DILocalVariable(name: "A", scope: !5, file: !1, type: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44)
!44 = !DIBasicType(name: "float64", size: 64, encoding: DW_ATE_float)
!45 = !{!46, !46, i64 0}
!46 = !{!"0x54cef00.w8.b0", !47, i64 0}
!47 = !{!"0x54cef00.w16.b0", !48, i64 0}
!48 = !{!"0x54cef00.w32.b0", !49, i64 0}
!49 = !{!"0x54cef00.w64.b0", !50, i64 0}
!50 = !{!"0x54cef00.w128.b0", !51, i64 0}
!51 = !{!"0x54cef00.w256.b0", !52, i64 0}
!52 = !{!"0x54cef00.w512.b0", !53, i64 0}
!53 = !{!"0x54cef00.w1024.b0", !54, i64 0}
!54 = !{!"0x54cef00", !22, i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"0x54cef00.w8.b8", !47, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"0x54eee10.w8.b0", !59, i64 0}
!59 = !{!"0x54eee10.w16.b0", !60, i64 0}
!60 = !{!"0x54eee10.w32.b0", !61, i64 0}
!61 = !{!"0x54eee10.w64.b0", !62, i64 0}
!62 = !{!"0x54eee10.w128.b0", !63, i64 0}
!63 = !{!"0x54eee10.w256.b0", !64, i64 0}
!64 = !{!"0x54eee10.w512.b0", !65, i64 0}
!65 = !{!"0x54eee10.w1024.b0", !66, i64 0}
!66 = !{!"0x54eee10", !22, i64 0}
!67 = !{!68, !68, i64 0}
!68 = !{!"0x54eee10.w8.b8", !59, i64 0}
!69 = distinct !DISubprogram(name: "main0_compute_", scope: !1, file: !1, type: !70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{!8, !43}
!72 = !{!73}
!73 = !DILocalVariable(name: "A", arg: 1, scope: !69, file: !1, type: !43)
!74 = !DILocation(line: 0, scope: !69)
!75 = !DILocalVariable(name: "t_i_fused", scope: !69, file: !1, type: !8)
!76 = !{!"branch_weights", i32 127, i32 1}
!77 = !DILocalVariable(name: "j", scope: !69, file: !1, type: !8)
!78 = !DILocalVariable(name: "cse_var_2", scope: !69, file: !1, type: !8)
!79 = !DILocalVariable(name: "cse_var_1", scope: !69, file: !1, type: !8)
!80 = !{!81, !81, i64 0}
!81 = !{!"0x3255080", !22, i64 0}
!82 = !{!"branch_weights", i32 1, i32 1048575}
!83 = !{!"branch_weights", i32 127, i32 134217601}
