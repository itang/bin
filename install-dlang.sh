#!/bin/bash

VERSION=2.069.0

cd /tmp

wget http://downloads.dlang.org/releases/2.x/${VERSION}/dmd_${VERSION}-0_amd64.deb &&
sudo dpkg -i dmd_${VERSION}-0_amd64.deb
