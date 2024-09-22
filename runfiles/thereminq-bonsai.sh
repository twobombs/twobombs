#!/bin/bash
#

cd thereminq-bonsai

docker build --no-cache -f Dockerfiles/Dockerfile . -t twobombs/thereminq-bonsai > thereminq-bonsai && docker tag twobombs/thereminq-bonsai $HOSTNAME:5000/twobombs/thereminq-bonsai
docker push $HOSTNAME:5000/twobombs/thereminq-bonsai &

docker build --no-cache -f Dockerfiles/Dockerfile-2204 . -t twobombs/thereminq-bonsai:2204 > thereminq-bonsai:2204 && docker tag twobombs/thereminq-bonsai:2204 $HOSTNAME:5000/twobombs/thereminq-bonsai:2204
docker push $HOSTNAME:5000/twobombs/thereminq-bonsai:2204 &

docker build --no-cache -f Dockerfiles/Dockerfile-bonsai-qft . -t twobombs/thereminq-bonsai:qft > thereminq-bonsai:qft && docker tag twobombs/thereminq-bonsai:qft $HOSTNAME:5000/twobombs/thereminq-bonsai:qft
docker push $HOSTNAME:5000/twobombs/thereminq-bonsai:qft &

docker build --no-cache -f Dockerfiles/Dockerfile-bonsai-realtime . -t twobombs/thereminq-bonsai:realtime > thereminq-bonsai:realtime && docker tag twobombs/thereminq-bonsai:realtime $HOSTNAME:5000/twobombs/thereminq-bonsai:realtime
docker push $HOSTNAME:5000/twobombs/thereminq-bonsai:realtime &

docker build --no-cache -f Dockerfiles/Dockerfile-bonsai-supreme . -t twobombs/thereminq-bonsai:supreme > thereminq-bonsai:supreme && docker tag twobombs/thereminq-bonsai:supreme $HOSTNAME:5000/twobombs/thereminq-bonsai:supreme
docker push $HOSTNAME:5000/twobombs/thereminq-bonsai:supreme &

docker build --no-cache -f Dockerfiles/Dockerfile-bonsai-tnnd . -t twobombs/thereminq-bonsai:tnnd > thereminq-bonsai:tnnd && docker tag twobombs/twobombs/thereminq-bonsai:tnnd $HOSTNAME:5000/twobombs/thereminq-bonsai:tnnd
docker push $HOSTNAME:5000/twobombs/thereminq-bonsai:tnnd &

docker build --no-cache -f Dockerfiles/Dockerfile-bonsai-validation . -t twobombs/thereminq-bonsai:validation > thereminq-bonsai:validation && docker tag twobombs/thereminq-bonsai:validation $HOSTNAME:5000/twobombs/thereminq-bonsai:validation
docker push $HOSTNAME:5000/twobombs/thereminq-bonsai:validation &

docker build --no-cache -f Dockerfiles/Dockerfile-bonsai-llama . -t twobombs/thereminq-bonsai:llama > thereminq-bonsai:llama && docker tag twobombs/thereminq-bonsai:llama $HOSTNAME:5000/twobombs/thereminq-bonsai:llama
docker push $HOSTNAME:5000/twobombs/thereminq-bonsai:llama &

docker build --no-cache -f Dockerfiles/Dockerfile-bonsai-qcircuit . -t twobombs/thereminq-bonsai:qcircuit > thereminq-bonsai:qcircuit && docker tag twobombs/thereminq-bonsai:qcircuit $HOSTNAME:5000/twobombs/thereminq-bonsai:qcircuit
docker push $HOSTNAME:5000/twobombs/thereminq-bonsai:qcircuit &

docker build --no-cache -f Dockerfiles/Dockerfile-qrack-precooked . -t twobombs/thereminq-bonsai:precooked > thereminq-bonsai:precooked && docker tag twobombs/thereminq-bonsai:precooked $HOSTNAME:5000/twobombs/thereminq-bonsai:precooked
docker push $HOSTNAME:5000/twobombs/thereminq-bonsai:precooked
