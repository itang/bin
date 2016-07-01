#!/bin/bash

VERSION=1.0.3

cd /tmp

(
wget https://github.com/JetBrains/kotlin/releases/download/$VERSION/kotlin-compiler-$VERSION.zip && \
rm -rf ~/dev-env/kotlinc && \
unzip kotlin-compiler-$VERSION.zip -d ~/dev-env/
)

kotlinc -version
