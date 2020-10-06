FROM amazonlinux:2

ARG NODE_VERSION=v12.16.2

RUN yum install update -y \
  autoconf \
  gcc \
  gcc-c++ \
  git \
  gzip \
  make \
  tar \
  unzip \
  xz \
  zip \
  xorg-x11-server-Xvfb gtk2-devel gtk3-devel \
  libnotify-devel GConf2 nss libXScrnSaver alsa-lib \
  yum groupinstall "Development Tools" && \
  yum clean all && \
  rm -rf /var/cache/yum

WORKDIR /usr/local/cndx/deps

RUN curl \
  https://nodejs.org/dist/$NODE_VERSION/node-$NODE_VERSION-linux-x64.tar.xz > \
  node-$NODE_VERSION-linux-x64.tar.xz && \
  tar -xf node-$NODE_VERSION-linux-x64.tar.xz && \
  ln -fs /usr/local/cndx/deps/node-$NODE_VERSION-linux-x64/bin/node \
  /usr/local/bin/node && \
  ln -fs /usr/local/cndx/deps/node-$NODE_VERSION-linux-x64/bin/npm \
  /usr/local/bin/npm && \
  ln -fs /usr/local/cndx/deps/node-$NODE_VERSION-linux-x64/bin/npx \
  /usr/local/bin/npx && \
  rm -rf node-$NODE_VERSION-linux-x64.tar.xz

RUN curl \
  https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o awscliv2.zip \
  && unzip awscliv2.zip \
  && ./aws/install

WORKDIR /
