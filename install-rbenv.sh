#!/bin/bash

action=$1

case $action in

 install)

	sudo apt-get install libyaml-dev

	git clone https://github.com/rbenv/rbenv.git ~/.rbenv
        
        cd ~/.rbenv && src/configure && make -C src

	git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

        echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshenv

        ~/.rbenv/bin/rbenv init

        ;;
 update)
 	 cd ~/.rbenv
         git pull
         cd ~/.rbenv/plugins/ruby-build
         git pull
         ;;
 *)
         echo "install|update";;
esac

