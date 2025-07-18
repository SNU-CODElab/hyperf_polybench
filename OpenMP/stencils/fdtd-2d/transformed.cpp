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
#include "/root/test/gemm/PolyBench-ACC/OpenMP/utilities/polybench.h"

/* Include benchmark-specific header. */
/* Default data type is double, default size is 50x1000x1000. */
#include "fdtd-2d.h"


/* Array initialization. */
static
void init_array (int tmax,
		 int nx,
		 int ny,
		 DATA_TYPE POLYBENCH_2D(ex,NX,NY,nx,ny),
		 DATA_TYPE POLYBENCH_2D(ey,NX,NY,nx,ny),
		 DATA_TYPE POLYBENCH_2D(hz,NX,NY,nx,ny),
		 DATA_TYPE POLYBENCH_1D(_fict_,TMAX,tmax))
{
  int i, j;

  for (i = 0; i < tmax; i++)
    _fict_[i] = (DATA_TYPE) i;
  for (i = 0; i < nx; i++)
    for (j = 0; j < ny; j++)
      {
	ex[i][j] = ((DATA_TYPE) i*(j+1)) / nx;
	ey[i][j] = ((DATA_TYPE) i*(j+2)) / ny;
	hz[i][j] = ((DATA_TYPE) i*(j+3)) / nx;
      }
}


/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static
void print_array(int nx,
		 int ny,
		 DATA_TYPE POLYBENCH_2D(ex,NX,NY,nx,ny),
		 DATA_TYPE POLYBENCH_2D(ey,NX,NY,nx,ny),
		 DATA_TYPE POLYBENCH_2D(hz,NX,NY,nx,ny))
{
  int i, j;

  for (i = 0; i < nx; i++)
    for (j = 0; j < ny; j++) {
      fprintf(stderr, DATA_PRINTF_MODIFIER, ex[i][j]);
      fprintf(stderr, DATA_PRINTF_MODIFIER, ey[i][j]);
      fprintf(stderr, DATA_PRINTF_MODIFIER, hz[i][j]);
      if ((i * nx + j) % 20 == 0) fprintf(stderr, "\n");
    }
  fprintf(stderr, "\n");
}


/* Main computational kernel. The whole function will be timed,
   including the call and return. */
// static
// void kernel_fdtd_2d(int tmax,
// 		    int nx,
// 		    int ny,
// 		    DATA_TYPE POLYBENCH_2D(ex,NX,NY,nx,ny),
// 		    DATA_TYPE POLYBENCH_2D(ey,NX,NY,nx,ny),
// 		    DATA_TYPE POLYBENCH_2D(hz,NX,NY,nx,ny),
// 		    DATA_TYPE POLYBENCH_1D(_fict_,TMAX,tmax))
// {
//   int t, i, j;
//   #pragma scop
//   #pragma omp parallel private (t,i,j)
//   {
//     // #pragma omp master
//     // {
//       for (t = 0; t < _PB_TMAX; t++)
//       {
//         #pragma omp for
//         for (j = 0; j < _PB_NY; j++)
//           ey[0][j] = _fict_[t];
//         #pragma omp barrier
//         #pragma omp for collapse(2) schedule(static)
//         for (i = 1; i < _PB_NX; i++)
//           for (j = 0; j < _PB_NY; j++)
//             ey[i][j] = ey[i][j] - 0.5*(hz[i][j]-hz[i-1][j]);
//         #pragma omp barrier
//         #pragma omp for collapse(2) schedule(static)
//         for (i = 0; i < _PB_NX; i++)
//           for (j = 1; j < _PB_NY; j++)
//             ex[i][j] = ex[i][j] - 0.5*(hz[i][j]-hz[i][j-1]);
//         #pragma omp barrier
//         #pragma omp for collapse(2) schedule(static)
//         for (i = 0; i < _PB_NX - 1; i++)
//           for (j = 0; j < _PB_NY - 1; j++)
//             hz[i][j] = hz[i][j] - 0.7*  (ex[i][j+1] - ex[i][j] + ey[i+1][j] - ey[i][j]);
//         #pragma omp barrier
//       }
//     // }
//   }
//   #pragma endscop
// }


static
void kernel_fdtd_2d(int tmax,
		    int nx,
		    int ny,
		    DATA_TYPE POLYBENCH_2D(ex,NX,NY,nx,ny),
		    DATA_TYPE POLYBENCH_2D(ey,NX,NY,nx,ny),
		    DATA_TYPE POLYBENCH_2D(hz,NX,NY,nx,ny),
		    DATA_TYPE POLYBENCH_1D(_fict_,TMAX,tmax))
{
  int t, i, j;
  // #pragma scop
  // #pragma omp parallel private (t,i,j)
  // {
    // #pragma omp master
    // {
      // TVM 모듈 호출 코드
tvm::runtime::Module mod = tvm::runtime::Module::LoadFromFile("/root/test/gemm/PolyBench-ACC/OpenMP/stencils/fdtd-2d/fdtd-2d.c_tvm_prim_func.so");
DLDevice dev{kDLCPU, 0};

tvm::runtime::PackedFunc fmain0 = mod.GetFunction("main0");
DLTensor _fict__main0_dltensor;
_fict__main0_dltensor.data = reinterpret_cast<void*>(_fict_);
_fict__main0_dltensor.device = {kDLCPU, 0};
_fict__main0_dltensor.ndim = 1;
_fict__main0_dltensor.dtype = DLDataType {kDLFloat,64,1};
int64_t _fict__main0_shape[] = {50};
_fict__main0_dltensor.shape = _fict__main0_shape;
_fict__main0_dltensor.strides = nullptr;
_fict__main0_dltensor.byte_offset = 0;
tvm::runtime::NDArray _fict__main0_nd = tvm::runtime::NDArray::FromExternalDLTensor(_fict__main0_dltensor);

DLTensor ex_main0_dltensor;
ex_main0_dltensor.data = reinterpret_cast<void*>(ex);
ex_main0_dltensor.device = {kDLCPU, 0};
ex_main0_dltensor.ndim = 2;
ex_main0_dltensor.dtype = DLDataType {kDLFloat,64,1};
int64_t ex_main0_shape[] = {1000, 1000};
ex_main0_dltensor.shape = ex_main0_shape;
ex_main0_dltensor.strides = nullptr;
ex_main0_dltensor.byte_offset = 0;
tvm::runtime::NDArray ex_main0_nd = tvm::runtime::NDArray::FromExternalDLTensor(ex_main0_dltensor);

DLTensor ey_main0_dltensor;
ey_main0_dltensor.data = reinterpret_cast<void*>(ey);
ey_main0_dltensor.device = {kDLCPU, 0};
ey_main0_dltensor.ndim = 2;
ey_main0_dltensor.dtype = DLDataType {kDLFloat,64,1};
int64_t ey_main0_shape[] = {1000, 1000};
ey_main0_dltensor.shape = ey_main0_shape;
ey_main0_dltensor.strides = nullptr;
ey_main0_dltensor.byte_offset = 0;
tvm::runtime::NDArray ey_main0_nd = tvm::runtime::NDArray::FromExternalDLTensor(ey_main0_dltensor);

DLTensor hz_main0_dltensor;
hz_main0_dltensor.data = reinterpret_cast<void*>(hz);
hz_main0_dltensor.device = {kDLCPU, 0};
hz_main0_dltensor.ndim = 2;
hz_main0_dltensor.dtype = DLDataType {kDLFloat,64,1};
int64_t hz_main0_shape[] = {1000, 1000};
hz_main0_dltensor.shape = hz_main0_shape;
hz_main0_dltensor.strides = nullptr;
hz_main0_dltensor.byte_offset = 0;
tvm::runtime::NDArray hz_main0_nd = tvm::runtime::NDArray::FromExternalDLTensor(hz_main0_dltensor);

// Timing measurement phase
fmain0(_fict__main0_nd, ex_main0_nd, ey_main0_nd, hz_main0_nd);

    // }
  // }
  // #pragma endscop
}



int main(int argc, char** argv)
{
  /* Retrieve problem size. */
  int tmax = TMAX;
  int nx = NX;
  int ny = NY;

  /* Variable declaration/allocation. */
  POLYBENCH_2D_ARRAY_DECL(ex,DATA_TYPE,NX,NY,nx,ny);
  POLYBENCH_2D_ARRAY_DECL(ey,DATA_TYPE,NX,NY,nx,ny);
  POLYBENCH_2D_ARRAY_DECL(hz,DATA_TYPE,NX,NY,nx,ny);
  POLYBENCH_1D_ARRAY_DECL(_fict_,DATA_TYPE,TMAX,tmax);

  /* Initialize array(s). */
  init_array (tmax, nx, ny,
	      POLYBENCH_ARRAY(ex),
	      POLYBENCH_ARRAY(ey),
	      POLYBENCH_ARRAY(hz),
	      POLYBENCH_ARRAY(_fict_));

  /* Start timer. */
  polybench_start_instruments;

  /* Run kernel. */
  polybench_timer_start();
  for (int i = 0; i < 1000; i++){
  kernel_fdtd_2d (tmax, nx, ny,
		  POLYBENCH_ARRAY(ex),
		  POLYBENCH_ARRAY(ey),
		  POLYBENCH_ARRAY(hz),
		  POLYBENCH_ARRAY(_fict_));
  }
  polybench_timer_stop();
  polybench_timer_print();
  
  //print hz [0:10][0:10]
  print_array(10, 10, POLYBENCH_ARRAY(ex), POLYBENCH_ARRAY(ey), POLYBENCH_ARRAY(hz));
  /* Stop and print timer. */
  polybench_stop_instruments;
  polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(nx, ny, POLYBENCH_ARRAY(ex),
				    POLYBENCH_ARRAY(ey),
				    POLYBENCH_ARRAY(hz)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(ex);
  POLYBENCH_FREE_ARRAY(ey);
  POLYBENCH_FREE_ARRAY(hz);
  POLYBENCH_FREE_ARRAY(_fict_);

  return 0;
}
