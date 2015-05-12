#!/bin/bash

if [ "$1" == "update" ]; then
  sudo apt-get update
else
  curl http://dist.crystal-lang.org/apt/setup.sh | sudo bash
fi
sudo apt-get install crystal

crystal --version
