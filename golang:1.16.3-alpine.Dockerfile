FROM golang:1.16.3-alpine

RUN apk --no-cache add git build-base brotli-dev
