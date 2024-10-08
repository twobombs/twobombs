#!/bin/bash
#
# give docker time to spin up
sleep 20

cd cudacluster

docker build --no-cache -f Dockerfile . -t twobombs/cudacluster > cudacluster && docker tag twobombs/cudacluster $HOSTNAME:5000/twobombs/cudacluster
docker push $HOSTNAME:5000/twobombs/cudacluster &

docker build --no-cache -f Dockerfile-dev . -t twobombs/cudacluster:dev > cudacluster:dev && docker tag twobombs/cudacluster:dev $HOSTNAME:5000/twobombs/cudacluster:dev
docker push $HOSTNAME:5000/twobombs/cudacluster:dev

docker build --no-cache -f Dockerfile2204-dev . -t twobombs/cudacluster:2204dev > cudacluster:2204dev && docker tag twobombs/cudacluster:2204dev $HOSTNAME:5000/twobombs/cudacluster:2204dev
docker push $HOSTNAME:5000/twobombs/cudacluster:2204dev

docker build --no-cache -f Dockerfile-hpc . -t twobombs/cudacluster:hpc > cudacluster:hpc && docker tag twobombs/cudacluster:hpc $HOSTNAME:5000/twobombs/cudacluster:hpc && docker push $HOSTNAME:5000/twobombs/cudacluster:hpc &

docker build --no-cache -f Dockerfile-samples . -t twobombs/cudacluster:samples > cudacluster:samples && docker tag twobombs/cudacluster:samples $HOSTNAME:5000/twobombs/cudacluster:samples && docker push $HOSTNAME:5000/twobombs/cudacluster:samples &

docker build --no-cache -f Dockerfile-vulkan . -t twobombs/cudacluster:vulkan > cudacluster:vulkan && docker tag twobombs/cudacluster:vulkan $HOSTNAME:5000/twobombs/cudacluster:vulkan && docker push $HOSTNAME:5000/twobombs/cudacluster:vulkan &

docker build --no-cache -f Dockerfile-gaming . -t twobombs/cudacluster:gaming > cudacluster:gaming && docker tag twobombs/cudacluster:gaming $HOSTNAME:5000/twobombs/cudacluster:gaming && docker push $HOSTNAME:5000/twobombs/cudacluster:gaming &

docker stats
tail -f /dev/null
