#!/bin/bash

sudo apt-get install openvpn
#sudo apt-get install easy-rsa

sudo cp ~/Downloads/VPN/* /etc/openvpn/

echo "start by: sudo openvpn /etc/openvpn/client.ovpn"

