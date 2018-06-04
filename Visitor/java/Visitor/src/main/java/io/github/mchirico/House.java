package io.github.mchirico;

public class House implements HouseRoom {

    HouseRoom[] rooms;

    public House() {
        rooms = new HouseRoom[]{
                new Garage(),
                new LivingRoom(),
                new BedRoom(),
                new BedRoom(),
                new BedRoom()
        };
    }


    @Override
    public void accept(HouseRoomVisitor houseRoomVisitor) {

        houseRoomVisitor.visit(this);

        for (int i = 0; i < rooms.length; i++) {
            rooms[i].accept(houseRoomVisitor);
        }
        

    }
}

