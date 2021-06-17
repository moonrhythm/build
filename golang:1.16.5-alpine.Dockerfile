FROM golang:1.16.5-alpine

RUN apk --no-cache add git build-base brotli-dev
