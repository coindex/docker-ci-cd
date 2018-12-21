FROM amazonlinux:2

# add base tools and dependencies
RUN yum install update upgrade git tar xz unzip -y

# add python ~3.7
RUN yum install update upgrade python3 -y

# add go ~1.11
# RUN amazon-linux-extras install golang1.11 -y

WORKDIR /usr/local/bin

# add node 10.14.2
RUN curl \
  https://nodejs.org/dist/v10.14.2/node-v10.14.2-linux-x64.tar.xz > \
  node-v10.14.2-linux-x64.tar.xz && \
  tar -xf node-v10.14.2-linux-x64.tar.xz
ENV PATH="/usr/local/bin/node-v10.14.2-linux-x64/bin:${PATH}"

# add terraform 0.11.11
RUN curl \
  https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip > \
  terraform_0.11.11_linux_amd64.zip && \
  unzip terraform_0.11.11_linux_amd64.zip && \
  mkdir -p terraform_0.11.11_linux_amd64/bin && \
  mv ./terraform ./terraform_0.11.11_linux_amd64/bin
ENV PATH="/usr/local/bin/terraform_0.11.11_linux_amd64/bin:${PATH}"

# add aws cli 1.16.80
RUN pip3 install --upgrade awscli==1.16.80

# add serverless 1.35.1
RUN npm install -g serverless@1.35.1 --ignore-scripts spawn-sync

# cleanup
RUN yum clean all && \
  rm -rf /var/cache/yum && \
  rm -rf node-v10.14.2-linux-x64.tar.xz && \
  rm -rf terraform_0.11.11_linux_amd64.zip