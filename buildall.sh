#!/bin/bash
# waterfall build this
# will eat your machine
# 
# runs on dind ubuntu version 
# https://github.com/cruizba/ubuntu-dind 

# docker run -it --privileged twobombs/twobombs /buildall.sh

docker buildx prune -a -f
# docker rm $(docker ps -aq)
# docker rmi $(docker images -aq)

rm build -R
mkdir build && cd build

git clone https://github.com/twobombs/deploy-nvidia-docker.git
git clone https://github.com/twobombs/cudacluster.git
git clone https://github.com/twobombs/qrackmin.git

git clone https://github.com/twobombs/thereminq.git
git clone https://github.com/twobombs/thereminq-bonsai.git
git clone https://github.com/twobombs/thereminq-tensors.git
git clone https://github.com/twobombs/thereminq-llama.git

cd deploy-nvidia-docker
docker build --no-cache -f Dockerfile . -t twobombs/deploy-nvidia-docker > deploy-nvidia-docker &
docker build --no-cache -f Dockerfile-dev . -t twobombs/deploy-nvidia-docker:dev > deploy-nvidia-docker:dev &
docker build --no-cache -f Dockerfile-minimum . -t twobombs/deploy-nvidia-docker:minimum > deploy-nvidia-docker:minimum &

cd .. && cd cudacluster
docker build --no-cache -f Dockerfile . -t twobombs/cudacluster > cudacluster &
docker build --no-cache -f Dockerfile-dev . -t twobombs/cudacluster:dev > cudacluster:dev &
docker build --no-cache -f Dockerfile-hpc . -t twobombs/cudacluster:hpc > cudacluster:hpc &
docker build --no-cache -f Dockerfile-samples . -t twobombs/cudacluster:samples > cudacluster:samples &
docker build --no-cache -f Dockerfile-vulcan . -t twobombs/cudacluster:vulcan > cudacluster:vulcan &

docker build --no-cache -f Dockerfile-gaming . -t twobombs/cudacluster:gaming > cudacluster:gaming &

cd .. && cd qrackmin/dockerfiles
docker build --no-cache -f Dockerfile . -t twobombs/qrackmin > qrackmin &
docker build --no-cache -f Dockerfile-1804 . -t twobombs/qrackmin:1804 > qrackmin:1804 &
docker build --no-cache -f Dockerfile-2004 . -t twobombs/qrackmin:2004 > qrackmin:2004 &
docker build --no-cache -f Dockerfile-2204 . -t twobombs/qrackmin:2204 > qrackmin:2204 &

docker build --no-cache -f Dockerfile-aws . -t twobombs/qrackmin:aws > qrackmin:aws &
docker build --no-cache -f Dockerfile-braket . -t twobombs/qrackmin:braket > qrackmin:braket &

docker build --no-cache -f Dockerfile-cuda . -t twobombs/qrackmin:cuda > qrackmin:cuda &
docker build --no-cache -f Dockerfile-pocl . -t twobombs/qrackmin:pocl > qrackmin:pocl &
docker build --no-cache -f Dockerfile-pyqrack . -t twobombs/qrackmin:pyqrack > qrackmin:pyqrack &
docker build --no-cache -f Dockerfile-qiskit . -t twobombs/qrackmin:qiskit > qrackmin:qiskit &

docker build --no-cache -f Dockerfile-vcl . -t twobombs/qrackmin:vcl > qrackmin:vcl &
docker build --no-cache -f Dockerfile-vcl-controller . -t twobombs/qrackmin:vcl-controller > qrackmin:vcl-controller &
docker build --no-cache -f Dockerfile-vcl-pocl . -t twobombs/qrackmin:vcl-pocl > qrackmin:vcl-controller &

cd .. && cd .. && cd thereminq/Dockerfiles
docker build --no-cache -f Dockerfile . -t twobombs/thereminq > thereminq &
docker build --no-cache -f Dockerfile-controller . -t twobombs/thereminq:controller > thereminq:controller &
docker build --no-cache -f Dockerfile-controller-all . -t twobombs/thereminq:controller-all > thereminq:controller-all &
docker build --no-cache -f Dockerfile-cuquantum . -t twobombs/thereminq:cuquantum > thereminq:cuquantum &
docker build --no-cache -f Dockerfile-dev . -t twobombs/thereminq:dev > thereminq:dev &

docker build --no-cache -f Dockerfile-overlay . -t twobombs/thereminq:overlay > thereminq:overlay &
docker build --no-cache -f Dockerfile-qimcifa . -t twobombs/thereminq:qimcifa > thereminq:qimcifa &
docker build --no-cache -f Dockerfile-sieve . -t twobombs/thereminq:sieve > thereminq:sieve &
docker build --no-cache -f Dockerfile-unittest . -t twobombs/thereminq:unittest > thereminq:unittest &
docker build --no-cache -f Dockerfile-vcl-controller-node . -t twobombs/thereminq:vcl-controller-node > thereminq:vcl-controller-node &

cd .. && cd .. && cd thereminq-bonsai/Dockerfiles
docker build --no-cache -f Dockerfile . -t twobombs/thereminq-bonsai > thereminq-bonsai &
docker build --no-cache -f Dockerfile-2204 . -t twobombs/thereminq-bonsai:2204 > thereminq-bonsai:2204 &

docker build --no-cache -f Dockerfile-bonsai-qft . -t twobombs/thereminq-bonsai:qft > thereminq-bonsai:qft &
docker build --no-cache -f Dockerfile-bonsai-realtime . -t twobombs/thereminq-bonsai:realtime > thereminq-bonsai:realtime &
docker build --no-cache -f Dockerfile-bonsai-supreme . -t twobombs/thereminq-bonsai:supreme > thereminq-bonsai:supreme &
docker build --no-cache -f Dockerfile-bonsai-tnnd . -t twobombs/thereminq-bonsai:tnnd > thereminq-bonsai:tnnd &
docker build --no-cache -f Dockerfile-bonsai-validation . -t twobombs/thereminq-bonsai:validation > thereminq-bonsai:validation &
docker build --no-cache -f Dockerfile-bonsai-llama . -t twobombs/thereminq-bonsai:llama > thereminq-bonsai:llama &
docker build --no-cache -f Dockerfile-bonsai-qcircuit . -t twobombs/thereminq-bonsai:qcircuit > thereminq-bonsai:qcircuit &
docker build --no-cache -f Dockerfile-bonsai-precooked . -t twobombs/thereminq-bonsai:precooked > thereminq-bonsai:precooked &

cd .. && cd .. && cd thereminq-tensors/Dockerfiles
docker build --no-cache -f Dockerfile . -t twobombs/thereminq-tensor > thereminq-tensor &
docker build --no-cache -f Dockerfile-metal . -t twobombs/thereminq-tensor:metal > thereminq-tensor:metal &
docker build --no-cache -f Dockerfile-minimum . -t twobombs/thereminq-tensor:minimum > thereminq-tensor:minimum &
docker build --no-cache -f Dockerfile-quda . -t twobombs/thereminq-tensor:quda > thereminq-tensor:quda &
docker build --no-cache -f Dockerfile-shors . -t twobombs/thereminq-tensor:shors > thereminq-tensor:shors &

cd .. && cd .. && cd thereminq-llama/Dockerfiles
docker build --no-cache -f Dockerfile . -t twobombs/thereminq-llama > thereminq-llama &
docker build --no-cache -f Dockerfile-cassandra . -t twobombs/thereminq-llama:cassandra > thereminq-llama:cassandra &
docker build --no-cache -f Dockerfile-chatui . -t twobombs/thereminq-llama:chatui > thereminq-llama:chatui &
docker build --no-cache -f Dockerfile-cli . -t twobombs/thereminq-llama:cli > thereminq-llama:cli &
docker build --no-cache -f Dockerfile-cuda . -t twobombs/thereminq-llama:cuda > thereminq-llama:cuda &

docker build --no-cache -f Dockerfile-elastic . -t twobombs/thereminq-llama:elastic > thereminq-llama:elastic &
docker build --no-cache -f Dockerfile-langchain . -t twobombs/thereminq-llama:langchain > thereminq-llama:langchain &
docker build --no-cache -f Dockerfile-opencl . -t twobombs/thereminq-llama:opencl > thereminq-llama:opencl &
docker build --no-cache -f Dockerfile-orchestrate . -t twobombs/thereminq-llama:orchestrate > thereminq-llama:orchestrate &
docker build --no-cache -f Dockerfile-spark . -t twobombs/thereminq-llama:spark > thereminq-llama:spark &
docker build --no-cache -f Dockerfile-unittest . -t twobombs/thereminq-llama:unittest > thereminq-llama:unittest &
