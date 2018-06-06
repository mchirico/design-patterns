

protocol DrawAPI {
  func drawCircle(radius: Int, x: Int, y: Int) -> String
}

class RedCircle: DrawAPI {
  func drawCircle(radius: Int, x: Int, y: Int) -> String {
    return "RedCircle \(x) \(y) \(radius)"
  }
}

class GreenCircle: DrawAPI {
  func drawCircle(radius: Int, x: Int, y: Int) -> String {
    return "GreenCircle \(x) \(y) \(radius)"
  }
}

protocol Shape {
  var drawAPI: DrawAPI {get}
  func draw() -> String
}


class Circle: Shape{
  
  var drawAPI: DrawAPI
  var x,y,radius: Int
  
  func draw() -> String {
    return self.drawAPI.drawCircle(radius: self.radius,x: self.x,y: self.y)
  }
  
  init(x: Int, y: Int, radius: Int, drawAPI: DrawAPI){
    self.x = x
    self.y = y
    self.radius = radius
    self.drawAPI = drawAPI
  }
}


class BridgePatternDemo {
  let redCircle = Circle(x: 100,y: 100,radius: 10, drawAPI: RedCircle())
  func draw() -> String {
    return redCircle.draw()
  }
}


class Example {
  var a = 0
  var b: String
  
  init(a: Int) {
    self.a = a
    b = "name"
  }
}
