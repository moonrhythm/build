FROM golang:1.16.11-alpine

RUN apk --no-cache add git build-base brotli-dev
