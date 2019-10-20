package main

import (
	"io/ioutil"
	"log"
	"os"
	"strings"

	"gopkg.in/yaml.v2"
)

const projectID = "moonrhythm-containers"

func main() {
	files, err := ioutil.ReadDir(".")
	if err != nil {
		log.Fatal(err)
	}

	var build build

	for _, f := range files {
		if f.IsDir() {
			continue
		}
		fname := f.Name()
		name := strings.TrimSuffix(fname, ".Dockerfile")
		if name == fname {
			continue
		}

		img := "gcr.io/" + projectID + "/" + name
		build.Steps = append(build.Steps, &step{
			Name:    "gcr.io/cloud-builders/docker",
			Args:    []string{"build", "--pull", "-t", img, "-f", fname, "."},
			WaitFor: []string{"-"},
		})
		build.Images = append(build.Images, img)
	}

	fs, err := os.Create("cloudbuild.yaml")
	if err != nil {
		log.Fatal(err)
	}
	defer fs.Close()
	enc := yaml.NewEncoder(fs)
	err = enc.Encode(&build)
	if err != nil {
		log.Fatal(err)
	}
	err = enc.Close()
	if err != nil {
		log.Fatal(err)
	}
}

type build struct {
	Steps  []*step
	Images []string
}

type step struct {
	Name    string
	Args    []string `yaml:",flow"`
	WaitFor []string `yaml:"waitFor,flow"`
}
