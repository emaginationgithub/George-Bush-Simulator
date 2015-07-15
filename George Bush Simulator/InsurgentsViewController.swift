//
//  InsurgentsViewController.swift
//  George Bush Simulator
//
//  Created by Camper on 7/15/15.
//  Copyright (c) 2015 Camper. All rights reserved.
//

import UIKit
class InsurgentsViewController: UIViewController{
    var clicks = 0;
    var time = 12;
    
    @IBOutlet weak var timer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("update"), userInfo: nil, repeats: true)
    }
    func update(){
        if time > 0{
            time++;
            timer.text = String(time)
        }
        else{
            //QUIT ME
        }
    }
    @IBAction func cookie(sender: AnyObject) {
        clicks++;
    }
}