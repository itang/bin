#!/bin/bash

VERSION=0.9.0


glide -v

(
    cd /tmp
    wget https://github.com/Masterminds/glide/releases/download/$VERSION/glide-$VERSION-linux-amd64.tar.gz

    tar zxvf glide-$VERSION-linux-amd64.tar.gz

    cp linux-amd64/glide ~/dev-env/tools
)

glide -v
