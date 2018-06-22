package bridge

import (
	"fmt"
	"strings"
	"testing"
)


func TestGreenCircle(t *testing.T) {
	g := greenStruct{}
	b := blueStruct{}

	c := circleStruct{}
	fmt.Printf("Circle: %v\n", c.Circle(0, 2, 3, g))
	fmt.Printf("Circle: %v\n", c.Circle(0, 2, 3, b))

	expected := "Color: Blue, x: 0 y: 2 r: 3"

	if strings.Compare(expected, c.Circle(0, 2, 3, b)) != 0 {
		t.Errorf("Strings don't match"+
			"\n%v\n%v", expected, c.Circle(0, 2, 3, b))
	}

}

func TestDoSomething(t *testing.T) {
	DoSomething("stuff")
}

func TestReflect(t *testing.T) {
	DoReflect()

}
