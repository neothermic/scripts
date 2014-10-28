#!/bin/bash

echo "Ready to grab firmware and put it somewhere useful"
read -p "Compile (press Verify) then press any key to continue"
echo "Copying latest firmware file to /home/tosend/firmware.hex"
cp `find /tmp/build* -name \*.hex -printf '%T@ %p\n' | sort -n | tail -1 | cut -f2- -d" "` ~/tosend/firmware.hex
echo "Copying firmware.hex to Carrier build area"
scp ~/tosend/firmware.hex pi@fscarrier:build/.build/uno/firmware.hex
read -p "Insert starting key and turn, then press any key to continue"
echo "<----------------YOU ARE ABOUT TO UPLOAD NEW FIRMWARE TO THE CARRIER--------------->"
echo "<-------THIS MAY HAVE UNEXPECTED CONSEQUENCES AND RESULT IN SUDDEN MOVEMENT-------->"
echo "<-------------------ENSURE SAFE DISTANCE FROM PERSONS AND OBJECTS------------------>"
echo "<--TO STOP CARRIER, KEY WILL NEED TO BE REMOVED AND EMERGENCY STOP BUTTON PRESSED-->"
read -p "Press any key to continue"
echo "Uploading new firmware, please wait"

