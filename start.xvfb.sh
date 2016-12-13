#!/usr/bin/env bash

#   Xvfb REQUIRED TO RUN BROWSERS HEADLESSLY
#   MUST BE STARTED BY root
#   STARTS THE VIRTUAL DISPLAY; Xvfb :99
#   CREATES /tmp/.X99 file
rm -f /tmp/.X*lock
nohup Xvfb :99 -ac > /dev/null 2>&1 &

cd /home/seluser && /bin/bash -c "gulp $gulptask"
