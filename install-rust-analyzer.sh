#!/bin/bash

VERSION="2020-05-04"

FROM_NAME="rust-analyzer-linux"
TARGET="$HOME/.local/bin/rust-analyzer"

cd /tmp
rm $FROM_NAME
wget https://github.com/rust-analyzer/rust-analyzer/releases/download/${VERSION}/${FROM_NAME}

cp $FROM_NAME "${TARGET}"

chmod +x "${TARGET}"