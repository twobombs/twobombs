#!/bin/bash

docker pull $HOSTNAME:5000/twobombs/qrackmin:1804
docker tag $HOSTNAME:5000/twobombs/qrackmin:1804 twobombs/qrackmin:1804
docker push twobombs/qrackmin:1804 &

docker pull $HOSTNAME:5000/twobombs/qrackmin:2004
docker tag $HOSTNAME:5000/twobombs/qrackmin:2004 twobombs/qrackmin:2004
docker push twobombs/qrackmin:2004 &

docker pull $HOSTNAME:5000/twobombs/qrackmin:2204
docker tag $HOSTNAME:5000/twobombs/qrackmin:2204 twobombs/qrackmin:2204
docker push twobombs/qrackmin:2204 &

docker pull $HOSTNAME:5000/twobombs/qrackmin:aws
docker tag $HOSTNAME:5000/twobombs/qrackmin:aws twobombs/qrackmin:aws
docker push twobombs/qrackmin:aws &

docker pull $HOSTNAME:5000/twobombs/qrackmin:braket
docker tag $HOSTNAME:5000/twobombs/qrackmin:braket twobombs/qrackmin:braket
docker push twobombs/qrackmin:braket &

docker pull $HOSTNAME:5000/twobombs/qrackmin:cuda
docker tag $HOSTNAME:5000/twobombs/qrackmin:cuda twobombs/qrackmin:cuda
docker push twobombs/qrackmin:cuda &

docker pull $HOSTNAME:5000/twobombs/qrackmin:pocl
docker tag $HOSTNAME:5000/twobombs/qrackmin:pocl twobombs/qrackmin:pocl
docker push twobombs/qrackmin:pocl &

docker pull $HOSTNAME:5000/twobombs/qrackmin:pyqrack
docker tag $HOSTNAME:5000/twobombs/qrackmin:pyqrack twobombs/qrackmin:pyqrack
docker push twobombs/qrackmin:pyqrack &

docker pull $HOSTNAME:5000/twobombs/qrackmin:qbdd
docker tag $HOSTNAME:5000/twobombs/qrackmin:qndd twobombs/qrackmin:qbdd
docker push twobombs/qrackmin:qbdd &

docker pull $HOSTNAME:5000/twobombs/qrackmin:qiskit
docker tag $HOSTNAME:5000/twobombs/qrackmin:qiskit twobombs/qrackmin:qiskit
docker push twobombs/qrackmin:qiskit &

docker pull $HOSTNAME:5000/twobombs/qrackmin:vcl
docker tag $HOSTNAME:5000/twobombs/qrackmin:vcl twobombs/qrackmin:vcl
docker push twobombs/qrackmin:vcl &

docker pull $HOSTNAME:5000/twobombs/qrackmin:vcl-controller
docker tag $HOSTNAME:5000/twobombs/qrackmin:vcl-controller twobombs/qrackmin:vcl-controller
docker push twobombs/qrackmin:vcl-controller &

docker pull $HOSTNAME:5000/twobombs/qrackmin:vcl-pocl
docker tag $HOSTNAME:5000/twobombs/qrackmin:vcl-pocl twobombs/qrackmin:vcl-pocl
docker push twobombs/qrackmin:vcl-pocl &

