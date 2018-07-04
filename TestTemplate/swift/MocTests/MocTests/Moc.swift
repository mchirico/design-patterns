//
//  Moc.swift
//  MocTests
//
//  Created by Michael Chirico on 6/29/18.
//  Copyright © 2018 Michael Chirico. All rights reserved.
//

import Foundation

struct Thingy {

  var a = 3
  var k = 12
  
  mutating func update(i index: Int){
    self.a = index
  }
  
  mutating func get() -> Int {
    return self.a
  }
  
}


