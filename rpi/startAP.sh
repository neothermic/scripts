#!/bin/bash
echo "Launching HostAPD in a screen with name 'hostAPD'"
screen -dmS hostAPD sudo hostapd ~/scripts/rpi/config/hostapd-fscarrier.conf
echo "Waiting for hostAPD to finish messing about with adapters"
sleep 5
echo "Setting IP address of wlan0 to 10.0.0.1"
sudo ifconfig wlan0 10.0.0.1
echo "AP Started"
