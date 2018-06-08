import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.when;

class GetBillInputTest {

    GetBillInput getBillInput;

    @BeforeEach
    void setUp() {
        getBillInput = new GetBillInput();
    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void getBillValid() {
        ByteArrayInputStream in = new ByteArrayInputStream("3242".getBytes());
        System.setIn(in);
        getBillInput.getBill();
        assertEquals(3242.00, getBillInput.bill);

    }

    @Test
    void getBillInValid() {
        ByteArrayInputStream in = new ByteArrayInputStream("-1".getBytes());
        System.setIn(in);
        assertEquals(false, getBillInput.getBill());

    }

    @Test
    void getBillInValidtest() {
        ByteArrayInputStream in = new ByteArrayInputStream("one".getBytes());
        System.setIn(in);

        java.util.InputMismatchException e = assertThrows(
                java.util.InputMismatchException.class, getBillInput::getBill);

        assertEquals("java.util.InputMismatchException",e.toString());


    }


    @Test
    void getTip() {
    }

    @Test
    void getNumberOfPeople() {
    }

    @Test
    void getYesNo() {
    }

    @Test
    void repeatAskingForBillUntilValid() {
    }

    @Test
    void repeatAskingForTipUntilValid() {
    }

    @Test
    void repeatAskingForNumberOfPeopleUntilValid() {
    }

    @Test
    void repeatAskingYesNoUntilValid() {
    }

    @Test
    void calculateTip() {
    }

    @Test
    void splitBill() {
    }
}