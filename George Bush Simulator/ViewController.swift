//
//  ViewController.swift
//  George Bush Simulator
//
//  Created by Camper on 7/14/15.
//  Copyright (c) 2015 Camper. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var spooks:AVAudioPlayer = AVAudioPlayer()

    @IBOutlet weak var Play: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var path = NSBundle.mainBundle().pathForResource("spooks", ofType: "mp3")
        spooks = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: path!), error: nil)
        spooks.prepareToPlay()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func spooks(sender: AnyObject) {
        spooks.play()
    }
    
}

