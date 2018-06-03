package io.github.mchirico;


public class LivingRoom implements HouseRoom {

    @Override
    public void accept(HouseRoomVisitor houseRoomVisitor) {
        houseRoomVisitor.visit(this);
    }
}