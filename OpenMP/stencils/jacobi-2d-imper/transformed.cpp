#include <tvm/runtime/module.h>
#include <tvm/runtime/ndarray.h>
#include <tvm/runtime/packed_func.h>
#include <dlfcn.h>
/* POLYBENCH/GPU-OPENMP
 *
 * This file is a part of the Polybench/GPU-OpenMP suite
 *
 * Contact:
 * William Killian <killian@udel.edu>
 * 
 * Copyright 2013, The University of Delaware
 */
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

/* Include polybench common header. */
// #include <polybench.h>

#include "/root/test/gemm/PolyBench-ACC/OpenMP/utilities/polybench.h"
/* Include benchmark-specific header. */
/* Default data type is double, default size is 20x1000. */
#include "jacobi-2d-imper.h"


/* Array initialization. */
static
void init_array (int n,
		 DATA_TYPE POLYBENCH_2D(A,N,N,n,n),
		 DATA_TYPE POLYBENCH_2D(B,N,N,n,n))
{
  int i, j;

  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      {
	A[i][j] = ((DATA_TYPE) i*(j+2) + 2) / n;
	B[i][j] = ((DATA_TYPE) i*(j+3) + 3) / n;
      }
}


/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static
void print_array(int n,
		 DATA_TYPE POLYBENCH_2D(A,N,N,n,n))

{
  int i, j;

  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++) {
      fprintf(stderr, DATA_PRINTF_MODIFIER, A[i][j]);
      if ((i * n + j) % 20 == 0) fprintf(stderr, "\n");
    }
  fprintf(stderr, "\n");
}


/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static
void kernel_jacobi_2d_imper(int tsteps,
			    int n,
			    DATA_TYPE POLYBENCH_2D(A,N,N,n,n),
			    DATA_TYPE POLYBENCH_2D(B,N,N,n,n))
{
  int t, i, j;

  // #pragma scop
  
  // #pragma omp parallel private(i,j,t)
  // {
    // #pragma omp master
    // {
      // TVM 모듈 호출 코드
tvm::runtime::Module mod = tvm::runtime::Module::LoadFromFile("/root/test/gemm/PolyBench-ACC/OpenMP/stencils/jacobi-2d-imper/jacobi-2d-imper.c_tvm_prim_func.so");
DLDevice dev{kDLCPU, 0};

tvm::runtime::PackedFunc fmain0 = mod.GetFunction("main0");
DLTensor A_main0_dltensor;
A_main0_dltensor.data = reinterpret_cast<void*>(A);
A_main0_dltensor.device = {kDLCPU, 0};
A_main0_dltensor.ndim = 2;
A_main0_dltensor.dtype = DLDataType {kDLFloat,64,1};
int64_t A_main0_shape[] = {1000, 1000};
A_main0_dltensor.shape = A_main0_shape;
A_main0_dltensor.strides = nullptr;
A_main0_dltensor.byte_offset = 0;
tvm::runtime::NDArray A_main0_nd = tvm::runtime::NDArray::FromExternalDLTensor(A_main0_dltensor);

DLTensor B_main0_dltensor;
B_main0_dltensor.data = reinterpret_cast<void*>(B);
B_main0_dltensor.device = {kDLCPU, 0};
B_main0_dltensor.ndim = 2;
B_main0_dltensor.dtype = DLDataType {kDLFloat,64,1};
int64_t B_main0_shape[] = {1000, 1000};
B_main0_dltensor.shape = B_main0_shape;
B_main0_dltensor.strides = nullptr;
B_main0_dltensor.byte_offset = 0;
tvm::runtime::NDArray B_main0_nd = tvm::runtime::NDArray::FromExternalDLTensor(B_main0_dltensor);

// Timing measurement phase
fmain0(A_main0_nd, B_main0_nd);

    // }
  // }
  // #pragma endscop
}


// static
// void kernel_jacobi_2d_imper(int tsteps,
// 			    int n,
// 			    DATA_TYPE POLYBENCH_2D(A,N,N,n,n),
// 			    DATA_TYPE POLYBENCH_2D(B,N,N,n,n))
// {
//   int t, i, j;

//   #pragma scop
  
//   #pragma omp parallel private(i,j,t)
//   {
//     #pragma omp master
//     {
//       for (t = 0; t < _PB_TSTEPS; t++)
//       {
//         #pragma omp for schedule(static) 
//         for (i = 1; i < _PB_N - 1; i++)
//           for (j = 1; j < _PB_N - 1; j++)
//             B[i][j] = 0.2 * (A[i][j] + A[i][j-1] + A[i][1+j] + A[1+i][j] + A[i-1][j]);
// 	      #pragma omp for schedule(static) 
//         for (i = 1; i < _PB_N-1; i++)
//           for (j = 1; j < _PB_N-1; j++)
//             A[i][j] = B[i][j];
//       }
//     }
//   }
//   #pragma endscop
// }



int main(int argc, char** argv)
{
  /* Retrieve problem size. */
  int n = N;
  int tsteps = TSTEPS;

  /* Variable declaration/allocation. */
  POLYBENCH_2D_ARRAY_DECL(A, DATA_TYPE, N, N, n, n);
  POLYBENCH_2D_ARRAY_DECL(B, DATA_TYPE, N, N, n, n);


  /* Initialize array(s). */
  init_array (n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B));

  /* Start timer. */
  polybench_start_instruments;

  /* Run kernel. */
  polybench_timer_start();
  for (int i = 0; i < 1; i++){
  /* Run kernel. */
  kernel_jacobi_2d_imper (tsteps, n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B));
  }
  polybench_timer_stop();
  polybench_timer_print();
  /* Stop and print timer. */
  polybench_stop_instruments;
  polybench_print_instruments;
  print_array(10, POLYBENCH_ARRAY(A));
  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(A)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(A);
  POLYBENCH_FREE_ARRAY(B);

  return 0;
}
