//
//  SOLIDplaygroundTests.swift
//  SOLIDplaygroundTests
//
//  Created by Michael Chirico on 11/20/18.
//  Copyright © 2018 Michael Chirico. All rights reserved.
//

import XCTest
@testable import SOLIDplayground

class SOLIDplaygroundTests: XCTestCase {

    override func setUp() {

    }

    override func tearDown() {
    }

    func testExample() {
      
      let s = Switch()
      let s2 = Switch()
      s2.flip()
     
      let device = Device(s: s)
      device.replaceSwitch(s: s2)
      
      let r = s.f(input: "command input ...") {(result: String) in
        return ("got back: \(result)")
      }
      
      XCTAssert(r == "Light On", "Simple test")
      XCTAssert(device.deviceStatus == true, "\(device.deviceStatus)")
      
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
