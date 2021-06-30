#!/bin/bash
set -ueo pipefail

wasm_cc="/opt/wasi-sdk/bin/clang"

for input in *.c; do
  echo "Compiling $input"
  $wasm_cc -o "$(basename $input .c).wasm" "$input"
done
