FROM golang:1.13.8-alpine3.11

RUN apk --no-cache add git build-base brotli-dev
