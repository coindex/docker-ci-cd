FROM alpine:3.8

# # add and prepare openrc to be able to start docker service
# RUN apk add --update --upgrade openrc
# RUN mkdir -p /run/openrc/ && touch /run/openrc/softlevel

# # add docker to build python in lambda like environment
# RUN apk add --update --upgrade docker

# add git and openssh to clone dependencies
RUN apk add --update --upgrade git
RUN apk add --update --upgrade openssh-client

# add python3, nodejs + npm and terraform for building tasks
RUN apk add --update --upgrade python3
RUN apk add --update --upgrade nodejs
RUN apk add --update --upgrade npm
RUN apk add --update --upgrade terraform

# add dev-tools & dependencies to build some python modules
RUN apk add --update --upgrade postgresql
RUN apk add --update --upgrade python3-dev gcc musl-dev postgresql-dev

# upgrade pip and setuptools cause the installs are dated
RUN pip3 install --upgrade pip setuptools