#!/bin/bash
# waterfall build this
# will eat your machine
# 
# runs on dind ubuntu version 
# https://github.com/cruizba/ubuntu-dind 

# docker run -it --privileged twobombs/twobombs /buildall.sh

cd thereminq-tensors

docker build --no-cache -f Dockerfiles/Dockerfile . -t twobombs/thereminq-tensor > thereminq-tensor &
docker build --no-cache -f Dockerfiles/Dockerfile-metal . -t twobombs/thereminq-tensor:metal > thereminq-tensor:metal &
docker build --no-cache -f Dockerfiles/Dockerfile-minimum . -t twobombs/thereminq-tensor:minimum > thereminq-tensor:minimum &
docker build --no-cache -f Dockerfiles/Dockerfile-quda . -t twobombs/thereminq-tensor:quda > thereminq-tensor:quda &
docker build --no-cache -f Dockerfiles/Dockerfile-shors . -t twobombs/thereminq-tensor:shors > thereminq-tensor:shors &

tail -f /dev/null
