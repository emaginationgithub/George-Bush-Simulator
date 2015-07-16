//
//  InsurgentsViewController.swift
//  George Bush Simulator
//
//  Created by Camper on 7/15/15.
//  Copyright (c) 2015 Camper. All rights reserved.
//

import UIKit
class InsurgentsViewController: UIViewController{
    var clicks = 0
    var time = 12
    
    @IBOutlet weak var timer: UILabel!
    @IBOutlet weak var score: UILabel!
    
    @IBOutlet weak var exit: UIButton!
    @IBOutlet weak var clickme: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSTimer.scheduledTimerWithTimeInterval(1, target: self,selector: Selector("update"), userInfo: nil, repeats: true)
        exit.hidden = true
        clickme.hidden = false
    }
    func update(){
        if time > 0{
            time--
            timer.text = String(time)
        }
        else{
            exit.hidden = false
            clickme.hidden = true
        }
    }
    @IBAction func cookie(sender: AnyObject) {
        clicks++
        score.text = String(clicks)
    }
    @IBAction func exit(sender: AnyObject) {
    }
}