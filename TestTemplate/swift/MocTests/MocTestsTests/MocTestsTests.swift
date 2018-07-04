//
//  MocTestsTests.swift
//  MocTestsTests
//
//  Created by Michael Chirico on 6/28/18.
//  Copyright © 2018 Michael Chirico. All rights reserved.
//

import XCTest
@testable import MocTests

class MocTestsTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testExample() {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
  }
  
  func testMyClass() {
    
    var t = Thingy()
    t.update(i: 30)
    XCTAssert(30 == t.get())
    
    
  }
  
  func testMoc(){

    

  }
  
  func testHttp() {
    let url = URL(string: "https://www.stackoverflow.com")
    
    let task = URLSession.shared.dataTask(with: url!) {(data, response, error) in
      print(NSString(data: data!, encoding: String.Encoding.utf8.rawValue) ?? "not found")
   
    print("here...")
    }
    
    
    task.resume()
    
    print("done")
  }
  
  func testHttp2(){
    Data.searchRequest(term: "jack johnson") { json, error  in
      print(error ?? "nil")
      print(json ?? "nil")
      print("Update views")
    }
    
    //XCTAssert(json == "stuff")

    XCTAssertTrue(1 == 1,"mo")
  }
  
  
  
  
  func testPerformanceExample() {
    // This is an example of a performance test case.
    self.measure {
      // Put the code you want to measure the time of here.
    }
  }
  
}
