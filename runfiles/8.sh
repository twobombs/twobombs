#!/bin/bash
#

cd thereminq-tensors

docker build --no-cache -f Dockerfiles/Dockerfile . -t twobombs/thereminq-tensor > thereminq-tensor && docker tag thereminq-tensor $HOSTNAME:5000/thereminq-tensor && docker push $HOSTNAME:5000/thereminq-tensor
docker build --no-cache -f Dockerfiles/Dockerfile-metal . -t twobombs/thereminq-tensor:metal > thereminq-tensor:metal && docker tag thereminq-tensor:metal $HOSTNAME:5000/thereminq-tensor:metal && docker push $HOSTNAME:5000/thereminq-tensor:metal
docker build --no-cache -f Dockerfiles/Dockerfile-minimum . -t twobombs/thereminq-tensor:minimum > thereminq-tensor:minimum && docker tag thereminq-tensor:minimum $HOSTNAME:5000/thereminq-tensor:minimum && docker push $HOSTNAME:5000/thereminq-tensor:minimum
docker build --no-cache -f Dockerfiles/Dockerfile-quda . -t twobombs/thereminq-tensor:quda > thereminq-tensor:quda && docker tag thereminq-tensor:quda $HOSTNAME:5000/thereminq-tensor:quda && docker push $HOSTNAME:5000/thereminq-tensor:quda
docker build --no-cache -f Dockerfiles/Dockerfile-shors . -t twobombs/thereminq-tensor:shors > thereminq-tensor:shors && docker tag thereminq-tensor:shors $HOSTNAME:5000/thereminq-tensor:shors && docker push $HOSTNAME:5000/thereminq-tensor:shors

tail -f /dev/null
