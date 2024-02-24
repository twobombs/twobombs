#!/bin/bash
# waterfall build this
# will eat your machine
# 
# runs on dind ubuntu version 
# https://github.com/cruizba/ubuntu-dind 

# docker run -it --privileged twobombs/twobombs /buildall.sh

cd thereminq-bonsai

docker build --no-cache -f Dockerfiles/Dockerfile . -t twobombs/thereminq-bonsai > thereminq-bonsai
docker build --no-cache -f Dockerfiles/Dockerfile-2204 . -t twobombs/thereminq-bonsai:2204 > thereminq-bonsai:2204
docker build --no-cache -f Dockerfiles/Dockerfile-bonsai-qft . -t twobombs/thereminq-bonsai:qft > thereminq-bonsai:qft
docker build --no-cache -f Dockerfiles/Dockerfile-bonsai-realtime . -t twobombs/thereminq-bonsai:realtime > thereminq-bonsai:realtime
docker build --no-cache -f Dockerfiles/Dockerfile-bonsai-supreme . -t twobombs/thereminq-bonsai:supreme > thereminq-bonsai:supreme
docker build --no-cache -f Dockerfiles/Dockerfile-bonsai-tnnd . -t twobombs/thereminq-bonsai:tnnd > thereminq-bonsai:tnnd
docker build --no-cache -f Dockerfiles/Dockerfile-bonsai-validation . -t twobombs/thereminq-bonsai:validation > thereminq-bonsai:validation
docker build --no-cache -f Dockerfiles/Dockerfile-bonsai-llama . -t twobombs/thereminq-bonsai:llama > thereminq-bonsai:llama
docker build --no-cache -f Dockerfiles/Dockerfile-bonsai-qcircuit . -t twobombs/thereminq-bonsai:qcircuit > thereminq-bonsai:qcircuit
docker build --no-cache -f Dockerfiles/Dockerfile-bonsai-precooked . -t twobombs/thereminq-bonsai:precooked > thereminq-bonsai:precooked

tail -f /dev/null
