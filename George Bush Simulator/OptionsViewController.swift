//
//  OptionsViewController.swift
//  George Bush Simulator
//
//  Created by Camper on 7/15/15.
//  Copyright (c) 2015 Camper. All rights reserved.
//

import UIKit
import AVFoundation

class OptionsViewController: UIViewController {
    var meme:AVAudioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var path = NSBundle.mainBundle().pathForResource("spooks", ofType: "mp3")
        meme = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: path!), error: nil)
        meme.prepareToPlay()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func armInsurgents(sender: AnyObject) {
        
    }

    @IBAction func newWord(sender: AnyObject) {
        
    }
    
    @IBAction func invade(sender: AnyObject) {
        
    }
    
    @IBAction func doTitanic(sender: AnyObject) {
        
    }
    
    @IBAction func dodgeShoe(sender: AnyObject) {
        
    }
    
    @IBAction func saySomething(sender: AnyObject) {
        
    }
}
