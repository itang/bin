#!/bin/bash

SH_FILE=rustup.sh
# export http_proxy=localhost:8087
# curl -s https://static.rust-lang.org/rustup.sh |   sudo sh

(
cd /tmp
curl http://static.rust-lang.org/rustup.sh -o $SH_FILE 

if [ "$?" != "0" ]; then
  echo "下载rustup.sh失败"
  exit -1
fi

sed -i "s/https/http/g" $SH_FILE

if [ "$?" != "0" ]; then 
    echo "replace error"
    cat -n $SH_FILE  | grep http  
else
    # export http_proxy=localhost:8087
    sudo -E bash $SH_FILE && 
    rustc --version
fi 

exit 0
)

