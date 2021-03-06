FROM alpine:latest

ENV LITECOIN_VERSION=0.17.1
ENV GLIBC_VERSION=2.30-r0

RUN adduser -D -g "" coindex

WORKDIR /home/coindex

RUN apk update \
	&& apk --no-cache add wget ca-certificates \
	&& wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/sgerrand.rsa.pub \
	&& wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-${GLIBC_VERSION}.apk \
	&& wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-bin-${GLIBC_VERSION}.apk \
 	&& apk --no-cache add glibc-${GLIBC_VERSION}.apk \
	&& apk --no-cache add glibc-bin-${GLIBC_VERSION}.apk \
	&& wget https://download.litecoin.org/litecoin-${LITECOIN_VERSION}/linux/litecoin-${LITECOIN_VERSION}-x86_64-linux-gnu.tar.gz \
	&& tar xzvf litecoin-${LITECOIN_VERSION}-x86_64-linux-gnu.tar.gz \
	&& mkdir .litecoin \
	&& apk del wget ca-certificates \
	&& mv litecoin-${LITECOIN_VERSION}/bin/* /usr/local/bin/ \
	&& rm -rf litecoin-${LITECOIN_VERSION}/ \
	&& rm -rf litecoin-${LITECOIN_VERSION}-x86_64-linux-gnu.tar.gz \
	&& rm -rf glibc-${GLIBC_VERSION}.apk \
	&& rm -rf glibc-bin-${GLIBC_VERSION}.apk

COPY litecoin.conf .litecoin

RUN chown -R coindex:coindex /home/coindex/.litecoin

USER coindex

ENTRYPOINT ["litecoind"]
