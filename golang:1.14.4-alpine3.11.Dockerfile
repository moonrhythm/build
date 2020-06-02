FROM golang:1.14.4-alpine3.11

RUN apk --no-cache add git build-base brotli-dev
