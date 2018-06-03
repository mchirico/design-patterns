package io.github.mchirico;

public class HouseRoomDisplayVisitor implements HouseRoomVisitor {

    @Override
    public void visit(House house) {
        System.out.println("Entering the house.");
    }

    @Override
    public void visit(Garage garage) {
        System.out.println("In garage.");
    }

    @Override
    public void visit(LivingRoom livingRoom) {
        System.out.println("In livingroom.");
    }


}
