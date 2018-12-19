FROM alpine:3.8

# add git and openssh to clone dependencies
RUN apk add --update --upgrade git
RUN apk add --update --upgrade openssh-client

# add python3, nodejs + npm and terraform for building tasks
RUN apk add --update --upgrade python3
RUN apk add --update --upgrade nodejs
RUN apk add --update --upgrade npm
RUN apk add --update --upgrade terraform

# upgrade pip and setuptools cause the installs are dated
RUN pip3 install --upgrade pip setuptools