FROM golang:1.16.5-alpine3.13

RUN apk --no-cache add git build-base brotli-dev
