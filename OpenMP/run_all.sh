#!/bin/bash

# build_script.sh가 있는 경로
BUILD_SCRIPT="./build_script.sh"

# benchmark root 경로
BENCH_ROOT="/root/test/gemm/PolyBench-ACC/OpenMP"

# 실행할 모든 .c 파일 리스트
declare -a FILES=(
  # "linear-algebra/kernels/2mm/2mm.c"
  # "linear-algebra/kernels/3mm/3mm.c"
  # "linear-algebra/kernels/atax/atax.c"
  # "linear-algebra/kernels/bicg/bicg.c"
  # "linear-algebra/kernels/gemm/gemm.c"
  # "linear-algebra/kernels/gemver/gemver.c"
  # "linear-algebra/kernels/gesummv/gesummv.c"
  # "linear-algebra/kernels/mvt/mvt.c"
  # "linear-algebra/kernels/syr2k/syr2k.c"
  # "linear-algebra/kernels/syrk/syrk.c"

  "linear-algebra/solvers/durbin/durbin.c"
  # # # "linear-algebra/solvers/lu/lu.c"

  # "stencils/convolution-2d/convolution-2d.c"
  # "stencils/convolution-3d/convolution-3d.c"

)

# 결과 저장 디렉토리
# RESULT_LOG="all_results.log"
# echo "==== PolyBench 전체 결과 로그 ====" > "$RESULT_LOG"

# # 루프 실행
# for FILE in "${FILES[@]}"; do
#   DIR=$(dirname "$FILE")
#   BASE=$(basename "$FILE")
#   FULL_PATH="${BENCH_ROOT}/${FILE}"

#   echo "▶ 실행 중: $FILE" | tee -a "$RESULT_LOG"
#   "$BUILD_SCRIPT" "${BENCH_ROOT}/${DIR}" "$BASE" >> "$RESULT_LOG" 2>&1

#   echo "" >> "$RESULT_LOG"
#   echo "------------------------------" >> "$RESULT_LOG"
# done

# echo "✅ 모든 benchmark 완료! 결과는 $RESULT_LOG 에 저장됨"


# 루프 실행
for FILE in "${FILES[@]}"; do
  DIR=$(dirname "$FILE")
  BASE=$(basename "$FILE")

  echo "=============================="
  echo "▶ 실행 중: $FILE"
  echo "=============================="

  "$BUILD_SCRIPT" "${BENCH_ROOT}/${DIR}" "$BASE" "-DSMALL_DATASET" 
  # "$BUILD_SCRIPT" "${BENCH_ROOT}/${DIR}" "$BASE" "-DSTANDARD_DATASET" 
  # "$BUILD_SCRIPT" "${BENCH_ROOT}/${DIR}" "$BASE" "-DLARGE_DATASET" 
  echo ""
done

echo "✅ 전체 실행 완료!"