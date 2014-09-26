#!/bin/bash


VERSION=0.131.0

function binary() {
  (
  rm atom-amd64.deb

  wget https://github.com/atom/atom/releases/download/v${VERSION}/atom-amd64.deb &&
  sudo dpkg --install atom-amd64.deb

  # atom
 )
}

function build() {
 sudo apt-get install build-essential git libgnome-keyring-dev
 (
 cd /tmp
 git clone https://github.com/atom/atom
 cd atom
 git fetch &&
 git checkout $(git describe --tags `git rev-list --tags --max-count=1`) &&
 script/build &&
 sudo script/grunt install
 )
 
 # atom
}

build
