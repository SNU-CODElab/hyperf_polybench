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
#include <polybench.h>

/* Include benchmark-specific header. */
/* Default data type is double, default size is 1000. */
#include "covariance.h"


/* Array initialization. */
static
void init_array (int m, int n,
		 DATA_TYPE *float_n,
		 DATA_TYPE POLYBENCH_2D(data,M,N,m,n))
{
  int i, j;

  *float_n = 1.2;

  for (i = 0; i < M; i++)
    for (j = 0; j < N; j++)
      data[i][j] = ((DATA_TYPE) i*j) / M;
}


/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static
void print_array(int m,
		 DATA_TYPE POLYBENCH_2D(symmat,M,M,m,m))

{
  int i, j;

  for (i = 0; i < m; i++)
    for (j = 0; j < m; j++) {
      fprintf (stderr, DATA_PRINTF_MODIFIER, symmat[i][j]);
      if ((i * m + j) % 20 == 0) fprintf (stderr, "\n");
    }
  fprintf (stderr, "\n");
}


/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static
void kernel_covariance(int m, int n,
		       DATA_TYPE float_n,
		       DATA_TYPE POLYBENCH_2D(data,M,N,m,n),
		       DATA_TYPE POLYBENCH_2D(symmat,M,M,m,m),
		       DATA_TYPE POLYBENCH_1D(mean,M,m))
{
  int i, j, j1, j2;
  
  // #pragma scop
  /* Determine mean of column vectors of input data matrix */
  // #pragma omp parallel
  // {
    // #pragma omp for private (i)
    // #pragma omp tvm tvm_arr_size(data[0:1000][0:1000],symmat[0:1000][0:1000],mean[0:1000]) reduction(+:mean[0:1000])
    for (j = 0; j < _PB_M; j++)
      {
        mean[j] = 0.0;
	for (i = 0; i < _PB_N; i++)
	  mean[j] += data[i][j];
	mean[j] /= float_n;
      }
      
    /* Center the column vectors. */
    // #pragma omp for private (j)
    // TVM 모듈 호출 코드
tvm::runtime::Module mod = tvm::runtime::Module::LoadFromFile("/root/test/gemm/PolyBench-ACC/OpenMP/datamining/covariance/covariance.c_tvm_prim_func.so");
DLDevice dev{kDLCPU, 0};

tvm::runtime::PackedFunc fmain0 = mod.GetFunction("main0");
DLTensor data_main0_dltensor;
data_main0_dltensor.data = data;
data_main0_dltensor.device = {kDLCPU, 0};
data_main0_dltensor.ndim = 2;
data_main0_dltensor.dtype = DLDataType {kDLFloat,64,1};
int64_t data_main0_shape[] = {1000, 1000};
data_main0_dltensor.shape = data_main0_shape;
data_main0_dltensor.strides = nullptr;
data_main0_dltensor.byte_offset = 0;
tvm::runtime::NDArray data_main0_nd = tvm::runtime::NDArray::FromExternalDLTensor(data_main0_dltensor);

DLTensor mean_main0_dltensor;
mean_main0_dltensor.data = reinterpret_cast<void*>(mean);
mean_main0_dltensor.device = {kDLCPU, 0};
mean_main0_dltensor.ndim = 1;
mean_main0_dltensor.dtype = DLDataType {kDLFloat,64,1};
int64_t mean_main0_shape[] = {1000};
mean_main0_dltensor.shape = mean_main0_shape;
mean_main0_dltensor.strides = nullptr;
mean_main0_dltensor.byte_offset = 0;
tvm::runtime::NDArray mean_main0_nd = tvm::runtime::NDArray::FromExternalDLTensor(mean_main0_dltensor);

// Timing measurement phase
fmain0(data_main0_nd, mean_main0_nd);
;
      
    /* Calculate the m * m covariance matrix. */
    // #pragma omp for private (j2, i)
    // #pragma omp tvm tvm_arr_size(data[0:1000][0:1000],symmat[0:1000][0:1000]) reduction(+:symmat[0:1000][0:1000])
    for (j1 = 0; j1 < _PB_M; j1++)
      for (j2 = j1; j2 < _PB_M; j2++)
	{
          symmat[j1][j2] = 0.0;
	  for (i = 0; i < _PB_N; i++)
	    symmat[j1][j2] += data[i][j1] * data[i][j2];
	  symmat[j2][j1] = symmat[j1][j2];
        }
  // }
  // #pragma endscop
}

int main(int argc, char** argv)
{
  /* Retrieve problem size. */
  int n = N;
  int m = M;

  /* Variable declaration/allocation. */
  DATA_TYPE float_n;
  POLYBENCH_2D_ARRAY_DECL(data,DATA_TYPE,M,N,m,n);
  POLYBENCH_2D_ARRAY_DECL(symmat,DATA_TYPE,M,M,m,m);
  POLYBENCH_1D_ARRAY_DECL(mean,DATA_TYPE,M,m);
  
  /* Initialize array(s). */
  init_array (m, n, &float_n, POLYBENCH_ARRAY(data));
  
  /* Start timer. */
  polybench_start_instruments;

  /* Run kernel. */
  kernel_covariance (m, n, float_n,
		     POLYBENCH_ARRAY(data),
		     POLYBENCH_ARRAY(symmat),
		     POLYBENCH_ARRAY(mean));

  /* Stop and print timer. */
  polybench_stop_instruments;
  polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(m, POLYBENCH_ARRAY(symmat)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(data);
  POLYBENCH_FREE_ARRAY(symmat);
  POLYBENCH_FREE_ARRAY(mean);

  return 0;
}
