FROM golang:1.14.13-alpine3.11

RUN apk --no-cache add git build-base brotli-dev
