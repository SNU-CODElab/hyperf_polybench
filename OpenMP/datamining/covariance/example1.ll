; ModuleID = 'covariance.c'
source_filename = "covariance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@stderr = external global ptr, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i32 1000, ptr %6, align 4
  store i32 1000, ptr %7, align 4
  %12 = call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8)
  store ptr %12, ptr %9, align 8
  %13 = call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8)
  store ptr %13, ptr %10, align 8
  %14 = call ptr @polybench_alloc_data(i64 noundef 1000, i32 noundef 8)
  store ptr %14, ptr %11, align 8
  %15 = load i32, ptr %7, align 4
  %16 = load i32, ptr %6, align 4
  %17 = load ptr, ptr %9, align 8
  %18 = getelementptr inbounds [1000 x [1000 x double]], ptr %17, i64 0, i64 0
  call void @init_array(i32 noundef %15, i32 noundef %16, ptr noundef %8, ptr noundef %18)
  %19 = load i32, ptr %7, align 4
  %20 = load i32, ptr %6, align 4
  %21 = load double, ptr %8, align 8
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr inbounds [1000 x [1000 x double]], ptr %22, i64 0, i64 0
  %24 = load ptr, ptr %10, align 8
  %25 = getelementptr inbounds [1000 x [1000 x double]], ptr %24, i64 0, i64 0
  %26 = load ptr, ptr %11, align 8
  %27 = getelementptr inbounds [1000 x double], ptr %26, i64 0, i64 0
  call void @kernel_covariance(i32 noundef %19, i32 noundef %20, double noundef %21, ptr noundef %23, ptr noundef %25, ptr noundef %27)
  %28 = load i32, ptr %4, align 4
  %29 = icmp sgt i32 %28, 42
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds ptr, ptr %31, i64 0
  %33 = load ptr, ptr %32, align 8
  %34 = call i32 @strcmp(ptr noundef %33, ptr noundef @.str) #7
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load i32, ptr %7, align 4
  %38 = load ptr, ptr %10, align 8
  %39 = getelementptr inbounds [1000 x [1000 x double]], ptr %38, i64 0, i64 0
  call void @print_array(i32 noundef %37, ptr noundef %39)
  br label %40

40:                                               ; preds = %36, %30, %2
  %41 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %41) #5
  %42 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %42) #5
  %43 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %43) #5
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
  store double 1.200000e+00, ptr %11, align 8
  store i32 0, ptr %9, align 4
  br label %12

12:                                               ; preds = %37, %4
  %13 = load i32, ptr %9, align 4
  %14 = icmp slt i32 %13, 1000
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  store i32 0, ptr %10, align 4
  br label %16

16:                                               ; preds = %33, %15
  %17 = load i32, ptr %10, align 4
  %18 = icmp slt i32 %17, 1000
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load i32, ptr %9, align 4
  %21 = sitofp i32 %20 to double
  %22 = load i32, ptr %10, align 4
  %23 = sitofp i32 %22 to double
  %24 = fmul double %21, %23
  %25 = fdiv double %24, 1.000000e+03
  %26 = load ptr, ptr %8, align 8
  %27 = load i32, ptr %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [1000 x double], ptr %26, i64 %28
  %30 = load i32, ptr %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [1000 x double], ptr %29, i64 0, i64 %31
  store double %25, ptr %32, align 8
  br label %33

33:                                               ; preds = %19
  %34 = load i32, ptr %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %10, align 4
  br label %16, !llvm.loop !7

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36
  %38 = load i32, ptr %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %9, align 4
  br label %12, !llvm.loop !9

40:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_covariance(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, ptr %7, align 4
  store i32 %1, ptr %8, align 4
  store double %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  store ptr %5, ptr %12, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @2, i32 9, ptr @kernel_covariance.omp_outlined, ptr %7, ptr %12, ptr %13, ptr %8, ptr %10, ptr %9, ptr %14, ptr %16, ptr %11)
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

7:                                                ; preds = %42, %2
  %8 = load i32, ptr %5, align 4
  %9 = load i32, ptr %3, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %7
  store i32 0, ptr %6, align 4
  br label %12

12:                                               ; preds = %38, %11
  %13 = load i32, ptr %6, align 4
  %14 = load i32, ptr %3, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = load ptr, ptr @stderr, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = load i32, ptr %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [1000 x double], ptr %18, i64 %20
  %22 = load i32, ptr %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [1000 x double], ptr %21, i64 0, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.3, double noundef %25) #5
  %27 = load i32, ptr %5, align 4
  %28 = load i32, ptr %3, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, ptr %6, align 4
  %31 = add nsw i32 %29, %30
  %32 = srem i32 %31, 20
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %16
  %35 = load ptr, ptr @stderr, align 8
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.4) #5
  br label %37

37:                                               ; preds = %34, %16
  br label %38

38:                                               ; preds = %37
  %39 = load i32, ptr %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %6, align 4
  br label %12, !llvm.loop !10

41:                                               ; preds = %12
  br label %42

42:                                               ; preds = %41
  %43 = load i32, ptr %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %5, align 4
  br label %7, !llvm.loop !11

45:                                               ; preds = %7
  %46 = load ptr, ptr @stderr, align 8
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.4) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @kernel_covariance.omp_outlined(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #4 {
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  store ptr %0, ptr %12, align 8
  store ptr %1, ptr %13, align 8
  store ptr %2, ptr %14, align 8
  store ptr %3, ptr %15, align 8
  store ptr %4, ptr %16, align 8
  store ptr %5, ptr %17, align 8
  store ptr %6, ptr %18, align 8
  store ptr %7, ptr %19, align 8
  store ptr %8, ptr %20, align 8
  store ptr %9, ptr %21, align 8
  store ptr %10, ptr %22, align 8
  %23 = load ptr, ptr %14, align 8
  %24 = load ptr, ptr %15, align 8
  %25 = load ptr, ptr %16, align 8
  %26 = load ptr, ptr %17, align 8
  %27 = load ptr, ptr %18, align 8
  %28 = load ptr, ptr %19, align 8
  %29 = load ptr, ptr %20, align 8
  %30 = load ptr, ptr %21, align 8
  %31 = load ptr, ptr %22, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @2, i32 6, ptr @kernel_covariance.omp_outlined.omp_outlined, ptr %23, ptr %24, ptr %25, ptr %26, ptr %27, ptr %28)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @2, i32 5, ptr @kernel_covariance.omp_outlined.omp_outlined.1, ptr %26, ptr %29, ptr %23, ptr %27, ptr %24)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @2, i32 6, ptr @kernel_covariance.omp_outlined.omp_outlined.2, ptr %23, ptr %30, ptr %31, ptr %25, ptr %26, ptr %27)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @kernel_covariance.omp_outlined.omp_outlined(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #4 {
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
  %65 = getelementptr inbounds double, ptr %62, i64 %64
  store double 0.000000e+00, ptr %65, align 8
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
  %74 = getelementptr inbounds [1000 x double], ptr %71, i64 %73
  %75 = load i32, ptr %26, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [1000 x double], ptr %74, i64 0, i64 %76
  %78 = load double, ptr %77, align 8
  %79 = load ptr, ptr %28, align 8
  %80 = load i32, ptr %26, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, ptr %79, i64 %81
  %83 = load double, ptr %82, align 8
  %84 = fadd double %83, %78
  store double %84, ptr %82, align 8
  br label %85

85:                                               ; preds = %70
  %86 = load i32, ptr %29, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %29, align 4
  br label %66, !llvm.loop !12

88:                                               ; preds = %66
  %89 = load double, ptr %32, align 8
  %90 = load ptr, ptr %28, align 8
  %91 = load i32, ptr %26, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, ptr %90, i64 %92
  %94 = load double, ptr %93, align 8
  %95 = fdiv double %94, %89
  store double %95, ptr %93, align 8
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
define internal void @kernel_covariance.omp_outlined.omp_outlined.1(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #4 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  store ptr %6, ptr %14, align 8
  %25 = load ptr, ptr %10, align 8
  %26 = load ptr, ptr %11, align 8
  %27 = load ptr, ptr %12, align 8
  %28 = load ptr, ptr %13, align 8
  %29 = load ptr, ptr %14, align 8
  %30 = load i32, ptr %25, align 4
  store i32 %30, ptr %17, align 4
  %31 = load i32, ptr %17, align 4
  %32 = sub nsw i32 %31, 0
  %33 = sdiv i32 %32, 1
  %34 = sub nsw i32 %33, 1
  store i32 %34, ptr %18, align 4
  store i32 0, ptr %19, align 4
  %35 = load i32, ptr %17, align 4
  %36 = icmp slt i32 0, %35
  br i1 %36, label %37, label %90

37:                                               ; preds = %7
  store i32 0, ptr %20, align 4
  %38 = load i32, ptr %18, align 4
  store i32 %38, ptr %21, align 4
  store i32 1, ptr %22, align 4
  store i32 0, ptr %23, align 4
  %39 = load ptr, ptr %8, align 8
  %40 = load i32, ptr %39, align 4
  call void @__kmpc_for_static_init_4(ptr @1, i32 %40, i32 34, ptr %23, ptr %20, ptr %21, ptr %22, i32 1, i32 1)
  %41 = load i32, ptr %21, align 4
  %42 = load i32, ptr %18, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, ptr %18, align 4
  br label %48

46:                                               ; preds = %37
  %47 = load i32, ptr %21, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, ptr %21, align 4
  %50 = load i32, ptr %20, align 4
  store i32 %50, ptr %15, align 4
  br label %51

51:                                               ; preds = %83, %48
  %52 = load i32, ptr %15, align 4
  %53 = load i32, ptr %21, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %86

55:                                               ; preds = %51
  %56 = load i32, ptr %15, align 4
  %57 = mul nsw i32 %56, 1
  %58 = add nsw i32 0, %57
  store i32 %58, ptr %24, align 4
  store i32 0, ptr %26, align 4
  br label %59

59:                                               ; preds = %78, %55
  %60 = load i32, ptr %26, align 4
  %61 = load i32, ptr %27, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %59
  %64 = load ptr, ptr %29, align 8
  %65 = load i32, ptr %26, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, ptr %64, i64 %66
  %68 = load double, ptr %67, align 8
  %69 = load ptr, ptr %28, align 8
  %70 = load i32, ptr %24, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [1000 x double], ptr %69, i64 %71
  %73 = load i32, ptr %26, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [1000 x double], ptr %72, i64 0, i64 %74
  %76 = load double, ptr %75, align 8
  %77 = fsub double %76, %68
  store double %77, ptr %75, align 8
  br label %78

78:                                               ; preds = %63
  %79 = load i32, ptr %26, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr %26, align 4
  br label %59, !llvm.loop !15

81:                                               ; preds = %59
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82
  %84 = load i32, ptr %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr %15, align 4
  br label %51

86:                                               ; preds = %51
  br label %87

87:                                               ; preds = %86
  %88 = load ptr, ptr %8, align 8
  %89 = load i32, ptr %88, align 4
  call void @__kmpc_for_static_fini(ptr @1, i32 %89)
  br label %90

90:                                               ; preds = %87, %7
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @kernel_covariance.omp_outlined.omp_outlined.2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #4 {
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
  br i1 %39, label %40, label %136

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

54:                                               ; preds = %129, %51
  %55 = load i32, ptr %17, align 4
  %56 = load i32, ptr %23, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %132

58:                                               ; preds = %54
  %59 = load i32, ptr %17, align 4
  %60 = mul nsw i32 %59, 1
  %61 = add nsw i32 0, %60
  store i32 %61, ptr %26, align 4
  %62 = load i32, ptr %26, align 4
  store i32 %62, ptr %28, align 4
  br label %63

63:                                               ; preds = %124, %58
  %64 = load i32, ptr %28, align 4
  %65 = load i32, ptr %27, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %127

67:                                               ; preds = %63
  %68 = load ptr, ptr %29, align 8
  %69 = load i32, ptr %26, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [1000 x double], ptr %68, i64 %70
  %72 = load i32, ptr %28, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [1000 x double], ptr %71, i64 0, i64 %73
  store double 0.000000e+00, ptr %74, align 8
  store i32 0, ptr %30, align 4
  br label %75

75:                                               ; preds = %105, %67
  %76 = load i32, ptr %30, align 4
  %77 = load i32, ptr %31, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %75
  %80 = load ptr, ptr %32, align 8
  %81 = load i32, ptr %30, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [1000 x double], ptr %80, i64 %82
  %84 = load i32, ptr %26, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [1000 x double], ptr %83, i64 0, i64 %85
  %87 = load double, ptr %86, align 8
  %88 = load ptr, ptr %32, align 8
  %89 = load i32, ptr %30, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [1000 x double], ptr %88, i64 %90
  %92 = load i32, ptr %28, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [1000 x double], ptr %91, i64 0, i64 %93
  %95 = load double, ptr %94, align 8
  %96 = load ptr, ptr %29, align 8
  %97 = load i32, ptr %26, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [1000 x double], ptr %96, i64 %98
  %100 = load i32, ptr %28, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [1000 x double], ptr %99, i64 0, i64 %101
  %103 = load double, ptr %102, align 8
  %104 = call double @llvm.fmuladd.f64(double %87, double %95, double %103)
  store double %104, ptr %102, align 8
  br label %105

105:                                              ; preds = %79
  %106 = load i32, ptr %30, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, ptr %30, align 4
  br label %75, !llvm.loop !16

108:                                              ; preds = %75
  %109 = load ptr, ptr %29, align 8
  %110 = load i32, ptr %26, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [1000 x double], ptr %109, i64 %111
  %113 = load i32, ptr %28, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [1000 x double], ptr %112, i64 0, i64 %114
  %116 = load double, ptr %115, align 8
  %117 = load ptr, ptr %29, align 8
  %118 = load i32, ptr %28, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [1000 x double], ptr %117, i64 %119
  %121 = load i32, ptr %26, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [1000 x double], ptr %120, i64 0, i64 %122
  store double %116, ptr %123, align 8
  br label %124

124:                                              ; preds = %108
  %125 = load i32, ptr %28, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, ptr %28, align 4
  br label %63, !llvm.loop !17

127:                                              ; preds = %63
  br label %128

128:                                              ; preds = %127
  br label %129

129:                                              ; preds = %128
  %130 = load i32, ptr %17, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, ptr %17, align 4
  br label %54

132:                                              ; preds = %54
  br label %133

133:                                              ; preds = %132
  %134 = load ptr, ptr %9, align 8
  %135 = load i32, ptr %134, align 4
  call void @__kmpc_for_static_fini(ptr @1, i32 %135)
  br label %136

136:                                              ; preds = %133, %8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

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
