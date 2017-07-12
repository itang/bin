#!/bin/bash

(
    \curl -sSL https://get.rvm.io | bash -s stable --ruby
    source $HOME/.rvm/scripts/rvm

    ##################
    ruby -v

    gem sources --remove https://rubygems.org/
    gem sources -a https://ruby.taobao.org/
    gem sources -l

    gem install redis
    gem install edn
    gem install roo
    gem install rubocop
    gem install zookeeper

    sudo apt-get install libmysqlclient-dev
    gem install mysql2

    gem install ruby-protocol-buffers
    gem install buildr
    ##################
    rvm install jruby

    rvm use jruby
    jruby -v
)
