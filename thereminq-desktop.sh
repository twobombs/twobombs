#!/bin/bash
# build and push
# give docker time to spin up

cd thereminq-desktop

docker build -f Dockerfile . -t twobombs/thereminq-desktop
docker push twobombs/thereminq-desktop

