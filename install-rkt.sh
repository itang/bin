#!/bin/bash

VERSION=1.0.0

(
    cd /tmp

    wget https://github.com/coreos/rkt/releases/download/v$VERSION/rkt-v$VERSION.tar.gz

    tar xfv rkt-v$VERSION.tar.gz -C ~/dev-env/

    cd ~/dev-env

    ln -sfn rtk-v$VERSION rkt

    alias rkt="sudo '/home/itang/dev-env/rkt/rkt'"
)
