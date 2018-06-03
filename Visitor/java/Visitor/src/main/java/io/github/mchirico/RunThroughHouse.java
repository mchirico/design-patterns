package io.github.mchirico;

public class RunThroughHouse {

    public static void main(String[] args) {
        HouseRoom house = new House();
        house.accept(new HouseRoomDisplayVisitor());
    }

}
