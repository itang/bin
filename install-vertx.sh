#!/bin/bash

version=3.2.1

(
    cd /tmp
    wget https://bintray.com/artifact/download/vertx/downloads/vert.x-$version.tar.gz

    mkdir -p ~/dev-env/vert.x-$version
    tar zxvf vert.x-$version.tar.gz -C ~/dev-env/vert.x-$version

    cd ~/dev-env/
    ln -sfn vert.x-$version vertx
)

vertx -version
