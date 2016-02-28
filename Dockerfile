FROM ubuntu:latest

WORKDIR /factorio
RUN apt-get update &&\
  apt-get install -y curl libasound2 libx11-6 libxcursor1 libxinerama1 libxrandr2 libxi6 libgl1-mesa-glx &&\
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN curl -L -k https://www.factorio.com/get-download/0.12.24/demo/linux64 | tar -xzf -
VOLUME ["/factorio/factorio"]

EXPOSE 34197/udp

WORKDIR /factorio/factorio/bin/x64/
ENTRYPOINT ["./factorio"]
