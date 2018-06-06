//
//  ViewController.swift
//  Visitor
//
//  Created by Michael Chirico on 6/6/18.
//  Copyright © 2018 Michael Chirico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var textView0: UITextView!
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func button(_ sender: UIButton) {

    RunThroughHouse().run()
    textView0.text = log.makeString()
    
  }
  
}

