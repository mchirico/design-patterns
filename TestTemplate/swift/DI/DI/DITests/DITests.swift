//
//  DITests.swift
//  DITests
//
//  Created by Michael Chirico on 7/15/18.
//  Copyright © 2018 Michael Chirico. All rights reserved.
//

import XCTest
@testable import DI
import Swinject

class DITests: XCTestCase {
    
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
  
  func testCat() {
    
    let c = Cat(name: "Mouse")
    XCTAssert(c.sound() == "Meow!")

  }
  
  func testPetOwner() {
    
    let p = PetOwner(pet: Cat(name: "Mouse"))
    XCTAssert(p.play() == "I'm playing with Mouse. Meow!")
    
    let p2 = PetOwner(pet: Dog(name: "Cat"))
    XCTAssert(p2.play() == "I'm playing with Cat. Bow wow!")

  }
  
  func testDIPetOwner() {
    
    let container = Container()
    container.register(AnimalType.self) { _ in Cat(name: "Mouse") }
    container.register(PetOwner.self) { r in
      PetOwner(pet: r.resolve(AnimalType.self)!)
    }
    
    let p = container.resolve(PetOwner.self)!
    XCTAssert(p.play() == "I'm playing with Mouse. Meow!")
    
    
  }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
