#!/bin/bash
#

cd thereminq-tensors

docker build --no-cache -f Dockerfiles/Dockerfile . -t twobombs/thereminq-tensor > thereminq-tensor && docker tag twobombs/thereminq-tensor $HOSTNAME:5000/twobombs/thereminq-tensor && docker push $HOSTNAME:5000/twobombs/thereminq-tensor
docker build --no-cache -f Dockerfiles/Dockerfile-metal . -t twobombs/thereminq-tensor:metal > thereminq-tensor:metal && docker tag twobombs/thereminq-tensor:metal $HOSTNAME:5000/twobombs/thereminq-tensor:metal && docker push $HOSTNAME:5000/twobombs/thereminq-tensor:metal
docker build --no-cache -f Dockerfiles/Dockerfile-minimum . -t twobombs/thereminq-tensor:minimum > thereminq-tensor:minimum && docker tag twobombs/thereminq-tensor:minimum $HOSTNAME:5000/twobombs/thereminq-tensor:minimum && docker push $HOSTNAME:5000/twobombs/thereminq-tensor:minimum
docker build --no-cache -f Dockerfiles/Dockerfile-quda . -t twobombs/thereminq-tensor:quda > thereminq-tensor:quda && docker tag twobombs/thereminq-tensor:quda $HOSTNAME:5000/twobombs/thereminq-tensor:quda && docker push $HOSTNAME:5000/twobombs/thereminq-tensor:quda
docker build --no-cache -f Dockerfiles/Dockerfile-shors . -t twobombs/thereminq-tensor:shors > thereminq-tensor:shors && docker tag twobombs/thereminq-tensor:shors $HOSTNAME:5000/twobombs/thereminq-tensor:shors && docker push $HOSTNAME:5000/twobombs/thereminq-tensor:shors

tail -f /dev/null
