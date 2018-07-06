package io.github.mchirico;

public class Rectangle implements Shape {

    @Override
    public String draw() {
        System.out.println("Rectangle::draw()");
        return "Rectangle::draw()";

    }
}