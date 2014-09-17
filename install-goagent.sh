#!/bin/bash

(
cd ~/dev-env
rm -rf goagent

git clone https://github.com/goagent/goagent.git --depth=1 &&
cd goagent

sed -i "s/appid = goagent/appid = proxy-itang/g" local/proxy.ini

#sed -i "s/['~/.config/autostart']/['/etc/xdg/autostart']/g" local/addto-startup.py

sudo python local/addto-startup.py
)
