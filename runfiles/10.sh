#!/bin/bash
#

cd thereminq-llama

docker build --no-cache -f Dockerfiles/Dockerfile-elastic . -t twobombs/thereminq-llama:elastic > thereminq-llama:elastic && docker tag thereminq-llama:elastic $HOSTNAME:5000/thereminq-llama:elastic && docker push $HOSTNAME:5000/thereminq-llama:elastic
docker build --no-cache -f Dockerfiles/Dockerfile-langchain . -t twobombs/thereminq-llama:langchain > thereminq-llama:langchain && docker tag thereminq-llama:langchain $HOSTNAME:5000/thereminq-llama:langchain && docker push $HOSTNAME:5000/thereminq-llama:langchain
docker build --no-cache -f Dockerfiles/Dockerfile-opencl . -t twobombs/thereminq-llama:opencl > thereminq-llama:opencl && docker tag thereminq-llama:opencl $HOSTNAME:5000/thereminq-llama:opencl && docker push $HOSTNAME:5000/thereminq-llama:opencl
docker build --no-cache -f Dockerfiles/Dockerfile-orchestrate . -t twobombs/thereminq-llama:orchestrate > thereminq-llama:orchestrate && docker tag thereminq-llama:orchestrate $HOSTNAME:5000/thereminq-llama:orchestrate && docker push $HOSTNAME:5000/thereminq-llama:orchestrate
docker build --no-cache -f Dockerfiles/Dockerfile-spark . -t twobombs/thereminq-llama:spark > thereminq-llama:spark && docker tag thereminq-llama:spark $HOSTNAME:5000/thereminq-llama:spark && docker push $HOSTNAME:5000/thereminq-llama:spark
docker build --no-cache -f Dockerfiles/Dockerfile-unittest . -t twobombs/thereminq-llama:unittest > thereminq-llama:unittest && docker tag thereminq-llama:unittest $HOSTNAME:5000/thereminq-llama:unittest && docker push $HOSTNAME:5000/thereminq-llama:unittest

tail -f /dev/null
