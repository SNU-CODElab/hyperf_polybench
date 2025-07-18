; ModuleID = 'fdtd-2d.c'
source_filename = "fdtd-2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 34, i32 0, i32 22, ptr @0 }, align 8
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
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i32 50, ptr %6, align 4
  store i32 1000, ptr %7, align 4
  store i32 1000, ptr %8, align 4
  %13 = call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8)
  store ptr %13, ptr %9, align 8
  %14 = call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8)
  store ptr %14, ptr %10, align 8
  %15 = call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8)
  store ptr %15, ptr %11, align 8
  %16 = call ptr @polybench_alloc_data(i64 noundef 50, i32 noundef 8)
  store ptr %16, ptr %12, align 8
  %17 = load i32, ptr %6, align 4
  %18 = load i32, ptr %7, align 4
  %19 = load i32, ptr %8, align 4
  %20 = load ptr, ptr %9, align 8
  %21 = getelementptr inbounds [1000 x [1000 x double]], ptr %20, i64 0, i64 0
  %22 = load ptr, ptr %10, align 8
  %23 = getelementptr inbounds [1000 x [1000 x double]], ptr %22, i64 0, i64 0
  %24 = load ptr, ptr %11, align 8
  %25 = getelementptr inbounds [1000 x [1000 x double]], ptr %24, i64 0, i64 0
  %26 = load ptr, ptr %12, align 8
  %27 = getelementptr inbounds [50 x double], ptr %26, i64 0, i64 0
  call void @init_array(i32 noundef %17, i32 noundef %18, i32 noundef %19, ptr noundef %21, ptr noundef %23, ptr noundef %25, ptr noundef %27)
  %28 = load i32, ptr %6, align 4
  %29 = load i32, ptr %7, align 4
  %30 = load i32, ptr %8, align 4
  %31 = load ptr, ptr %9, align 8
  %32 = getelementptr inbounds [1000 x [1000 x double]], ptr %31, i64 0, i64 0
  %33 = load ptr, ptr %10, align 8
  %34 = getelementptr inbounds [1000 x [1000 x double]], ptr %33, i64 0, i64 0
  %35 = load ptr, ptr %11, align 8
  %36 = getelementptr inbounds [1000 x [1000 x double]], ptr %35, i64 0, i64 0
  %37 = load ptr, ptr %12, align 8
  %38 = getelementptr inbounds [50 x double], ptr %37, i64 0, i64 0
  call void @kernel_fdtd_2d(i32 noundef %28, i32 noundef %29, i32 noundef %30, ptr noundef %32, ptr noundef %34, ptr noundef %36, ptr noundef %38)
  %39 = load i32, ptr %4, align 4
  %40 = icmp sgt i32 %39, 42
  br i1 %40, label %41, label %56

41:                                               ; preds = %2
  %42 = load ptr, ptr %5, align 8
  %43 = getelementptr inbounds ptr, ptr %42, i64 0
  %44 = load ptr, ptr %43, align 8
  %45 = call i32 @strcmp(ptr noundef %44, ptr noundef @.str) #8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %41
  %48 = load i32, ptr %7, align 4
  %49 = load i32, ptr %8, align 4
  %50 = load ptr, ptr %9, align 8
  %51 = getelementptr inbounds [1000 x [1000 x double]], ptr %50, i64 0, i64 0
  %52 = load ptr, ptr %10, align 8
  %53 = getelementptr inbounds [1000 x [1000 x double]], ptr %52, i64 0, i64 0
  %54 = load ptr, ptr %11, align 8
  %55 = getelementptr inbounds [1000 x [1000 x double]], ptr %54, i64 0, i64 0
  call void @print_array(i32 noundef %48, i32 noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55)
  br label %56

56:                                               ; preds = %47, %41, %2
  %57 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %57) #5
  %58 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %58) #5
  %59 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %59) #5
  %60 = load ptr, ptr %12, align 8
  call void @free(ptr noundef %60) #5
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_array(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, ptr %8, align 4
  store i32 %1, ptr %9, align 4
  store i32 %2, ptr %10, align 4
  store ptr %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  store ptr %6, ptr %14, align 8
  store i32 0, ptr %15, align 4
  br label %17

17:                                               ; preds = %28, %7
  %18 = load i32, ptr %15, align 4
  %19 = load i32, ptr %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i32, ptr %15, align 4
  %23 = sitofp i32 %22 to double
  %24 = load ptr, ptr %14, align 8
  %25 = load i32, ptr %15, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, ptr %24, i64 %26
  store double %23, ptr %27, align 8
  br label %28

28:                                               ; preds = %21
  %29 = load i32, ptr %15, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %15, align 4
  br label %17, !llvm.loop !7

31:                                               ; preds = %17
  store i32 0, ptr %15, align 4
  br label %32

32:                                               ; preds = %94, %31
  %33 = load i32, ptr %15, align 4
  %34 = load i32, ptr %9, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %97

36:                                               ; preds = %32
  store i32 0, ptr %16, align 4
  br label %37

37:                                               ; preds = %90, %36
  %38 = load i32, ptr %16, align 4
  %39 = load i32, ptr %10, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %93

41:                                               ; preds = %37
  %42 = load i32, ptr %15, align 4
  %43 = sitofp i32 %42 to double
  %44 = load i32, ptr %16, align 4
  %45 = add nsw i32 %44, 1
  %46 = sitofp i32 %45 to double
  %47 = fmul double %43, %46
  %48 = load i32, ptr %9, align 4
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %47, %49
  %51 = load ptr, ptr %11, align 8
  %52 = load i32, ptr %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [1000 x double], ptr %51, i64 %53
  %55 = load i32, ptr %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [1000 x double], ptr %54, i64 0, i64 %56
  store double %50, ptr %57, align 8
  %58 = load i32, ptr %15, align 4
  %59 = sitofp i32 %58 to double
  %60 = load i32, ptr %16, align 4
  %61 = add nsw i32 %60, 2
  %62 = sitofp i32 %61 to double
  %63 = fmul double %59, %62
  %64 = load i32, ptr %10, align 4
  %65 = sitofp i32 %64 to double
  %66 = fdiv double %63, %65
  %67 = load ptr, ptr %12, align 8
  %68 = load i32, ptr %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [1000 x double], ptr %67, i64 %69
  %71 = load i32, ptr %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [1000 x double], ptr %70, i64 0, i64 %72
  store double %66, ptr %73, align 8
  %74 = load i32, ptr %15, align 4
  %75 = sitofp i32 %74 to double
  %76 = load i32, ptr %16, align 4
  %77 = add nsw i32 %76, 3
  %78 = sitofp i32 %77 to double
  %79 = fmul double %75, %78
  %80 = load i32, ptr %9, align 4
  %81 = sitofp i32 %80 to double
  %82 = fdiv double %79, %81
  %83 = load ptr, ptr %13, align 8
  %84 = load i32, ptr %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [1000 x double], ptr %83, i64 %85
  %87 = load i32, ptr %16, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [1000 x double], ptr %86, i64 0, i64 %88
  store double %82, ptr %89, align 8
  br label %90

90:                                               ; preds = %41
  %91 = load i32, ptr %16, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %16, align 4
  br label %37, !llvm.loop !9

93:                                               ; preds = %37
  br label %94

94:                                               ; preds = %93
  %95 = load i32, ptr %15, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr %15, align 4
  br label %32, !llvm.loop !10

97:                                               ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_fdtd_2d(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, ptr %8, align 4
  store i32 %1, ptr %9, align 4
  store i32 %2, ptr %10, align 4
  store ptr %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  store ptr %6, ptr %14, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @2, i32 7, ptr @kernel_fdtd_2d.omp_outlined, ptr %8, ptr %10, ptr %12, ptr %14, ptr %9, ptr %13, ptr %11)
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_array(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  store i32 0, ptr %11, align 4
  br label %13

13:                                               ; preds = %68, %5
  %14 = load i32, ptr %11, align 4
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %71

17:                                               ; preds = %13
  store i32 0, ptr %12, align 4
  br label %18

18:                                               ; preds = %64, %17
  %19 = load i32, ptr %12, align 4
  %20 = load i32, ptr %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %67

22:                                               ; preds = %18
  %23 = load ptr, ptr @stderr, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = load i32, ptr %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [1000 x double], ptr %24, i64 %26
  %28 = load i32, ptr %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [1000 x double], ptr %27, i64 0, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.4, double noundef %31) #5
  %33 = load ptr, ptr @stderr, align 8
  %34 = load ptr, ptr %9, align 8
  %35 = load i32, ptr %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [1000 x double], ptr %34, i64 %36
  %38 = load i32, ptr %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [1000 x double], ptr %37, i64 0, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.4, double noundef %41) #5
  %43 = load ptr, ptr @stderr, align 8
  %44 = load ptr, ptr %10, align 8
  %45 = load i32, ptr %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [1000 x double], ptr %44, i64 %46
  %48 = load i32, ptr %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [1000 x double], ptr %47, i64 0, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef @.str.4, double noundef %51) #5
  %53 = load i32, ptr %11, align 4
  %54 = load i32, ptr %6, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, ptr %12, align 4
  %57 = add nsw i32 %55, %56
  %58 = srem i32 %57, 20
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %22
  %61 = load ptr, ptr @stderr, align 8
  %62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef @.str.5) #5
  br label %63

63:                                               ; preds = %60, %22
  br label %64

64:                                               ; preds = %63
  %65 = load i32, ptr %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %12, align 4
  br label %18, !llvm.loop !11

67:                                               ; preds = %18
  br label %68

68:                                               ; preds = %67
  %69 = load i32, ptr %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %11, align 4
  br label %13, !llvm.loop !12

71:                                               ; preds = %13
  %72 = load ptr, ptr @stderr, align 8
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef @.str.5) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @kernel_fdtd_2d.omp_outlined(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #4 {
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
  store ptr %0, ptr %10, align 8
  store ptr %1, ptr %11, align 8
  store ptr %2, ptr %12, align 8
  store ptr %3, ptr %13, align 8
  store ptr %4, ptr %14, align 8
  store ptr %5, ptr %15, align 8
  store ptr %6, ptr %16, align 8
  store ptr %7, ptr %17, align 8
  store ptr %8, ptr %18, align 8
  %22 = load ptr, ptr %12, align 8
  %23 = load ptr, ptr %13, align 8
  %24 = load ptr, ptr %14, align 8
  %25 = load ptr, ptr %15, align 8
  %26 = load ptr, ptr %16, align 8
  %27 = load ptr, ptr %17, align 8
  %28 = load ptr, ptr %18, align 8
  store i32 0, ptr %19, align 4
  br label %29

29:                                               ; preds = %42, %9
  %30 = load i32, ptr %19, align 4
  %31 = load i32, ptr %22, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @2, i32 4, ptr @kernel_fdtd_2d.omp_outlined.omp_outlined, ptr %23, ptr %24, ptr %25, ptr %19)
  %34 = load ptr, ptr %10, align 8
  %35 = load i32, ptr %34, align 4
  call void @__kmpc_barrier(ptr @3, i32 %35)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @2, i32 5, ptr @kernel_fdtd_2d.omp_outlined.omp_outlined.1, ptr %26, ptr %21, ptr %23, ptr %24, ptr %27)
  %36 = load ptr, ptr %10, align 8
  %37 = load i32, ptr %36, align 4
  call void @__kmpc_barrier(ptr @3, i32 %37)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @2, i32 5, ptr @kernel_fdtd_2d.omp_outlined.omp_outlined.2, ptr %26, ptr %21, ptr %23, ptr %28, ptr %27)
  %38 = load ptr, ptr %10, align 8
  %39 = load i32, ptr %38, align 4
  call void @__kmpc_barrier(ptr @3, i32 %39)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @2, i32 6, ptr @kernel_fdtd_2d.omp_outlined.omp_outlined.3, ptr %26, ptr %21, ptr %23, ptr %27, ptr %28, ptr %24)
  %40 = load ptr, ptr %10, align 8
  %41 = load i32, ptr %40, align 4
  call void @__kmpc_barrier(ptr @3, i32 %41)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, ptr %19, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %19, align 4
  br label %29, !llvm.loop !13

45:                                               ; preds = %29
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @kernel_fdtd_2d.omp_outlined.omp_outlined(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #4 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  store ptr %5, ptr %12, align 8
  %23 = load ptr, ptr %9, align 8
  %24 = load ptr, ptr %10, align 8
  %25 = load ptr, ptr %11, align 8
  %26 = load ptr, ptr %12, align 8
  %27 = load i32, ptr %23, align 4
  store i32 %27, ptr %15, align 4
  %28 = load i32, ptr %15, align 4
  %29 = sub nsw i32 %28, 0
  %30 = sdiv i32 %29, 1
  %31 = sub nsw i32 %30, 1
  store i32 %31, ptr %16, align 4
  store i32 0, ptr %17, align 4
  %32 = load i32, ptr %15, align 4
  %33 = icmp slt i32 0, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %6
  store i32 0, ptr %18, align 4
  %35 = load i32, ptr %16, align 4
  store i32 %35, ptr %19, align 4
  store i32 1, ptr %20, align 4
  store i32 0, ptr %21, align 4
  %36 = load ptr, ptr %7, align 8
  %37 = load i32, ptr %36, align 4
  call void @__kmpc_for_static_init_4(ptr @1, i32 %37, i32 34, ptr %21, ptr %18, ptr %19, ptr %20, i32 1, i32 1)
  %38 = load i32, ptr %19, align 4
  %39 = load i32, ptr %16, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, ptr %16, align 4
  br label %45

43:                                               ; preds = %34
  %44 = load i32, ptr %19, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, ptr %19, align 4
  %47 = load i32, ptr %18, align 4
  store i32 %47, ptr %13, align 4
  br label %48

48:                                               ; preds = %67, %45
  %49 = load i32, ptr %13, align 4
  %50 = load i32, ptr %19, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %48
  %53 = load i32, ptr %13, align 4
  %54 = mul nsw i32 %53, 1
  %55 = add nsw i32 0, %54
  store i32 %55, ptr %22, align 4
  %56 = load ptr, ptr %25, align 8
  %57 = load i32, ptr %26, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, ptr %56, i64 %58
  %60 = load double, ptr %59, align 8
  %61 = load ptr, ptr %24, align 8
  %62 = getelementptr inbounds [1000 x double], ptr %61, i64 0
  %63 = load i32, ptr %22, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [1000 x double], ptr %62, i64 0, i64 %64
  store double %60, ptr %65, align 8
  br label %66

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66
  %68 = load i32, ptr %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %13, align 4
  br label %48

70:                                               ; preds = %48
  br label %71

71:                                               ; preds = %70
  %72 = load ptr, ptr %7, align 8
  %73 = load i32, ptr %72, align 4
  call void @__kmpc_for_static_fini(ptr @1, i32 %73)
  br label %74

74:                                               ; preds = %71, %6
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) #5

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) #5

; Function Attrs: nounwind
declare !callback !14 void @__kmpc_fork_call(ptr, i32, ptr, ...) #5

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) #6

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @kernel_fdtd_2d.omp_outlined.omp_outlined.1(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #4 {
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
  %32 = sub nsw i32 %31, 1
  %33 = sdiv i32 %32, 1
  %34 = sub nsw i32 %33, 1
  store i32 %34, ptr %18, align 4
  store i32 1, ptr %19, align 4
  %35 = load i32, ptr %17, align 4
  %36 = icmp slt i32 1, %35
  br i1 %36, label %37, label %110

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

51:                                               ; preds = %103, %48
  %52 = load i32, ptr %15, align 4
  %53 = load i32, ptr %21, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %106

55:                                               ; preds = %51
  %56 = load i32, ptr %15, align 4
  %57 = mul nsw i32 %56, 1
  %58 = add nsw i32 1, %57
  store i32 %58, ptr %24, align 4
  store i32 0, ptr %26, align 4
  br label %59

59:                                               ; preds = %98, %55
  %60 = load i32, ptr %26, align 4
  %61 = load i32, ptr %27, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %101

63:                                               ; preds = %59
  %64 = load ptr, ptr %28, align 8
  %65 = load i32, ptr %24, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [1000 x double], ptr %64, i64 %66
  %68 = load i32, ptr %26, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [1000 x double], ptr %67, i64 0, i64 %69
  %71 = load double, ptr %70, align 8
  %72 = load ptr, ptr %29, align 8
  %73 = load i32, ptr %24, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [1000 x double], ptr %72, i64 %74
  %76 = load i32, ptr %26, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [1000 x double], ptr %75, i64 0, i64 %77
  %79 = load double, ptr %78, align 8
  %80 = load ptr, ptr %29, align 8
  %81 = load i32, ptr %24, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [1000 x double], ptr %80, i64 %83
  %85 = load i32, ptr %26, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [1000 x double], ptr %84, i64 0, i64 %86
  %88 = load double, ptr %87, align 8
  %89 = fsub double %79, %88
  %90 = call double @llvm.fmuladd.f64(double -5.000000e-01, double %89, double %71)
  %91 = load ptr, ptr %28, align 8
  %92 = load i32, ptr %24, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [1000 x double], ptr %91, i64 %93
  %95 = load i32, ptr %26, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [1000 x double], ptr %94, i64 0, i64 %96
  store double %90, ptr %97, align 8
  br label %98

98:                                               ; preds = %63
  %99 = load i32, ptr %26, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %26, align 4
  br label %59, !llvm.loop !16

101:                                              ; preds = %59
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  %104 = load i32, ptr %15, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr %15, align 4
  br label %51

106:                                              ; preds = %51
  br label %107

107:                                              ; preds = %106
  %108 = load ptr, ptr %8, align 8
  %109 = load i32, ptr %108, align 4
  call void @__kmpc_for_static_fini(ptr @1, i32 %109)
  br label %110

110:                                              ; preds = %107, %7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @kernel_fdtd_2d.omp_outlined.omp_outlined.2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #4 {
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
  br i1 %36, label %37, label %110

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

51:                                               ; preds = %103, %48
  %52 = load i32, ptr %15, align 4
  %53 = load i32, ptr %21, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %106

55:                                               ; preds = %51
  %56 = load i32, ptr %15, align 4
  %57 = mul nsw i32 %56, 1
  %58 = add nsw i32 0, %57
  store i32 %58, ptr %24, align 4
  store i32 1, ptr %26, align 4
  br label %59

59:                                               ; preds = %98, %55
  %60 = load i32, ptr %26, align 4
  %61 = load i32, ptr %27, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %101

63:                                               ; preds = %59
  %64 = load ptr, ptr %28, align 8
  %65 = load i32, ptr %24, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [1000 x double], ptr %64, i64 %66
  %68 = load i32, ptr %26, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [1000 x double], ptr %67, i64 0, i64 %69
  %71 = load double, ptr %70, align 8
  %72 = load ptr, ptr %29, align 8
  %73 = load i32, ptr %24, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [1000 x double], ptr %72, i64 %74
  %76 = load i32, ptr %26, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [1000 x double], ptr %75, i64 0, i64 %77
  %79 = load double, ptr %78, align 8
  %80 = load ptr, ptr %29, align 8
  %81 = load i32, ptr %24, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [1000 x double], ptr %80, i64 %82
  %84 = load i32, ptr %26, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [1000 x double], ptr %83, i64 0, i64 %86
  %88 = load double, ptr %87, align 8
  %89 = fsub double %79, %88
  %90 = call double @llvm.fmuladd.f64(double -5.000000e-01, double %89, double %71)
  %91 = load ptr, ptr %28, align 8
  %92 = load i32, ptr %24, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [1000 x double], ptr %91, i64 %93
  %95 = load i32, ptr %26, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [1000 x double], ptr %94, i64 0, i64 %96
  store double %90, ptr %97, align 8
  br label %98

98:                                               ; preds = %63
  %99 = load i32, ptr %26, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %26, align 4
  br label %59, !llvm.loop !17

101:                                              ; preds = %59
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  %104 = load i32, ptr %15, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr %15, align 4
  br label %51

106:                                              ; preds = %51
  br label %107

107:                                              ; preds = %106
  %108 = load ptr, ptr %8, align 8
  %109 = load i32, ptr %108, align 4
  call void @__kmpc_for_static_fini(ptr @1, i32 %109)
  br label %110

110:                                              ; preds = %107, %7
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @kernel_fdtd_2d.omp_outlined.omp_outlined.3(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #4 {
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
  br i1 %40, label %41, label %134

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

55:                                               ; preds = %127, %52
  %56 = load i32, ptr %17, align 4
  %57 = load i32, ptr %23, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %130

59:                                               ; preds = %55
  %60 = load i32, ptr %17, align 4
  %61 = mul nsw i32 %60, 1
  %62 = add nsw i32 0, %61
  store i32 %62, ptr %26, align 4
  store i32 0, ptr %28, align 4
  br label %63

63:                                               ; preds = %122, %59
  %64 = load i32, ptr %28, align 4
  %65 = load i32, ptr %29, align 4
  %66 = sub nsw i32 %65, 1
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %125

68:                                               ; preds = %63
  %69 = load ptr, ptr %30, align 8
  %70 = load i32, ptr %26, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [1000 x double], ptr %69, i64 %71
  %73 = load i32, ptr %28, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [1000 x double], ptr %72, i64 0, i64 %74
  %76 = load double, ptr %75, align 8
  %77 = load ptr, ptr %31, align 8
  %78 = load i32, ptr %26, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [1000 x double], ptr %77, i64 %79
  %81 = load i32, ptr %28, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [1000 x double], ptr %80, i64 0, i64 %83
  %85 = load double, ptr %84, align 8
  %86 = load ptr, ptr %31, align 8
  %87 = load i32, ptr %26, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [1000 x double], ptr %86, i64 %88
  %90 = load i32, ptr %28, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [1000 x double], ptr %89, i64 0, i64 %91
  %93 = load double, ptr %92, align 8
  %94 = fsub double %85, %93
  %95 = load ptr, ptr %32, align 8
  %96 = load i32, ptr %26, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [1000 x double], ptr %95, i64 %98
  %100 = load i32, ptr %28, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [1000 x double], ptr %99, i64 0, i64 %101
  %103 = load double, ptr %102, align 8
  %104 = fadd double %94, %103
  %105 = load ptr, ptr %32, align 8
  %106 = load i32, ptr %26, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [1000 x double], ptr %105, i64 %107
  %109 = load i32, ptr %28, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [1000 x double], ptr %108, i64 0, i64 %110
  %112 = load double, ptr %111, align 8
  %113 = fsub double %104, %112
  %114 = call double @llvm.fmuladd.f64(double 0xBFE6666666666666, double %113, double %76)
  %115 = load ptr, ptr %30, align 8
  %116 = load i32, ptr %26, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [1000 x double], ptr %115, i64 %117
  %119 = load i32, ptr %28, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [1000 x double], ptr %118, i64 0, i64 %120
  store double %114, ptr %121, align 8
  br label %122

122:                                              ; preds = %68
  %123 = load i32, ptr %28, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, ptr %28, align 4
  br label %63, !llvm.loop !18

125:                                              ; preds = %63
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126
  %128 = load i32, ptr %17, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, ptr %17, align 4
  br label %55

130:                                              ; preds = %55
  br label %131

131:                                              ; preds = %130
  %132 = load ptr, ptr %9, align 8
  %133 = load i32, ptr %132, align 4
  call void @__kmpc_for_static_fini(ptr @1, i32 %133)
  br label %134

134:                                              ; preds = %131, %8
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
attributes #6 = { convergent nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind willreturn memory(read) }

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
!13 = distinct !{!13, !8}
!14 = !{!15}
!15 = !{i64 2, i64 -1, i64 -1, i1 true}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
