FROM golang:1.17.7-alpine3.15

RUN apk --no-cache add git build-base brotli-dev
