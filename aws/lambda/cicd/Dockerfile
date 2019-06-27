FROM amazonlinux:2

# add base tools and dependencies
RUN yum install update upgrade git tar xz unzip -y

# add python ~3.7
RUN yum install update upgrade python3 -y

# add aws cli 1.16.184
RUN pip3 install --upgrade awscli==1.16.184

WORKDIR /usr/local/cndx/deps

# add node 10.16.0 and symlink into $PATH dir
RUN curl \
  https://nodejs.org/dist/v10.16.0/node-v10.16.0-linux-x64.tar.xz > \
  node-v10.16.0-linux-x64.tar.xz && \
  tar -xf node-v10.16.0-linux-x64.tar.xz && \
  ln -fs /usr/local/cndx/deps/node-v10.16.0-linux-x64/bin/node \
  /usr/local/bin/node && \
  ln -fs /usr/local/cndx/deps/node-v10.16.0-linux-x64/bin/npm \
  /usr/local/bin/npm && \
  ln -fs /usr/local/cndx/deps/node-v10.16.0-linux-x64/bin/npx \
  /usr/local/bin/npx

# add terraform 0.12.2 and symlink into $PATH dir
RUN curl \
  https://releases.hashicorp.com/terraform/0.12.2/terraform_0.12.2_linux_amd64.zip > \
  terraform_0.12.2_linux_amd64.zip && \
  unzip terraform_0.12.2_linux_amd64.zip && \
  mkdir -p terraform_0.12.2_linux_amd64/bin && \
  mv ./terraform ./terraform_0.12.2_linux_amd64/bin && \
  ln -fs /usr/local/cndx/deps/terraform_0.12.2_linux_amd64/bin/terraform \
  /usr/local/bin/terraform

# add serverless 1.45.1 and symlink into $PATH dir
RUN npm install -g serverless@1.45.1 --ignore-scripts spawn-sync && \
  ln -fs node-v10.16.0-linux-x64/bin/serverless \
  /usr/local/bin/serverless && \
  ln -fs /usr/local/cndx/deps/node-v10.16.0-linux-x64/bin/sls \
  /usr/local/bin/sls && \
  ln -fs /usr/local/cndx/deps/node-v10.16.0-linux-x64/bin/slss \
  /usr/local/bin/slss

# cleanup
RUN yum clean all && \
  rm -rf /var/cache/yum && \
  rm -rf node-v10.16.0-linux-x64.tar.xz && \
  rm -rf terraform_0.12.2_linux_amd64.zip

WORKDIR /
