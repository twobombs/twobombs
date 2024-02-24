#!/bin/bash
# waterfall build this
# will eat your machine
# 
# runs on dind ubuntu version 
# https://github.com/cruizba/ubuntu-dind 

# docker run -it --privileged twobombs/twobombs /buildall.sh

cd qrackmin

docker build --no-cache -f dockerfiles/Dockerfile-cuda . -t twobombs/qrackmin:cuda > qrackmin:cuda
docker build --no-cache -f dockerfiles/Dockerfile-pocl . -t twobombs/qrackmin:pocl > qrackmin:pocl
docker build --no-cache -f dockerfiles/Dockerfile-pyqrack . -t twobombs/qrackmin:pyqrack > qrackmin:pyqrack
docker build --no-cache -f dockerfiles/Dockerfile-qiskit . -t twobombs/qrackmin:qiskit > qrackmin:qiskit
docker build --no-cache -f dockerfiles/Dockerfile-vcl . -t twobombs/qrackmin:vcl > qrackmin:vcl
docker build --no-cache -f dockerfiles/Dockerfile-vcl-controller . -t twobombs/qrackmin:vcl-controller > qrackmin:vcl-controller
docker build --no-cache -f dockerfiles/Dockerfile-vcl-pocl . -t twobombs/qrackmin:vcl-pocl > qrackmin:vcl-controller

tail -f /dev/null
