#!/bin/bash

echo "Ready to grab firmware and put it somewhere useful"
echo "Compile (press Verify) then press any key to continue"
cp `find /tmp/build* -name \*.hex` ~/tosend/firmware.hex


