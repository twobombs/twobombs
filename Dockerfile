FROM cruizba/ubuntu-dind

RUN apt update && apt -y upgrade && apt clean all 
RUN export DEBIAN_FRONTEND=noninteractive && apt update && apt install -y docker-buildx git coreutils pciutils screen glances

RUN mkdir data
WORKDIR /build

RUN git clone https://github.com/twobombs/twobombs

RUN git clone https://github.com/twobombs/deploy-nvidia-docker.git
RUN git clone https://github.com/twobombs/cudacluster.git

RUN git clone https://github.com/twobombs/qrackmin.git
RUN git clone https://github.com/twobombs/thereminq.git
RUN git clone https://github.com/twobombs/thereminq-bonsai.git
RUN git clone https://github.com/twobombs/thereminq-tensors.git
RUN git clone https://github.com/twobombs/thereminq-llama.git
RUN git clone https://github.com/twobombs/thereminq-pqc.git

RUN git clone https://github.com/twobombs/thereminq-examples.git


COPY runfiles/* /build/
RUN chmod 744 *

COPY buildall.sh buildall.sh
RUN chmod 755 buildall.sh
