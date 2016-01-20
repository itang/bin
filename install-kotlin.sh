#!/bin/bash

VERSION=1.0.0-beta-4584

cd /tmp
wget https://github.com/JetBrains/kotlin/releases/download/build-$VERSION/kotlin-compiler-$VERSION.zip

rm -rf ~/dev-env/kotlinc

unzip kotlin-compiler-$VERSION.zip -d ~/dev-env/

cd ~/dev-env
