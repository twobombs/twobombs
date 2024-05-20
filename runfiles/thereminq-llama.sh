#!/bin/bash
#

cd thereminq-llama

docker build --no-cache -f Dockerfiles/Dockerfile . -t twobombs/thereminq-llama > thereminq-llama && docker tag twobombs/thereminq-llama $HOSTNAME:5000/twobombs/thereminq-llama && docker push $HOSTNAME:5000/twobombs/thereminq-llama

docker build --no-cache -f Dockerfiles/Dockerfile-cli . -t twobombs/thereminq-llama:cli > thereminq-llama:cli && docker tag twobombs/thereminq-llama:cli $HOSTNAME:5000/twobombs/thereminq-llama:cli && docker push $HOSTNAME:5000/twobombs/thereminq-llama:cli

docker build --no-cache -f Dockerfiles/Dockerfile-chatui . -t twobombs/thereminq-llama:chatui > thereminq-llama:chatui && docker tag twobombs/thereminq-llama:chatui $HOSTNAME:5000/twobombs/thereminq-llama:chatui && docker push $HOSTNAME:5000/twobombs/thereminq-llama:chatui

docker build --no-cache -f Dockerfiles/Dockerfile-agent . -t twobombs/thereminq-llama:agent > thereminq-llama:agent && docker tag twobombs/thereminq-llama:agent $HOSTNAME:5000/twobombs/thereminq-llama:agent && docker push $HOSTNAME:5000/twobombs/thereminq-llama:agent

docker build --no-cache -f Dockerfiles/Dockerfile-big-agency . -t twobombs/thereminq-llama:big-agency > thereminq-llama:big-agency && docker tag twobombs/thereminq-llama:big-agency $HOSTNAME:5000/twobombs/thereminq-llama:big-agency && docker push $HOSTNAME:5000/twobombs/thereminq-llama:big-agency
