//
//  Http.swift
//  MocTests
//
//  Created by Michael Chirico on 6/30/18.
//  Copyright © 2018 Michael Chirico. All rights reserved.
//

import Foundation
class Data {
  
  static fileprivate let queue = DispatchQueue(label: "requests.queue", qos: .utility)
  static fileprivate let mainQueue = DispatchQueue.main
  
  fileprivate class func make(session: URLSession = URLSession.shared, request: URLRequest, closure: @escaping (_ json: [String: Any]?, _ error: Error?)->()) {
    let task = session.dataTask(with: request) { data, response, error in
      queue.async {
        guard error == nil else {
          return
        }
        guard let data = data else {
          return
        }
        
        do {
          if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
            mainQueue.async {
              closure(json, nil)
            }
          }
        } catch let error {
          print(error.localizedDescription)
          mainQueue.async {
            closure(nil, error)
          }
        }
      }
    }
    
    task.resume()
  }
  
  class func searchRequest(term: String, closure: @escaping (_ json: [String: Any]?, _ error: Error?)->()) {
    let url = URL(string: "https://itunes.apple.com/search?term=\(term.replacingOccurrences(of: " ", with: "+"))")
    let request = URLRequest(url: url!)
    Data.make(request: request) { json, error in
      closure(json, error)
    }
  }
}


