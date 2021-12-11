FROM golang:1.16.12-alpine

RUN apk --no-cache add git build-base brotli-dev
