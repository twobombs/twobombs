#!/bin/bash
# waterfall build this
# will eat your machine
# 
# runs on dind ubuntu version 
# https://github.com/cruizba/ubuntu-dind 

# docker run -it --privileged twobombs/twobombs /buildall.sh

cd qrackmin

docker build --no-cache -f dockerfiles/Dockerfile . -t twobombs/qrackmin > qrackmin
docker build --no-cache -f dockerfiles/Dockerfile-1804 . -t twobombs/qrackmin:1804 > qrackmin:1804
docker build --no-cache -f dockerfiles/Dockerfile-2004 . -t twobombs/qrackmin:2004 > qrackmin:2004
docker build --no-cache -f dockerfiles/Dockerfile-2204 . -t twobombs/qrackmin:2204 > qrackmin:2204
docker build --no-cache -f dockerfiles/Dockerfile-aws . -t twobombs/qrackmin:aws > qrackmin:aws
docker build --no-cache -f dockerfiles/Dockerfile-braket . -t twobombs/qrackmin:braket > qrackmin:braket

tail -f /dev/null
