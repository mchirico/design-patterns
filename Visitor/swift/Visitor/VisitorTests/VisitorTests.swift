//
//  VisitorTests.swift
//  VisitorTests
//
//  Created by Michael Chirico on 6/6/18.
//  Copyright © 2018 Michael Chirico. All rights reserved.
//

import XCTest
@testable import Visitor

class VisitorTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
  
  func testLogger(){
    
    let ExpectedResult = "test0\ntest1"
    
    let log = Logger()
    log.log(msg: "test0")
    log.log(msg: "test1")
    let result = log.makeString()
    
    
    
    XCTAssert(result == ExpectedResult)
   // XCTFail("\n*****here: ->\(result)<-\n\n")
  }
  
    
    func testExample() {
        RunThroughHouse().run()
        print(log.makeString())
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
