FROM alpine:latest

ENV LITECOIN_VERSION=0.17.1
ENV GLIBC_VERSION=2.30-r0

WORKDIR /workdir

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

# --with-incompatible-bdb # breaks wallet import of default builds
# --without-gui
# --disable-wallet
ARG LITECOIN_BUILD_CONFIG_PARAMS="--with-incompatible-bdb --without-gui"

RUN wget -c https://github.com/litecoin-project/litecoin/archive/v${LITECOIN_VERSION}.tar.gz -O -| tar -xz \
	&& mv litecoin-0.17.1/* . && rm -rf litecoin-0.17.1/ \
	&& ./autogen.sh \
	&& ./configure ${LITECOIN_BUILD_CONFIG_PARAMS} \
	&& make -j$(nproc) \
	&& make install \
	&& rm -rf /workdir

WORKDIR /

ENTRYPOINT ["litecoind"]
