FROM golang:1.16.4-alpine

RUN apk --no-cache add git build-base brotli-dev
