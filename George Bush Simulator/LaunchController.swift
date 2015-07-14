//
//  LaunchController.swift
//  George Bush Simulator
//
//  Created by Camper on 7/14/15.
//  Copyright (c) 2015 Camper. All rights reserved.
//

import UIKit
import AVFoundation

class LaunchController: UIViewController{
    var spooks:AVAudioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        var path = NSBundle.mainBundle().pathForResource("Carol of the WAA", ofType: "mp3")
        spooks = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: path!), error: nil)
        spooks.prepareToPlay()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func spookysecrets(sender: AnyObject) {
        spooks.play()
    }
}