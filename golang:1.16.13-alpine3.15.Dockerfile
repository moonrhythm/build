FROM golang:1.16.13-alpine3.15

RUN apk --no-cache add git build-base brotli-dev
