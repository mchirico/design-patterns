//
//  Solid.swift
//  SOLIDplayground
//
//  Created by Michael Chirico on 11/20/18.
//  Copyright © 2018 Michael Chirico. All rights reserved.
//

import Foundation

protocol SwitchProtocol {
  var state: Bool {get set}
  func status() -> Bool
  func flip()
  func f(input: String, completion:  (_ result: String) -> String ) -> String
  func setDevice(d: DeviceProtocol)
}

protocol DeviceProtocol {
  var s: SwitchProtocol {get set}
  func test(_: String) -> String
  var deviceStatus: Bool {get set}
}

class Switch: SwitchProtocol {
  var device: [DeviceProtocol?] = []
  var state = false
  
  func f(input: String, completion: (String) -> String) -> String {
    let a = completion("Inside completion \(input)")
    var mylist = ""
    var comma = " "
    
    for device in device {
      if let d =  device {
        mylist.append("device: ")
        mylist.append("\(comma)\(d.test(a))")
        comma = ", "
      }
    }
    
    return "Here is mylist: \(mylist)"
  }
  
  func setDevice(d: DeviceProtocol) {
    device.append(d)
    
  }
  
  func flip() { state = !state }
  
  func status() -> Bool {
    return state
  }
  
}

class Device: DeviceProtocol {
  var s: SwitchProtocol
  var deviceStatus = false
  
  init(s: SwitchProtocol = Switch()) {
    self.s = s
    self.s.setDevice(d: self)
  }
  
  func replaceSwitch(s: SwitchProtocol) {
    self.s = s
    self.s.setDevice(d: self)
  }
  
  func test(_ txt: String="default") -> String {
    if s.status() {
      deviceStatus = true
      return "Light On"
    }
    deviceStatus = false
    return "Light Off"
  }
  
}
