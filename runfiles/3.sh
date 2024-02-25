#!/bin/bash
#

cd qrackmin

docker build --no-cache -f dockerfiles/Dockerfile . -t twobombs/qrackmin > qrackmin && docker tag twobombs/qrackmin $HOSTNAME:5000/twobombs/qrackmin && docker push $HOSTNAME:5000/twobombs/qrackmin
docker build --no-cache -f dockerfiles/Dockerfile-1804 . -t twobombs/qrackmin:1804 > qrackmin:1804 && docker tag twobombs/qrackmin:1804 $HOSTNAME:5000/twobombs/qrackmin:1804 && docker push $HOSTNAME:5000/twobombs/qrackmin:1804
docker build --no-cache -f dockerfiles/Dockerfile-2004 . -t twobombs/qrackmin:2004 > qrackmin:2004 && docker tag twobombs/qrackmin:2004 $HOSTNAME:5000/twobombs/qrackmin:2004 && docker push $HOSTNAME:5000/twobombs/qrackmin:2004
docker build --no-cache -f dockerfiles/Dockerfile-2204 . -t twobombs/qrackmin:2204 > qrackmin:2204 && docker tag twobombs/qrackmin:2204 $HOSTNAME:5000/twobombs/qrackmin:2204 && docker push $HOSTNAME:5000/twobombs/qrackmin:2204
docker build --no-cache -f dockerfiles/Dockerfile-aws . -t twobombs/qrackmin:aws > qrackmin:aws && docker tag twobombs/qrackmin:aws $HOSTNAME:5000/twobombs/qrackmin:aws && docker push $HOSTNAME:5000/twobombs/qrackmin:aws
docker build --no-cache -f dockerfiles/Dockerfile-braket . -t twobombs/qrackmin:braket > qrackmin:braket && docker tag twobombs/qrackmin:braket $HOSTNAME:5000/twobombs/qrackmin:braket && docker push $HOSTNAME:5000/twobombs/qrackmin:braket

tail -f /dev/null
