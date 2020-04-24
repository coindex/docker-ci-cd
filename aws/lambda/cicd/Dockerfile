FROM amazonlinux:2

RUN curl -s -L https://rpm.nodesource.com/setup_12.x | bash -

RUN yum install update -y \
  git \
  gzip \
  tar \
  xz \
  nodejs \
  yum groupinstall "Development Tools" && \
  yum clean all && \
  rm -rf /var/cache/yum

WORKDIR /
