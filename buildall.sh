#!/bin/bash
# a dind waterfall build - this will eat your machine
# runs on dind ubuntu version - https://github.com/cruizba/ubuntu-dind 

# run with
# docker run -ti --privileged --net=host twobombs/twobombs bash buildall.sh
# this wil start one container but will spawn 10 build containers dind inside
# and commit the builds against a local registry - exposed at http://localhost

# setup registry and registry UI
docker run -d -p 5000:5000 --net=host --restart=always -v registry:/var/lib/registry --name registry2 registry:2
docker run -d -p 80:80 --net=host --restart=always --name webregistry -e SINGLE_REGISTRY=true -e NGINX_PROXY_PASS_URL=http://$HOSTNAME:5000 joxit/docker-registry-ui:main

# build build container image
echo "building build container"
apt install -y docker-buildx
docker build --no-cache -f Dockerfile . -t twobombs/twobombs > twobombs && docker tag twobombs/twobombs $HOSTNAME:5000/twobombs/twobombs && docker push $HOSTNAME:5000/twobombs/twobombs

# run all 10 jobs dind with 120 seconds interval
echo "all 7 jobs wil start with 20 seconds interval, some will fork in the background"

docker run -d --privileged --name qrackmin --net=host twobombs/twobombs bash qrackmin.sh
sleep 20
docker run -d --privileged --name deploy-nvidia-docker --net=host twobombs/twobombs bash deploy-nvidia-docker.sh
sleep 20
docker run -d --privileged --name cudacluster --net=host twobombs/twobombs bash cudacluster.sh
sleep 20
docker run -d --privileged --name thereminq --net=host twobombs/twobombs bash thereminq.sh
sleep 20
docker run -d --privileged --name thereminq-tensors --net=host twobombs/twobombs bash thereminq-tensors.sh
sleep 20
docker run -d --privileged --name thereminq-bonsai --net=host twobombs/twobombs bash thereminq-bonsai.sh
sleep 20
docker run -d --privileged --name thereminq-llama --net=host twobombs/twobombs bash thereminq-llama.sh

docker stats
tail -f /dev/null
