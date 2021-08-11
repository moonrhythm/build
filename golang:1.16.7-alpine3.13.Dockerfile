FROM golang:1.16.7-alpine3.13

RUN apk --no-cache add git build-base brotli-dev
