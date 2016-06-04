#!/bin/bash

go version;

VERSION=1.7beta1

URL=https://storage.googleapis.com/golang/go${VERSION}.linux-amd64.tar.gz

echo "download from ${URL}"

(
cd /tmp
wget $URL &&
rm -rf ~/dev-env/go &&
tar zxvf go${VERSION}.linux-amd64.tar.gz -C ~/dev-env &&
go version;
)

# tools
echo 'install go tools'
(
go get -u github.com/nsf/gocode
go get -u golang.org/x/tools/cmd/godoc
go get -u github.com/bradfitz/goimports
go get -u github.com/k0kubun/pp
go get -u github.com/motemen/gore
go get -u github.com/golang/lint/golint
go get -u github.com/sqs/goreturns
)
