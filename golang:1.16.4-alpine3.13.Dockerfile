FROM golang:1.16.4-alpine3.13

RUN apk --no-cache add git build-base brotli-dev
