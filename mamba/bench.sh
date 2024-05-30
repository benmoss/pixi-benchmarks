#!/usr/bin/env bash

set -euxo pipefail

hyperfine --warmup 1 --prepare "rm -rf $CACHE_DIR/envs/mamba" "micromamba env create -r $CACHE_DIR -n mamba -f mamba/environment-lock.yml --yes"
