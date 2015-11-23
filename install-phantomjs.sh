#!/bin/bash

function prepare() {
  sudo apt-get install build-essential g++ flex bison gperf ruby perl libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev libpng-dev libjpeg-dev python libx11-dev libxext-dev ttf-mscorefonts-installer
}

function install() {
  cd ~/dev-env
  git clone git://github.com/ariya/phantomjs.git
  cd phantomjs
  git checkout 2.0
  ./build.sh
}

prepare && install
