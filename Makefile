generate:
	go run .

local: generate
	cloud-build-local --dryrun=false --push .
