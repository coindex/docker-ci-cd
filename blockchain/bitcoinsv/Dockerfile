FROM alpine:3.10

RUN apk --update add --no-cache \
  autoconf \
  automake \
  boost-dev \
  db-dev \
  g++ \
  git \
  libevent-dev \
  libtool \
  make \
  openssl-dev \
  pkgconf-dev

WORKDIR /workdir

# --with-incompatible-bdb # breaks wallet import of default builds
# --without-gui
# --disable-wallet
ARG BITCOIN_BUILD_CONFIG_PARAMS="--with-incompatible-bdb --without-gui"

RUN git clone --branch v0.2.0 --depth 1 https://github.com/bitcoin-sv/bitcoin-sv.git . && \
  ./autogen.sh && \
  ./configure ${BITCOIN_BUILD_CONFIG_PARAMS} && \
  make -j$(nproc) && \
  make install && \
  rm -rf /workdir

WORKDIR /

ENTRYPOINT ["bitcoind"]