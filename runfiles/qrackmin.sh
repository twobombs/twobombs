#!/bin/bash
#
# give docker time to spin up
sleep 20

cd qrackmin

docker build --no-cache -f dockerfiles/Dockerfile . -t twobombs/qrackmin > qrackmin && docker tag twobombs/qrackmin $HOSTNAME:5000/twobombs/qrackmin 
docker push $HOSTNAME:5000/twobombs/qrackmin &
docker build --no-cache -f dockerfiles/Dockerfile-1804 . -t twobombs/qrackmin:1804 > qrackmin:1804 && docker tag twobombs/qrackmin:1804 $HOSTNAME:5000/twobombs/qrackmin:1804
docker push $HOSTNAME:5000/twobombs/qrackmin:1804 &
docker build --no-cache -f dockerfiles/Dockerfile-2004 . -t twobombs/qrackmin:2004 > qrackmin:2004 && docker tag twobombs/qrackmin:2004 $HOSTNAME:5000/twobombs/qrackmin:2004
docker push $HOSTNAME:5000/twobombs/qrackmin:2004 &
docker build --no-cache -f dockerfiles/Dockerfile-2204 . -t twobombs/qrackmin:2204 > qrackmin:2204 && docker tag twobombs/qrackmin:2204 $HOSTNAME:5000/twobombs/qrackmin:2204 
docker push $HOSTNAME:5000/twobombs/qrackmin:2204 &

docker build --no-cache -f dockerfiles/Dockerfile-aws . -t twobombs/qrackmin:aws > qrackmin:aws && docker tag twobombs/qrackmin:aws $HOSTNAME:5000/twobombs/qrackmin:aws && docker push $HOSTNAME:5000/twobombs/qrackmin:aws &

docker build --no-cache -f dockerfiles/Dockerfile-braket . -t twobombs/qrackmin:braket > qrackmin:braket && docker tag twobombs/qrackmin:braket $HOSTNAME:5000/twobombs/qrackmin:braket && docker push $HOSTNAME:5000/twobombs/qrackmin:braket &

docker build --no-cache -f dockerfiles/Dockerfile-cuda . -t twobombs/qrackmin:cuda > qrackmin:cuda && docker tag twobombs/qrackmin:cuda $HOSTNAME:5000/twobombs/qrackmin:cuda && docker push $HOSTNAME:5000/twobombs/qrackmin:cuda &

docker build --no-cache -f dockerfiles/Dockerfile-pocl . -t twobombs/qrackmin:pocl > qrackmin:pocl docker tag twobombs/qrackmin:pocl $HOSTNAME:5000/twobombs/qrackmin:pocl && docker push $HOSTNAME:5000/twobombs/qrackmin:pocl &

docker build --no-cache -f dockerfiles/Dockerfile-pyqrack . -t twobombs/qrackmin:pyqrack > qrackmin:pyqrack && docker tag twobombs/qrackmin:pyqrack $HOSTNAME:5000/twobombs/qrackmin:pyqrack && docker push $HOSTNAME:5000/twobombs/qrackmin:pyqrack &

docker build --no-cache -f dockerfiles/Dockerfile-qbdd . -t twobombs/qrackmin:qbdd > qrackmin:qbdd && docker tag twobombs/qrackmin:qbdd $HOSTNAME:5000/twobombs/qrackmin:qbdd && docker push $HOSTNAME:5000/twobombs/qrackmin:qbdd &

docker build --no-cache -f dockerfiles/Dockerfile-vcl . -t twobombs/qrackmin:vcl > qrackmin:vcl && docker tag twobombs/qrackmin:vcl $HOSTNAME:5000/twobombs/qrackmin:vcl
docker push $HOSTNAME:5000/twobombs/qrackmin:vcl &

docker build --no-cache -f dockerfiles/Dockerfile-vcl-controller . -t twobombs/qrackmin:vcl-controller > qrackmin:vcl-controller && docker tag twobombs/qrackmin:vcl-controller $HOSTNAME:5000/twobombs/qrackmin:vcl-controller
docker push $HOSTNAME:5000/twobombs/qrackmin:vcl-controller

docker build --no-cache -f dockerfiles/Dockerfile-vcl-pocl . -t twobombs/qrackmin:vcl-pocl > qrackmin:vcl-controller && docker tag twobombs/qrackmin:vcl-pocl $HOSTNAME:5000/twobombs/qrackmin:vcl-pocl
docker push $HOSTNAME:5000/twobombs/qrackmin:vcl-pocl

docker stats
tail -f /dev/null
