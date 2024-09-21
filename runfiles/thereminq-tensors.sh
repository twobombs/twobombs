#!/bin/bash
#

cd thereminq-tensors

docker build --no-cache -f Dockerfiles/Dockerfile . -t twobombs/thereminq-tensors > thereminq-tensors && docker tag twobombs/thereminq-tensors $HOSTNAME:5000/twobombs/thereminq-tensors
docker push $HOSTNAME:5000/twobombs/thereminq-tensors &

docker build --no-cache -f Dockerfiles/Dockerfile-metal . -t twobombs/thereminq-tensors:metal > thereminq-tensors:metal && docker tag twobombs/thereminq-tensors:metal $HOSTNAME:5000/twobombs/thereminq-tensors:metal
docker push $HOSTNAME:5000/twobombs/thereminq-tensors:metal &

docker build --no-cache -f Dockerfiles/Dockerfile-minimum . -t twobombs/thereminq-tensors:minimum > thereminq-tensors:minimum && docker tag twobombs/thereminq-tensors:minimum $HOSTNAME:5000/twobombs/thereminq-tensors:minimum
docker push $HOSTNAME:5000/twobombs/thereminq-tensors:minimum &

docker build --no-cache -f Dockerfiles/Dockerfile-quda . -t twobombs/thereminq-tensors:quda > thereminq-tensors:quda && docker tag twobombs/thereminq-tensors:quda $HOSTNAME:5000/twobombs/thereminq-tensors:quda
docker push $HOSTNAME:5000/twobombs/thereminq-tensors:quda &

docker build --no-cache -f Dockerfiles/Dockerfile-shors . -t twobombs/thereminq-tensors:shors > thereminq-tensors:shors && docker tag twobombs/thereminq-tensors:shors $HOSTNAME:5000/twobombs/thereminq-tensors:shors
docker push $HOSTNAME:5000/twobombs/thereminq-tensors:shors

docker build --no-cache -f Dockerfiles/Dockerfile-agent . -t twobombs/thereminq-tensors:agent > thereminq-tensors:agent && docker tag twobombs/thereminq-tensors:agent $HOSTNAME:5000/twobombs/thereminq-tensors:agent
docker push $HOSTNAME:5000/twobombs/thereminq-tensors:agent
