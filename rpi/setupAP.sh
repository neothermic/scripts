#!/bin/bash
echo "Installing HostAPD"
sudo apt-get update && sudo apt-get install hostapd
echo "Installing DNSmasq"
sudo apt-get install dnsmasq
echo "Copy my config file"
cp -f ~/scripts/rpi/config/dnsmasq.conf ./etc/
echo "Done - reboot then run AP start script"
