#!/bin/bash
# waterfall build this
# will eat your machine
# 
# runs on dind ubuntu version 
# https://github.com/cruizba/ubuntu-dind 

# docker run -it --privileged twobombs/twobombs /buildall.sh

cd deploy-nvidia-docker

docker build --no-cache -f Dockerfile . -t twobombs/deploy-nvidia-docker > deploy-nvidia-docker
docker build --no-cache -f Dockerfile-dev . -t twobombs/deploy-nvidia-docker:dev > deploy-nvidia-docker:dev
docker build --no-cache -f Dockerfile-minimum . -t twobombs/deploy-nvidia-docker:minimum > deploy-nvidia-docker:minimum

tail -f /dev/null
