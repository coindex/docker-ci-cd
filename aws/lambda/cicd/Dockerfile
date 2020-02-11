FROM amazonlinux:2

RUN yum install update -y \
  tar \
  xz && \
  yum clean all && \
  rm -rf /var/cache/yum

WORKDIR /usr/local/cndx/deps

RUN curl \
  https://nodejs.org/dist/v12.15.0/node-v12.15.0-linux-x64.tar.xz > \
  node-v12.15.0-linux-x64.tar.xz && \
  tar -xf node-v12.15.0-linux-x64.tar.xz && \
  ln -fs /usr/local/cndx/deps/node-v12.15.0-linux-x64/bin/node \
  /usr/local/bin/node && \
  ln -fs /usr/local/cndx/deps/node-v12.15.0-linux-x64/bin/npm \
  /usr/local/bin/npm && \
  ln -fs /usr/local/cndx/deps/node-v12.15.0-linux-x64/bin/npx \
  /usr/local/bin/npx && \
  rm -rf node-v12.15.0-linux-x64.tar.xz

WORKDIR /
