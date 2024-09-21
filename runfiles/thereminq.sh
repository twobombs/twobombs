#!/bin/bash
#
cd thereminq

docker build --no-cache -f Dockerfiles/Dockerfile . -t twobombs/thereminq > thereminq && docker tag twobombs/thereminq $HOSTNAME:5000/twobombs/thereminq
docker push $HOSTNAME:5000/twobombs/thereminq &

docker build --no-cache -f Dockerfiles/Dockerfile-controller . -t twobombs/thereminq:controller > thereminq:controller && docker tag twobombs/thereminq:controller $HOSTNAME:5000/twobombs/thereminq:controller
docker push $HOSTNAME:5000/twobombs/thereminq:controller &

docker build --no-cache -f Dockerfiles/Dockerfile-controller-all . -t twobombs/thereminq:controller-all > thereminq:controller-all && docker tag twobombs/thereminq:controller-all $HOSTNAME:5000/twobombs/thereminq:controller-all
docker push $HOSTNAME:5000/twobombs/thereminq:controller-all &

docker build --no-cache -f Dockerfiles/Dockerfile-cuquantum . -t twobombs/thereminq:cuquantum > thereminq:cuquantum && docker tag twobombs/thereminq:cuquantum $HOSTNAME:5000/twobombs/thereminq:cuquantum
docker push $HOSTNAME:5000/twobombs/thereminq:cuquantum &

docker build --no-cache -f Dockerfiles/Dockerfile-dev . -t twobombs/thereminq:dev > thereminq:dev && docker tag twobombs/thereminq:dev $HOSTNAME:5000/twobombs/thereminq:dev
docker push $HOSTNAME:5000/twobombs/thereminq:dev &

docker build --no-cache -f Dockerfiles/Dockerfile-overlay . -t twobombs/thereminq:overlay > thereminq:overlay && docker tag twobombs/thereminq:overlay $HOSTNAME:5000/twobombs/thereminq:overlay
docker push $HOSTNAME:5000/twobombs/thereminq:overlay &

docker build --no-cache -f Dockerfiles/Dockerfile-qimcifa . -t twobombs/thereminq:qimcifa > thereminq:qimcifa && docker tag twobombs/thereminq:qimcifa $HOSTNAME:5000/twobombs/thereminq:qimcifa
docker push $HOSTNAME:5000/twobombs/thereminq:qimcifa &

docker build --no-cache -f Dockerfiles/Dockerfile-sieve . -t twobombs/thereminq:sieve > thereminq:sieve && docker tag twobombs/thereminq:sieve $HOSTNAME:5000/twobombs/thereminq:sieve
docker push $HOSTNAME:5000/twobombs/thereminq:sieve &

docker build --no-cache -f Dockerfiles/Dockerfile-unittest . -t twobombs/thereminq:unittest > thereminq:unittest && docker tag twobombs/thereminq:unittest $HOSTNAME:5000/twobombs/thereminq:unittest
docker push $HOSTNAME:5000/twobombs/thereminq:unittest &

docker build --no-cache -f Dockerfiles/Dockerfile-vcl-controller-node . -t twobombs/thereminq:vcl-controller-node > thereminq:vcl-controller-node && docker tag twobombs/thereminq:vcl-controller-node $HOSTNAME:5000/twobombs/thereminq:vcl-controller-node
docker push $HOSTNAME:5000/twobombs/thereminq:vcl-controller-node &
