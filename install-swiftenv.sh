#!/bin/bash

action=$1

if [ '$action' == 'update' ]; then
  cd ~/.swiftenv
  git pull
  
else

git clone https://github.com/kylef/swiftenv.git ~/.swiftenv

echo 'export SWIFTENV_ROOT="$HOME/.swiftenv"' >> ~/.bashrc
echo 'export PATH="$SWIFTENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(swiftenv init -)"' >> ~/.bashrc


echo 'export SWIFTENV_ROOT="$HOME/.swiftenv"' >> ~/.zshenv
echo 'export PATH="$SWIFTENV_ROOT/bin:$PATH"' >> ~/.zshenv
echo 'eval "$(swiftenv init -)"' >> ~/.zshenv

fi

swiftenv version

