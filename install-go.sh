#!/bin/bash

go version

VERSION=1.12
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
        go get -u -v github.com/nsf/gocode
        go get -u -v github.com/rogpeppe/godef
        go get -u -v github.com/lukehoban/go-outline
        go get -u -v golang.org/x/tools/cmd/godoc
        go get -u -v github.com/bradfitz/goimports
        go get -u -v golang.org/x/tools/cmd/gorename
        go get -u -v github.com/tpng/gopkgs
        go get -u -v github.com/golang/lint/golint
        go get -u -v github.com/sqs/goreturns
        go get -u -v github.com/newhook/go-symbols
        go get -u -v golang.org/x/tools/cmd/guru
        go get -u -v github.com/k0kubun/pp
        go get -u -v github.com/cweill/gotests/...
        go get -u -v gopkg.in/alecthomas/gometalinter.v2

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

        # http://www.techug.com/post/lint-your-golang-code-like-a-mad-man.html
        go get -u -v github.com/fzipp/gocyclo
        go get -u -v honnef.co/go/staticcheck/cmd/staticcheck
        go get -u -v golang.org/x/tools/cmd/gotype
        go get -u -v github.com/tsenart/deadcode
        
        # package manager
        go get -u -v github.com/golang/dep

        go get -u -v github.com/tj/go-search
        
        go get -u -v github.com/asciimoo/wuzz

        go get -u -v github.com/knq/usql

        go get -u -v github.com/rakyll/hey
        
        go get -u -v github.com/gchaincl/httplab
        
        go get -u -v github.com/heppu/gkill

        go get -u -v github.com/kshvmdn/fsql/...

        go get -u -v github.com/goby-lang/goby

        go get -u -v github.com/gobuffalo/buffalo/buffalo

        go get -u -v github.com/d4l3k/go-pry

        go get -u -v github.com/mvdan/sh/cmd/shfm

        go get -u -v github.com/GetStream/vg

        go get -u -v neugram.io/ng
    )
}

case "$1" in
  install) install;;
  packages) install_pkgs;;
  *) echo "install | packages";;
esac
