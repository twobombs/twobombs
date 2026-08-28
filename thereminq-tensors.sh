#!/bin/bash
#

cd thereminq-tensors

docker build -f Dockerfiles/Dockerfile . -t twobombs/thereminq-tensors
docker push twobombs/thereminq-tensors

docker build -f Dockerfiles/Dockerfile-jupyter . -t twobombs/thereminq-tensors:jupyter
docker push twobombs/thereminq-tensors:jupyter

