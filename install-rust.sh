#!/bin/bash

#curl -sSf https://static.rust-lang.org/rustup.sh | sh -s -- --channel=nightly
#curl -sf -L https://static.rust-lang.org/rustup.sh | sh

#rustc --version


#curl -sf https://raw.githubusercontent.com/brson/multirust/master/blastoff.sh | sh

curl https://sh.rustup.rs -sSf | sh

source ~/.profile

rustup install nightly

rustup install stable

rustup default nightly

rustc --version

echo "cat > ~/.cargo/config

[registry]
index = \"git://crates.mirrors.ustc.edu.cn/index\"

...
"

#cargo install cargo-extras
cargo install cargo-edit --force
cargo install cargo-graph --force
cargo install cargo-outdated --force
cargo install cargo-script --force
cargo install cargo-watch --force

cargo install --git https://github.com/phildawes/racer
cargo install --git https://github.com/rust-lang-nursery/rustfmt
