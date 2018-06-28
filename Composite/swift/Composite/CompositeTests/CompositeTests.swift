//
//  CompositeTests.swift
//  CompositeTests
//
//  Created by Michael Chirico on 6/28/18.
//  Copyright © 2018 Michael Chirico. All rights reserved.
//

import XCTest
@testable import Composite

class CompositeTests: XCTestCase {
    
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
      
      let name = "The Shrew"
      let author = "E.B. White"
      let eb = eBook(name: name,author: author)
      let expected = "Opening \(name) by \(author) in iBooks...\n"
      XCTAssert(expected == eb.open())

      
      
    }
  
  
  func testTree(){
    let psychoKiller = Music(name: "Psycho Killer",
    artist: "The Talking Heads")
    let rebelRebel = Music(name: "Rebel Rebel",
                           artist: "David Bowie")
    
    let justKids = eBook(name: "Just Kids",
                         author: "Patti Smith")
    
    let documents = Folder(name: "Documents")
    let musicFolder = Folder(name: "Great 70s Music")
    
    documents.addFile(file: musicFolder)
    documents.addFile(file: justKids)
    
    musicFolder.addFile(file: psychoKiller)
    musicFolder.addFile(file: rebelRebel)
    
   
    
    print(documents.open())
   
  }
  
  func testFile(){
    
    let log = Log(file: "test.log")
    log.write(text: "This is a test\n")
    log.append(text: "more data\n")
    log.append(text: "more data\n")
  }
  
  func testRead(){
    let log = Log(file: "test.log")
    print(log.read())
  }
  
  
  
  
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
