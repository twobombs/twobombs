#!/bin/bash
#
# give docker time to spin up
sleep 20

cd thereminq-pqc

docker build --no-cache -f Dockerfiles/Dockerfile . -t twobombs/thereminq-pqc > thereminq-pqc && docker tag twobombs/thereminq-pqc $HOSTNAME:5000/twobombs/thereminq-pqc
docker push $HOSTNAME:5000/twobombs/thereminq-pqc &

docker build --no-cache -f Dockerfiles/Dockerfile-ssh . -t twobombs/thereminq-pqc:ssh > thereminq-pqc && docker tag twobombs/thereminq-pqc:ssh $HOSTNAME:5000/twobombs/thereminq-pqc:ssh
docker push $HOSTNAME:5000/twobombs/thereminq-pqc:ssh &

docker build --no-cache -f Dockerfiles/Dockerfile-nginx . -t twobombs/thereminq-pqc:nginx > thereminq-pqc:nginx && docker tag twobombs/thereminq-pqc:nginx $HOSTNAME:5000/twobombs/thereminq-pqc:nginx
docker push $HOSTNAME:5000/twobombs/thereminq-pqc:nginx &

docker stats
tail -f /dev/null
