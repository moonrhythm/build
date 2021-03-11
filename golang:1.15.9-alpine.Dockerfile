FROM golang:1.15.9-alpine

RUN apk --no-cache add git build-base brotli-dev
