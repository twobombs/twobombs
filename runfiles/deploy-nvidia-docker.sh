#!/bin/bash
# build and push
# give docker time to spin up
sleep 20

cd deploy-nvidia-docker

docker build -f Dockerfile . -t twobombs/deploy-nvidia-docker > deploy-nvidia-docker && docker tag twobombs/deploy-nvidia-docker $HOSTNAME:5000/twobombs/deploy-nvidia-docker
docker push $HOSTNAME:5000/twobombs/deploy-nvidia-docker &

docker build -f Dockerfile2204-dev . -t twobombs/deploy-nvidia-docker:2204dev > deploy-nvidia-docker-2204dev && docker tag twobombs/deploy-nvidia-docker:2204dev $HOSTNAME:5000/twobombs/deploy-nvidia-docker:2204dev
docker push $HOSTNAME:5000/twobombs/deploy-nvidia-docker:2204dev &

docker build -f Dockerfile-dev . -t twobombs/deploy-nvidia-docker:dev > deploy-nvidia-docker-dev && docker tag twobombs/deploy-nvidia-docker:dev $HOSTNAME:5000/twobombs/deploy-nvidia-docker:dev
docker push $HOSTNAME:5000/twobombs/deploy-nvidia-docker:dev

docker build -f Dockerfile-minimum . -t twobombs/deploy-nvidia-docker:minimum > deploy-nvidia-docker-minimum && docker tag twobombs/deploy-nvidia-docker:minimum $HOSTNAME:5000/twobombs/deploy-nvidia-docker:minimum
docker push $HOSTNAME:5000/twobombs/deploy-nvidia-docker:minimum

docker stats
tail -f /dev/null
