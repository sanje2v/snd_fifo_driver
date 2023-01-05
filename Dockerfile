ARG HOST_UBUNTU_VERSION=latest
ARG DEBIAN_FRONTEND=noninteractive

FROM ubuntu:${HOST_UBUNTU_VERSION}

USER root
WORKDIR /root

RUN apt update -y && apt upgrade -y
RUN apt remove --purge linux-headers-*
RUN apt install -y linux-headers-generic build-essential lsb-release
RUN apt install -y nano sbsigntool
RUN apt autoremove -y

WORKDIR /root/src
