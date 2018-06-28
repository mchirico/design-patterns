//
//  Composite.swift
//  Composite
//
//  Created by Michael Chirico on 6/28/18.
//  Copyright © 2018 Michael Chirico. All rights reserved.
//

import Foundation

protocol File {
  var name: String { get set }
  func open() -> String
}

final class eBook: File {
  var name: String
  var author: String
  
  init(name: String, author: String) {
    self.name = name
    self.author = author
  }
  
  func open() -> String {
    return ("Opening \(name) by \(author) in iBooks...\n")
    
  }
}



final class Music: File {
  var name: String
  var artist: String
  
  init(name: String, artist: String) {
    self.name = name
    self.artist = artist
  }
  
  func open() -> String {
    return ("Playing \(name) by \(artist) in iTunes...\n")
  }
}


final class Folder: File {
  var name: String
  lazy var files: [File] = []
  
  init(name: String) {
    self.name = name
  }
  
  func addFile(file: File) {
    self.files.append(file)
  }
  
  func open() -> String {
    
    var s = "Displaying the following files in \(name)..."
    for file in files {
      s += "\(file.name)\n"
    }
    return s
  }
}


enum FileWriteError: Error {
  case directoryDoesntExist
  case convertToDataIssue
}

class Log {
  
  var file: String
  var fileURL: URL!
  
  init(file: String) {
    self.file = file
    
    if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
      
      self.fileURL = dir.appendingPathComponent(self.file)
    }
    
  }
  
  func write(text: String) {
    do {
      try text.write(to: fileURL, atomically: false, encoding: .utf8)
    } catch {/* error handling here */}
  }
  
  
  func append(text: String) {
    do {
      
      if let fileHandle = FileHandle(forWritingAtPath: self.fileURL.path) {
        fileHandle.seekToEndOfFile()
        
        let encoding = String.Encoding.utf8
        guard let data = text.data(using: encoding) else {
          throw FileWriteError.convertToDataIssue
        }
        
        fileHandle.write(data)
      } else {
        try text.write(to: fileURL, atomically: false, encoding: .utf8)
        
      }
      
    }
    catch {/* error handling here */}
  }
  
  func read() -> String {
    //reading
    var text = ""
    do {
      text = try String(contentsOf: fileURL, encoding: .utf8)
    }
    catch {/* error handling here */}
    return text
  }
  
  
}


