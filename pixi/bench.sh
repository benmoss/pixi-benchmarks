#!/usr/bin/env bash

set -euxo pipefail

export PIXI_CACHE_DIR="$CACHE_DIR/pixi"
pushd pixi
hyperfine --warmup 1 --prepare "rm -rf .pixi" "pixi install"
