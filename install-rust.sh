#!/bin/bash

SH_FILE=rustup.sh
# export http_proxy=localhost:8087
# curl -s https://static.rust-lang.org/rustup.sh |   sudo sh
(
cd /tmp
curl -s http://static.rust-lang.org/rustup.sh -O $SH_FILE &&
sed -i "s/https/http/g" $SH_FILE # just use http

if [ "$?" -ne "0" ]; then 
    echo "replace error"
    cat -n $SH_FILE  | grep http  
else
    # export http_proxy=localhost:8087
    sudo -E bash $SH_FILE && 
    rustc --version
fi 
)

