FROM cruizba/ubuntu-dind

RUN apt update && apt install -y docker-buildx git coreutils

COPY buildall.sh buildall.sh
RUN chmod 755 buildall.sh

ENTRYPOINT /usr/local/bin/entrypoint.sh /buildall.sh
