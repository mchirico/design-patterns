package io.github.mchirico;

public class BedRoom implements HouseRoom {

    @Override
    public void accept(HouseRoomVisitor houseRoomVisitor) {
        houseRoomVisitor.visit(this);
    }
}
