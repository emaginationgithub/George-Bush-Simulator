//
//  DodgeShoeViewController.swift
//  George Bush Simulator
//
//  Created by Camper on 7/15/15.
//  Copyright (c) 2015 Camper. All rights reserved.
//

import UIKit
import CoreMotion

class DodgeShoeViewController: UIViewController {
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var shoe: UIImageView!
    
    var width:CGFloat = 0.0
    var height:CGFloat = 0.0
    

    @IBOutlet weak var back: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //sendAlert()
        var motionManager = CMMotionManager()
        if motionManager.accelerometerAvailable == true {
            // 2
            motionManager.startAccelerometerUpdatesToQueue(NSOperationQueue.currentQueue(), withHandler:{
                data, error in
                
                // 3
                if data.acceleration.x < -1.0 {
                    self.shoe.image = UIImage(contentsOfFile: "shoe2.jpg")
                }
                    
                else if data.acceleration.x > 1.0 {
                    self.shoe.image = UIImage(contentsOfFile: "shoe3.jpg")
                }
                
                else {
                    self.shoe.image = UIImage(contentsOfFile: "shoe1.jpg")
                }
                
            })
            
        }
    }
    override func viewDidAppear(animated: Bool) {
        var screenSize:CGRect = UIScreen.mainScreen().bounds
        width = screenSize.width;
        height = screenSize.height;
        //NSLog("\(width)");
        //NSLog("\(height)");
        sendAlert()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sendAlert() {
        let alert = UIAlertController(title: "Begin", message: "Tilt your device to dodge the shoe being thrown at you.", preferredStyle: UIAlertControllerStyle.Alert)
        let action = UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: {
            alertAction in
            self.dismissed()
        })
        alert.addAction(action)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func dismissed() ->Void {
        //NSLog("Worked")
        shoe.hidden = false;
        var x = shoe.frame.origin.x
        var y = shoe.frame.origin.y
        UIView.animateWithDuration(0.7, delay: 0.1, options: .CurveEaseOut, animations: {
            var shoeArea = self.shoe.frame
            shoeArea.origin.x = self.width/3
            shoeArea.origin.y = self.height/3
            
            self.shoe.frame = shoeArea
            }, completion: { finished in
                self.back.hidden = false
        })
    }
    
    @IBAction func goBack(sender: AnyObject) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
