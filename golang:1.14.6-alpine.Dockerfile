FROM golang:1.14.6-alpine

RUN apk --no-cache add git build-base brotli-dev
