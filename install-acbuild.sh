#!/bin/bash

VERSION=0.2.2

(

    cd /tmp

    wget https://github.com/appc/acbuild/releases/download/v$VERSION/acbuild.tar.gz

    tar xzvf acbuild.tar.gz -C ~/dev-env/tools/

)
