#!/bin/bash
# waterfall build this
# will eat your machine
# 
# runs on dind ubuntu version 
# https://github.com/cruizba/ubuntu-dind 

# docker run -it --privileged twobombs/twobombs /buildall.sh

cd thereminq-bonsai/Dockerfiles

docker build --no-cache -f Dockerfile . -t twobombs/thereminq-bonsai > thereminq-bonsai &
docker build --no-cache -f Dockerfile-2204 . -t twobombs/thereminq-bonsai:2204 > thereminq-bonsai:2204 &
docker build --no-cache -f Dockerfile-bonsai-qft . -t twobombs/thereminq-bonsai:qft > thereminq-bonsai:qft &
docker build --no-cache -f Dockerfile-bonsai-realtime . -t twobombs/thereminq-bonsai:realtime > thereminq-bonsai:realtime &
docker build --no-cache -f Dockerfile-bonsai-supreme . -t twobombs/thereminq-bonsai:supreme > thereminq-bonsai:supreme &
docker build --no-cache -f Dockerfile-bonsai-tnnd . -t twobombs/thereminq-bonsai:tnnd > thereminq-bonsai:tnnd &
docker build --no-cache -f Dockerfile-bonsai-validation . -t twobombs/thereminq-bonsai:validation > thereminq-bonsai:validation &
docker build --no-cache -f Dockerfile-bonsai-llama . -t twobombs/thereminq-bonsai:llama > thereminq-bonsai:llama &
docker build --no-cache -f Dockerfile-bonsai-qcircuit . -t twobombs/thereminq-bonsai:qcircuit > thereminq-bonsai:qcircuit &
docker build --no-cache -f Dockerfile-bonsai-precooked . -t twobombs/thereminq-bonsai:precooked > thereminq-bonsai:precooked &

tail -f /dev/null
