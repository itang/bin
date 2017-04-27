#!/bin/bash

version=1.4.0

cd /tmp

wget https://github.com/java-decompiler/jd-gui/releases/download/v$version/jd-gui_$version-0_all.deb

sudo dpkg -i jd-gui_$version-0_all.deb

