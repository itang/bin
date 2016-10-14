#!/bin/bash

## links
# http://kripken.github.io/emscripten-site/docs/getting_started/downloads.html
# https://users.rust-lang.org/t/compiling-to-the-web-with-rust-and-emscripten/7627
# https://github.com/tcr/rust-todomvc

cd /tmp

curl -O https://s3.amazonaws.com/mozilla-games/emscripten/releases/emsdk-portable.tar.gz

rm -rf ~/dev-env/emsdk_portable

tar -xzf emsdk-portable.tar.gz -C ~/dev-env/

cd ~/dev-env/
source emsdk_portable/emsdk_env.sh

emsdk update
emsdk install sdk-incoming-64bit
emsdk activate sdk-incoming-64bit

rustup target add asmjs-unknown-emscripten
rustup target add wasm32-unknown-emscripten

cd /tmp

echo 'fn main() { println!("Hello, Emscripten!"); }' > hello.rs
rustc --target=asmjs-unknown-emscripten hello.rs
node hello.js
