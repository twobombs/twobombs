#!/bin/bash
# waterfall build this
# will eat your machine

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
docker build -f Dockerfile . -t twobombs/deploy-nvidia-docker > deploy-nvidia-docker 
docker build -f Dockerfile-dev . -t twobombs/deploy-nvidia-docker:dev > deploy-nvidia-docker:dev 

docker build -f Dockerfile-minimum . -t twobombs/deploy-nvidia-docker:minimum > > deploy-nvidia-docker:minimum 

cd .. && cd cudacluster
docker build -f Dockerfile . -t twobombs/cudacluster > cudacluster 
docker build -f Dockerfile-dev . -t twobombs/cudacluster:dev > cudacluster:dev 
docker build -f Dockerfile-hpc . -t twobombs/cudacluster:hpc > cudacluster:hpc 
docker build -f Dockerfile-samples . -t twobombs/cudacluster:samples > cudacluster:samples 
docker build -f Dockerfile-vulcan . -t twobombs/cudacluster:vulcan > cudacluster:vulcan

docker build -f Dockerfile-gaming . -t twobombs/cudacluster:gaming > cudacluster:gaming 

cd .. && cd qrackmin/dockerfiles
docker build -f Dockerfile . -t twobombs/qrackmin > qrackmin 
docker build -f Dockerfile-1804 . -t twobombs/qrackmin:1804 > qrackmin:1804 
docker build -f Dockerfile-2004 . -t twobombs/qrackmin:2004 > qrackmin:2004 
docker build -f Dockerfile-2204 . -t twobombs/qrackmin:2204 > qrackmin:2204 

docker build -f Dockerfile-aws . -t twobombs/qrackmin:aws > qrackmin:aws 
docker build -f Dockerfile-braket . -t twobombs/qrackmin:braket > qrackmin:braket 

docker build -f Dockerfile-cuda . -t twobombs/qrackmin:cuda > qrackmin:cuda 
docker build -f Dockerfile-pocl . -t twobombs/qrackmin:pocl > qrackmin:pocl 
docker build -f Dockerfile-pyqrack . -t twobombs/qrackmin:pyqrack > qrackmin:pyqrack 
docker build -f Dockerfile-qiskit . -t twobombs/qrackmin:qiskit > > qrackmin:qiskit 

docker build -f Dockerfile-vcl . -t twobombs/qrackmin:vcl > qrackmin:vcl 
docker build -f Dockerfile-vcl-controller . -t twobombs/qrackmin:vcl-controller > qrackmin:vcl-controller 
docker build -f Dockerfile-vcl-pocl . -t twobombs/qrackmin:vcl-pocl > qrackmin:vcl-controller 

cd .. && cd .. && cd thereminq/Dockerfiles
docker build -f Dockerfile . -t twobombs/thereminq > thereminq 
docker build -f Dockerfile-controller . -t twobombs/thereminq:controller > thereminq:controller 
docker build -f Dockerfile-controller-all . -t twobombs/thereminq:controller-all > thereminq:controller-all 
docker build -f Dockerfile-cuquantum . -t twobombs/thereminq:cuquantum > > thereminq:cuquantum 
docker build -f Dockerfile-dev . -t twobombs/thereminq:dev > thereminq:dev 

docker build -f Dockerfile-overlay . -t twobombs/thereminq:overlay > thereminq:overlay 
docker build -f Dockerfile-qimcifa . -t twobombs/thereminq:qimcifa > thereminq:qimcifa 
docker build -f Dockerfile-sieve . -t twobombs/thereminq:sieve > thereminq:sieve 
docker build -f Dockerfile-unittest . -t twobombs/thereminq:unittest > thereminq:unittest 
docker build -f Dockerfile-vcl-controller-node . -t twobombs/thereminq:vcl-controller-node > thereminq:vcl-controller-node 

cd .. && cd .. && cd thereminq-bonsai/Dockerfiles
docker build -f Dockerfile . -t twobombs/thereminq-bonsai > thereminq-bonsai 
docker build -f Dockerfile-2204 . -t twobombs/thereminq-bonsai:2204 > thereminq-bonsai:2204

docker build -f Dockerfile-bonsai-qft . -t twobombs/thereminq-bonsai:qft > thereminq-bonsai:qft 
docker build -f Dockerfile-bonsai-realtime . -t twobombs/thereminq-bonsai:realtime > thereminq-bonsai:realtime 
docker build -f Dockerfile-bonsai-supreme . -t twobombs/thereminq-bonsai:supreme > thereminq-bonsai:supreme 
docker build -f Dockerfile-bonsai-tnnd . -t twobombs/thereminq-bonsai:tnnd > thereminq-bonsai:tnnd 
docker build -f Dockerfile-bonsai-validation . -t twobombs/thereminq-bonsai:validation > thereminq-bonsai:validation 
docker build -f Dockerfile-bonsai-llama . -t twobombs/thereminq-bonsai:llama > thereminq-bonsai:llama 
docker build -f Dockerfile-bonsai-qcircuit . -t twobombs/thereminq-bonsai:qcircuit > thereminq-bonsai:qcircuit 
docker build -f Dockerfile-bonsai-precooked . -t twobombs/thereminq-bonsai:precooked > thereminq-bonsai:precooked 

cd .. && cd .. && cd thereminq-tensors/Dockerfiles
docker build -f Dockerfile . -t twobombs/thereminq-tensor > thereminq-tensor 
docker build -f Dockerfile-metal . -t twobombs/thereminq-tensor:metal > thereminq-tensor:metal 
docker build -f Dockerfile-minimum . -t twobombs/thereminq-tensor:minimum > thereminq-tensor:minimum 
docker build -f Dockerfile-quda . -t twobombs/thereminq-tensor:quda > thereminq-tensor:quda 
docker build -f Dockerfile-shors . -t twobombs/thereminq-tensor:shors > thereminq-tensor:shors 

cd .. && cd .. && cd thereminq-llama/Dockerfiles
docker build -f Dockerfile . -t twobombs/thereminq-llama > thereminq-llama 
docker build -f Dockerfile-cassandra . -t twobombs/thereminq-llama:cassandra > thereminq-llama:cassandra 
docker build -f Dockerfile-chatui . -t twobombs/thereminq-llama:chatui > thereminq-llama:chatui 
docker build -f Dockerfile-cli . -t twobombs/thereminq-llama:cli > thereminq-llama:cli 
docker build -f Dockerfile-cuda . -t twobombs/thereminq-llama:cuda > thereminq-llama:cuda 

docker build -f Dockerfile-elastic . -t twobombs/thereminq-llama:elastic > thereminq-llama:elastic 
docker build -f Dockerfile-langchain . -t twobombs/thereminq-llama:langchain > thereminq-llama:langchain 
docker build -f Dockerfile-opencl . -t twobombs/thereminq-llama:opencl > thereminq-llama:opencl 
docker build -f Dockerfile-orchestrate . -t twobombs/thereminq-llama:orchestrate > thereminq-llama:orchestrate 
docker build -f Dockerfile-spark . -t twobombs/thereminq-llama:spark > thereminq-llama:spark 
docker build -f Dockerfile-unittest . -t twobombs/thereminq-llama:unittest > thereminq-llama:unittest 

