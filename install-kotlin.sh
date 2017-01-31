#!/bin/bash

VERSION=1.0.6

cd /tmp

(
  
  wget http://github.com/JetBrains/kotlin/releases/download/v$VERSION/kotlin-compiler-$VERSION.zip && \
  rm -rf ~/dev-env/kotlinc && \
  unzip kotlin-compiler-$VERSION.zip -d ~/dev-env/
) 

kotlinc -version
