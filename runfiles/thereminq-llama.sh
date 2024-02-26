#!/bin/bash
#

cd thereminq-llama

docker build --no-cache -f Dockerfiles/Dockerfile . -t twobombs/thereminq-llama > thereminq-llama && docker tag twobombs/thereminq-llama $HOSTNAME:5000/twobombs/thereminq-llama && docker push $HOSTNAME:5000/twobombs/thereminq-llama
docker build --no-cache -f Dockerfiles/Dockerfile-cassandra . -t twobombs/thereminq-llama:cassandra > thereminq-llama:cassandra && docker tag twobombs/thereminq-llama:cassandra $HOSTNAME:5000/twobombs/thereminq-llama:cassandra && docker push $HOSTNAME:5000/twobombs/thereminq-llama:cassandra
docker build --no-cache -f Dockerfiles/Dockerfile-cli . -t twobombs/thereminq-llama:cli > thereminq-llama:cli && docker tag twobombs/thereminq-llama:cli $HOSTNAME:5000/twobombs/thereminq-llama:cli && docker push $HOSTNAME:5000/twobombs/thereminq-llama:cli
docker build --no-cache -f Dockerfiles/Dockerfile-cuda . -t twobombs/thereminq-llama:cuda > thereminq-llama:cuda && docker tag twobombs/thereminq-llama:cuda $HOSTNAME:5000/twobombs/thereminq-llama:cuda && docker push $HOSTNAME:5000/twobombs/thereminq-llama:cuda
docker build --no-cache -f Dockerfiles/Dockerfile-chatui . -t twobombs/thereminq-llama:chatui > thereminq-llama:chatui && docker tag twobombs/thereminq-llama:chatui $HOSTNAME:5000/twobombs/thereminq-llama:chatui && docker push $HOSTNAME:5000/twobombs/thereminq-llama:chatui
