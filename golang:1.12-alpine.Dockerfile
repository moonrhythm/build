FROM golang:1.12-alpine

RUN apk --no-cache add git build-base

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN apk --no-cache add brotli-dev
