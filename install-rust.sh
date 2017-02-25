#!/bin/bash

mode=$1

function update_cargos() {
    #cargo install cargo-extras
    cargo install cargo-edit --force
    cargo install cargo-graph --force
    cargo install cargo-outdated --force
    cargo install cargo-script --force
    cargo install cargo-watch --force
    cargo install cargo-expand --force
    cargo install cargo-check --force

    cargo install clippy --force

    cargo install racer --force
    cargo install rustfmt --force
    cargo install rustsym --force

    cargo install tokei --force
    cargo install ripgrep --force
    cargo install loc --force
    cargo install cargo-update --force
    cargo install cargo-benchcmp --force
    cargo install mdbook --force
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
