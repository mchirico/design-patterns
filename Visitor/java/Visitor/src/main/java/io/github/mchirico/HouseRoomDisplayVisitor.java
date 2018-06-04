package io.github.mchirico;

public class HouseRoomDisplayVisitor implements HouseRoomVisitor {

    int bedrooms;
    int doors;


    public String displayTemp(HouseRoom room, int visits) {
        if (room instanceof Thermostat) {
            return " Temp: " + ((Thermostat) room).getTemp(visits);
        }
        return "";
    }


    @Override
    public void visit(House house) {
        System.out.println("Entering the house. " +
                "Door: " + ++doors +
                displayTemp(house, doors));
    }

    @Override
    public void visit(Garage garage) {
        System.out.println("In garage. " +
                "Door: " + ++doors + " Temp: " +
                displayTemp(garage, doors));
    }

    @Override
    public void visit(LivingRoom livingRoom) {
        System.out.println("In livingroom. " +
                "Door: " + ++doors +
                displayTemp(livingRoom, doors));
    }

    @Override
    public void visit(BedRoom bedRoom) {
        System.out.println("In bedroom " + ++bedrooms +
                " Door: " + ++doors +
                displayTemp(bedRoom, doors));
    }

}
