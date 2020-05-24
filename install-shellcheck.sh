#!/bin/bash

scversion="v0.7.1" # or "v0.4.7", or "latest"

shellcheck --version

(
    cd /tmp || exit
    wget -qO- "https://github.com/koalaman/shellcheck/releases/download/${scversion?}/shellcheck-${scversion?}.linux.x86_64.tar.xz" | tar -xJv
    sudo cp "shellcheck-${scversion}/shellcheck" /usr/bin/
)

shellcheck --version
