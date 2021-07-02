#!/bin/bash
set -ueo pipefail

wasm_cc="/opt/wasi-sdk/bin/clang"

for input in *.c; do
  echo "Compiling $input"

  output="$(basename $input .c).wasm"
  $wasm_cc -o "$output" "$input"
done
