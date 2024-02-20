#!/bin/bash

git clone https://github.com/twobombs/deploy-nvidia-docker.git
git clone https://github.com/twobombs/cudacluster.git
git clone https://github.com/twobombs/qrackmin.git

git clone https://github.com/twobombs/thereminq.git
git clone https://github.com/twobombs/thereminq-bonsai.git
git clone https://github.com/twobombs/thereminq-tensors.git
git clone https://github.com/twobombs/thereminq-llama.git

cd /deploy-nvidia-docker
docker build ./Dockerfile -t twobombs/deploy-nvidia-docker
docker build ./Dockerfile-dev -t twobombs/deploy-nvidia-docker:dev
docker build ./Dockerfile-minimum -t twobombs/deploy-nvidia-docker:minimum

cd /cudacluster
docker build ./Dockerfile -t twobombs/cudacluster
docker build ./Dockerfile-dev -t twobombs/cudacluster:dev
docker build ./Dockerfile-gaming -t twobombs/cudacluster-gaming
docker build ./Dockerfile-hpc -t twobombs/cudacluster-hpc
docker build ./Dockerfile-samples -t twobombs/cudacluster-samples
docker build ./Dockerfile-vulcan -t twobombs/cudacluster-vulcan

cd /qrackmin

cd /thereminq
cd /thereminq-bonsai
cd /thereminq-tensor
cd /thereminq-llama
