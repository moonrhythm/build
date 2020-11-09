MAKEFLAGS += -j10

generate:
	go run .

local: generate
	cloud-build-local --dryrun=false --push .

%: %.Dockerfile
	docker build --pull -t gcr.io/moonrhythm-containers/$@ -f $< .
	docker push gcr.io/moonrhythm-containers/$@

all:
	make $(basename $(wildcard *.Dockerfile))

golang:
	make $(basename $(wildcard golang:*.Dockerfile))
