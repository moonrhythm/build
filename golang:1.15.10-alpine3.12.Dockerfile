FROM golang:1.15.10-alpine3.12

RUN apk --no-cache add git build-base brotli-dev
