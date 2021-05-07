FROM golang:1.15.12-alpine3.13

RUN apk --no-cache add git build-base brotli-dev
