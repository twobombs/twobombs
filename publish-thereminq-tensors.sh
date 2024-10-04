#!/bin/bash

docker pull $HOSTNAME:5000/twobombs/thereminq-tensors
docker tag $HOSTNAME:5000/twobombs/thereminq-tensors twobombs/thereminq-tensors
docker push twobombs/thereminq-tensors &

docker pull $HOSTNAME:5000/twobombs/thereminq-tensors:metal
docker tag $HOSTNAME:5000/twobombs/thereminq-tensors:metal twobombs/thereminq-tensors:metal
docker push twobombs/thereminq-tensors:metal &

docker pull $HOSTNAME:5000/twobombs/thereminq-tensors:minimum
docker tag $HOSTNAME:5000/twobombs/thereminq-tensors:minimum twobombs/thereminq-tensors:minimum
docker push twobombs/thereminq-tensors:minimum &

docker pull $HOSTNAME:5000/twobombs/thereminq-tensors:quda
docker tag $HOSTNAME:5000/twobombs/thereminq-tensors:quda twobombs/thereminq-tensors:quda
docker push twobombs/thereminq-tensors:quda &

docker pull $HOSTNAME:5000/twobombs/thereminq-tensors:shors
docker tag $HOSTNAME:5000/twobombs/thereminq-tensors:shors twobombs/thereminq-tensors:shors
docker push twobombs/thereminq-tensors:shors &

docker pull $HOSTNAME:5000/twobombs/thereminq-tensors:agent
docker tag $HOSTNAME:5000/twobombs/thereminq-tensors:agent twobombs/thereminq-tensors:agent
docker push twobombs/thereminq-tensors:agent &

