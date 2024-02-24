#!/bin/bash
# a dind waterfall build this will eat your machine

# runs on dind ubuntu version - https://github.com/cruizba/ubuntu-dind 

# run with
# docker run -ti --privileged --net=host twobombs/twobombs bash buildall.sh
# this wil start one container but will spawn 10 build containers dind inside
# and commit the builds against a local registry - exposed at http://localhost

# setup registry and registry UI
docker run -d -p 5000:5000 --net=host --restart=always --name registry2 registry:2
docker run -d -p 80:80 --net=host -e REGISTRY_URL=http://$HOSTNAME:5000 joxit/docker-registry-ui:main

# run all 10 jobs dind
docker run -d --privileged --net=host twobombs/twobombs bash 1.sh
docker run -d --privileged --net=host twobombs/twobombs bash 2.sh
docker run -d --privileged --net=host twobombs/twobombs bash 3.sh
docker run -d --privileged --net=host twobombs/twobombs bash 4.sh
docker run -d --privileged --net=host twobombs/twobombs bash 5.sh
docker run -d --privileged --net=host twobombs/twobombs bash 6.sh
docker run -d --privileged --net=host twobombs/twobombs bash 7.sh
docker run -d --privileged --net=host twobombs/twobombs bash 8.sh
docker run -d --privileged --net=host twobombs/twobombs bash 9.sh
docker run -d --privileged --net=host twobombs/twobombs bash 10.sh

docker stats

bash
