FROM golang:1.13.7-alpine

RUN apk --no-cache add git build-base brotli-dev
