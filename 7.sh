#!/bin/bash
# waterfall build this
# will eat your machine
# 
# runs on dind ubuntu version 
# https://github.com/cruizba/ubuntu-dind 

# docker run -it --privileged twobombs/twobombs /buildall.sh

cd thereminq-llama/Dockerfiles

docker build --no-cache -f Dockerfile . -t twobombs/thereminq-llama > thereminq-llama &
docker build --no-cache -f Dockerfile-cassandra . -t twobombs/thereminq-llama:cassandra > thereminq-llama:cassandra &
docker build --no-cache -f Dockerfile-chatui . -t twobombs/thereminq-llama:chatui > thereminq-llama:chatui &
docker build --no-cache -f Dockerfile-cli . -t twobombs/thereminq-llama:cli > thereminq-llama:cli &
docker build --no-cache -f Dockerfile-cuda . -t twobombs/thereminq-llama:cuda > thereminq-llama:cuda &

tail -f /dev/null
