package io.github.mchirico;


import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

import static org.junit.jupiter.api.Assertions.*;

class BridgePatternDemoTest {

    ByteArrayOutputStream out = new ByteArrayOutputStream();
    ByteArrayOutputStream err = new ByteArrayOutputStream();

    // For reset, if needed
    PrintStream originalOut = System.out;

    @BeforeEach
    void setUp() {
        System.setOut(new PrintStream(out));
        System.setErr(new PrintStream(err));
    } 

    @AfterEach
    void tearDown() {

    }

    @Test
    void testRedCircle() {

        // Example input to a main function..
        ByteArrayInputStream in = new ByteArrayInputStream("one".getBytes());
        System.setIn(in);

        Shape redCircle = new Circle(100, 100, 10, new RedCircle());
        redCircle.draw();

        // Note return at the end...
        String expected = "Drawing Circle[ color: red, radius: 10, x: 100, 100]\n";
        assertEquals(expected, out.toString());

    }
}