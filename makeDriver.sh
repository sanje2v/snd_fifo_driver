#!/bin/bash

docker build --build-arg HOST_UBUNTU_VERSION=$(lsb_release -r -s) -t snd_fifo_driver -f ./Dockerfile . && \
mkdir -p build && \
#docker run -it --rm -v $(pwd)/src:/root/src:rw -v $(pwd)/build:/root/build:rw -v /boot:/boot:ro -v ~/kernel-module-signing-cert:/root/keys:ro --name snd_fifo_driver snd_fifo_driver /bin/bash
docker run -it --rm -v $(pwd)/src:/root/src:rw -v $(pwd)/build:/root/build:rw -v /boot:/boot:ro -v ~/kernel-module-signing-cert:/root/keys:ro --name snd_fifo_driver snd_fifo_driver /bin/bash -c 'make all'
