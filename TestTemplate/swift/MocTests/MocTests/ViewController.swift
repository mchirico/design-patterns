//
//  ViewController.swift
//  MocTests
//
//  Created by Michael Chirico on 6/28/18.
//  Copyright © 2018 Michael Chirico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func button0(_ sender: UIButton) {
    print("test")
    Data.searchRequest(term: "jack johnson") { json, error  in
      print(error ?? "nil")
      print(json ?? "nil")
      print("Update views")
    }
    
  }
  
  @IBAction func button1(_ sender: UIButton) {
  }
  
  
}

