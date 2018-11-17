//
//  ViewController.swift
//  DI
//
//  Created by Michael Chirico on 7/15/18.
//  Copyright © 2018 Michael Chirico. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func button(_ sender: UIButton) {
    let string = "Hello, World! This is a test... to see if you're" +
    " listening... This is only a test..."
    let utterance = AVSpeechUtterance(string: string)

    utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
    utterance.volume = 1
    utterance.rate = 0.59
    utterance.pitchMultiplier = 1
    utterance.postUtteranceDelay = 2
    
//    let allVoices = AVSpeechSynthesisVoice.speechVoices()
//    utterance.voice = AVSpeechSynthesisVoice(identifier: allVoices[2].identifier)
//
    let synthesizer = AVSpeechSynthesizer()
    synthesizer.speak(utterance)
    
  }
  
}

