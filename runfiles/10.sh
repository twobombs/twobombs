#!/bin/bash
# waterfall build this
# will eat your machine
# 
# runs on dind ubuntu version 
# https://github.com/cruizba/ubuntu-dind 

# docker run -it --privileged twobombs/twobombs /buildall.sh

cd thereminq-llama

docker build --no-cache -f Dockerfiles/Dockerfile-elastic . -t twobombs/thereminq-llama:elastic > thereminq-llama:elastic &
docker build --no-cache -f Dockerfiles/Dockerfile-langchain . -t twobombs/thereminq-llama:langchain > thereminq-llama:langchain &
docker build --no-cache -f Dockerfiles/Dockerfile-opencl . -t twobombs/thereminq-llama:opencl > thereminq-llama:opencl &
docker build --no-cache -f Dockerfiles/Dockerfile-orchestrate . -t twobombs/thereminq-llama:orchestrate > thereminq-llama:orchestrate &
docker build --no-cache -f Dockerfiles/Dockerfile-spark . -t twobombs/thereminq-llama:spark > thereminq-llama:spark &
docker build --no-cache -f Dockerfiles/Dockerfile-unittest . -t twobombs/thereminq-llama:unittest > thereminq-llama:unittest &

tail -f /dev/null
