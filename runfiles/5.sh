#!/bin/bash
# waterfall build this
# will eat your machine
# 
# runs on dind ubuntu version 
# https://github.com/cruizba/ubuntu-dind 

# docker run -it --privileged twobombs/twobombs /buildall.sh

cd thereminq

docker build --no-cache -f Dockerfiles/Dockerfile . -t twobombs/thereminq > thereminq
docker build --no-cache -f Dockerfiles/Dockerfile-controller . -t twobombs/thereminq:controller > thereminq:controller
docker build --no-cache -f Dockerfiles/Dockerfile-controller-all . -t twobombs/thereminq:controller-all > thereminq:controller-all
docker build --no-cache -f Dockerfiles/Dockerfile-cuquantum . -t twobombs/thereminq:cuquantum > thereminq:cuquantum

tail -f /dev/null
