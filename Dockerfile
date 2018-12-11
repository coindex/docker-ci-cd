FROM alpine:3.8

RUN apk add --update --upgrade git
RUN apk add --update --upgrade python3
RUN apk add --update --upgrade nodejs
RUN apk add --update --upgrade terraform