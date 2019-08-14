FROM alpine:3.10.1

RUN apk add --no-cache ca-certificates tzdata

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN apk --no-cache add brotli
