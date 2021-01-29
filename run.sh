#!/usr/bin/env bash

defaults write org.macosforge.xquartz.X11 enable_iglx -bool true
xhost + 127.0.0.1
open -a Xquartz

#socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\" &

open -a Docker
docker build . -t atanua:latest
docker run -e DISPLAY=host.docker.internal:0 -v $(pwd)/documents:/home/atanua/documents -it atanua:latest
