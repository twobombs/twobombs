# this publishes all images to docker repo
# enter creds

# docker login

docker pull $HOSTNAME:5000/twobombs/thereminq-desktop
docker tag $HOSTNAME:5000/twobombs/thereminq-desktop twobombs/thereminq-desktop

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc twobombs/thereminq-hpc

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:1804
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:1804 twobombs/thereminq-hpc:1804

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:2004
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:2004 twobombs/thereminq-hpc:2004

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:2204
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:2204 twobombs/thereminq-hpc:2204

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:aws
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:aws twobombs/thereminq-hpc:aws

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:braket
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:braket twobombs/thereminq-hpc:braket

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:cuda
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:cuda twobombs/thereminq-hpc:cuda

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:pocl
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:pocl twobombs/thereminq-hpc:pocl

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:pyqrack
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:pyqrack twobombs/thereminq-hpc:pyqrack

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:qbdd
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:qbdd twobombs/thereminq-hpc:qbdd

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:qiskit
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:qiskit twobombs/thereminq-hpc:qiskit

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:vcl
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:vcl twobombs/thereminq-hpc:vcl

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:vcl-controller
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:vcl-controller twobombs/thereminq-hpc:vcl-controller

docker pull $HOSTNAME:5000/twobombs/thereminq-hpc:vcl-pocl
docker tag $HOSTNAME:5000/twobombs/thereminq-hpc:vcl-pocl twobombs/thereminq-hpc:vcl-pocl

docker pull $HOSTNAME:5000/twobombs/thereminq
docker tag $HOSTNAME:5000/twobombs/thereminq twobombs/thereminq

docker pull $HOSTNAME:5000/twobombs/thereminq:controller
docker tag $HOSTNAME:5000/twobombs/thereminq:controller twobombs/thereminq:controller

docker pull $HOSTNAME:5000/twobombs/thereminq:controller-all
docker tag $HOSTNAME:5000/twobombs/thereminq:controller-all twobombs/thereminq:controller-all

docker pull $HOSTNAME:5000/twobombs/thereminq:cuquantum
docker tag $HOSTNAME:5000/twobombs/thereminq:cuquantum twobombs/thereminq:cuquantum

docker pull $HOSTNAME:5000/twobombs/thereminq:dev
docker tag $HOSTNAME:5000/twobombs/thereminq:dev twobombs/thereminq:dev

docker pull $HOSTNAME:5000/twobombs/thereminq:overlay
docker tag $HOSTNAME:5000/twobombs/thereminq:overlay twobombs/thereminq:overlay

docker pull $HOSTNAME:5000/twobombs/thereminq:qimcifa
docker tag $HOSTNAME:5000/twobombs/thereminq:qimcifa twobombs/thereminq:qimcifa

docker pull $HOSTNAME:5000/twobombs/thereminq:sieve
docker tag $HOSTNAME:5000/twobombs/thereminq:sieve twobombs/thereminq:sieve

docker pull $HOSTNAME:5000/twobombs/thereminq:unittest
docker tag $HOSTNAME:5000/twobombs/thereminq:unittest twobombs/thereminq:unittest

docker pull $HOSTNAME:5000/twobombs/thereminq:vcl-controller-node
docker tag $HOSTNAME:5000/twobombs/thereminq:vcl-controller-node twobombs/thereminq:vcl-controller-node

docker pull $HOSTNAME:5000/twobombs/thereminq-bonsai
docker tag $HOSTNAME:5000/twobombs/thereminq-bonsai twobombs/thereminq-bonsai

docker pull $HOSTNAME:5000/twobombs/thereminq-bonsai:2204
docker tag $HOSTNAME:5000/twobombs/thereminq-bonsai:2204 twobombs/thereminq-bonsai:2204

docker pull $HOSTNAME:5000/twobombs/thereminq-bonsai:qft
docker tag pull $HOSTNAME:5000/twobombs/thereminq-bonsai:qft twobombs/thereminq-bonsai:qft

docker pull $HOSTNAME:5000/twobombs/thereminq-bonsai:realtime
docker tag $HOSTNAME:5000/twobombs/thereminq-bonsai:realtime twobombs/thereminq-bonsai:realtime

docker pull $HOSTNAME:5000/twobombs/thereminq-bonsai:supreme
docker tag $HOSTNAME:5000/twobombs/thereminq-bonsai:supreme twobombs/thereminq-bonsai:supreme

docker pull $HOSTNAME:5000/twobombs/thereminq-bonsai:tnnd
docker tag $HOSTNAME:5000/twobombs/thereminq-bonsai:tnnd twobombs/thereminq-bonsai:tnnd

docker pull $HOSTNAME:5000/twobombs/thereminq-bonsai:validation
docker tag $HOSTNAME:5000/twobombs/thereminq-bonsai:validation twobombs/thereminq-bonsai:validation

docker pull $HOSTNAME:5000/twobombs/thereminq-bonsai:llama
docker tag $HOSTNAME:5000/twobombs/thereminq-bonsai:llama twobombs/thereminq-bonsai:llama

docker pull $HOSTNAME:5000/twobombs/thereminq-bonsai:qcircuit
docker tag $HOSTNAME:5000/twobombs/thereminq-bonsai:qcircuit twobombs/thereminq-bonsai:qcircuit

docker pull $HOSTNAME:5000/twobombs/thereminq-bonsai:precooked
docker tag $HOSTNAME:5000/twobombs/thereminq-bonsai:precooked twobombs/thereminq-bonsai:precooked

docker pull $HOSTNAME:5000/twobombs/thereminq-tensors
docker tag $HOSTNAME:5000/twobombs/thereminq-tensors twobombs/thereminq-tensors

docker pull $HOSTNAME:5000/twobombs/thereminq-tensors:metal
docker tag $HOSTNAME:5000/twobombs/thereminq-tensors:metal twobombs/thereminq-tensors:metal

docker pull $HOSTNAME:5000/twobombs/thereminq-tensors:minimum
docker tag $HOSTNAME:5000/twobombs/thereminq-tensors:minimum twobombs/thereminq-tensors:minimum

docker pull $HOSTNAME:5000/twobombs/thereminq-tensors:quda
docker tag $HOSTNAME:5000/twobombs/thereminq-tensors:quda twobombs/thereminq-tensors:quda

docker pull $HOSTNAME:5000/twobombs/thereminq-tensors:shors
docker tag $HOSTNAME:5000/twobombs/thereminq-tensors:shors twobombs/thereminq-tensors:shors

docker pull $HOSTNAME:5000/twobombs/thereminq-llama
docker tag $HOSTNAME:5000/twobombs/thereminq-llama twobombs/thereminq-llama

docker pull $HOSTNAME:5000/twobombs/thereminq-llama:cli
docker tag $HOSTNAME:5000/twobombs/thereminq-llama:cli twobombs/thereminq-llama:cli

docker pull $HOSTNAME:5000/twobombs/thereminq-llama:chatui
docker tag $HOSTNAME:5000/twobombs/thereminq-llama:chatui twobombs/thereminq-llama:chatui

docker pull $HOSTNAME:5000/twobombs/thereminq-llama:agent
docker tag $HOSTNAME:5000/twobombs/thereminq-llama:agent twobombs/thereminq-llama:agent

docker pull $HOSTNAME:5000/twobombs/thereminq-llama:big-agency
docker tag $HOSTNAME:5000/twobombs/thereminq-llama:big-agency twobombs/thereminq-llama:big-agency

docker pull $HOSTNAME:5000/twobombs/thereminq-llama:chemistry
docker tag $HOSTNAME:5000/twobombs/thereminq-llama:chemistry twobombs/thereminq-llama:chemistry
