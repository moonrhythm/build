FROM golang:1.13.5-alpine

RUN apk --no-cache add git build-base brotli-dev
