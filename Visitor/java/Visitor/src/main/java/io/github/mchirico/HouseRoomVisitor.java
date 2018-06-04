package io.github.mchirico;

public interface HouseRoomVisitor {
    public void visit(House house);

    public void visit(Garage garage);

    public void visit(LivingRoom livingRoom);

    public void visit(BedRoom bedRoom);

}
