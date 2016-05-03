#!/bin/bash

VERSION=1.3.10

cd /tmp

wget https://downloads.typesafe.com/typesafe-activator/$VERSION/typesafe-activator-$VERSION-minimal.zip

unzip typesafe-activator-$VERSION-minimal.zip -d ~/dev-env

cd ~/dev-env
ln -s activator-$VERSION-minimal activator
