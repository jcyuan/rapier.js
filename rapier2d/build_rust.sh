#! /bin/sh

wasm-pack build
sed -i 's#dimforge_rapier#@dimforge/rapier#g' pkg/package.json
sed -i 's/"rapier_wasm2d_bg.wasm"/"*"/g' pkg/package.json
