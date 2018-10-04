#!/bin/bash

VERSION=1.0.0.RC1

cd /tmp
wget https://github.com/micronaut-projects/micronaut-core/releases/download/v${VERSION}/micronaut-${VERSION}.zip

unzip micronaut-${VERSION}.zip -d ~/dev-env

cd ~/dev-env
ln -sfn micronaut-${VERSION} micronaut
