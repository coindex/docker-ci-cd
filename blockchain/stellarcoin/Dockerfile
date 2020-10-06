FROM alpine:latest
WORKDIR /workdir 
RUN apk update \
    && apk add build-base \
               git \
               pkgconf \
               autoconf \
               automake \
               libtool \
               bison \
               flex \
               libpq \
               postgresql-dev \
               parallel \
               linux-headers \
    && git clone https://github.com/stellar/stellar-core.git \
    && cd stellar-core \
    && git submodule init \
    && git submodule update \
    && ./autogen.sh \
    && ./configure \
    && make \
    && make check \
    && make install
ENTRYPOINT [ "stellar-core run" ] 