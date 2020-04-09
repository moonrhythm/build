FROM golang:1.14.2-alpine

RUN apk --no-cache add git build-base brotli-dev
