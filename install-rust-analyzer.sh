#!/bin/bash

VERSION="2021-01-18"

FROM_NAME="rust-analyzer-linux"
TARGET="$HOME/.local/bin/rust-analyzer"

cd /tmp || exit
rm $FROM_NAME
wget https://github.com/rust-analyzer/rust-analyzer/releases/download/${VERSION}/${FROM_NAME}

cp $FROM_NAME "${TARGET}"

chmod +x "${TARGET}"
