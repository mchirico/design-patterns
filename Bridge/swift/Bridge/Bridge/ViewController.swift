//
//  ViewController.swift
//  Bridge
//
//  Created by Michael Chirico on 6/5/18.
//  Copyright © 2018 Michael Chirico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var text0: UITextField!
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func buttonPress(_ sender: UIButton) {
    
    text0.text = "Clear"
  }
  
  
  
}

