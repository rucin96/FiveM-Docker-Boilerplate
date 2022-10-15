FROM debian:latest

COPY init.sh /usr/local/bin/
COPY server.cfg /usr/local/bin/

RUN apt-get update -y && apt-get upgrade -y
RUN apt install -y wget xz-utils git iputils-ping

WORKDIR /var/server
ARG DEBIAN_FRONTEND=noninteractive
CMD  /bin/bash
EXPOSE 30120