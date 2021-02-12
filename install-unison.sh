#!/bin/bash

# sudo apt install libtinfo5
ucm --version

VERSION="release%2FM1m"

(
    cd /tmp
    wget https://github.com/unisonweb/unison/releases/download/${VERSION}/unison-linux64.tar.gz
    tar -zxvf unison-linux64.tar.gz
    cp ucm /home/itang/.local/bin/
)

ucm --version
