#!/bin/bash

mode=$1

function update() {
    cd ~/dev-env/gluon
    git pull
    cargo build --release
    cp target/release/repl ./gluon
}

function install() {
    cd ~/dev-env
    git clone git@github.com:Marwes/gluon.git

    cd gluon
    rustup override set stable
    cargo build --release
    cp target/release/repl ./gluon

    echo '#!/bin/bash

    cargo run -- -i
    ' > gluon-repl
    chmod +x gluon-repl
}

case $1 in
  update) update;;
  *) install;;
esac
