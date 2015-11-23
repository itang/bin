#!/bin/bash

VERSION=2.4.1

function download() {
  cd /tmp
  wget http://twitter.github.io/kestrel/download/kestrel-${VERSION}.zip
}

function extract() {
  cd /tmp
  unzip kestrel-${VERSION}.zip -d ~/dev-env/
}

function install() {
  cd ~/dev-env
  rm kestrel
  ln -s kestrel-${VERSION} kestrel
}

function extinfo() {
  echo "add bin dir to PATH"
}

download && extract && install && extinfo
