#!/bin/bash
#
# give docker time to spin up

cd thereminq-llama

docker build -f Dockerfiles/Dockerfile . -t twobombs/thereminq-llama
docker push twobombs/thereminq-llama

docker build -f Dockerfiles/Dockerfile-cli . -t twobombs/thereminq-llama:cli
docker push twobombs/thereminq-llama:cli

