package bridge

import (
	"flag"
	"testing"



)

func TestMain(m *testing.M) {
	flag.Parse()
	//os.Exit(m.Run())
}

func TestMyrun(t *testing.T) {

	myrun(34)


}
