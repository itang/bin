#!/bin/bash

(
    cd /tmp
    rm master.zip
    wget --no-check-certificate https://github.com/ideawu/ssdb/archive/master.zip &&
        rm -rf ~/dev-env/ssdb-master &&
        unzip master.zip -d ~/dev-env &&
        cd ~/dev-env/ssdb-master &&
        make &&
        ./ssdb-server ssdb.conf
)
