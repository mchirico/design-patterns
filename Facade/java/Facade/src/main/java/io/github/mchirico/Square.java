package io.github.mchirico;


public class Square implements Shape {

    @Override
    public String draw() {
        System.out.println("Square::draw()");
        return "Square::draw()";
    }
}