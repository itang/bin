#!/bin/bash

#VERSION=1.11.2.3

openresty -v

mode=$1

if [ "$mode" == 'update' ]; then

     sudo apt-get update
     sudo apt-get install openresty

else
    # https://openresty.org/en/linux-packages.html

    sudo apt-get install libreadline-dev libncurses5-dev libpcre3-dev libssl-dev perl make build-essential

   # cd /tmp
   # wget https://openresty.org/download/openresty-$VERSION.tar.gz
   # tar zxvf openresty-$VERSION.tar.gz -C .
   # cd openresty-$VERSION
   # #./configure
   # ./configure -j2 --with-pcre-jit --with-ipv6
   # make -j2
   # sudo make install

   # echo "ADD: export PATH=/usr/local/openresty/bin:/usr/local/openresty/nginx/sbin:$PATH"

   # import our GPG key:
     wget -qO - https://openresty.org/package/pubkey.gpg | sudo apt-key add -

             # for installing the add-apt-repository command
                 # (you can remove this package and its dependencies later):
                     sudo apt-get -y install software-properties-common

                         # add the our official APT repository:
                             sudo add-apt-repository -y "deb http://openresty.org/package/ubuntu $(lsb_release -sc) main"

                                 # to update the APT index:
                                     sudo apt-get update
                                     sudo apt-get install openresty
fi

openresty -v

