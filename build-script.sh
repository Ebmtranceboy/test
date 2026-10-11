#!/bin/sh
set -e
source ~/.ghc-wasm/env
cd /workspaces/test/elude
wasm32-wasi-cabal build exe:numberfield-wasm
WASM=$(wasm32-wasi-cabal list-bin exe:numberfield-wasm)
cp "$WASM" ../docs/compute.wasm
$(wasm32-wasi-ghc --print-libdir)/post-link.mjs -i ../docs/compute.wasm -o ../docs/compute.js
ls -l ../docs