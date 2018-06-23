package bridge

import (
	"fmt"
	"reflect"
)

// http://blog.ralch.com/tutorial/design-patterns/golang-bridge/

type shape struct {
	shape int
}

func (s shape) drawPrinter(i int) string {
	fmt.Printf("draw: %v\n", i)
	return fmt.Sprintf("draw: %v", i)
}

type greenStruct struct {
	x, y, radius int
	s            shape
}

type blueStruct struct {
	x, y, radius int
	s            shape
}

type DrawAPI interface {
	drawCircle(radius int, x int, y int) string
}

func (c greenStruct) drawCircle(radius int, x int, y int) string {
	c.x = x
	c.y = y
	c.radius = radius

	return fmt.Sprintf("Color: %s, x: %v y: %v r: %v",
		"Green", c.x, c.y, c.radius)
}

func (c blueStruct) drawCircle(radius int, x int, y int) string {
	c.x = x
	c.y = y
	c.radius = radius

	return fmt.Sprintf("Color: %s, x: %v y: %v r: %v",
		"Blue", c.x, c.y, c.radius)
}

// struct stores data
type circleStruct struct {
	x, y, radius int
	drawCircle   DrawAPI // Heart of Bridge (Method via Interface)
}

// Circle export
func (c circleStruct) Circle(x int,
	y int,
	radius int,
	drawAPI DrawAPI) string {

	c.x = x
	c.y = y
	c.radius = radius
	c.drawCircle = drawAPI
	return c.drawCircle.drawCircle(radius, x, y)
}

func (c circleStruct) draw() string {
	return c.drawCircle.drawCircle(c.radius, c.x, c.y)
}

func DoSomething(v interface{}) {
	fmt.Printf("value: %v\n", v)
}

// Working with reflect
// DoReflect --
func DoReflect() {
	t := reflect.TypeOf(3)

	type nThing struct {
		N int
	}

	fmt.Printf("t = %v  %v %d\n", t,
		reflect.TypeOf(reflect.ValueOf(3)), 3,
	)

}
