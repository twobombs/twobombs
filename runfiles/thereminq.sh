#!/bin/bash
#

cd thereminq

docker build --no-cache -f Dockerfiles/Dockerfile . -t twobombs/thereminq > thereminq && docker tag twobombs/thereminq $HOSTNAME:5000/twobombs/thereminq && docker push $HOSTNAME:5000/twobombs/thereminq
docker build --no-cache -f Dockerfiles/Dockerfile-controller . -t twobombs/thereminq:controller > thereminq:controller && docker tag twobombs/thereminq:controller $HOSTNAME:5000/twobombs/thereminq:controller && docker push $HOSTNAME:5000/twobombs/thereminq:controller
docker build --no-cache -f Dockerfiles/Dockerfile-controller-all . -t twobombs/thereminq:controller-all > thereminq:controller-all && docker tag twobombs/thereminq:controller-all $HOSTNAME:5000/twobombs/thereminq:controller-all && docker push $HOSTNAME:5000/twobombs/thereminq:controller-all
docker build --no-cache -f Dockerfiles/Dockerfile-cuquantum . -t twobombs/thereminq:cuquantum > thereminq:cuquantum && docker tag twobombs/thereminq:cuquantum $HOSTNAME:5000/twobombs/thereminq:cuquantum && docker push $HOSTNAME:5000/twobombs/thereminq:cuquantum
