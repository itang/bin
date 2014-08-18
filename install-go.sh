#!/bin/bash

go version;

VERSION=1.3.1
URL=http://golangtc.com/static/go/go${VERSION}.linux-amd64.tar.gz

echo "download from ${URL}"

(
cd /tmp
wget $URL && 
rm -rf ~/dev-env/go && 
tar zxvf go${VERSION}.linux-amd64.tar.gz -C ~/dev-env &&
go version;
)

