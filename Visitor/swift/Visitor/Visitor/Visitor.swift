class Logger {
  var messages:[String] = []
  
  func log(msg: String){
    self.messages.append(msg)
  }
  
  func write(){
    for message in messages {
      print(message)
    }
  }
  
  func makeString() -> String {
    var s=""
    var separator=""
    for message in messages {
      s=s + separator + message
      separator="\n"
    }
    return s
  }
  
}

let log = Logger()


protocol HouseRoom {
  func accept(houseRoomVisitor: HouseRoomVisitor)
}

protocol HouseRoomVisitor {
  
  func visit(house: House)
  func visit(bedRoom: BedRoom)
  func visit(garage: Garage)
  func visit(livingRoom: LivingRoom)
}

class Garage: HouseRoom {
  func accept(houseRoomVisitor: HouseRoomVisitor) {
    houseRoomVisitor.visit(garage: self)
  }
}

class BedRoom: HouseRoom {
  func accept(houseRoomVisitor: HouseRoomVisitor) {
    houseRoomVisitor.visit(bedRoom: self)
  }
}

class LivingRoom: HouseRoom {
  func accept(houseRoomVisitor: HouseRoomVisitor) {
    houseRoomVisitor.visit(livingRoom: self)
  }
}


class House: HouseRoom {
  let rooms: [HouseRoom] = [Garage(),
                            LivingRoom(),
                            BedRoom(),
                            BedRoom(),
                            BedRoom()]
  init(){}
  func accept(houseRoomVisitor: HouseRoomVisitor) {
    houseRoomVisitor.visit(house: self)
    for room in rooms {
      room.accept(houseRoomVisitor: houseRoomVisitor)
    }
  }
}

class HouseRoomDisplayVisitor: HouseRoomVisitor {
  
  var bedroom: Int = 0
  var doors: Int = 0
  
  func visit(house: House) {
    
    doors+=1
    log.log(msg: "Entering the House " +
      "Door: \(doors)")
    
    
  }
  
  func visit(bedRoom: BedRoom) {
    doors+=1
    log.log(msg:"Entering the BedRoom " +
      "Door: \(doors)")
    
  }
  
  func visit(garage: Garage) {
    doors+=1
    log.log(msg:"Entering the Garage " +
      "Door: \(doors)")
    
  }
  
  func visit(livingRoom: LivingRoom) {
    doors+=1
    log.log(msg: "Entering the LivingRoom " +
      "Door: \(doors)")
    
  }
  
}


struct RunThroughHouse {
  
  func run(){
    let house = House()
    house.accept(houseRoomVisitor: HouseRoomDisplayVisitor())
    
  }
  
  func output() -> String {
    return log.makeString()
  }
}



