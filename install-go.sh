#!/bin/bash

go version;

VERSION=1.5.1
URL=https://storage.googleapis.com/golang/go${VERSION}.linux-amd64.tar.gz

echo "download from ${URL}"

(
cd /tmp
wget $URL && 
rm -rf ~/dev-env/go && 
tar zxvf go${VERSION}.linux-amd64.tar.gz -C ~/dev-env &&
go version;
)

