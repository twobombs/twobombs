#!/bin/bash
# waterfall build this
# will eat your machine
# 
# runs on dind ubuntu version 
# https://github.com/cruizba/ubuntu-dind 

# docker run -it --privileged twobombs/twobombs /buildall.sh

cd thereminq/Dockerfiles

docker build --no-cache -f Dockerfile-dev . -t twobombs/thereminq:dev > thereminq:dev &
docker build --no-cache -f Dockerfile-overlay . -t twobombs/thereminq:overlay > thereminq:overlay &
docker build --no-cache -f Dockerfile-qimcifa . -t twobombs/thereminq:qimcifa > thereminq:qimcifa &
docker build --no-cache -f Dockerfile-sieve . -t twobombs/thereminq:sieve > thereminq:sieve &
docker build --no-cache -f Dockerfile-unittest . -t twobombs/thereminq:unittest > thereminq:unittest &
docker build --no-cache -f Dockerfile-vcl-controller-node . -t twobombs/thereminq:vcl-controller-node > thereminq:vcl-controller-node &

tail -f /dev/null
