#!/bin/bash
# build and push

cd thereminq-desktop

docker build -f Dockerfile . -t twobombs/thereminq-desktop
docker push twobombs/thereminq-desktop

docker build -f Dockerfile.mesa-rusticl . -t twobombs/thereminq-desktop:mesa
docker push twobombs/thereminq-desktop:mesa
