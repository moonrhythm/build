FROM golang:1.15.0-alpine3.12

RUN apk --no-cache add git build-base brotli-dev
