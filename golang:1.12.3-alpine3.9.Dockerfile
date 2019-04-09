FROM golang:1.12.3-alpine3.9

RUN apk add --update --no-cache git build-base cmake

RUN git clone --depth 1 --branch v1.0.7 https://github.com/google/brotli && \
        cd brotli && \
        cmake . && \
        make install && \
        cd .. && \
        rm -rf brotli
