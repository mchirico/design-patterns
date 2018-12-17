//
//  Facade.swift
//  Facade
//
//  Created by Michael Chirico on 11/18/18.
//  Copyright © 2018 Michael Chirico. All rights reserved.
//

import Foundation

protocol Shape {
  func draw() -> String
}

class Rectangle: Shape {
  func draw() -> String {
    return "Rectangle"
  }
}

class Circle: Shape {
  func draw() -> String {
    return "Circle"
  }
}

class Circle2: Circle {
  override func draw() -> String {
    print("Circle2")
    return "Circle2"
  }
}

class Square: Shape {
  func draw() -> String {
    return "Square"
  }
}

class ShapeMaker {
  private var rectangle: Rectangle
  private var circle: Circle
  
  
  init(rectangle: Rectangle = Rectangle(),
       circle: Circle = Circle()) {
    self.rectangle = rectangle
    self.circle = circle
  }
  
  func update(rectangle: Rectangle = Rectangle(),
              circle: Circle = Circle()) {
    self.rectangle = rectangle
    self.circle = circle
  }
  
  func drawRectangle() -> String {
    return self.rectangle.draw()
  }
  
  func drawCircle() -> String {
    return self.circle.draw()
  }
  
  
}
