#!/bin/bash
#

cd qrackmin

docker build --no-cache -f dockerfiles/Dockerfile-cuda . -t twobombs/qrackmin:cuda > qrackmin:cuda && docker tag twobombs/qrackmin:cuda $HOSTNAME:5000/twobombs/qrackmin:cuda && docker push $HOSTNAME:5000/twobombs/qrackmin:cuda
docker build --no-cache -f dockerfiles/Dockerfile-pocl . -t twobombs/qrackmin:pocl > qrackmin:pocl docker tag twobombs/qrackmin:pocl $HOSTNAME:5000/twobombs/qrackmin:pocl && docker push $HOSTNAME:5000/twobombs/qrackmin:pocl
docker build --no-cache -f dockerfiles/Dockerfile-pyqrack . -t twobombs/qrackmin:pyqrack > qrackmin:pyqrack && docker tag twobombs/qrackmin:pyqrack $HOSTNAME:5000/twobombs/qrackmin:pyqrack && docker push $HOSTNAME:5000/twobombs/qrackmin:pyqrack
docker build --no-cache -f dockerfiles/Dockerfile-qiskit . -t twobombs/qrackmin:qiskit > qrackmin:qiskit && docker tag twobombs/qrackmin:qiskit $HOSTNAME:5000/twobombs/qrackmin:qiskit && docker push $HOSTNAME:5000/twobombs/qrackmin:qiskit
docker build --no-cache -f dockerfiles/Dockerfile-vcl . -t twobombs/qrackmin:vcl > qrackmin:vcl && docker tag twobombs/qrackmin:vcl $HOSTNAME:5000/twobombs/qrackmin:vcl && docker push $HOSTNAME:5000/twobombs/qrackmin:vcl
docker build --no-cache -f dockerfiles/Dockerfile-vcl-controller . -t twobombs/qrackmin:vcl-controller > qrackmin:vcl-controller && docker tag twobombs/qrackmin:vcl-controller $HOSTNAME:5000/twobombs/qrackmin:vcl-controller && docker push $HOSTNAME:5000/twobombs/qrackmin:vcl-controller
docker build --no-cache -f dockerfiles/Dockerfile-vcl-pocl . -t twobombs/qrackmin:vcl-pocl > qrackmin:vcl-controller && docker tag twobombs/qrackmin:vcl-pocl $HOSTNAME:5000/twobombs/qrackmin:vcl-pocl && docker push $HOSTNAME:5000/twobombs/qrackmin:vcl-pocl

tail -f /dev/null
