//
//  FacadeTests.swift
//  FacadeTests
//
//  Created by Michael Chirico on 11/18/18.
//  Copyright © 2018 Michael Chirico. All rights reserved.
//

import XCTest
@testable import Facade

class FacadeTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
      
      let shapeMaker = ShapeMaker()
      shapeMaker.update(circle: Circle2())
      let expected = "\n\nExpected Circle2\n\n"
      
      XCTAssert(shapeMaker.drawCircle() == "Circle2", expected)
      
      
      
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
