#!/bin/bash

VERSION=0.11.1


glide -v

#(
#    cd /tmp
#    wget https://github.com/Masterminds/glide/releases/download/$VERSION/glide-$VERSION-linux-amd64.tar.gz

#    tar zxvf glide-$VERSION-linux-amd64.tar.gz

#    cp linux-amd64/glide ~/dev-env/tools
#)

action=$1

if [ "$action" == 'update' ]; then
  
  cd $GOPATH/src/github.com/Masterminds/glide
  git pull

else
  mkdir -p $GOPATH/src/github.com/Masterminds
  cd $GOPATH/src/github.com/Masterminds
  git clone git@github.com:Masterminds/glide.git --depth 1
fi

cd $GOPATH/src/github.com/Masterminds/glide
make build
cp glide ~/dev-env/tools/

glide -v
