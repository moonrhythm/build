FROM alpine:3.9

RUN apk add --no-cache ca-certificates tzdata

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk --no-cache add brotli
