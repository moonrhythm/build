FROM golang:1.17.0-alpine3.14

RUN apk --no-cache add git build-base brotli-dev
