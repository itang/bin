#!/bin/bash


## reinstall pip
sudo apt-get remove python-pip
sudo apt-get autoremove

cd /tmp
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py

## pipsa
sudo pip install pep8

sudo pip install ptpython

sudo pip install pyinstaller

sudo pip install redis
