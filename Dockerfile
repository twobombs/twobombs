FROM docker:dind

COPY buildall.sh buildall.sh
RUN CHMOD 755 buildall.sh

ENTRYPOINT /buildall.sh
