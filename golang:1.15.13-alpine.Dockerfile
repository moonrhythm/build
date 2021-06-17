FROM golang:1.15.13-alpine

RUN apk --no-cache add git build-base brotli-dev
