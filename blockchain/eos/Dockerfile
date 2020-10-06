FROM ubuntu:latest

WORKDIR /root

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y install git \
    && git clone https://github.com/EOSIO/eos --recursive \
    && yes | ./eos/scripts/eosio_build.sh \
    && yes | ./eos/scripts/eosio_install.sh \
    && rm -rf eos

ENV PATH=$PATH:/root/eosio/2.0/bin
ENTRYPOINT [ "nodeos" ]