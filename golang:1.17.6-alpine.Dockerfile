FROM golang:1.17.6-alpine

RUN apk --no-cache add git build-base brotli-dev
