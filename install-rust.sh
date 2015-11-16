#!/bin/bash

#curl -sSf https://static.rust-lang.org/rustup.sh | sh -s -- --channel=nightly
#curl -sf -L https://static.rust-lang.org/rustup.sh | sh

#rustc --version


curl -sf https://raw.githubusercontent.com/brson/multirust/master/blastoff.sh | sh

multirust update nightly

multirust update stable

multirust default nightly

rustc --version

cargo install cargo-extras
cargo install cargo-add


