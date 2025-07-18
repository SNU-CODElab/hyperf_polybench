; ModuleID = 'correlation.c'
source_filename = "correlation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@stderr = external global ptr, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i32 4000, ptr %6, align 4
  store i32 4000, ptr %7, align 4
  %13 = call ptr @polybench_alloc_data(i64 noundef 16000000, i32 noundef 4)
  store ptr %13, ptr %9, align 8
  %14 = call ptr @polybench_alloc_data(i64 noundef 16000000, i32 noundef 4)
  store ptr %14, ptr %10, align 8
  %15 = call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 4)
  store ptr %15, ptr %11, align 8
  %16 = call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 4)
  store ptr %16, ptr %12, align 8
  %17 = load i32, ptr %7, align 4
  %18 = load i32, ptr %6, align 4
  %19 = load ptr, ptr %9, align 8
  %20 = getelementptr inbounds [4000 x [4000 x float]], ptr %19, i64 0, i64 0
  call void @init_array(i32 noundef %17, i32 noundef %18, ptr noundef %8, ptr noundef %20)
  %21 = load i32, ptr %7, align 4
  %22 = load i32, ptr %6, align 4
  %23 = load float, ptr %8, align 4
  %24 = load ptr, ptr %9, align 8
  %25 = getelementptr inbounds [4000 x [4000 x float]], ptr %24, i64 0, i64 0
  %26 = load ptr, ptr %10, align 8
  %27 = getelementptr inbounds [4000 x [4000 x float]], ptr %26, i64 0, i64 0
  %28 = load ptr, ptr %11, align 8
  %29 = getelementptr inbounds [4000 x float], ptr %28, i64 0, i64 0
  %30 = load ptr, ptr %12, align 8
  %31 = getelementptr inbounds [4000 x float], ptr %30, i64 0, i64 0
  call void @kernel_correlation(i32 noundef %21, i32 noundef %22, float noundef %23, ptr noundef %25, ptr noundef %27, ptr noundef %29, ptr noundef %31)
  %32 = load i32, ptr %4, align 4
  %33 = icmp sgt i32 %32, 42
  br i1 %33, label %34, label %44

34:                                               ; preds = %2
  %35 = load ptr, ptr %5, align 8
  %36 = getelementptr inbounds ptr, ptr %35, i64 0
  %37 = load ptr, ptr %36, align 8
  %38 = call i32 @strcmp(ptr noundef %37, ptr noundef @.str) #7
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i32, ptr %7, align 4
  %42 = load ptr, ptr %10, align 8
  %43 = getelementptr inbounds [4000 x [4000 x float]], ptr %42, i64 0, i64 0
  call void @print_array(i32 noundef %41, ptr noundef %43)
  br label %44

44:                                               ; preds = %40, %34, %2
  %45 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %45) #5
  %46 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %46) #5
  %47 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %47) #5
  %48 = load ptr, ptr %12, align 8
  call void @free(ptr noundef %48) #5
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_array(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %11 = load ptr, ptr %7, align 8
  store float 0x3FF3333340000000, ptr %11, align 4
  store i32 0, ptr %9, align 4
  br label %12

12:                                               ; preds = %39, %4
  %13 = load i32, ptr %9, align 4
  %14 = load i32, ptr %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %12
  store i32 0, ptr %10, align 4
  br label %17

17:                                               ; preds = %35, %16
  %18 = load i32, ptr %10, align 4
  %19 = load i32, ptr %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load i32, ptr %9, align 4
  %23 = sitofp i32 %22 to float
  %24 = load i32, ptr %10, align 4
  %25 = sitofp i32 %24 to float
  %26 = fmul float %23, %25
  %27 = fdiv float %26, 4.000000e+03
  %28 = load ptr, ptr %8, align 8
  %29 = load i32, ptr %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4000 x float], ptr %28, i64 %30
  %32 = load i32, ptr %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4000 x float], ptr %31, i64 0, i64 %33
  store float %27, ptr %34, align 4
  br label %35

35:                                               ; preds = %21
  %36 = load i32, ptr %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %10, align 4
  br label %17, !llvm.loop !7

38:                                               ; preds = %17
  br label %39

39:                                               ; preds = %38
  %40 = load i32, ptr %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %9, align 4
  br label %12, !llvm.loop !9

42:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_correlation(i32 noundef %0, i32 noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  store i32 %0, ptr %8, align 4
  store i32 %1, ptr %9, align 4
  store float %2, ptr %10, align 4
  store ptr %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  store ptr %6, ptr %14, align 8
  store float 0x3FB99999A0000000, ptr %19, align 4
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @2, i32 11, ptr @kernel_correlation.omp_outlined, ptr %8, ptr %13, ptr %15, ptr %9, ptr %11, ptr %10, ptr %14, ptr %19, ptr %16, ptr %12, ptr %18)
  %20 = load ptr, ptr %12, align 8
  %21 = load i32, ptr %8, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4000 x float], ptr %20, i64 %23
  %25 = load i32, ptr %8, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4000 x float], ptr %24, i64 0, i64 %27
  store float 1.000000e+00, ptr %28, align 4
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_array(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 0, ptr %5, align 4
  br label %7

7:                                                ; preds = %43, %2
  %8 = load i32, ptr %5, align 4
  %9 = load i32, ptr %3, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %7
  store i32 0, ptr %6, align 4
  br label %12

12:                                               ; preds = %39, %11
  %13 = load i32, ptr %6, align 4
  %14 = load i32, ptr %3, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %12
  %17 = load ptr, ptr @stderr, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = load i32, ptr %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4000 x float], ptr %18, i64 %20
  %22 = load i32, ptr %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4000 x float], ptr %21, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = fpext float %25 to double
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.4, double noundef %26) #5
  %28 = load i32, ptr %5, align 4
  %29 = load i32, ptr %3, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, ptr %6, align 4
  %32 = add nsw i32 %30, %31
  %33 = srem i32 %32, 20
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %16
  %36 = load ptr, ptr @stderr, align 8
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.5) #5
  br label %38

38:                                               ; preds = %35, %16
  br label %39

39:                                               ; preds = %38
  %40 = load i32, ptr %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %6, align 4
  br label %12, !llvm.loop !10

42:                                               ; preds = %12
  br label %43

43:                                               ; preds = %42
  %44 = load i32, ptr %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %5, align 4
  br label %7, !llvm.loop !11

46:                                               ; preds = %7
  %47 = load ptr, ptr @stderr, align 8
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef @.str.5) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @kernel_correlation.omp_outlined(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(4) %12) #4 {
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  store ptr %0, ptr %14, align 8
  store ptr %1, ptr %15, align 8
  store ptr %2, ptr %16, align 8
  store ptr %3, ptr %17, align 8
  store ptr %4, ptr %18, align 8
  store ptr %5, ptr %19, align 8
  store ptr %6, ptr %20, align 8
  store ptr %7, ptr %21, align 8
  store ptr %8, ptr %22, align 8
  store ptr %9, ptr %23, align 8
  store ptr %10, ptr %24, align 8
  store ptr %11, ptr %25, align 8
  store ptr %12, ptr %26, align 8
  %27 = load ptr, ptr %16, align 8
  %28 = load ptr, ptr %17, align 8
  %29 = load ptr, ptr %18, align 8
  %30 = load ptr, ptr %19, align 8
  %31 = load ptr, ptr %20, align 8
  %32 = load ptr, ptr %21, align 8
  %33 = load ptr, ptr %22, align 8
  %34 = load ptr, ptr %23, align 8
  %35 = load ptr, ptr %24, align 8
  %36 = load ptr, ptr %25, align 8
  %37 = load ptr, ptr %26, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @2, i32 6, ptr @kernel_correlation.omp_outlined.omp_outlined, ptr %27, ptr %28, ptr %29, ptr %30, ptr %31, ptr %32)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @2, i32 8, ptr @kernel_correlation.omp_outlined.omp_outlined.1, ptr %27, ptr %33, ptr %29, ptr %30, ptr %31, ptr %28, ptr %32, ptr %34)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @2, i32 7, ptr @kernel_correlation.omp_outlined.omp_outlined.2, ptr %30, ptr %35, ptr %27, ptr %31, ptr %28, ptr %32, ptr %33)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @2, i32 6, ptr @kernel_correlation.omp_outlined.omp_outlined.3, ptr %27, ptr %36, ptr %37, ptr %29, ptr %30, ptr %31)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @kernel_correlation.omp_outlined.omp_outlined(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) #4 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store ptr %0, ptr %9, align 8
  store ptr %1, ptr %10, align 8
  store ptr %2, ptr %11, align 8
  store ptr %3, ptr %12, align 8
  store ptr %4, ptr %13, align 8
  store ptr %5, ptr %14, align 8
  store ptr %6, ptr %15, align 8
  store ptr %7, ptr %16, align 8
  %27 = load ptr, ptr %11, align 8
  %28 = load ptr, ptr %12, align 8
  %29 = load ptr, ptr %13, align 8
  %30 = load ptr, ptr %14, align 8
  %31 = load ptr, ptr %15, align 8
  %32 = load ptr, ptr %16, align 8
  %33 = load i32, ptr %27, align 4
  store i32 %33, ptr %19, align 4
  %34 = load i32, ptr %19, align 4
  %35 = sub nsw i32 %34, 0
  %36 = sdiv i32 %35, 1
  %37 = sub nsw i32 %36, 1
  store i32 %37, ptr %20, align 4
  store i32 0, ptr %21, align 4
  %38 = load i32, ptr %19, align 4
  %39 = icmp slt i32 0, %38
  br i1 %39, label %40, label %104

40:                                               ; preds = %8
  store i32 0, ptr %22, align 4
  %41 = load i32, ptr %20, align 4
  store i32 %41, ptr %23, align 4
  store i32 1, ptr %24, align 4
  store i32 0, ptr %25, align 4
  %42 = load ptr, ptr %9, align 8
  %43 = load i32, ptr %42, align 4
  call void @__kmpc_for_static_init_4(ptr @1, i32 %43, i32 34, ptr %25, ptr %22, ptr %23, ptr %24, i32 1, i32 1)
  %44 = load i32, ptr %23, align 4
  %45 = load i32, ptr %20, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, ptr %20, align 4
  br label %51

49:                                               ; preds = %40
  %50 = load i32, ptr %23, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, ptr %23, align 4
  %53 = load i32, ptr %22, align 4
  store i32 %53, ptr %17, align 4
  br label %54

54:                                               ; preds = %97, %51
  %55 = load i32, ptr %17, align 4
  %56 = load i32, ptr %23, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %100

58:                                               ; preds = %54
  %59 = load i32, ptr %17, align 4
  %60 = mul nsw i32 %59, 1
  %61 = add nsw i32 0, %60
  store i32 %61, ptr %26, align 4
  %62 = load ptr, ptr %28, align 8
  %63 = load i32, ptr %26, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, ptr %62, i64 %64
  store float 0.000000e+00, ptr %65, align 4
  store i32 0, ptr %29, align 4
  br label %66

66:                                               ; preds = %85, %58
  %67 = load i32, ptr %29, align 4
  %68 = load i32, ptr %30, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %66
  %71 = load ptr, ptr %31, align 8
  %72 = load i32, ptr %29, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [4000 x float], ptr %71, i64 %73
  %75 = load i32, ptr %26, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4000 x float], ptr %74, i64 0, i64 %76
  %78 = load float, ptr %77, align 4
  %79 = load ptr, ptr %28, align 8
  %80 = load i32, ptr %26, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, ptr %79, i64 %81
  %83 = load float, ptr %82, align 4
  %84 = fadd float %83, %78
  store float %84, ptr %82, align 4
  br label %85

85:                                               ; preds = %70
  %86 = load i32, ptr %29, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %29, align 4
  br label %66, !llvm.loop !12

88:                                               ; preds = %66
  %89 = load float, ptr %32, align 4
  %90 = load ptr, ptr %28, align 8
  %91 = load i32, ptr %26, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, ptr %90, i64 %92
  %94 = load float, ptr %93, align 4
  %95 = fdiv float %94, %89
  store float %95, ptr %93, align 4
  br label %96

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96
  %98 = load i32, ptr %17, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %17, align 4
  br label %54

100:                                              ; preds = %54
  br label %101

101:                                              ; preds = %100
  %102 = load ptr, ptr %9, align 8
  %103 = load i32, ptr %102, align 4
  call void @__kmpc_for_static_fini(ptr @1, i32 %103)
  br label %104

104:                                              ; preds = %101, %8
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) #5

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) #5

; Function Attrs: nounwind
declare !callback !13 void @__kmpc_fork_call(ptr, i32, ptr, ...) #5

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @kernel_correlation.omp_outlined.omp_outlined.1(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) #4 {
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store ptr %0, ptr %11, align 8
  store ptr %1, ptr %12, align 8
  store ptr %2, ptr %13, align 8
  store ptr %3, ptr %14, align 8
  store ptr %4, ptr %15, align 8
  store ptr %5, ptr %16, align 8
  store ptr %6, ptr %17, align 8
  store ptr %7, ptr %18, align 8
  store ptr %8, ptr %19, align 8
  store ptr %9, ptr %20, align 8
  %31 = load ptr, ptr %13, align 8
  %32 = load ptr, ptr %14, align 8
  %33 = load ptr, ptr %15, align 8
  %34 = load ptr, ptr %16, align 8
  %35 = load ptr, ptr %17, align 8
  %36 = load ptr, ptr %18, align 8
  %37 = load ptr, ptr %19, align 8
  %38 = load ptr, ptr %20, align 8
  %39 = load i32, ptr %31, align 4
  store i32 %39, ptr %23, align 4
  %40 = load i32, ptr %23, align 4
  %41 = sub nsw i32 %40, 0
  %42 = sdiv i32 %41, 1
  %43 = sub nsw i32 %42, 1
  store i32 %43, ptr %24, align 4
  store i32 0, ptr %25, align 4
  %44 = load i32, ptr %23, align 4
  %45 = icmp slt i32 0, %44
  br i1 %45, label %46, label %164

46:                                               ; preds = %10
  store i32 0, ptr %26, align 4
  %47 = load i32, ptr %24, align 4
  store i32 %47, ptr %27, align 4
  store i32 1, ptr %28, align 4
  store i32 0, ptr %29, align 4
  %48 = load ptr, ptr %11, align 8
  %49 = load i32, ptr %48, align 4
  call void @__kmpc_for_static_init_4(ptr @1, i32 %49, i32 34, ptr %29, ptr %26, ptr %27, ptr %28, i32 1, i32 1)
  %50 = load i32, ptr %27, align 4
  %51 = load i32, ptr %24, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, ptr %24, align 4
  br label %57

55:                                               ; preds = %46
  %56 = load i32, ptr %27, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, ptr %27, align 4
  %59 = load i32, ptr %26, align 4
  store i32 %59, ptr %21, align 4
  br label %60

60:                                               ; preds = %157, %57
  %61 = load i32, ptr %21, align 4
  %62 = load i32, ptr %27, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %160

64:                                               ; preds = %60
  %65 = load i32, ptr %21, align 4
  %66 = mul nsw i32 %65, 1
  %67 = add nsw i32 0, %66
  store i32 %67, ptr %30, align 4
  %68 = load ptr, ptr %32, align 8
  %69 = load i32, ptr %30, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, ptr %68, i64 %70
  store float 0.000000e+00, ptr %71, align 4
  store i32 0, ptr %33, align 4
  br label %72

72:                                               ; preds = %111, %64
  %73 = load i32, ptr %33, align 4
  %74 = load i32, ptr %34, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %114

76:                                               ; preds = %72
  %77 = load ptr, ptr %35, align 8
  %78 = load i32, ptr %33, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [4000 x float], ptr %77, i64 %79
  %81 = load i32, ptr %30, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4000 x float], ptr %80, i64 0, i64 %82
  %84 = load float, ptr %83, align 4
  %85 = load ptr, ptr %36, align 8
  %86 = load i32, ptr %30, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, ptr %85, i64 %87
  %89 = load float, ptr %88, align 4
  %90 = fsub float %84, %89
  %91 = load ptr, ptr %35, align 8
  %92 = load i32, ptr %33, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [4000 x float], ptr %91, i64 %93
  %95 = load i32, ptr %30, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4000 x float], ptr %94, i64 0, i64 %96
  %98 = load float, ptr %97, align 4
  %99 = load ptr, ptr %36, align 8
  %100 = load i32, ptr %30, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, ptr %99, i64 %101
  %103 = load float, ptr %102, align 4
  %104 = fsub float %98, %103
  %105 = load ptr, ptr %32, align 8
  %106 = load i32, ptr %30, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, ptr %105, i64 %107
  %109 = load float, ptr %108, align 4
  %110 = call float @llvm.fmuladd.f32(float %90, float %104, float %109)
  store float %110, ptr %108, align 4
  br label %111

111:                                              ; preds = %76
  %112 = load i32, ptr %33, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, ptr %33, align 4
  br label %72, !llvm.loop !15

114:                                              ; preds = %72
  %115 = load float, ptr %37, align 4
  %116 = load ptr, ptr %32, align 8
  %117 = load i32, ptr %30, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, ptr %116, i64 %118
  %120 = load float, ptr %119, align 4
  %121 = fdiv float %120, %115
  store float %121, ptr %119, align 4
  %122 = load ptr, ptr %32, align 8
  %123 = load i32, ptr %30, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, ptr %122, i64 %124
  %126 = load float, ptr %125, align 4
  %127 = fpext float %126 to double
  %128 = call double @sqrt(double noundef %127) #5
  %129 = fptrunc double %128 to float
  %130 = load ptr, ptr %32, align 8
  %131 = load i32, ptr %30, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, ptr %130, i64 %132
  store float %129, ptr %133, align 4
  %134 = load ptr, ptr %32, align 8
  %135 = load i32, ptr %30, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, ptr %134, i64 %136
  %138 = load float, ptr %137, align 4
  %139 = load float, ptr %38, align 4
  %140 = fcmp ole float %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %114
  br label %149

142:                                              ; preds = %114
  %143 = load ptr, ptr %32, align 8
  %144 = load i32, ptr %30, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, ptr %143, i64 %145
  %147 = load float, ptr %146, align 4
  %148 = fpext float %147 to double
  br label %149

149:                                              ; preds = %142, %141
  %150 = phi double [ 1.000000e+00, %141 ], [ %148, %142 ]
  %151 = fptrunc double %150 to float
  %152 = load ptr, ptr %32, align 8
  %153 = load i32, ptr %30, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, ptr %152, i64 %154
  store float %151, ptr %155, align 4
  br label %156

156:                                              ; preds = %149
  br label %157

157:                                              ; preds = %156
  %158 = load i32, ptr %21, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, ptr %21, align 4
  br label %60

160:                                              ; preds = %60
  br label %161

161:                                              ; preds = %160
  %162 = load ptr, ptr %11, align 8
  %163 = load i32, ptr %162, align 4
  call void @__kmpc_for_static_fini(ptr @1, i32 %163)
  br label %164

164:                                              ; preds = %161, %10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @kernel_correlation.omp_outlined.omp_outlined.2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #4 {
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store ptr %0, ptr %10, align 8
  store ptr %1, ptr %11, align 8
  store ptr %2, ptr %12, align 8
  store ptr %3, ptr %13, align 8
  store ptr %4, ptr %14, align 8
  store ptr %5, ptr %15, align 8
  store ptr %6, ptr %16, align 8
  store ptr %7, ptr %17, align 8
  store ptr %8, ptr %18, align 8
  %29 = load ptr, ptr %12, align 8
  %30 = load ptr, ptr %13, align 8
  %31 = load ptr, ptr %14, align 8
  %32 = load ptr, ptr %15, align 8
  %33 = load ptr, ptr %16, align 8
  %34 = load ptr, ptr %17, align 8
  %35 = load ptr, ptr %18, align 8
  %36 = load i32, ptr %29, align 4
  store i32 %36, ptr %21, align 4
  %37 = load i32, ptr %21, align 4
  %38 = sub nsw i32 %37, 0
  %39 = sdiv i32 %38, 1
  %40 = sub nsw i32 %39, 1
  store i32 %40, ptr %22, align 4
  store i32 0, ptr %23, align 4
  %41 = load i32, ptr %21, align 4
  %42 = icmp slt i32 0, %41
  br i1 %42, label %43, label %117

43:                                               ; preds = %9
  store i32 0, ptr %24, align 4
  %44 = load i32, ptr %22, align 4
  store i32 %44, ptr %25, align 4
  store i32 1, ptr %26, align 4
  store i32 0, ptr %27, align 4
  %45 = load ptr, ptr %10, align 8
  %46 = load i32, ptr %45, align 4
  call void @__kmpc_for_static_init_4(ptr @1, i32 %46, i32 34, ptr %27, ptr %24, ptr %25, ptr %26, i32 1, i32 1)
  %47 = load i32, ptr %25, align 4
  %48 = load i32, ptr %22, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, ptr %22, align 4
  br label %54

52:                                               ; preds = %43
  %53 = load i32, ptr %25, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, ptr %25, align 4
  %56 = load i32, ptr %24, align 4
  store i32 %56, ptr %19, align 4
  br label %57

57:                                               ; preds = %110, %54
  %58 = load i32, ptr %19, align 4
  %59 = load i32, ptr %25, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %113

61:                                               ; preds = %57
  %62 = load i32, ptr %19, align 4
  %63 = mul nsw i32 %62, 1
  %64 = add nsw i32 0, %63
  store i32 %64, ptr %28, align 4
  store i32 0, ptr %30, align 4
  br label %65

65:                                               ; preds = %105, %61
  %66 = load i32, ptr %30, align 4
  %67 = load i32, ptr %31, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %108

69:                                               ; preds = %65
  %70 = load ptr, ptr %33, align 8
  %71 = load i32, ptr %30, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, ptr %70, i64 %72
  %74 = load float, ptr %73, align 4
  %75 = load ptr, ptr %32, align 8
  %76 = load i32, ptr %28, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4000 x float], ptr %75, i64 %77
  %79 = load i32, ptr %30, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [4000 x float], ptr %78, i64 0, i64 %80
  %82 = load float, ptr %81, align 4
  %83 = fsub float %82, %74
  store float %83, ptr %81, align 4
  %84 = load float, ptr %34, align 4
  %85 = fpext float %84 to double
  %86 = call double @sqrt(double noundef %85) #5
  %87 = load ptr, ptr %35, align 8
  %88 = load i32, ptr %30, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, ptr %87, i64 %89
  %91 = load float, ptr %90, align 4
  %92 = fpext float %91 to double
  %93 = fmul double %86, %92
  %94 = load ptr, ptr %32, align 8
  %95 = load i32, ptr %28, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4000 x float], ptr %94, i64 %96
  %98 = load i32, ptr %30, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4000 x float], ptr %97, i64 0, i64 %99
  %101 = load float, ptr %100, align 4
  %102 = fpext float %101 to double
  %103 = fdiv double %102, %93
  %104 = fptrunc double %103 to float
  store float %104, ptr %100, align 4
  br label %105

105:                                              ; preds = %69
  %106 = load i32, ptr %30, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, ptr %30, align 4
  br label %65, !llvm.loop !16

108:                                              ; preds = %65
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109
  %111 = load i32, ptr %19, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, ptr %19, align 4
  br label %57

113:                                              ; preds = %57
  br label %114

114:                                              ; preds = %113
  %115 = load ptr, ptr %10, align 8
  %116 = load i32, ptr %115, align 4
  call void @__kmpc_for_static_fini(ptr @1, i32 %116)
  br label %117

117:                                              ; preds = %114, %9
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @kernel_correlation.omp_outlined.omp_outlined.3(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #4 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store ptr %0, ptr %9, align 8
  store ptr %1, ptr %10, align 8
  store ptr %2, ptr %11, align 8
  store ptr %3, ptr %12, align 8
  store ptr %4, ptr %13, align 8
  store ptr %5, ptr %14, align 8
  store ptr %6, ptr %15, align 8
  store ptr %7, ptr %16, align 8
  %27 = load ptr, ptr %11, align 8
  %28 = load ptr, ptr %12, align 8
  %29 = load ptr, ptr %13, align 8
  %30 = load ptr, ptr %14, align 8
  %31 = load ptr, ptr %15, align 8
  %32 = load ptr, ptr %16, align 8
  %33 = load i32, ptr %27, align 4
  %34 = sub nsw i32 %33, 1
  store i32 %34, ptr %19, align 4
  %35 = load i32, ptr %19, align 4
  %36 = sub nsw i32 %35, 0
  %37 = sdiv i32 %36, 1
  %38 = sub nsw i32 %37, 1
  store i32 %38, ptr %20, align 4
  store i32 0, ptr %21, align 4
  %39 = load i32, ptr %19, align 4
  %40 = icmp slt i32 0, %39
  br i1 %40, label %41, label %145

41:                                               ; preds = %8
  store i32 0, ptr %22, align 4
  %42 = load i32, ptr %20, align 4
  store i32 %42, ptr %23, align 4
  store i32 1, ptr %24, align 4
  store i32 0, ptr %25, align 4
  %43 = load ptr, ptr %9, align 8
  %44 = load i32, ptr %43, align 4
  call void @__kmpc_for_static_init_4(ptr @1, i32 %44, i32 34, ptr %25, ptr %22, ptr %23, ptr %24, i32 1, i32 1)
  %45 = load i32, ptr %23, align 4
  %46 = load i32, ptr %20, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, ptr %20, align 4
  br label %52

50:                                               ; preds = %41
  %51 = load i32, ptr %23, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, ptr %23, align 4
  %54 = load i32, ptr %22, align 4
  store i32 %54, ptr %17, align 4
  br label %55

55:                                               ; preds = %138, %52
  %56 = load i32, ptr %17, align 4
  %57 = load i32, ptr %23, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %141

59:                                               ; preds = %55
  %60 = load i32, ptr %17, align 4
  %61 = mul nsw i32 %60, 1
  %62 = add nsw i32 0, %61
  store i32 %62, ptr %26, align 4
  %63 = load ptr, ptr %28, align 8
  %64 = load i32, ptr %26, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4000 x float], ptr %63, i64 %65
  %67 = load i32, ptr %26, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4000 x float], ptr %66, i64 0, i64 %68
  store float 1.000000e+00, ptr %69, align 4
  %70 = load i32, ptr %26, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %29, align 4
  br label %72

72:                                               ; preds = %133, %59
  %73 = load i32, ptr %29, align 4
  %74 = load i32, ptr %27, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %136

76:                                               ; preds = %72
  %77 = load ptr, ptr %28, align 8
  %78 = load i32, ptr %26, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [4000 x float], ptr %77, i64 %79
  %81 = load i32, ptr %29, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4000 x float], ptr %80, i64 0, i64 %82
  store float 0.000000e+00, ptr %83, align 4
  store i32 0, ptr %30, align 4
  br label %84

84:                                               ; preds = %114, %76
  %85 = load i32, ptr %30, align 4
  %86 = load i32, ptr %31, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %117

88:                                               ; preds = %84
  %89 = load ptr, ptr %32, align 8
  %90 = load i32, ptr %30, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [4000 x float], ptr %89, i64 %91
  %93 = load i32, ptr %26, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [4000 x float], ptr %92, i64 0, i64 %94
  %96 = load float, ptr %95, align 4
  %97 = load ptr, ptr %32, align 8
  %98 = load i32, ptr %30, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4000 x float], ptr %97, i64 %99
  %101 = load i32, ptr %29, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [4000 x float], ptr %100, i64 0, i64 %102
  %104 = load float, ptr %103, align 4
  %105 = load ptr, ptr %28, align 8
  %106 = load i32, ptr %26, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4000 x float], ptr %105, i64 %107
  %109 = load i32, ptr %29, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [4000 x float], ptr %108, i64 0, i64 %110
  %112 = load float, ptr %111, align 4
  %113 = call float @llvm.fmuladd.f32(float %96, float %104, float %112)
  store float %113, ptr %111, align 4
  br label %114

114:                                              ; preds = %88
  %115 = load i32, ptr %30, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, ptr %30, align 4
  br label %84, !llvm.loop !17

117:                                              ; preds = %84
  %118 = load ptr, ptr %28, align 8
  %119 = load i32, ptr %26, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [4000 x float], ptr %118, i64 %120
  %122 = load i32, ptr %29, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [4000 x float], ptr %121, i64 0, i64 %123
  %125 = load float, ptr %124, align 4
  %126 = load ptr, ptr %28, align 8
  %127 = load i32, ptr %29, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4000 x float], ptr %126, i64 %128
  %130 = load i32, ptr %26, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [4000 x float], ptr %129, i64 0, i64 %131
  store float %125, ptr %132, align 4
  br label %133

133:                                              ; preds = %117
  %134 = load i32, ptr %29, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr %29, align 4
  br label %72, !llvm.loop !18

136:                                              ; preds = %72
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137
  %139 = load i32, ptr %17, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, ptr %17, align 4
  br label %55

141:                                              ; preds = %55
  br label %142

142:                                              ; preds = %141
  %143 = load ptr, ptr %9, align 8
  %144 = load i32, ptr %143, align 4
  call void @__kmpc_for_static_fini(ptr @1, i32 %144)
  br label %145

145:                                              ; preds = %142, %8
  ret void
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 7a1022a3895f51a3c11dd326c47d861575ffaf55)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = !{!14}
!14 = !{i64 2, i64 -1, i64 -1, i1 true}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
