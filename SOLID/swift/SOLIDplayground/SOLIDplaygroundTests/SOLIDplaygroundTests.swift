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
      s.flip()
      let device = Device(s: s)
      
      let r = s.f(input: "command input ...") {(result: String) in
        return ("got back: \(result)")
      }
      
      XCTAssert(r == "Light On", "Simple test")
      XCTAssert(device.light == "on", device.light)

    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
