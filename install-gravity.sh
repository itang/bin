#!/bin/bash 

cd ~/dev-env
(
if [ -d gravity ]; then
  cd gravity
  git pull
else
  git clone https://github.com/marcobambini/gravity.git
fi
)
	
cd gravity
	
make
