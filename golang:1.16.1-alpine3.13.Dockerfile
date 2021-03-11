FROM golang:1.16.1-alpine3.13

RUN apk --no-cache add git build-base brotli-dev
