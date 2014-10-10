#!/bin/bash

VERSION=0.3.5

(
cd /tmp
rm jd-gui-${VERSION}.linux.i686.tar.gz

sudo apt-get install libgtk2.0-0:i386 &&
wget http://jd.benow.ca/jd-gui/downloads/jd-gui-${VERSION}.linux.i686.tar.gz 

rm -rf ~/dev-env/jd-gui

mkdir ~/dev-env/jd-gui
tar zxvf jd-gui-${VERSION}.linux.i686.tar.gz -C ~/dev-env/jd-gui

rm ~/dev-env/tools/jd

ln -s ~/dev-env/jd-gui/jd-gui ~/dev-env/tools/jd
)

