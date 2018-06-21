package bridge

import (
	"testing"
)

//func TestMain(m *testing.M) {
//	flag.Parse()
//	os.Exit(m.Run())
//}

func TestMyrun(t *testing.T) {

	var ans = Myrun(3)
	if ans != 6 {
		t.Fail()
		t.Log("We expected to get something else")
	}

}
