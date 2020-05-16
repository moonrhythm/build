FROM golang:1.14.3-alpine

RUN apk --no-cache add git build-base brotli-dev
