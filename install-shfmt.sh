#!/bin/bash

VERSION=v3.1.1

shfmt --version
(
    cd /tmp || exit
    wget https://github.com/mvdan/sh/releases/download/${VERSION}/shfmt_${VERSION}_linux_amd64
    cp shfmt_${VERSION}_linux_amd64 ~/.local/bin/shfmt
    chmod +x ~/.local/bin/shfmt
)

shfmt --version
