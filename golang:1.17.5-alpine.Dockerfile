FROM golang:1.17.5-alpine

RUN apk --no-cache add git build-base brotli-dev
