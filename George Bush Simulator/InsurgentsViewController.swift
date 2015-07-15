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
    
    @IBOutlet weak var exit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSTimer.scheduledTimerWithTimeInterval(1, target: self,selector: Selector("update"), userInfo: nil, repeats: true)
        exit.hidden = true
    }
    func update(){
        if time > 0{
            time--;
            timer.text = String(time)
        }
        else{
            exit.hidden = false
        }
    }
    @IBAction func cookie(sender: AnyObject) {
        clicks++;
    }
    @IBAction func exit(sender: AnyObject) {
    }
}