#!/bin/bash
#

cd thereminq-llama

docker build --no-cache -f Dockerfiles/Dockerfile-elastic . -t twobombs/thereminq-llama:elastic > twobombs/thereminq-llama:elastic && docker tag twobombs/thereminq-llama:elastic $HOSTNAME:5000/twobombs/thereminq-llama:elastic && docker push $HOSTNAME:5000/twobombs/thereminq-llama:elastic
docker build --no-cache -f Dockerfiles/Dockerfile-langchain . -t twobombs/thereminq-llama:langchain > twobombs/thereminq-llama:langchain && docker tag twobombs/thereminq-llama:langchain $HOSTNAME:5000/twobombs/thereminq-llama:langchain && docker push $HOSTNAME:5000/twobombs/thereminq-llama:langchain
docker build --no-cache -f Dockerfiles/Dockerfile-opencl . -t twobombs/thereminq-llama:opencl > twobombs/thereminq-llama:opencl && docker tag twobombs/thereminq-llama:opencl $HOSTNAME:5000/twobombs/thereminq-llama:opencl && docker push $HOSTNAME:5000/twobombs/thereminq-llama:opencl
docker build --no-cache -f Dockerfiles/Dockerfile-orchestrate . -t twobombs/thereminq-llama:orchestrate > twobombs/thereminq-llama:orchestrate && docker tag twobombs/thereminq-llama:orchestrate $HOSTNAME:5000/twobombs/thereminq-llama:orchestrate && docker push $HOSTNAME:5000/twobombs/thereminq-llama:orchestrate
docker build --no-cache -f Dockerfiles/Dockerfile-spark . -t twobombs/thereminq-llama:spark > twobombs/thereminq-llama:spark && docker tag twobombs/thereminq-llama:spark $HOSTNAME:5000/twobombs/thereminq-llama:spark && docker push $HOSTNAME:5000/twobombs/thereminq-llama:spark
docker build --no-cache -f Dockerfiles/Dockerfile-unittest . -t twobombs/thereminq-llama:unittest > twobombs/thereminq-llama:unittest && docker tag twobombs/thereminq-llama:unittest $HOSTNAME:5000/twobombs/thereminq-llama:unittest && docker push $HOSTNAME:5000/twobombs/thereminq-llama:unittest

tail -f /dev/null
