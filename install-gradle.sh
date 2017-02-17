#!/bin/bash

VERSION=3.3

(
  cd /tmp
  
  if [ ! -f gradle-${VERSION}-bin.zip ]; then
     wget https://downloads.gradle.org/distributions/gradle-${VERSION}-bin.zip
  fi
  
  ls gradle-${VERSION}-bin.zip &&
  unzip gradle-${VERSION}-bin.zip -d ~/dev-env &&
  cd ~/dev-env &&
  rm -rf gradle &&
  ln -s gradle-${VERSION} gradle &&
  gradle -v
)

