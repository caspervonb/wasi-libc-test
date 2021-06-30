#!/bin/bash
set -ueo pipefail

bash build.sh

status=0

for input in *.wasm; do
  echo "Testing $input..."
  tools/wasm-test $1 $input || status=1
done

exit $status
