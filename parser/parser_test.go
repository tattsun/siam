package parser

import (
	"io/ioutil"
	"os"
	"testing"
)

func TestParser(t *testing.T) {
	files, err := ioutil.ReadDir("../sample")
	if err != nil {
		panic(err)
	}
	for _, f := range files {
		fp, err := os.Open("../sample/" + f.Name())

		defer fp.Close()
		if err != nil {
			panic(err)
		}
		Parse(fp)
	}
}
