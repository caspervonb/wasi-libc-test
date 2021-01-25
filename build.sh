#!/bin/bash
set -ueo pipefail

src_dir="src"
out_dir="out"
wasm_cc="/opt/wasi-sdk/bin/clang"

mkdir -p "$out_dir"

for input in "$src_dir"/*; do
  echo "Copying $input"
  cp -r $input "$out_dir/$(basename $input)"
done

for input in "$out_dir"/*.c; do
  echo "Compiling $input"
  $wasm_cc -o "$out_dir/$(basename $input .c).wasm" "$input"
done
