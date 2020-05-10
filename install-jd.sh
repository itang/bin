#!/bin/bash

version=1.6.6

cd /tmp

wget https://github.com/java-decompiler/jd-gui/releases/download/v${version}/jd-gui-${version}.jar
#wget https://github.com/java-decompiler/jd-gui/releases/download/v${version}/jd-gui-${version}.deb

cp jd-gui-${version}.jar ~/dev-env/jd-gui/jd-gui.jar


