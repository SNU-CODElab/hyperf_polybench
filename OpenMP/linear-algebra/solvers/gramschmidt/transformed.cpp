#include <tvm/runtime/module.h>
#include <tvm/runtime/ndarray.h>
#include <tvm/runtime/packed_func.h>
#include <dlfcn.h>
// TVM 모듈 호출 코드
tvm::runtime::Module mod = tvm::runtime::Module::LoadFromFile("/root/test/gemm/PolyBench-ACC/OpenMP/linear-algebra/solvers/gramschmidt/gramschmidt.c_tvm_prim_func.so");
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
#include </root/test/gemm/PolyBench-ACC/OpenMP/utilities/polybench.h>

/* Include benchmark-specific header. */
/* Default data type is double, default size is 512. */
#include "gramschmidt.h"


/* Array initialization. */
static
void init_array(int ni, int nj,
		DATA_TYPE POLYBENCH_2D(A,NI,NJ,ni,nj),
		DATA_TYPE POLYBENCH_2D(R,NJ,NJ,nj,nj),
		DATA_TYPE POLYBENCH_2D(Q,NI,NJ,ni,nj))
{
  int i, j;

  for (i = 0; i < ni; i++)
    for (j = 0; j < nj; j++) {
      A[i][j] = ((DATA_TYPE) i*j) / ni;
      Q[i][j] = ((DATA_TYPE) i*(j+1)) / nj;
    }
  for (i = 0; i < nj; i++)
    for (j = 0; j < nj; j++)
      R[i][j] = ((DATA_TYPE) i*(j+2)) / nj;
}


/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static
void print_array(int ni, int nj,
		 DATA_TYPE POLYBENCH_2D(A,NI,NJ,ni,nj),
		 DATA_TYPE POLYBENCH_2D(R,NJ,NJ,nj,nj),
		 DATA_TYPE POLYBENCH_2D(Q,NI,NJ,ni,nj))
{
  int i, j;

  for (i = 0; i < ni; i++)
    for (j = 0; j < nj; j++) {
	fprintf (stderr, DATA_PRINTF_MODIFIER, A[i][j]);
	if (i % 20 == 0) fprintf (stderr, "\n");
    }
  fprintf (stderr, "\n");
  for (i = 0; i < nj; i++)
    for (j = 0; j < nj; j++) {
	fprintf (stderr, DATA_PRINTF_MODIFIER, R[i][j]);
	if (i % 20 == 0) fprintf (stderr, "\n");
    }
  fprintf (stderr, "\n");
  for (i = 0; i < ni; i++)
    for (j = 0; j < nj; j++) {
	fprintf (stderr, DATA_PRINTF_MODIFIER, Q[i][j]);
	if (i % 20 == 0) fprintf (stderr, "\n");
    }
  fprintf (stderr, "\n");
}


/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static
void kernel_gramschmidt(int ni, int nj,
			DATA_TYPE POLYBENCH_2D(A,NI,NJ,ni,nj),
			DATA_TYPE POLYBENCH_2D(R,NJ,NJ,nj,nj),
			DATA_TYPE POLYBENCH_2D(Q,NI,NJ,ni,nj))
{
  int i, j, k;

  DATA_TYPE nrm;
  #pragma scop
  // #pragma omp parallel for private (i, j)
  // TVM 모듈 호출 코드
DLTensor A_main0_dltensor;
A_main0_dltensor.data = A;
A_main0_dltensor.device = {kDLCPU, 0};
A_main0_dltensor.ndim = 2;
A_main0_dltensor.dtype = DLDataType {kDLFloat,64,1};
int64_t A_main0_shape[] = {512, 512};
A_main0_dltensor.shape = A_main0_shape;
A_main0_dltensor.strides = nullptr;
A_main0_dltensor.byte_offset = 0;
tvm::runtime::NDArray A_main0_nd = tvm::runtime::NDArray::FromExternalDLTensor(A_main0_dltensor);

DLTensor Q_main0_dltensor;
Q_main0_dltensor.data = reinterpret_cast<void*>(Q);
Q_main0_dltensor.device = {kDLCPU, 0};
Q_main0_dltensor.ndim = 2;
Q_main0_dltensor.dtype = DLDataType {kDLFloat,64,1};
int64_t Q_main0_shape[] = {512, 512};
Q_main0_dltensor.shape = Q_main0_shape;
Q_main0_dltensor.strides = nullptr;
Q_main0_dltensor.byte_offset = 0;
tvm::runtime::NDArray Q_main0_nd = tvm::runtime::NDArray::FromExternalDLTensor(Q_main0_dltensor);

DLTensor R_main0_dltensor;
R_main0_dltensor.data = R;
R_main0_dltensor.device = {kDLCPU, 0};
R_main0_dltensor.ndim = 2;
R_main0_dltensor.dtype = DLDataType {kDLFloat,64,1};
int64_t R_main0_shape[] = {512, 512};
R_main0_dltensor.shape = R_main0_shape;
R_main0_dltensor.strides = nullptr;
R_main0_dltensor.byte_offset = 0;
tvm::runtime::NDArray R_main0_nd = tvm::runtime::NDArray::FromExternalDLTensor(R_main0_dltensor);

tvm::runtime::NDArray nrm_main0_nd = tvm::runtime::NDArray::Empty({1}, DLDataType {kDLFloat,64,1}, dev);
*reinterpret_cast<double*>(nrm_main0_nd.ToDLPack()->dl_tensor.data) = nrm;

// Timing measurement phase
fmain0(A_main0_nd, Q_main0_nd, R_main0_nd, nrm_main0_nd);
nrm= *reinterpret_cast<double*>(nrm_main0_nd.ToDLPack()->dl_tensor.data);

  #pragma endscop
}


int main(int argc, char** argv)
{
  /* Retrieve problem size. */
  int ni = NI;
  int nj = NJ;

  /* Variable declaration/allocation. */
  POLYBENCH_2D_ARRAY_DECL(A,DATA_TYPE,NI,NJ,ni,nj);
  POLYBENCH_2D_ARRAY_DECL(R,DATA_TYPE,NJ,NJ,nj,nj);
  POLYBENCH_2D_ARRAY_DECL(Q,DATA_TYPE,NI,NJ,ni,nj);

  /* Initialize array(s). */
  init_array (ni, nj,
	      POLYBENCH_ARRAY(A),
	      POLYBENCH_ARRAY(R),
	      POLYBENCH_ARRAY(Q));

  /* Start timer. */
  polybench_start_instruments;

  /* Run kernel. */
  polybench_timer_start();
  for (int i = 0; i < 1; i++){
  kernel_gramschmidt (ni, nj,
		      POLYBENCH_ARRAY(A),
		      POLYBENCH_ARRAY(R),
		      POLYBENCH_ARRAY(Q));
  }
  polybench_timer_stop();

  polybench_timer_print();
  print_array(10, 10, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(R), POLYBENCH_ARRAY(Q));
  

  /* Stop and print timer. */
  polybench_stop_instruments;
  polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(ni, nj, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(R), POLYBENCH_ARRAY(Q)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(A);
  POLYBENCH_FREE_ARRAY(R);
  POLYBENCH_FREE_ARRAY(Q);

  return 0;
}
