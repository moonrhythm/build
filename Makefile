MAKEFLAGS += -j2

generate:
	go run .

local: generate
	cloud-build-local --dryrun=false --push .

%: %.Dockerfile
	# buildkit can not push image to gcr when duplicate but different tag
	mbuild build \
		--frontend dockerfile.v0 \
		--local dockerfile=. \
		--opt filename=$< \
		--output type=image,name=gcr.io/moonrhythm-containers/$@,push=true
	# docker build --pull -f $< -t gcr.io/moonrhythm-containers/$@ .
	# docker push gcr.io/moonrhythm-containers/$@

all:
	make $(basename $(wildcard *.Dockerfile))

golang:
	make $(basename $(wildcard golang:*.Dockerfile))

mirror:
	cat mirror.txt | xargs -I {} -n1 sh -c 'docker pull {} && docker tag {} gcr.io/moonrhythm-containers/r/{} && docker push gcr.io/moonrhythm-containers/r/{}'
