import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class BallerinaStatusTest {

    @BeforeEach
    void setUp() {
    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void calculateAbbyStatus() {

        BallerinaStatus abby = new BallerinaStatus();
        int abbyStatus = abby.calculateStatus(8, 7, 9);

        assertEquals(67,abbyStatus);


    }

    @Test
    void calculateAbbyAttendence() {

        BallerinaStatus abby = new BallerinaStatus();
        int abbyStatus = abby.calculateStatus(8, 7, 9);

        double abbyAttendence = abby.attendence(350, 330);

        int attendLevel =  (int) (abbyAttendence*100);


        assertEquals(94,attendLevel);


    }

    @Test
    void calculateMimzStatus() {

        BallerinaStatus mimz = new BallerinaStatus();
        int abbyStatus = mimz.calculateStatus(8, 7, 9);

    }


    @Test
    void attendence() {
    }
}