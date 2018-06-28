public class BallerinaStatus {
    int flexibility = 0;
    int turnout = 0;
    int determination = 0;


    int calculateStatus(int flexibility, int turnout,
                        int determination) {

        return turnout * 2 + flexibility + determination * 5;

    }

    double attendence(int numberOfClasses, int numberAttended) {

        return (double)(numberAttended) / (double) numberOfClasses;
    }

}
