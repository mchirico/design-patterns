//
//  Model.swift
//  DI
//
//  Created by Michael Chirico on 7/15/18.
//  Copyright © 2018 Michael Chirico. All rights reserved.
//

// Ref: https://yoichitgy.github.io/post/dependency-injection-framework-for-swift-introduction-to-swinject/

import Foundation



protocol AnimalType {
  var name: String { get }
  func sound() -> String
}

class Cat: AnimalType {
  let name: String
  
  init(name: String) {
    self.name = name
  }
  
  func sound() -> String {
    return "Meow!"
  }
}

class Dog: AnimalType {
  let name: String
  
  init(name: String) {
    self.name = name
  }
  
  func sound() -> String {
    return "Bow wow!"
  }
}

class PetOwner {
  let pet: AnimalType
  
  init(pet: AnimalType) {
    self.pet = pet
  }
  
  func play() -> String {
    return "I'm playing with \(pet.name). \(pet.sound())"
  }
}




