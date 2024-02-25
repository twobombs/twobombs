#!/bin/bash
#

cd thereminq

docker build --no-cache -f Dockerfiles/Dockerfile-dev . -t twobombs/thereminq:dev > thereminq:dev && docker tag twobombs/thereminq:dev $HOSTNAME:5000/twobombs/thereminq:dev && docker push $HOSTNAME:5000/twobombs/thereminq:dev
docker build --no-cache -f Dockerfiles/Dockerfile-overlay . -t twobombs/thereminq:overlay > thereminq:overlay && docker tag twobombs/thereminq:overlay $HOSTNAME:5000/twobombs/thereminq:overlay && docker push $HOSTNAME:5000/twobombs/thereminq:overlay
docker build --no-cache -f Dockerfiles/Dockerfile-qimcifa . -t twobombs/thereminq:qimcifa > thereminq:qimcifa && docker tag twobombs/thereminq:qimcifa $HOSTNAME:5000/twobombs/thereminq:qimcifa && docker push $HOSTNAME:5000/twobombs/thereminq:qimcifa
docker build --no-cache -f Dockerfiles/Dockerfile-sieve . -t twobombs/thereminq:sieve > thereminq:sieve && docker tag twobombs/thereminq:sieve $HOSTNAME:5000/twobombs/thereminq:sieve && docker push $HOSTNAME:5000/twobombs/thereminq:sieve
docker build --no-cache -f Dockerfiles/Dockerfile-unittest . -t twobombs/thereminq:unittest > thereminq:unittest && docker tag twobombs/thereminq:unittest $HOSTNAME:5000/twobombs/thereminq:unittest && docker push $HOSTNAME:5000/twobombs/thereminq:unittest
docker build --no-cache -f Dockerfiles/Dockerfile-vcl-controller-node . -t twobombs/thereminq:vcl-controller-node > thereminq:vcl-controller-node && docker tag twobombs/thereminq:vcl-controller-node $HOSTNAME:5000/twobombs/thereminq:vcl-controller-node && docker push $HOSTNAME:5000/twobombs/thereminq:vcl-controller-node

tail -f /dev/null
