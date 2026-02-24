#!/bin/bash

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:1804
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:1804 twobombs/thereminq-hpc:1804
docker push twobombs/thereminq-hpc:1804 &

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:2004
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:2004 twobombs/thereminq-hpc:2004
docker push twobombs/thereminq-hpc:2004 &

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:2204
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:2204 twobombs/thereminq-hpc:2204
docker push twobombs/thereminq-hpc:2204 &

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:aws
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:aws twobombs/thereminq-hpc:aws
docker push twobombs/thereminq-hpc:aws &

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:braket
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:braket twobombs/thereminq-hpc:braket
docker push twobombs/thereminq-hpc:braket &

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:cuda
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:cuda twobombs/thereminq-hpc:cuda
docker push twobombs/thereminq-hpc:cuda &

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:pocl
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:pocl twobombs/thereminq-hpc:pocl
docker push twobombs/thereminq-hpc:pocl &

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:pyqrack
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:pyqrack twobombs/thereminq-hpc:pyqrack
docker push twobombs/thereminq-hpc:pyqrack &

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:qbdd
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:qndd twobombs/thereminq-hpc:qbdd
docker push twobombs/thereminq-hpc:qbdd &

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:qiskit
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:qiskit twobombs/thereminq-hpc:qiskit
docker push twobombs/thereminq-hpc:qiskit &

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:vcl
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:vcl twobombs/thereminq-hpc:vcl
docker push twobombs/thereminq-hpc:vcl &

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:vcl-controller
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:vcl-controller twobombs/thereminq-hpc:vcl-controller
docker push twobombs/thereminq-hpc:vcl-controller &

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:vcl-pocl
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:vcl-pocl twobombs/thereminq-hpc:vcl-pocl
docker push twobombs/thereminq-hpc:vcl-pocl &

