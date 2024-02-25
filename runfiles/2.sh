#!/bin/bash
#

cd cudacluster

docker build --no-cache -f Dockerfile . -t twobombs/cudacluster > cudacluster && docker tag twobombs/cudacluster $HOSTNAME:5000/twobombs/cudacluster && docker push $HOSTNAME:5000/twobombs/cudacluster
docker build --no-cache -f Dockerfile-dev . -t twobombs/cudacluster:dev > cudacluster:dev && docker tag twobombs/cudacluster:dev $HOSTNAME:5000/twobombs/cudacluster:dev && docker push $HOSTNAME:5000/twobombs/cudacluster:dev
docker build --no-cache -f Dockerfile-hpc . -t twobombs/cudacluster:hpc > cudacluster:hpc && docker tag twobombs/cudacluster:hpc $HOSTNAME:5000/twobombs/cudacluster:hpc && docker push $HOSTNAME:5000/twobombs/cudacluster:hpc
docker build --no-cache -f Dockerfile-samples . -t twobombs/cudacluster:samples > cudacluster:samples && docker tag twobombs/cudacluster:samples $HOSTNAME:5000/twobombs/cudacluster:samples && docker push $HOSTNAME:5000/twobombs/cudacluster:samples
docker build --no-cache -f Dockerfile-vulcan . -t twobombs/cudacluster:vulcan > cudacluster:vulcan && docker tag twobombs/cudacluster:vulcan $HOSTNAME:5000/twobombs/cudacluster:vulcan && docker push $HOSTNAME:5000/twobombs/cudacluster:vulcan
docker build --no-cache -f Dockerfile-gaming . -t twobombs/cudacluster:gaming > cudacluster:gaming && docker tag twobombs/cudacluster:gaming $HOSTNAME:5000/twobombs/cudacluster:gaming && docker push $HOSTNAME:5000/twobombs/cudacluster:gaming

tail -f /dev/null
