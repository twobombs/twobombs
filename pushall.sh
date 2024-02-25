# this publishes all images to docker repo
# enter creds

docker login

docker pull $HOSTNAME:5000/twobombs/deploy-nvidia-docker
docker tag $HOSTNAME:5000/twobombs/deploy-nvidia-docker twobombs/deploy-nvidia-docker
docker push twobombs/deploy-nvidia-docker

docker pull $HOSTNAME:5000/twobombs/deploy-nvidia-docker:dev
docker tag $HOSTNAME:5000/twobombs/deploy-nvidia-docker:dev twobombs/deploy-nvidia-docker:dev
docker push twobombs/deploy-nvidia-docker:dev

docker pull $HOSTNAME:5000/twobombs/deploy-nvidia-docker:minimum
docker tag $HOSTNAME:5000/twobombs/deploy-nvidia-docker:minimum twobombs/deploy-nvidia-docker:minimum
docker push twobombs/deploy-nvidia-docker:minimum

docker pull $HOSTNAME:5000/twobombs/cudacluster
docker tag $HOSTNAME:5000/twobombs/cudacluster twobombs/cudacluster
docker push twobombs/cudacluster

docker pull $HOSTNAME:5000/twobombs/cudacluster:dev
docker tag $HOSTNAME:5000/twobombs/cudacluster:dev twobombs/cudacluster:dev
docker push twobombs/cudacluster:dev

docker pull $HOSTNAME:5000/twobombs/cudacluster:hpc
docker tag $HOSTNAME:5000/twobombs/cudacluster:hpc twobombs/cudacluster:hpc
docker push twobombs/cudacluster:hpc

docker pull $HOSTNAME:5000/twobombs/cudacluster:samples
docker tag $HOSTNAME:5000/twobombs/cudacluster:samples twobombs/cudacluster:samples
docker push twobombs/cudacluster:samples

docker pull $HOSTNAME:5000/twobombs/cudacluster:vulcan
docker tag $HOSTNAME:5000/twobombs/cudacluster:vulcan twobombs/cudacluster:vulcan
docker push twobombs/cudacluster:vulcan

docker pull $HOSTNAME:5000/twobombs/cudacluster:gaming
docker tag $HOSTNAME:5000/twobombs/cudacluster:gaming twobombs/cudacluster:gaming
docker push twobombs/cudacluster:gaming

docker pull $HOSTNAME:5000/twobombs/qrackmin
docker tag $HOSTNAME:5000/twobombs/qrackmin twobombs/qrackmin
docker push twobombs/qrackmin

docker pull $HOSTNAME:5000/twobombs/qrackmin:1804
docker tag $HOSTNAME:5000/twobombs/qrackmin:1804 twobombs/qrackmin:1804
docker push twobombs/qrackmin:1804

docker pull $HOSTNAME:5000/twobombs/qrackmin:2004
docker tag $HOSTNAME:5000/twobombs/qrackmin:2004 twobombs/qrackmin:2004
docker push twobombs/qrackmin:2004

docker pull $HOSTNAME:5000/twobombs/qrackmin:2204
docker tag $HOSTNAME:5000/twobombs/qrackmin:2204 twobombs/qrackmin:2204
docker push twobombs/qrackmin:2204

docker pull $HOSTNAME:5000/twobombs/qrackmin:aws
docker tag $HOSTNAME:5000/twobombs/qrackmin:aws twobombs/qrackmin:aws
docker push twobombs/qrackmin:aws

docker pull $HOSTNAME:5000/twobombs/qrackmin:braket
docker tag $HOSTNAME:5000/twobombs/qrackmin:braket twobombs/qrackmin:braket
docker push twobombs/qrackmin:braket

docker pull $HOSTNAME:5000/twobombs/qrackmin:cuda
docker tag $HOSTNAME:5000/twobombs/qrackmin:cuda twobombs/qrackmin:cuda
docker push twobombs/qrackmin:cuda

docker pull $HOSTNAME:5000/twobombs/qrackmin:pocl
docker tag $HOSTNAME:5000/twobombs/qrackmin:pocl twobombs/qrackmin:pocl
docker push twobombs/qrackmin:pocl

docker pull $HOSTNAME:5000/twobombs/qrackmin:pyqrack
docker tag $HOSTNAME:5000/twobombs/qrackmin:pyqrack twobombs/qrackmin:pyqrack
docker push twobombs/qrackmin:pyqrack

docker pull $HOSTNAME:5000/twobombs/qrackmin:qiskit
docker tag $HOSTNAME:5000/twobombs/qrackmin:qiskit twobombs/qrackmin:qiskit
docker push twobombs/qrackmin:qiskit

docker pull $HOSTNAME:5000/twobombs/qrackmin:vcl
docker tag $HOSTNAME:5000/twobombs/qrackmin:vcl twobombs/qrackmin:vcl
docker push twobombs/qrackmin:vcl

docker pull $HOSTNAME:5000/twobombs/qrackmin:vcl-controller
docker tag $HOSTNAME:5000/twobombs/qrackmin:vcl-controller twobombs/qrackmin:vcl-controller
docker push twobombs/qrackmin:vcl-controller

docker pull $HOSTNAME:5000/twobombs/qrackmin:vcl-pocl
docker tag $HOSTNAME:5000/twobombs/qrackmin:vcl-pocl twobombs/qrackmin:vcl-pocl
docker push twobombs/qrackmin:vcl-pocl

docker pull $HOSTNAME:5000/twobombs/thereminq
docker tag $HOSTNAME:5000/twobombs/thereminq twobombs/thereminq
docker push twobombs/thereminq

docker pull $HOSTNAME:5000/twobombs/thereminq:controller
docker tag $HOSTNAME:5000/twobombs/thereminq:controller twobombs/thereminq:controller
docker push twobombs/thereminq:controller

docker pull $HOSTNAME:5000/twobombs/thereminq:controller-all
docker tag $HOSTNAME:5000/twobombs/thereminq:controller-all twobombs/thereminq:controller-all
docker push twobombs/thereminq:controller-all

docker pull $HOSTNAME:5000/twobombs/thereminq:cuquantum
docker tag $HOSTNAME:5000/twobombs/thereminq:cuquantum twobombs/thereminq:cuquantum
docker push twobombs/thereminq:cuquantum

docker pull $HOSTNAME:5000/twobombs/thereminq:dev
docker tag $HOSTNAME:5000/twobombs/thereminq:dev twobombs/thereminq:dev
docker push twobombs/thereminq:dev

docker pull $HOSTNAME:5000/twobombs/thereminq:overlay
docker tag $HOSTNAME:5000/twobombs/thereminq:overlay twobombs/thereminq:overlay
docker push twobombs/thereminq:overlay

docker pull $HOSTNAME:5000/twobombs/thereminq:qimcifa
docker tag $HOSTNAME:5000/twobombs/thereminq:qimcifa twobombs/thereminq:qimcifa
docker push twobombs/thereminq:qimcifa

docker pull $HOSTNAME:5000/twobombs/thereminq:sieve
docker tag $HOSTNAME:5000/twobombs/thereminq:sieve twobombs/thereminq:sieve
docker push twobombs/thereminq:sieve

docker pull $HOSTNAME:5000/twobombs/thereminq:unittest
docker tag $HOSTNAME:5000/twobombs/thereminq:unittest twobombs/thereminq:unittest
docker push twobombs/thereminq:unittest

docker pull $HOSTNAME:5000/twobombs/thereminq:vcl-controller-node
docker tag $HOSTNAME:5000/twobombs/thereminq:vcl-controller-node twobombs/thereminq:vcl-controller-node
docker push twobombs/thereminq:vcl-controller-node

docker pull $HOSTNAME:5000/twobombs/thereminq-bonsai
docker tag $HOSTNAME:5000/twobombs/thereminq-bonsai twobombs/thereminq-bonsai
docker push twobombs/thereminq-bonsai

docker pull $HOSTNAME:5000/twobombs/thereminq-bonsai:2204
docker tag $HOSTNAME:5000/twobombs/thereminq-bonsai:2204 twobombs/thereminq-bonsai:2204
docker push twobombs/thereminq-bonsai:2204

docker pull $HOSTNAME:5000/twobombs/thereminq-bonsai:qft
docker tag pull $HOSTNAME:5000/twobombs/thereminq-bonsai:qft twobombs/thereminq-bonsai:qft
docker push twobombs/thereminq-bonsai:qft

docker pull $HOSTNAME:5000/twobombs/thereminq-bonsai:realtime
docker tag $HOSTNAME:5000/twobombs/thereminq-bonsai:realtime twobombs/thereminq-bonsai:realtime
docker push twobombs/thereminq-bonsai:realtime

docker pull $HOSTNAME:5000/twobombs/thereminq-bonsai:supreme
docker tag $HOSTNAME:5000/twobombs/thereminq-bonsai:supreme twobombs/thereminq-bonsai:supreme
docker push twobombs/thereminq-bonsai:supreme

docker pull $HOSTNAME:5000/twobombs/thereminq-bonsai:tnnd
docker tag $HOSTNAME:5000/twobombs/thereminq-bonsai:tnnd twobombs/thereminq-bonsai:tnnd
docker push twobombs/thereminq-bonsai:tnnd

docker pull $HOSTNAME:5000/twobombs/thereminq-bonsai:validation
docker tag $HOSTNAME:5000/twobombs/thereminq-bonsai:validation twobombs/thereminq-bonsai:validation
docker push twobombs/thereminq-bonsai:validation

docker pull $HOSTNAME:5000/twobombs/thereminq-bonsai:llama
docker tag $HOSTNAME:5000/twobombs/thereminq-bonsai:llama twobombs/thereminq-bonsai:llama
docker push twobombs/thereminq-bonsai:llama

docker pull $HOSTNAME:5000/twobombs/thereminq-bonsai:qcircuit
docker tag $HOSTNAME:5000/twobombs/thereminq-bonsai:qcircuit twobombs/thereminq-bonsai:qcircuit
docker push twobombs/thereminq-bonsai:qcircuit

docker pull $HOSTNAME:5000/twobombs/thereminq-bonsai:precooked
docker tag $HOSTNAME:5000/twobombs/thereminq-bonsai:precooked twobombs/thereminq-bonsai:precooked
docker push twobombs/thereminq-bonsai:precooked

docker pull $HOSTNAME:5000/twobombs/thereminq-tensor
docker tag $HOSTNAME:5000/twobombs/thereminq-tensor twobombs/thereminq-tensor
docker push twobombs/thereminq-tensor

docker pull $HOSTNAME:5000/twobombs/thereminq-tensor:metal
docker tag $HOSTNAME:5000/twobombs/thereminq-tensor:metal twobombs/thereminq-tensor:metal
docker push twobombs/thereminq-tensor:metal

docker pull $HOSTNAME:5000/twobombs/thereminq-tensor:minimum
docker tag $HOSTNAME:5000/twobombs/thereminq-tensor:minimum twobombs/thereminq-tensor:minimum
docker push twobombs/thereminq-tensor:minimum

docker pull $HOSTNAME:5000/twobombs/thereminq-tensor:quda
docker tag $HOSTNAME:5000/twobombs/thereminq-tensor:quda twobombs/thereminq-tensor:quda
docker push twobombs/thereminq-tensor:quda

docker pull $HOSTNAME:5000/twobombs/thereminq-tensor:shors
docker tag $HOSTNAME:5000/twobombs/thereminq-tensor:shors twobombs/thereminq-tensor:shors
docker push twobombs/thereminq-tensor:shors

docker pull $HOSTNAME:5000/twobombs/thereminq-llama
docker tag $HOSTNAME:5000/twobombs/thereminq-llama twobombs/thereminq-llama
docker push twobombs/thereminq-llama

docker pull $HOSTNAME:5000/twobombs/thereminq-llama:cassandra
docker tag $HOSTNAME:5000/twobombs/thereminq-llama:cassandra twobombs/thereminq-llama:cassandra
docker push twobombs/thereminq-llama:cassandra

docker pull $HOSTNAME:5000/twobombs/thereminq-llama:cli
docker tag $HOSTNAME:5000/twobombs/thereminq-llama:cli twobombs/thereminq-llama:cli
docker push twobombs/thereminq-llama:cli

docker pull $HOSTNAME:5000/twobombs/thereminq-llama:cuda
docker tag $HOSTNAME:5000/twobombs/thereminq-llama:cuda twobombs/thereminq-llama:cuda
docker push twobombs/thereminq-llama:cuda

docker pull $HOSTNAME:5000/twobombs/thereminq-llama:chatui
docker tag $HOSTNAME:5000/twobombs/thereminq-llama:chatui twobombs/thereminq-llama:chatui
docker push twobombs/thereminq-llama:chatui

docker pull $HOSTNAME:5000/twobombs/thereminq-llama:elastic
docker tag $HOSTNAME:5000/twobombs/thereminq-llama:elastic twobombs/thereminq-llama:elastic
docker push twobombs/thereminq-llama:elastic

docker pull $HOSTNAME:5000/twobombs/thereminq-llama:langchain
docker tag $HOSTNAME:5000/twobombs/thereminq-llama:langchain twobombs/thereminq-llama:langchain
docker push twobombs/thereminq-llama:langchain

docker pull $HOSTNAME:5000/twobombs/thereminq-llama:opencl
docker tag $HOSTNAME:5000/twobombs/thereminq-llama:opencl twobombs/thereminq-llama:opencl
docker push twobombs/thereminq-llama:opencl

docker pull $HOSTNAME:5000/twobombs/thereminq-llama:orchestrate
docker tag $HOSTNAME:5000/twobombs/thereminq-llama:orchestrate twobombs/thereminq-llama:orchestrate
docker push twobombs/thereminq-llama:orchestrate

docker pull $HOSTNAME:5000/twobombs/thereminq-llama:spark
docker tag $HOSTNAME:5000/twobombs/thereminq-llama:spark twobombs/thereminq-llama:spark
docker push twobombs/thereminq-llama:spark

docker pull $HOSTNAME:5000/twobombs/thereminq-llama:unittest
docker tag $HOSTNAME:5000/twobombs/thereminq-llama:unittest twobombs/thereminq-llama:unittest
docker push twobombs/thereminq-llama:unittest
