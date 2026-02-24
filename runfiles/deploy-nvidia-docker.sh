#!/bin/bash
# build and push
# give docker time to spin up
sleep 20

cd thereminq-desktop

docker build -f Dockerfile . -t twobombs/thereminq-desktop > thereminq-desktop && docker tag twobombs/thereminq-desktop $HOSTNAME:5000/twobombs/thereminq-desktop
docker push $HOSTNAME:5000/twobombs/thereminq-desktop &

docker stats
tail -f /dev/null
