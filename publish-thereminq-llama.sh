#!/bin/bash

docker pull $HOSTNAME:5000/twobombs/thereminq-llama
docker tag $HOSTNAME:5000/twobombs/thereminq-llama twobombs/thereminq-llama
docker push twobombs/thereminq-llama &

docker pull $HOSTNAME:5000/twobombs/thereminq-llama:cli
docker tag $HOSTNAME:5000/twobombs/thereminq-llama:cli twobombs/thereminq-llama:cli
docker push twobombs/thereminq-llama:cli &

docker pull $HOSTNAME:5000/twobombs/thereminq-llama:chatui
docker tag $HOSTNAME:5000/twobombs/thereminq-llama:chatui twobombs/thereminq-llama:chatui
docker push twobombs/thereminq-llama:chatui &

docker pull $HOSTNAME:5000/twobombs/thereminq-llama:agent
docker tag $HOSTNAME:5000/twobombs/thereminq-llama:agent twobombs/thereminq-llama:agent
docker push twobombs/thereminq-llama:agent &

docker pull $HOSTNAME:5000/twobombs/thereminq-llama:big-agency
docker tag $HOSTNAME:5000/twobombs/thereminq-llama:big-agency twobombs/thereminq-llama:big-agency
docker push twobombs/thereminq-llama:big-agency &

docker pull $HOSTNAME:5000/twobombs/thereminq-llama:chemistry
docker tag $HOSTNAME:5000/twobombs/thereminq-llama:chemistry twobombs/thereminq-llama:chemistry
docker push twobombs/thereminq-llama:chemistry &

