#!/usr/bin/env bash
set -o errexit
set -o pipefail
set -o nounset

dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
diff $dir/expected-envoy-config.yaml  <($dir/../.bin/qbec --root=$dir/test -o yaml --env=default eval components/valid-config/envoy-config.jsonnet)

diff $dir/expected-invalid-response.txt  <($dir/../.bin/qbec --root=$dir/test -o yaml --env=default eval components/invalid-config/invalid.jsonnet 2>&1| grep "RUNTIME ERROR")