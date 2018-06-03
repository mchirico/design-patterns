package io.github.mchirico;

public class House implements HouseRoom {

    HouseRoom[] rooms;

    public House() {
        rooms = new HouseRoom[]{new Garage(), new LivingRoom()};
    }


    @Override
    public void accept(HouseRoomVisitor houseRoomVisitor) {
        for (int i = 0; i < rooms.length; i++) {
            rooms[i].accept(houseRoomVisitor);
        }
        houseRoomVisitor.visit(this);
    }
}

