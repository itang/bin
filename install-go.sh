#!/bin/bash

go version

VERSION=1.9beta2
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
        go get -u github.com/cweill/gotests/...

        # REPL
        go get -u  github.com/motemen/gore

        # cross system compile
        go get -u -v github.com/mitchellh/gox

        # go ps
        go get -u -v github.com/google/gops

        # hot reload
        go get -u -v github.com/tockins/realize

        # JSON inspect
        go get -u -v github.com/simeji/jid/cmd/jid

        # http stat
        go get -u -v github.com/davecheney/httpstat

        # package manager
        go get -u -v github.com/golang/dep

        go get -u -v github.com/tj/go-search
        
        go get -u -v github.com/asciimoo/wuzz

        go get -u -v github.com/knq/usql

        go get -u -v github.com/rakyll/hey
        
        go get -u -v github.com/gchaincl/httplab
        
        go get -u -v github.com/heppu/gkill

        go get -v github.com/kshvmdn/fsql/...

        go get -v github.com/goby-lang/goby
    )
}

case "$1" in
  install) install;;
  packages) install_pkgs;;
  *) echo "install | packages";;
esac
