; ModuleID = 'gramschmidt.c'
source_filename = "gramschmidt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i32 512, ptr %6, align 4
  store i32 512, ptr %7, align 4
  %11 = call ptr @polybench_alloc_data(i64 noundef 262144, i32 noundef 8)
  store ptr %11, ptr %8, align 8
  %12 = call ptr @polybench_alloc_data(i64 noundef 262144, i32 noundef 8)
  store ptr %12, ptr %9, align 8
  %13 = call ptr @polybench_alloc_data(i64 noundef 262144, i32 noundef 8)
  store ptr %13, ptr %10, align 8
  %14 = load i32, ptr %6, align 4
  %15 = load i32, ptr %7, align 4
  %16 = load ptr, ptr %8, align 8
  %17 = getelementptr inbounds [512 x [512 x double]], ptr %16, i64 0, i64 0
  %18 = load ptr, ptr %9, align 8
  %19 = getelementptr inbounds [512 x [512 x double]], ptr %18, i64 0, i64 0
  %20 = load ptr, ptr %10, align 8
  %21 = getelementptr inbounds [512 x [512 x double]], ptr %20, i64 0, i64 0
  call void @init_array(i32 noundef %14, i32 noundef %15, ptr noundef %17, ptr noundef %19, ptr noundef %21)
  %22 = load i32, ptr %6, align 4
  %23 = load i32, ptr %7, align 4
  %24 = load ptr, ptr %8, align 8
  %25 = getelementptr inbounds [512 x [512 x double]], ptr %24, i64 0, i64 0
  %26 = load ptr, ptr %9, align 8
  %27 = getelementptr inbounds [512 x [512 x double]], ptr %26, i64 0, i64 0
  %28 = load ptr, ptr %10, align 8
  %29 = getelementptr inbounds [512 x [512 x double]], ptr %28, i64 0, i64 0
  call void @kernel_gramschmidt(i32 noundef %22, i32 noundef %23, ptr noundef %25, ptr noundef %27, ptr noundef %29)
  %30 = load i32, ptr %4, align 4
  %31 = icmp sgt i32 %30, 42
  br i1 %31, label %32, label %47

32:                                               ; preds = %2
  %33 = load ptr, ptr %5, align 8
  %34 = getelementptr inbounds ptr, ptr %33, i64 0
  %35 = load ptr, ptr %34, align 8
  %36 = call i32 @strcmp(ptr noundef %35, ptr noundef @.str) #7
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %32
  %39 = load i32, ptr %6, align 4
  %40 = load i32, ptr %7, align 4
  %41 = load ptr, ptr %8, align 8
  %42 = getelementptr inbounds [512 x [512 x double]], ptr %41, i64 0, i64 0
  %43 = load ptr, ptr %9, align 8
  %44 = getelementptr inbounds [512 x [512 x double]], ptr %43, i64 0, i64 0
  %45 = load ptr, ptr %10, align 8
  %46 = getelementptr inbounds [512 x [512 x double]], ptr %45, i64 0, i64 0
  call void @print_array(i32 noundef %39, i32 noundef %40, ptr noundef %42, ptr noundef %44, ptr noundef %46)
  br label %47

47:                                               ; preds = %38, %32, %2
  %48 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %48) #5
  %49 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %49) #5
  %50 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %50) #5
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_array(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
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

13:                                               ; preds = %58, %5
  %14 = load i32, ptr %11, align 4
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %61

17:                                               ; preds = %13
  store i32 0, ptr %12, align 4
  br label %18

18:                                               ; preds = %54, %17
  %19 = load i32, ptr %12, align 4
  %20 = load i32, ptr %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %18
  %23 = load i32, ptr %11, align 4
  %24 = sitofp i32 %23 to double
  %25 = load i32, ptr %12, align 4
  %26 = sitofp i32 %25 to double
  %27 = fmul double %24, %26
  %28 = load i32, ptr %6, align 4
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %27, %29
  %31 = load ptr, ptr %8, align 8
  %32 = load i32, ptr %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [512 x double], ptr %31, i64 %33
  %35 = load i32, ptr %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [512 x double], ptr %34, i64 0, i64 %36
  store double %30, ptr %37, align 8
  %38 = load i32, ptr %11, align 4
  %39 = sitofp i32 %38 to double
  %40 = load i32, ptr %12, align 4
  %41 = add nsw i32 %40, 1
  %42 = sitofp i32 %41 to double
  %43 = fmul double %39, %42
  %44 = load i32, ptr %7, align 4
  %45 = sitofp i32 %44 to double
  %46 = fdiv double %43, %45
  %47 = load ptr, ptr %10, align 8
  %48 = load i32, ptr %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [512 x double], ptr %47, i64 %49
  %51 = load i32, ptr %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [512 x double], ptr %50, i64 0, i64 %52
  store double %46, ptr %53, align 8
  br label %54

54:                                               ; preds = %22
  %55 = load i32, ptr %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %12, align 4
  br label %18, !llvm.loop !7

57:                                               ; preds = %18
  br label %58

58:                                               ; preds = %57
  %59 = load i32, ptr %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %11, align 4
  br label %13, !llvm.loop !9

61:                                               ; preds = %13
  store i32 0, ptr %11, align 4
  br label %62

62:                                               ; preds = %92, %61
  %63 = load i32, ptr %11, align 4
  %64 = load i32, ptr %7, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %62
  store i32 0, ptr %12, align 4
  br label %67

67:                                               ; preds = %88, %66
  %68 = load i32, ptr %12, align 4
  %69 = load i32, ptr %7, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  %72 = load i32, ptr %11, align 4
  %73 = sitofp i32 %72 to double
  %74 = load i32, ptr %12, align 4
  %75 = add nsw i32 %74, 2
  %76 = sitofp i32 %75 to double
  %77 = fmul double %73, %76
  %78 = load i32, ptr %7, align 4
  %79 = sitofp i32 %78 to double
  %80 = fdiv double %77, %79
  %81 = load ptr, ptr %9, align 8
  %82 = load i32, ptr %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [512 x double], ptr %81, i64 %83
  %85 = load i32, ptr %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [512 x double], ptr %84, i64 0, i64 %86
  store double %80, ptr %87, align 8
  br label %88

88:                                               ; preds = %71
  %89 = load i32, ptr %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %12, align 4
  br label %67, !llvm.loop !10

91:                                               ; preds = %67
  br label %92

92:                                               ; preds = %91
  %93 = load i32, ptr %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %11, align 4
  br label %62, !llvm.loop !11

95:                                               ; preds = %62
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_gramschmidt(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  store i32 %0, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @2, i32 8, ptr @kernel_gramschmidt.omp_outlined, ptr %7, ptr %14, ptr %11, ptr %6, ptr %8, ptr %9, ptr %10, ptr %12)
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

13:                                               ; preds = %44, %5
  %14 = load i32, ptr %11, align 4
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  store i32 0, ptr %12, align 4
  br label %18

18:                                               ; preds = %40, %17
  %19 = load i32, ptr %12, align 4
  %20 = load i32, ptr %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = load ptr, ptr @stderr, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = load i32, ptr %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [512 x double], ptr %24, i64 %26
  %28 = load i32, ptr %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [512 x double], ptr %27, i64 0, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.1, double noundef %31) #5
  %33 = load i32, ptr %11, align 4
  %34 = srem i32 %33, 20
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load ptr, ptr @stderr, align 8
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.2) #5
  br label %39

39:                                               ; preds = %36, %22
  br label %40

40:                                               ; preds = %39
  %41 = load i32, ptr %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %12, align 4
  br label %18, !llvm.loop !12

43:                                               ; preds = %18
  br label %44

44:                                               ; preds = %43
  %45 = load i32, ptr %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %11, align 4
  br label %13, !llvm.loop !13

47:                                               ; preds = %13
  %48 = load ptr, ptr @stderr, align 8
  %49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef @.str.2) #5
  store i32 0, ptr %11, align 4
  br label %50

50:                                               ; preds = %81, %47
  %51 = load i32, ptr %11, align 4
  %52 = load i32, ptr %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %84

54:                                               ; preds = %50
  store i32 0, ptr %12, align 4
  br label %55

55:                                               ; preds = %77, %54
  %56 = load i32, ptr %12, align 4
  %57 = load i32, ptr %7, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load ptr, ptr @stderr, align 8
  %61 = load ptr, ptr %9, align 8
  %62 = load i32, ptr %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [512 x double], ptr %61, i64 %63
  %65 = load i32, ptr %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [512 x double], ptr %64, i64 0, i64 %66
  %68 = load double, ptr %67, align 8
  %69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @.str.1, double noundef %68) #5
  %70 = load i32, ptr %11, align 4
  %71 = srem i32 %70, 20
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %59
  %74 = load ptr, ptr @stderr, align 8
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef @.str.2) #5
  br label %76

76:                                               ; preds = %73, %59
  br label %77

77:                                               ; preds = %76
  %78 = load i32, ptr %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %12, align 4
  br label %55, !llvm.loop !14

80:                                               ; preds = %55
  br label %81

81:                                               ; preds = %80
  %82 = load i32, ptr %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %11, align 4
  br label %50, !llvm.loop !15

84:                                               ; preds = %50
  %85 = load ptr, ptr @stderr, align 8
  %86 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef @.str.2) #5
  store i32 0, ptr %11, align 4
  br label %87

87:                                               ; preds = %118, %84
  %88 = load i32, ptr %11, align 4
  %89 = load i32, ptr %6, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %121

91:                                               ; preds = %87
  store i32 0, ptr %12, align 4
  br label %92

92:                                               ; preds = %114, %91
  %93 = load i32, ptr %12, align 4
  %94 = load i32, ptr %7, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %92
  %97 = load ptr, ptr @stderr, align 8
  %98 = load ptr, ptr %10, align 8
  %99 = load i32, ptr %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [512 x double], ptr %98, i64 %100
  %102 = load i32, ptr %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [512 x double], ptr %101, i64 0, i64 %103
  %105 = load double, ptr %104, align 8
  %106 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef @.str.1, double noundef %105) #5
  %107 = load i32, ptr %11, align 4
  %108 = srem i32 %107, 20
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %96
  %111 = load ptr, ptr @stderr, align 8
  %112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef @.str.2) #5
  br label %113

113:                                              ; preds = %110, %96
  br label %114

114:                                              ; preds = %113
  %115 = load i32, ptr %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, ptr %12, align 4
  br label %92, !llvm.loop !16

117:                                              ; preds = %92
  br label %118

118:                                              ; preds = %117
  %119 = load i32, ptr %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr %11, align 4
  br label %87, !llvm.loop !17

121:                                              ; preds = %87
  %122 = load ptr, ptr @stderr, align 8
  %123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef @.str.2) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @kernel_gramschmidt.omp_outlined(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) #4 {
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
  br i1 %45, label %46, label %239

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

60:                                               ; preds = %232, %57
  %61 = load i32, ptr %21, align 4
  %62 = load i32, ptr %27, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %235

64:                                               ; preds = %60
  %65 = load i32, ptr %21, align 4
  %66 = mul nsw i32 %65, 1
  %67 = add nsw i32 0, %66
  store i32 %67, ptr %30, align 4
  store double 0.000000e+00, ptr %32, align 8
  store i32 0, ptr %33, align 4
  br label %68

68:                                               ; preds = %91, %64
  %69 = load i32, ptr %33, align 4
  %70 = load i32, ptr %34, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %94

72:                                               ; preds = %68
  %73 = load ptr, ptr %35, align 8
  %74 = load i32, ptr %33, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [512 x double], ptr %73, i64 %75
  %77 = load i32, ptr %30, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [512 x double], ptr %76, i64 0, i64 %78
  %80 = load double, ptr %79, align 8
  %81 = load ptr, ptr %35, align 8
  %82 = load i32, ptr %33, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [512 x double], ptr %81, i64 %83
  %85 = load i32, ptr %30, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [512 x double], ptr %84, i64 0, i64 %86
  %88 = load double, ptr %87, align 8
  %89 = load double, ptr %32, align 8
  %90 = call double @llvm.fmuladd.f64(double %80, double %88, double %89)
  store double %90, ptr %32, align 8
  br label %91

91:                                               ; preds = %72
  %92 = load i32, ptr %33, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr %33, align 4
  br label %68, !llvm.loop !18

94:                                               ; preds = %68
  %95 = load double, ptr %32, align 8
  %96 = call double @sqrt(double noundef %95) #5
  %97 = load ptr, ptr %36, align 8
  %98 = load i32, ptr %30, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [512 x double], ptr %97, i64 %99
  %101 = load i32, ptr %30, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [512 x double], ptr %100, i64 0, i64 %102
  store double %96, ptr %103, align 8
  store i32 0, ptr %33, align 4
  br label %104

104:                                              ; preds = %133, %94
  %105 = load i32, ptr %33, align 4
  %106 = load i32, ptr %34, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %136

108:                                              ; preds = %104
  %109 = load ptr, ptr %35, align 8
  %110 = load i32, ptr %33, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [512 x double], ptr %109, i64 %111
  %113 = load i32, ptr %30, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [512 x double], ptr %112, i64 0, i64 %114
  %116 = load double, ptr %115, align 8
  %117 = load ptr, ptr %36, align 8
  %118 = load i32, ptr %30, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [512 x double], ptr %117, i64 %119
  %121 = load i32, ptr %30, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [512 x double], ptr %120, i64 0, i64 %122
  %124 = load double, ptr %123, align 8
  %125 = fdiv double %116, %124
  %126 = load ptr, ptr %37, align 8
  %127 = load i32, ptr %33, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [512 x double], ptr %126, i64 %128
  %130 = load i32, ptr %30, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [512 x double], ptr %129, i64 0, i64 %131
  store double %125, ptr %132, align 8
  br label %133

133:                                              ; preds = %108
  %134 = load i32, ptr %33, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr %33, align 4
  br label %104, !llvm.loop !19

136:                                              ; preds = %104
  %137 = load i32, ptr %30, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, ptr %38, align 4
  br label %139

139:                                              ; preds = %227, %136
  %140 = load i32, ptr %38, align 4
  %141 = load i32, ptr %31, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %230

143:                                              ; preds = %139
  %144 = load ptr, ptr %36, align 8
  %145 = load i32, ptr %30, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [512 x double], ptr %144, i64 %146
  %148 = load i32, ptr %38, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [512 x double], ptr %147, i64 0, i64 %149
  store double 0.000000e+00, ptr %150, align 8
  store i32 0, ptr %33, align 4
  br label %151

151:                                              ; preds = %181, %143
  %152 = load i32, ptr %33, align 4
  %153 = load i32, ptr %34, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %184

155:                                              ; preds = %151
  %156 = load ptr, ptr %37, align 8
  %157 = load i32, ptr %33, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [512 x double], ptr %156, i64 %158
  %160 = load i32, ptr %30, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [512 x double], ptr %159, i64 0, i64 %161
  %163 = load double, ptr %162, align 8
  %164 = load ptr, ptr %35, align 8
  %165 = load i32, ptr %33, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [512 x double], ptr %164, i64 %166
  %168 = load i32, ptr %38, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [512 x double], ptr %167, i64 0, i64 %169
  %171 = load double, ptr %170, align 8
  %172 = load ptr, ptr %36, align 8
  %173 = load i32, ptr %30, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [512 x double], ptr %172, i64 %174
  %176 = load i32, ptr %38, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [512 x double], ptr %175, i64 0, i64 %177
  %179 = load double, ptr %178, align 8
  %180 = call double @llvm.fmuladd.f64(double %163, double %171, double %179)
  store double %180, ptr %178, align 8
  br label %181

181:                                              ; preds = %155
  %182 = load i32, ptr %33, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, ptr %33, align 4
  br label %151, !llvm.loop !20

184:                                              ; preds = %151
  store i32 0, ptr %33, align 4
  br label %185

185:                                              ; preds = %223, %184
  %186 = load i32, ptr %33, align 4
  %187 = load i32, ptr %34, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %226

189:                                              ; preds = %185
  %190 = load ptr, ptr %35, align 8
  %191 = load i32, ptr %33, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [512 x double], ptr %190, i64 %192
  %194 = load i32, ptr %38, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [512 x double], ptr %193, i64 0, i64 %195
  %197 = load double, ptr %196, align 8
  %198 = load ptr, ptr %37, align 8
  %199 = load i32, ptr %33, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [512 x double], ptr %198, i64 %200
  %202 = load i32, ptr %30, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [512 x double], ptr %201, i64 0, i64 %203
  %205 = load double, ptr %204, align 8
  %206 = load ptr, ptr %36, align 8
  %207 = load i32, ptr %30, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [512 x double], ptr %206, i64 %208
  %210 = load i32, ptr %38, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [512 x double], ptr %209, i64 0, i64 %211
  %213 = load double, ptr %212, align 8
  %214 = fneg double %205
  %215 = call double @llvm.fmuladd.f64(double %214, double %213, double %197)
  %216 = load ptr, ptr %35, align 8
  %217 = load i32, ptr %33, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [512 x double], ptr %216, i64 %218
  %220 = load i32, ptr %38, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [512 x double], ptr %219, i64 0, i64 %221
  store double %215, ptr %222, align 8
  br label %223

223:                                              ; preds = %189
  %224 = load i32, ptr %33, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, ptr %33, align 4
  br label %185, !llvm.loop !21

226:                                              ; preds = %185
  br label %227

227:                                              ; preds = %226
  %228 = load i32, ptr %38, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, ptr %38, align 4
  br label %139, !llvm.loop !22

230:                                              ; preds = %139
  br label %231

231:                                              ; preds = %230
  br label %232

232:                                              ; preds = %231
  %233 = load i32, ptr %21, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, ptr %21, align 4
  br label %60

235:                                              ; preds = %60
  br label %236

236:                                              ; preds = %235
  %237 = load ptr, ptr %11, align 8
  %238 = load i32, ptr %237, align 4
  call void @__kmpc_for_static_fini(ptr @1, i32 %238)
  br label %239

239:                                              ; preds = %236, %10
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) #5

; Function Attrs: nounwind
declare !callback !23 void @__kmpc_fork_call(ptr, i32, ptr, ...) #5

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
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = !{!24}
!24 = !{i64 2, i64 -1, i64 -1, i1 true}
