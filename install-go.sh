#!/bin/bash

go version

VERSION=1.7.3

function install() {
    URL=https://storage.googleapis.com/golang/go${VERSION}.linux-amd64.tar.gz
    echo "download from ${URL}"
    (
        cd /tmp
        wget $URL &&
        rm -rf ~/dev-env/go &&
        tar zxvf go${VERSION}.linux-amd64.tar.gz -C ~/dev-env &&
        go version;
    )
}

function install_pkgs() {
    # tools
    echo 'install go tools'
    (
        go get -u  github.com/nsf/gocode
        go get -u  github.com/rogpeppe/godef
        go get -u  github.com/lukehoban/go-outline
        go get -u  golang.org/x/tools/cmd/godoc
        go get -u  github.com/bradfitz/goimports
        go get -u  golang.org/x/tools/cmd/gorename
        go get -u  github.com/tpng/gopkgs
        go get -u  github.com/golang/lint/golint
        go get -u  github.com/sqs/goreturns
        go get -u  github.com/newhook/go-symbols
        go get -u  golang.org/x/tools/cmd/guru
        go get -u  github.com/k0kubun/pp
        go get -u  github.com/motemen/gore
        go get -u github.com/cweill/gotests/...

        go get -u -v github.com/mitchellh/gox
        go get -u -v github.com/google/gops
    )
}

case "$1" in
  install) install;;
  packages) install_pkgs;;
  *) echo "install | packages";;
esac
