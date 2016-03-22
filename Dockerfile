FROM ubuntu:latest

MAINTAINER Hugh Cannon <hugh@hughcannon.com>

RUN apt-get update &&\
  apt-get install -y curl && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /factorio
RUN curl -L -k https://www.factorio.com/get-download/0.12.27/headless/linux64 | tar --strip-components=1 -xzf -

VOLUME ["/factorio/saves"]

EXPOSE 34197/udp
ENTRYPOINT ["/factorio/bin/x64/factorio"]
