#!/bin/bash
# build and push

cd deploy-nvidia-docker

docker build --no-cache -f Dockerfile . -t twobombs/deploy-nvidia-docker > deploy-nvidia-docker && docker tag twobombs/deploy-nvidia-docker $HOSTNAME:5000/twobombs/deploy-nvidia-docker && docker push $HOSTNAME:5000/twobombs/deploy-nvidia-docker
docker build --no-cache -f Dockerfile-dev . -t twobombs/deploy-nvidia-docker:dev > deploy-nvidia-docker:dev && docker tag twobombs/deploy-nvidia-docker:dev $HOSTNAME:5000/twobombs/deploy-nvidia-docker:dev && docker push $HOSTNAME:5000/twobombs/deploy-nvidia-docker:dev
docker build --no-cache -f Dockerfile-minimum . -t twobombs/deploy-nvidia-docker:minimum > deploy-nvidia-docker:minimum && docker tag twobombs/deploy-nvidia-docker:minimum $HOSTNAME:5000/twobombs/deploy-nvidia-docker:minimum && docker push $HOSTNAME:5000/twobombs/deploy-nvidia-docker:minimum
