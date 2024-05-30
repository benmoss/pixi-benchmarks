#!/usr/bin/env bash

set -euxo pipefail

pushd pixi

export PIXI_CACHE_DIR="$CACHE_DIR/pixi"
export PIXI_PROJECT_MANIFEST=$PWD/pixi.toml
hyperfine --export-markdown ../pixi.md --warmup 1 --prepare "rm -rf .pixi" "pixi install"
