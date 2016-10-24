#!/usr/bin/env bash

#   Xvfb REQUIRED FOR HEADLESS BROWSERS
#   MUST BE STARTED BY root
#   STARTS THE VIRTUAL DISPLAY
#   CREATES /tmp/.X99 file
rm -f /tmp/.X*lock
nohup Xvfb :99 -ac > /dev/null 2>&1 &
echo ".... tags - " $tags
cd /home/seluser && /bin/bash -c "nightwatch --config nightwatch.json -a $tags"
