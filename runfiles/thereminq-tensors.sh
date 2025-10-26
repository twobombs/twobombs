#!/bin/bash
#
# give docker time to spin up
sleep 20

cd thereminq-tensors

docker build -f Dockerfiles/Dockerfile . -t twobombs/thereminq-tensors > thereminq-tensors && docker tag twobombs/thereminq-tensors $HOSTNAME:5000/twobombs/thereminq-tensors
docker push $HOSTNAME:5000/twobombs/thereminq-tensors

docker build -f Dockerfiles/Dockerfile-jupyter . -t twobombs/thereminq-tensors:jupyter > thereminq-tensors:jupyter && docker tag twobombs/thereminq-tensors:jupyter $HOSTNAME:5000/twobombs/thereminq-tensors:jupyter
docker push $HOSTNAME:5000/twobombs/thereminq-tensors:jupyter

docker build -f Dockerfiles/Dockerfile-metal . -t twobombs/thereminq-tensors:metal > thereminq-tensors:metal && docker tag twobombs/thereminq-tensors:metal $HOSTNAME:5000/twobombs/thereminq-tensors:metal && docker push $HOSTNAME:5000/twobombs/thereminq-tensors:metal &

docker build -f Dockerfiles/Dockerfile-minimum . -t twobombs/thereminq-tensors:minimum > thereminq-tensors:minimum && docker tag twobombs/thereminq-tensors:minimum $HOSTNAME:5000/twobombs/thereminq-tensors:minimum && docker push $HOSTNAME:5000/twobombs/thereminq-tensors:minimum &

docker build -f Dockerfiles/Dockerfile-quda . -t twobombs/thereminq-tensors:quda > thereminq-tensors:quda && docker tag twobombs/thereminq-tensors:quda $HOSTNAME:5000/twobombs/thereminq-tensors:quda && docker push $HOSTNAME:5000/twobombs/thereminq-tensors:quda &

docker build -f Dockerfiles/Dockerfile-shors . -t twobombs/thereminq-tensors:shors > thereminq-tensors:shors && docker tag twobombs/thereminq-tensors:shors $HOSTNAME:5000/twobombs/thereminq-tensors:shors
docker push $HOSTNAME:5000/twobombs/thereminq-tensors:shors

docker build -f Dockerfiles/Dockerfile-agent . -t twobombs/thereminq-tensors:agent > thereminq-tensors:agent && docker tag twobombs/thereminq-tensors:agent $HOSTNAME:5000/twobombs/thereminq-tensors:agent
docker push $HOSTNAME:5000/twobombs/thereminq-tensors:agent

docker stats
tail -f /dev/null
