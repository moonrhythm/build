FROM golang:1.16.2

RUN apt update && apt install -y \
	libbrotli-dev \
	&& rm -rf /var/lib/apt/lists/*
