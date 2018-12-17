package io.github.mchirico;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class FacadeTest {

    @BeforeEach
    void setUp() {
    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void accept() {

        ShapeMaker shapeMaker = new ShapeMaker();
        assertEquals("Circle::draw()", shapeMaker.drawCircle());
        assertEquals("Rectangle::draw()", shapeMaker.drawRectangle());
        assertEquals("Square::draw()", shapeMaker.drawSquare());
    }
}