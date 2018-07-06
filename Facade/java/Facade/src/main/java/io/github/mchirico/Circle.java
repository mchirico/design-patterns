package io.github.mchirico;

public class Circle implements Shape {

    @Override
    public String draw() {
        System.out.println("Circle::draw()");
        return "Circle::draw()";
    }
}