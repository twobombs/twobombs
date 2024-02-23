FROM cruizba/ubuntu-dind

RUN apt update && apt install -y docker-buildx git coreutils

RUN mkdir build

RUN cd build && git clone https://github.com/twobombs/twobombs

RUN cd build && git clone https://github.com/twobombs/deploy-nvidia-docker.git
RUN cd build && git clone https://github.com/twobombs/cudacluster.git
RUN cd build && git clone https://github.com/twobombs/qrackmin.git

RUN cd build && git clone https://github.com/twobombs/thereminq.git
RUN cd build && git clone https://github.com/twobombs/thereminq-bonsai.git
RUN cd build && git clone https://github.com/twobombs/thereminq-tensors.git
RUN cd build && git clone https://github.com/twobombs/thereminq-llama.git

COPY buildall.sh buildall.sh
RUN chmod 755 buildall.sh
