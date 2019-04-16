FROM golang:1.12.4-alpine3.9

RUN apk --no-cache add git build-base

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk --no-cache add brotli-dev

