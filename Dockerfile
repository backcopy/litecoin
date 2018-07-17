FROM ubuntu:xenial
MAINTAINER slush@satoshilabs.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -qy install curl g++-aarch64-linux-gnu g++-4.8-aarch64-linux-gnu gcc-4.8-aarch64-linux-gnu binutils-aarch64-linux-gnu \
          g++-4.8-multilib \
          gcc-4.8-multilib binutils-gold git-core pkg-config autoconf libtool automake faketime bsdmainutils ca-certificates python locales


RUN apt-get -qy install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils

RUN apt-get -qy install software-properties-common
RUN add-apt-repository -y ppa:bitcoin/bitcoin
RUN apt-get -qy update
RUN apt-get -qy install libdb4.8-dev libdb4.8++-dev

RUN apt-get -qy install libboost-all-dev

RUN apt-get -qy install libzmq3-dev

VOLUME /src 