FROM alpine:3.10

RUN apk --update add --no-cache \
  autoconf \
  automake \
  boost-dev \
  g++ \
  git \
  libevent-dev \
  libtool \
  make \
  openssl-dev \
  pkgconf-dev

WORKDIR /workdir

RUN git clone --branch v0.18.0 --depth 1 https://github.com/bitcoin/bitcoin.git

ARG BITCOIN_BUILD_CONFIG_PARAMS="--without-gui --disable-wallet"

RUN cd bitcoin && \
  ./autogen.sh && \
  ./configure ${BITCOIN_BUILD_CONFIG_PARAMS} && \
  make -j$(nproc) && \
  make install

RUN rm -rf /workdir

WORKDIR /

ENTRYPOINT ["bitcoind"]
