#!/bin/bash

mode=$1

function update_cargos() {
    #cargo install cargo-extras
    cargo install cargo-edit --force
    cargo install cargo-graph --force
    cargo install cargo-outdated --force
    cargo install cargo-script --force
    cargo install cargo-watch --force

    cargo install racer --force
    cargo install rustfmt --force
    cargo install cargo-expand --force
    cargo install tokei --force
}

function install() {
    curl https://sh.rustup.rs -sSf | sh

    source ~/.profile

    rustup install nightly

    rustup install stable

    rustup default nightly
}

function update() {
    rustup update nightly

    rustup update stable

    rustup default nightly

    update_cargos
}

function usage() {
    echo "usage|update|update_cargos|install"
}

case "$mode" in
  update) update;;
  update_cargos) update_cargos;;
  usage) usage;;
  help) usage;;
  *) install;;
esac

rustc --version

echo "cat > ~/.cargo/config

[registry]
index = \"git://crates.mirrors.ustc.edu.cn/index\"

...
"
