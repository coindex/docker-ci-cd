FROM alpine:3.8

# add base tools
RUN apk add --no-cache --update --upgrade alpine-sdk postgresql-dev
RUN apk add --no-cache --update --upgrade openssh-client

# add python3, nodejs and npm for build tasks
RUN apk add --no-cache --update --upgrade python3-dev
RUN apk add --no-cache --update --upgrade nodejs
RUN apk add --no-cache --update --upgrade npm

# add terraform for build & deployment tasks
RUN apk add --no-cache --update --upgrade terraform

# upgrade pip and setuptools
RUN pip3 install --upgrade pip setuptools

# install aws cli and serverless framework for build & deployment tasks
RUN pip3 install --upgrade awscli
RUN npm install -g serverless --ignore-scripts spawn-sync