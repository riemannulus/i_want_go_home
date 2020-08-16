package main

import (
	"io/ioutil"
	"os"
	"testing"
)

func TestMain(t *testing.T) {
	// mock stdout
	stdout := os.Stdout
	defer func() { os.Stdout = stdout }()
	r, w, _ := os.Pipe()
	os.Stdout = w

	main()

	w.Close()
	defer r.Close()
	got, _ := ioutil.ReadAll(r)
	want := "집에 가고 싶다\n"
	if string(got) != want {
		t.Errorf("wanted %q, got %q", want, string(got))
	}
}
