package io.github.mchirico;

public class Garage implements HouseRoom, Thermostat {

    double temp = 68.2;

    @Override
    public void accept(HouseRoomVisitor houseRoomVisitor) {
        houseRoomVisitor.visit(this);
    }

    @Override
    public Number getTemp(int visits) {
        temp = temp - (double) (visits * 0.2);
        return temp;
    }
}