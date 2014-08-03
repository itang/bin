#!/bin/bash

(
\curl -sSL https://get.rvm.io | bash -s stable --ruby
source $HOME/.rvm/scripts/rvm

ruby -v

rvm install jruby

rvm use jruby
jruby -v
)
