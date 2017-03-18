#!/bin/bash

version=0.4.1

cd /tmp

wget https://github.com/bcicen/ctop/releases/download/v$version/ctop-$version-linux-amd64 -O ctop

sudo mv ctop /usr/local/bin/
sudo chmod +x /usr/local/bin/ctop

# docker run -ti -v /var/run/docker.sock:/var/run/docker.sock quay.io/vektorlab/ctop:latest 


