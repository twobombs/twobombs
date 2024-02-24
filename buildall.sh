#!/bin/bash
# waterfall build this
# will eat your machine
# 
# runs on dind ubuntu version 
# https://github.com/cruizba/ubuntu-dind 

# setup registry and registry UI
docker run -d -p 80:80 -e REGISTRY_URL=$HOSTNAME:5000 joxit/docker-registry-ui:main
docker run -d -p 5000:5000 --restart=always --name registry2 registry:2

# run all 10 jobs dind
docker run -it --publish 5000:5000 twobombs/twobombs bash 1.sh
docker run -it --publish 5000:5000 twobombs/twobombs bash 2.sh
docker run -it --publish 5000:5000 twobombs/twobombs bash 3.sh
docker run -it --publish 5000:5000 twobombs/twobombs bash 4.sh
docker run -it --publish 5000:5000 twobombs/twobombs bash 5.sh
docker run -it --publish 5000:5000 twobombs/twobombs bash 6.sh
docker run -it --publish 5000:5000 twobombs/twobombs bash 7.sh
docker run -it --publish 5000:5000 twobombs/twobombs bash 8.sh
docker run -it --publish 5000:5000 twobombs/twobombs bash 9.sh
docker run -it --publish 5000:5000 twobombs/twobombs bash 10.sh

docker stats
