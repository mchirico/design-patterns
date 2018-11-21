//
//  Solid.swift
//  SOLIDplayground
//
//  Created by Michael Chirico on 11/20/18.
//  Copyright © 2018 Michael Chirico. All rights reserved.
//

import Foundation

protocol S {
  var state: Bool {get set}
  func status() -> Bool
  func flip()
  func f(input: String, completion:  (_ result: String) -> String ) -> String
  func setDevice(d: DeviceProtocol)
}

protocol DeviceProtocol {
  var s: S {get set}
  func test() -> String
  var light: String {get set}
}

class Switch: S {
  var device: DeviceProtocol?
  var state = false
  
  func f(input: String, completion: (String) -> String) -> String {
    let a = completion("Inside completion \(input)")
    if let device = device {
      return device.test()
    }
    return "Here is a: \(a)"
  }
  
  func setDevice(d: DeviceProtocol) {
    device = d
  }
  
  func flip() { state = !state }
  
  func status() -> Bool {
    return state
  }
  
}

class Device: DeviceProtocol {
  var s: S

  var light = "off"
  
  init(s: S = Switch()) {
    self.s = s
    self.s.setDevice(d: self)
  }
  
  func test() -> String {
    if s.status() {
      light = "on"
      return "Light On"
    }
    light = "off"
    return "Light Off"
  }
  
}
