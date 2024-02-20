#!/bin/bash
# waterfall build this
# will eat your machine

git clone https://github.com/twobombs/deploy-nvidia-docker.git
git clone https://github.com/twobombs/cudacluster.git
git clone https://github.com/twobombs/qrackmin.git

git clone https://github.com/twobombs/thereminq.git
git clone https://github.com/twobombs/thereminq-bonsai.git
git clone https://github.com/twobombs/thereminq-tensors.git
git clone https://github.com/twobombs/thereminq-llama.git

cd /deploy-nvidia-docker
docker build -f Dockerfile . -t twobombs/deploy-nvidia-docker
docker build -f Dockerfile-dev . -t twobombs/deploy-nvidia-docker:dev
docker build -f Dockerfile-minimum . -t twobombs/deploy-nvidia-docker:minimum

cd /cudacluster
docker build -f Dockerfile . -t twobombs/cudacluster
docker build -f Dockerfile-dev . -t twobombs/cudacluster:dev
docker build -f Dockerfile-gaming . -t twobombs/cudacluster:gaming
docker build -f Dockerfile-hpc . -t twobombs/cudacluster:hpc
docker build -f Dockerfile-samples . -t twobombs/cudacluster:samples
docker build -f Dockerfile-vulcan . -t twobombs/cudacluster:vulcan

cd /qrackmin/Dockerfiles
docker build -f Dockerfile . -t twobombs/qrackmin
docker build -f Dockerfile-1804 . -t twobombs/qrackmin:1804
docker build -f Dockerfile-2004 . -t twobombs/qrackmin:2004
docker build -f Dockerfile-2204 . -t twobombs/qrackmin:2204
docker build -f Dockerfile-aws . -t twobombs/qrackmin:aws
docker build -f Dockerfile-braket . -t twobombs/qrackmin:braket
docker build -f Dockerfile-cuda . -t twobombs/qrackmin:cuda
docker build -f Dockerfile-pocl . -t twobombs/qrackmin:pocl
docker build -f Dockerfile-pyqrack . -t twobombs/qrackmin:pyqrack
docker build -f Dockerfile-qiskit . -t twobombs/qrackmin:qiskit
docker build -f Dockerfile-vcl . -t twobombs/qrackmin:vcl
docker build -f Dockerfile-vcl-controller . -t twobombs/qrackmin:vcl-controller
docker build -f Dockerfile-vcl-pocl . -t twobombs/qrackmin:vcl-pocl

cd /thereminq/Dockerfiles
docker build -f Dockerfile . -t twobombs/thereminq
docker build -f Dockerfile-controller . -t twobombs/thereminq:controller
docker build -f Dockerfile-controller-all . -t twobombs/thereminq:controller-all
docker build -f Dockerfile-cuquantum . -t twobombs/thereminq:cuquantum
docker build -f Dockerfile-dev . -t twobombs/thereminq:dev
docker build -f Dockerfile-overlay . -t twobombs/thereminq:overlay
docker build -f Dockerfile-qimcifa . -t twobombs/thereminq:qimcifa
docker build -f Dockerfile-sieve . -t twobombs/thereminq:sieve
docker build -f Dockerfile-unittest . -t twobombs/thereminq:unittest
docker build -f Dockerfile-vcl-controller-node . -t twobombs/thereminq:vcl-controller-node

cd /thereminq-bonsai/Dockerfiles
docker build -f Dockerfile . -t twobombs/thereminq-bonsai
docker build -f Dockerfile-2204 . -t twobombs/thereminq-bonsai:2204
docker build -f Dockerfile-bonsai-qft . -t twobombs/thereminq-bonsai:qft
docker build -f Dockerfile-bonsai-realtime . -t twobombs/thereminq-bonsai:realtime
docker build -f Dockerfile-bonsai-supreme . -t twobombs/thereminq-bonsai:supreme
docker build -f Dockerfile-bonsai-tnnd . -t twobombs/thereminq-bonsai:tnnd
docker build -f Dockerfile-bonsai-validation . -t twobombs/thereminq-bonsai:validation
docker build -f Dockerfile-bonsai-llama . -t twobombs/thereminq-bonsai:llama
docker build -f Dockerfile-bonsai-qcircuit . -t twobombs/thereminq-bonsai:qcircuit
docker build -f Dockerfile-bonsai-precooked . -t twobombs/thereminq-bonsai:precooked

cd /thereminq-tensors/Dockerfiles
docker build -f Dockerfile . -t twobombs/thereminq-tensor
docker build -f Dockerfile-metal . -t twobombs/thereminq-tensor:metal
docker build -f Dockerfile-minimum . -t twobombs/thereminq-tensor:minimum
docker build -f Dockerfile-quda . -t twobombs/thereminq-tensor:quda
docker build -f Dockerfile-shors . -t twobombs/thereminq-tensor:shors

cd /thereminq-llama/Dockerfiles
docker build -f Dockerfile . -t twobombs/thereminq-llama
docker build -f Dockerfile-cassandra . -t twobombs/thereminq-llama:cassandra
docker build -f Dockerfile-chatui . -t twobombs/thereminq-llama:chatui
docker build -f Dockerfile-cli . -t twobombs/thereminq-llama:cli
docker build -f Dockerfile-cuda . -t twobombs/thereminq-llama:cuda
docker build -f Dockerfile-elastic . -t twobombs/thereminq-llama:elastic
docker build -f Dockerfile-langchain . -t twobombs/thereminq-llama:langchain
docker build -f Dockerfile-opencl . -t twobombs/thereminq-llama:opencl
docker build -f Dockerfile-orchestrate . -t twobombs/thereminq-llama:orchestrate
docker build -f Dockerfile-spark . -t twobombs/thereminq-llama:spark
docker build -f Dockerfile-unittest . -t twobombs/thereminq-llama:unittest


