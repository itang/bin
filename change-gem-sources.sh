#!/bin/bash

gem sources -l
gem sources --remove https://rubygems.org/
gem sources -a https://ruby.taobao.org/
gem sources -l