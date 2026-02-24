#!/bin/bash
#
# give docker time to spin up
sleep 20

cd qrackmin

docker build -f dockerfiles/Dockerfile . -t twobombs/thereminq-hpc > thereminq-hpc && docker tag twobombs/thereminq-hpc $HOSTNAME:5000/twobombs/thereminq-hpc 
docker push $HOSTNAME:5000/twobombs/thereminq-hpc &
docker build -f dockerfiles/Dockerfile-1804 . -t twobombs/thereminq-hpc:1804 > thereminq-hpc:1804 && docker tag twobombs/thereminq-hpc:1804 $HOSTNAME:5000/twobombs/thereminq-hpc:1804
docker push $HOSTNAME:5000/twobombs/thereminq-hpc:1804 &
docker build -f dockerfiles/Dockerfile-2004 . -t twobombs/thereminq-hpc:2004 > thereminq-hpc:2004 && docker tag twobombs/thereminq-hpc:2004 $HOSTNAME:5000/twobombs/thereminq-hpc:2004
docker push $HOSTNAME:5000/twobombs/thereminq-hpc:2004 &
docker build -f dockerfiles/Dockerfile-2204 . -t twobombs/thereminq-hpc:2204 > thereminq-hpc:2204 && docker tag twobombs/thereminq-hpc:2204 $HOSTNAME:5000/twobombs/thereminq-hpc:2204 
docker push $HOSTNAME:5000/twobombs/thereminq-hpc:2204 &

docker build -f dockerfiles/Dockerfile-aws . -t twobombs/thereminq-hpc:aws > thereminq-hpc:aws && docker tag twobombs/thereminq-hpc:aws $HOSTNAME:5000/twobombs/thereminq-hpc:aws && docker push $HOSTNAME:5000/twobombs/thereminq-hpc:aws &
docker build -f dockerfiles/Dockerfile-braket . -t twobombs/thereminq-hpc:braket > thereminq-hpc:braket && docker tag twobombs/thereminq-hpc:braket $HOSTNAME:5000/twobombs/thereminq-hpc:braket && docker push $HOSTNAME:5000/twobombs/thereminq-hpc:braket &
docker build -f dockerfiles/Dockerfile-cuda . -t twobombs/thereminq-hpc:cuda > thereminq-hpc:cuda && docker tag twobombs/thereminq-hpc:cuda $HOSTNAME:5000/twobombs/thereminq-hpc:cuda && docker push $HOSTNAME:5000/twobombs/thereminq-hpc:cuda &
docker build -f dockerfiles/Dockerfile-pocl . -t twobombs/thereminq-hpc:pocl > thereminq-hpc:pocl docker tag twobombs/thereminq-hpc:pocl $HOSTNAME:5000/twobombs/thereminq-hpc:pocl && docker push $HOSTNAME:5000/twobombs/thereminq-hpc:pocl &
docker build -f dockerfiles/Dockerfile-pyqrack . -t twobombs/thereminq-hpc:pyqrack > thereminq-hpc:pyqrack && docker tag twobombs/thereminq-hpc:pyqrack $HOSTNAME:5000/twobombs/thereminq-hpc:pyqrack && docker push $HOSTNAME:5000/twobombs/thereminq-hpc:pyqrack &
docker build -f dockerfiles/Dockerfile-qbdd . -t twobombs/thereminq-hpc:qbdd > thereminq-hpc:qbdd && docker tag twobombs/thereminq-hpc:qbdd $HOSTNAME:5000/twobombs/thereminq-hpc:qbdd && docker push $HOSTNAME:5000/twobombs/thereminq-hpc:qbdd &
docker build -f dockerfiles/Dockerfile-vcl . -t twobombs/thereminq-hpc:vcl > thereminq-hpc:vcl && docker tag twobombs/thereminq-hpc:vcl $HOSTNAME:5000/twobombs/thereminq-hpc:vcl
docker push $HOSTNAME:5000/twobombs/thereminq-hpc:vcl &

docker build -f dockerfiles/Dockerfile-vcl-controller . -t twobombs/thereminq-hpc:vcl-controller > thereminq-hpc:vcl-controller && docker tag twobombs/thereminq-hpc:vcl-controller $HOSTNAME:5000/twobombs/thereminq-hpc:vcl-controller
docker push $HOSTNAME:5000/twobombs/thereminq-hpc:vcl-controller
docker build -f dockerfiles/Dockerfile-vcl-pocl . -t twobombs/thereminq-hpc:vcl-pocl > thereminq-hpc:vcl-controller && docker tag twobombs/thereminq-hpc:vcl-pocl $HOSTNAME:5000/twobombs/thereminq-hpc:vcl-pocl
docker push $HOSTNAME:5000/twobombs/thereminq-hpc:vcl-pocl



docker stats
tail -f /dev/null
