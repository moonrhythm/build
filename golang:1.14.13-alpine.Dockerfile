FROM golang:1.14.13-alpine

RUN apk --no-cache add git build-base brotli-dev
