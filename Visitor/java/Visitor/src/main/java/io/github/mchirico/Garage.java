package io.github.mchirico;

public class Garage implements HouseRoom {

    @Override
    public void accept(HouseRoomVisitor houseRoomVisitor) {
        houseRoomVisitor.visit(this);
    }
}