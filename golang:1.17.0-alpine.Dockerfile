FROM golang:1.17.0-alpine

RUN apk --no-cache add git build-base brotli-dev
