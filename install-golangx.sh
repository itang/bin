#!/bin/bash


function get() {
    package=$1

    cd $GOPATH/src

    go get -u -v github.com/golang/$package

    rm -rf golang.org/x/$package

    mkdir -p golang.org/x

    cp -r github.com/golang/$package golang.org/x/

    ls golang.org/x -l

}

case "$1" in
    all) 
        array=( "sys" "tools" "net" "crypto" "arch" )
        for it in ${array[@]}
        do 
            get $it 
        done ;;
    *)　get $1;;
esac

