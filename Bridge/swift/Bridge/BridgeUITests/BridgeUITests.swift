//
//  BridgeUITests.swift
//  BridgeUITests
//
//  Created by Michael Chirico on 6/5/18.
//  Copyright © 2018 Michael Chirico. All rights reserved.
//

import XCTest

// Added by me...
@testable import Bridge

class BridgeUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
      
      
      
      
      let app = XCUIApplication()
      let textField = app.otherElements.containing(.button, identifier:"Press").children(matching: .textField).element
      textField.tap()
      textField.typeText("this is here")
      textField.swipeRight()
      app.buttons["Press"].tap()
      
      let txtField = app.textFields["text0"]
      XCTAssert(txtField.exists)
      XCTAssert(txtField.value != nil)

      let txt = txtField.value as! String
      XCTAssert(txt == "Clear")
    
      
      
    }
    
}
