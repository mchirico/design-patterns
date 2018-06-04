package io.github.mchirico;

public class HouseRoomDisplayVisitor implements HouseRoomVisitor {

    int bedrooms;
    int doors;

    @Override
    public void visit(House house) {
        System.out.println("Entering the house. " +
                "Door: "+ ++doors);
    }

    @Override
    public void visit(Garage garage) {
        System.out.println("In garage. " +
                "Door: "+ ++doors);
    }

    @Override
    public void visit(LivingRoom livingRoom) {
        System.out.println("In livingroom. " +
                "Door: "+ ++doors);
    }

    @Override
    public void visit(BedRoom bedRoom) {
        System.out.println("In bedroom " + ++bedrooms +
        " Door: "+ ++doors);
    }

}
