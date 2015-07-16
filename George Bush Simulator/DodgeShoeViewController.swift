//
//  DodgeShoeViewController.swift
//  George Bush Simulator
//
//  Created by Camper on 7/15/15.
//  Copyright (c) 2015 Camper. All rights reserved.
//

import UIKit

class DodgeShoeViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var shoe: UIImageView!
    
    var width:CGFloat = 0.0
    var height:CGFloat = 0.0
    

    @IBOutlet weak var back: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var screenSize:CGRect = UIScreen.mainScreen().bounds
        width = screenSize.width;
        height = screenSize.height;
        
        // Do any additional setup after loading the view.
        let alert = UIAlertController(title: "Begin", message: "Tilt your device to dodge the shoe being thrown at you", preferredStyle: UIAlertControllerStyle.Alert)
        var action = UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: {
            UIAlertAction in
            self.dismissed()
        })
        alert.addAction(action)
        self.presentViewController(alert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dismissed() ->Void {
        shoe.hidden = false
        var x = shoe.frame.origin.x
        var y = shoe.frame.origin.y
        while(!(x == width/2 && y == height/2)) {
            if(x > width/2) {
                //x = x - .1
            } else if(x < width/2) {
                //x = x + .1
            }
            if(y > height/2) {
                //y = y - .1
            } else if(y < height/2) {
                //y = y + .1
            }
            shoe.frame.origin.x = x
            shoe.frame.origin.y = y
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func back(sender: AnyObject) {
    }
}
