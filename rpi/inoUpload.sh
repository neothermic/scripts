#!/bin/bash
echo "<-----Clearing source folder----->"
rm -f ~/build/src/*.*
echo "<-----Copying inos to source folder----->"
cp *.ino ~/build/src/

echo "<-----Entering build area----->"
cd ~/build
echo "<-----Cleaning intermediate compilation files----->"
ino clean
echo "<-----Building----->"
ino build
echo "<-----Uploading----->"
ino upload
