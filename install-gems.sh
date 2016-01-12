#!/bin/bash

## change gem sources
gem sources --add https://ruby.taobao.org/ --remove https://rubygems.org/
gem sources -l

######################################
## lang enhance.
gem install rubocop
gem install pry pry-doc

## languages.
gem install typescript


## tools.
gem install nokogiri
gem install roo
gem install ruby-protocol-buffers
gem install livereload
gem install guard guard-shell guard-livereload

## libs.
sudo apt-get install libmysqlclient-dev
gem install mysql2
gem install zookeeper
gem install redis
