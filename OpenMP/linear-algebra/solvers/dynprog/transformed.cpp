#include <tvm/runtime/module.h>
#include <tvm/runtime/ndarray.h>
#include <tvm/runtime/packed_func.h>
#include <dlfcn.h>
// TVM 모듈 호출 코드
tvm::runtime::Module mod = tvm::runtime::Module::LoadFromFile("/root/test/gemm/PolyBench-ACC/OpenMP/linear-algebra/solvers/dynprog/dynprog.c_tvm_prim_func.so");
DLDevice dev{kDLCPU, 0};

tvm::runtime::PackedFunc fmain0 = mod.GetFunction("main0");
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
#include "/root/test/gemm/PolyBench-ACC/OpenMP/utilities/polybench.h"

/* Include benchmark-specific header. */
/* Default data type is int, default size is 50. */
#include "dynprog.h"


/* Array initialization. */
static
void init_array(int length,
		DATA_TYPE POLYBENCH_2D(c,LENGTH,LENGTH,length,length),
		DATA_TYPE POLYBENCH_2D(W,LENGTH,LENGTH,length,length))
{
  int i, j;
  for (i = 0; i < length; i++)
    for (j = 0; j < length; j++) {
      c[i][j] = i*j % 2;
      W[i][j] = ((DATA_TYPE) i-j) / length;
    }
}


/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static
void print_array(DATA_TYPE out)
{
  fprintf (stderr, DATA_PRINTF_MODIFIER, out);
  fprintf (stderr, "\n");
}


/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static
void kernel_dynprog(int tsteps, int length,
		    DATA_TYPE POLYBENCH_2D(c,LENGTH,LENGTH,length,length),
		    DATA_TYPE POLYBENCH_2D(W,LENGTH,LENGTH,length,length),
		    DATA_TYPE POLYBENCH_3D(sum_c,LENGTH,LENGTH,LENGTH,length,length,length),
		    DATA_TYPE *out)
{
  int iter, i, j, k;

  DATA_TYPE out_l = 0;
  
  // #pragma scop
  // #pragma omp parallel
  // {
  //   #pragma omp master
  //   {
      // TVM 모듈 호출 코드
DLTensor W_main0_dltensor;
W_main0_dltensor.data = reinterpret_cast<void*>(W);
W_main0_dltensor.device = {kDLCPU, 0};
W_main0_dltensor.ndim = 2;
W_main0_dltensor.dtype = DLDataType {kDLInt,32,1};
int64_t W_main0_shape[] = {50, 50};
W_main0_dltensor.shape = W_main0_shape;
W_main0_dltensor.strides = nullptr;
W_main0_dltensor.byte_offset = 0;
tvm::runtime::NDArray W_main0_nd = tvm::runtime::NDArray::FromExternalDLTensor(W_main0_dltensor);

DLTensor c_main0_dltensor;
c_main0_dltensor.data = reinterpret_cast<void*>(c);
c_main0_dltensor.device = {kDLCPU, 0};
c_main0_dltensor.ndim = 2;
c_main0_dltensor.dtype = DLDataType {kDLInt,32,1};
int64_t c_main0_shape[] = {50, 50};
c_main0_dltensor.shape = c_main0_shape;
c_main0_dltensor.strides = nullptr;
c_main0_dltensor.byte_offset = 0;
tvm::runtime::NDArray c_main0_nd = tvm::runtime::NDArray::FromExternalDLTensor(c_main0_dltensor);

tvm::runtime::NDArray out_l_main0_nd = tvm::runtime::NDArray::Empty({1}, DLDataType {kDLInt,32,1}, dev);
*reinterpret_cast<int32_t*>(out_l_main0_nd.ToDLPack()->dl_tensor.data) = out_l;

DLTensor sum_c_main0_dltensor;
sum_c_main0_dltensor.data = reinterpret_cast<void*>(sum_c);
sum_c_main0_dltensor.device = {kDLCPU, 0};
sum_c_main0_dltensor.ndim = 3;
sum_c_main0_dltensor.dtype = DLDataType {kDLInt,32,1};
int64_t sum_c_main0_shape[] = {50, 50, 50};
sum_c_main0_dltensor.shape = sum_c_main0_shape;
sum_c_main0_dltensor.strides = nullptr;
sum_c_main0_dltensor.byte_offset = 0;
tvm::runtime::NDArray sum_c_main0_nd = tvm::runtime::NDArray::FromExternalDLTensor(sum_c_main0_dltensor);

// Timing measurement phase
fmain0(W_main0_nd, c_main0_nd, out_l_main0_nd, sum_c_main0_nd);
out_l= *reinterpret_cast<int32_t*>(out_l_main0_nd.ToDLPack()->dl_tensor.data);

  //   }
  // }
  // #pragma endscop
  *out = out_l;
}


int main(int argc, char** argv)
{
  /* Retrieve problem size. */
  int length = LENGTH;
  int tsteps = TSTEPS;

  /* Variable declaration/allocation. */
  DATA_TYPE out;
  POLYBENCH_3D_ARRAY_DECL(sum_c,DATA_TYPE,LENGTH,LENGTH,LENGTH,length,length,length);
  POLYBENCH_2D_ARRAY_DECL(c,DATA_TYPE,LENGTH,LENGTH,length,length);
  POLYBENCH_2D_ARRAY_DECL(W,DATA_TYPE,LENGTH,LENGTH,length,length);

  /* Initialize array(s). */
  init_array (length, POLYBENCH_ARRAY(c), POLYBENCH_ARRAY(W));

  /* Start timer. */
  polybench_start_instruments;

  /* Run kernel. */
  polybench_timer_start();
  for (int i = 0; i < 1000; i++){
  kernel_dynprog (tsteps, length,
		  POLYBENCH_ARRAY(c),
		  POLYBENCH_ARRAY(W),
		  POLYBENCH_ARRAY(sum_c),
		  &out);
  }
  polybench_timer_stop();
  polybench_timer_print();
  print_array(out);
  /* Stop and print timer. */
  polybench_stop_instruments;
  polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(out));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(sum_c);
  POLYBENCH_FREE_ARRAY(c);
  POLYBENCH_FREE_ARRAY(W);

  return 0;
}
