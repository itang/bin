#!/bin/bash

#curl -sSf https://static.rust-lang.org/rustup.sh | sh -s -- --channel=nightly
#curl -sf -L https://static.rust-lang.org/rustup.sh | sh

#rustc --version


curl -sf https://raw.githubusercontent.com/brson/multirust/master/blastoff.sh | sh

multirust update nightly

multirust update stable

multirust default nightly

rustc --version

echo "cat > ~/.cargo/config

[registry]
index = \"git://crates.mirrors.ustc.edu.cn/index\"

...
"

#cargo install cargo-extras
cargo install cargo-edit
cargo install cargo-graph
cargo install cargo-outdated
cargo install cargo-script
cargo install cargo-watch

cargo install --git https://github.com/phildawes/racer
cargo install --git https://github.com/rust-lang-nursery/rustfmt


