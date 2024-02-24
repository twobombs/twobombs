#!/bin/bash
# waterfall build this
# will eat your machine
# 
# runs on dind ubuntu version 
# https://github.com/cruizba/ubuntu-dind 

cd cudacluster

docker build --no-cache -f Dockerfile . -t twobombs/cudacluster > cudacluster &
docker build --no-cache -f Dockerfile-dev . -t twobombs/cudacluster:dev > cudacluster:dev &
docker build --no-cache -f Dockerfile-hpc . -t twobombs/cudacluster:hpc > cudacluster:hpc &
docker build --no-cache -f Dockerfile-samples . -t twobombs/cudacluster:samples > cudacluster:samples &
docker build --no-cache -f Dockerfile-vulcan . -t twobombs/cudacluster:vulcan > cudacluster:vulcan &
docker build --no-cache -f Dockerfile-gaming . -t twobombs/cudacluster:gaming > cudacluster:gaming &

tail -f /dev/null
