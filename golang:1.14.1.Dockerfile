FROM golang:1.14.1

RUN apt update && apt install -y \
	libbrotli-dev \
	&& rm -rf /var/lib/apt/lists/*
