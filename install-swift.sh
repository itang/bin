#!/bin/bash

## @see https://swift.org/download/#linux

VERSION=DEVELOPMENT-SNAPSHOT-2016-05-09-a

function download() {
    cd /tmp
    wget https://swift.org/builds/development/ubuntu1510/swift-$VERSION/swift-$VERSION-ubuntu15.10.tar.gz

    wget https://swift.org/builds/development/ubuntu1510/swift-$VERSION/swift-$VERSION-ubuntu15.10.tar.gz.sig
}

function extract() {
    cd /tmp

    wget -q -O - https://swift.org/keys/all-keys.asc | gpg --import -
    gpg --keyserver hkp://pool.sks-keyservers.net --refresh-keys Swift

    gpg --verify swift-$VERSION-ubuntu15.10.tar.gz.sig && tar zxvf swift-$VERSION-ubuntu15.10.tar.gz -C ~/dev-env/
}

function install() {
    sudo apt-get install clang

    cd ~/dev-env/
    ln -sfn swift-$VERSION-ubuntu15.10 swift

    echo "add ~/dev-env/swift/usr/bin to \$PATH"
}

download &&
extract && install;
