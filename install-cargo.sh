#!/bin/bash

(
cd ~/Downloads
curl -O http://static.rust-lang.org/cargo-dist/cargo-nightly-linux.tar.gz

tar xf cargo-nightly-linux.tar.gz -C ~/dev-env

cd ~/dev-env
ln -s cargo-nightly cargo

cargo -v
)
