#!/usr/bin/env bash

defaults write org.macosforge.xquartz.X11 enable_iglx -bool true
open -a Xquartz

socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\" &

docker build . -t atanua:latest
docker run -e DISPLAY=$(ipconfig getifaddr en0):0 -v $(pwd)/documents:/home/atanua/documents -it atanua:latest