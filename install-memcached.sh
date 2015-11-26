#!/bin/bash

VERSION=1.4.25

function download() {
  cd /tmp
  wget http://www.memcached.org/files/memcached-${VERSION}.tar.gz
}

function extract() {
  cd /tmp
  tar zxvf memcached-${VERSION}.tar.gz -C ~/dev-env/
}

function install() {
  cd ~/dev-env
  ln -sfn memcached-${VERSION} memcached

  cd memcached

  sudo apt-get install libevent-dev
  ./configure && make
  # && make test && sudo make install

  echo '[optional] gem install dalli'
}

download &&
extract &&
install ;
