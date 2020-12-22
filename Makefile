MAKEFLAGS += -j10

generate:
	go run .

local: generate
	cloud-build-local --dryrun=false --push .

%: %.Dockerfile
	buildctl build \
		--frontend dockerfile.v0 \
		--local dockerfile=. \
		--opt filename=$< \
		--output type=image,name=gcr.io/moonrhythm-containers/$@,push=true

all:
	make $(basename $(wildcard *.Dockerfile))

golang:
	make $(basename $(wildcard golang:*.Dockerfile))
