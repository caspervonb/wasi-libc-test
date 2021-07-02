#!/bin/bash
set -ueo pipefail

CC=${CC:=clang}

for input in *.c; do
  echo "Compiling $input"

  output="$(basename $input .c).wasm"
  $CC -o "$output" "$input"
done
