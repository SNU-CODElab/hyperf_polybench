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
#include "../../../utilities/polybench.h"

/* Include benchmark-specific header. */
/* Default data type is double, default size is 4000. */
#include "durbin.h"


/* Array initialization. */
static
void init_array (int n,
		 DATA_TYPE POLYBENCH_2D(y,N,N,n,n),
		 DATA_TYPE POLYBENCH_2D(sum,N,N,n,n),
		 DATA_TYPE POLYBENCH_1D(alpha,N,n),
		 DATA_TYPE POLYBENCH_1D(beta,N,n),
		 DATA_TYPE POLYBENCH_1D(r,N,n))
{
  int i, j;

  for (i = 0; i < n; i++)
    {
      alpha[i] = i;
      beta[i] = (i+1)/n/2.0;
      r[i] = (i+1)/n/4.0;
      for (j = 0; j < n; j++) {
	y[i][j] = ((DATA_TYPE) i*j) / n;
	sum[i][j] = ((DATA_TYPE) i*j) / n;
      }
    }
}


/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static
void print_array(int n,
		 DATA_TYPE POLYBENCH_1D(out,N,n))

{
  int i;

  for (i = 0; i < n; i++) {
    fprintf (stderr, DATA_PRINTF_MODIFIER, out[i]);
    if (i % 20 == 0) fprintf (stderr, "\n");
  }
}


/* Main computational kernel. The whole function will be timed,
   including the call and return. */


static
void kernel_durbin(int n,
		   DATA_TYPE POLYBENCH_2D(y,N,N,n,n),
		   DATA_TYPE POLYBENCH_2D(sum,N,N,n,n),
		   DATA_TYPE POLYBENCH_1D(alpha,N,n),
		   DATA_TYPE POLYBENCH_1D(beta,N,n),
		   DATA_TYPE POLYBENCH_1D(r,N,n),
		   DATA_TYPE POLYBENCH_1D(out,N,n))
{
  int i, k;
  // #pragma scop
  y[0][0] = r[0];
  beta[0] = 1;
  alpha[0] = r[0];
  // #pragma omp parallel
  // {

    // #ifdef SMALL_DATASET
    // #pragma omp autotune for map(tofrom:y[0:500][0:500],sum[0:500][0:500],alpha[0:500],beta[0:500],r[0:500],out[0:500])
    // #endif
    // #ifdef STANDARD_DATASET
    // #pragma omp autotune for map(tofrom:y[0:4000][0:4000],sum[0:4000][0:4000],alpha[0:4000],beta[0:4000],r[0:4000],out[0:4000])
    // #endif
    // #ifdef LARGE_DATASET
    // #pragma omp autotune for map(tofrom:y[0:8000][0:8000],sum[0:8000][0:8000],alpha[0:8000],beta[0:8000],r[0:8000],out[0:8000])
    // #endif

    for (k = 1; k < _PB_N; k++)
    {
      beta[k] = beta[k-1] - alpha[k-1] * alpha[k-1] * beta[k-1];
      sum[0][k] = r[k];

      for (int i = 0; i < _PB_N-1; i++) {
          if (i <= k - 1) {
             sum[i+1][k] = sum[i][k] + r[k-i-1] * y[i][k-1];
          }
      }
      alpha[k] = -sum[k][k] * beta[k];
      

      // #pragma omp autotune for map(tofrom:y[0:_PB_N][0:_PB_N],alpha[0:_PB_N])
      for (int i = 0; i < _PB_N-1; i++) {
          if (i <= k - 1) {
              y[i][k] = y[i][k-1] + alpha[k] * y[k-i-1][k-1];
          }
      }

      y[k][k] = alpha[k];
    }

    

    #pragma omp autotune for map(tofrom:y[0:_PB_N][0:_PB_N],out[0:_PB_N])
    for (i = 0; i < _PB_N; i++)
      out[i] = y[i][_PB_N-1];
  // }
  // #pragma endscop
}

int main(int argc, char** argv)
{
  /* Retrieve problem size. */
  int n = N;

  /* Variable declaration/allocation. */
  POLYBENCH_2D_ARRAY_DECL(y, DATA_TYPE, N, N, n, n);
  POLYBENCH_2D_ARRAY_DECL(sum, DATA_TYPE, N, N, n, n);
  POLYBENCH_1D_ARRAY_DECL(alpha, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(beta, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(r, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(out, DATA_TYPE, N, n);


  /* Initialize array(s). */
  init_array (n,
	      POLYBENCH_ARRAY(y),
	      POLYBENCH_ARRAY(sum),
	      POLYBENCH_ARRAY(alpha),
	      POLYBENCH_ARRAY(beta),
	      POLYBENCH_ARRAY(r));

  /* Start timer. */
  polybench_start_instruments;

  /* Run kernel. */
    kernel_durbin (n,
		 POLYBENCH_ARRAY(y),
		 POLYBENCH_ARRAY(sum),
		 POLYBENCH_ARRAY(alpha),
		 POLYBENCH_ARRAY(beta),
		 POLYBENCH_ARRAY(r),
		 POLYBENCH_ARRAY(out));

  polybench_timer_start();
  for (int i = 0; i < 15; i++){
  kernel_durbin (n,
		 POLYBENCH_ARRAY(y),
		 POLYBENCH_ARRAY(sum),
		 POLYBENCH_ARRAY(alpha),
		 POLYBENCH_ARRAY(beta),
		 POLYBENCH_ARRAY(r),
		 POLYBENCH_ARRAY(out));
  }
  polybench_timer_stop();
  polybench_timer_print();
  
  // print_array(50, POLYBENCH_ARRAY(y));

  /* Stop and print timer. */
  polybench_stop_instruments;
  polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(out)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(y);
  POLYBENCH_FREE_ARRAY(sum);
  POLYBENCH_FREE_ARRAY(alpha);
  POLYBENCH_FREE_ARRAY(beta);
  POLYBENCH_FREE_ARRAY(r);
  POLYBENCH_FREE_ARRAY(out);

  return 0;
}
