FROM golang:1.14.13-alpine3.12

RUN apk --no-cache add git build-base brotli-dev