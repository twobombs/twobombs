FROM cruizba/ubuntu-dind

RUN apt update && apt install -y docker-buildx git

COPY buildall.sh buildall.sh
RUN CHMOD 755 buildall.sh

ENTRYPOINT /buildall.sh
