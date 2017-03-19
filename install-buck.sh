#!/bin/bash

cd ~/dev-env

(
if [ -d "buck" ]; then
  cd buck
  git pull
else
  git clone https://github.com/facebook/buck.git
fi
)

cd buck
ant

echo "add bin/buck to PATH"

buck --version

