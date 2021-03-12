FROM golang:1.16.2-alpine3.13

RUN apk --no-cache add git build-base brotli-dev
