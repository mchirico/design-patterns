package io.github.mchirico;


public class LivingRoom implements HouseRoom, Thermostat {

    double temp = 70;

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