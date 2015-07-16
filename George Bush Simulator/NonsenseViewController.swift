
//
//  NonsenseViewController.swift
//  George Bush Simulator
//
//  Created by Camper on 7/16/15.
//  Copyright (c) 2015 Camper. All rights reserved.
//

import UIKit

extension Character
{
    func unicodeScalarCodePoint() -> Int
    {
        let characterString = String(self)
        let scalars = characterString.unicodeScalars
        
        return Int(scalars[scalars.startIndex].value)
    }
}
extension String {
    
    // java, javascript, PHP use 'split' name, why not in Swift? :)
    func split(splitter: String) -> Array<String> {
        let regEx = NSRegularExpression(pattern: splitter, options: NSRegularExpressionOptions(), error: nil)
        let stop = "<SomeStringThatYouDoNotExpectToOccurInSelf>"
        let modifiedString = regEx!.stringByReplacingMatchesInString (self, options: NSMatchingOptions(),
            range: NSMakeRange(0, count(self)),
            withTemplate:stop)
        return modifiedString.componentsSeparatedByString(stop)
    }
}

class NonsenseViewController: UIViewController{
    
    @IBOutlet weak var thing: UILabel!
    @IBAction func say(sender: AnyObject) {
        
    }
    
    func ikea(word: String) -> String{
        var out:[Character] = []
        var repeat:[Character] = ["a", "e", "i", "n", "r"]
        
        var seed = 0
        
        let warr:[Character] = Array(word)
        if(warr.count == 0){
            return ""
        }
        
        for (i, _) in enumerate(warr){
            seed += warr[i].unicodeScalarCodePoint()
        }
        seed = seed / warr.count
        
        var reps = [warr.map({contains(repeat, $0)})]
        
        for (i, _) in enumerate(warr){
            var c = warr[i]
            var r:Bool = fixitswift(c, i: Double(i), warr: warr)
            
            out.append(c)
            if(r && seed > i + 100){
                out.append(c)
            }
        }
        var output = String(out)
        output = output.stringByReplacingOccurrencesOfString("o", withString: "ö")
        output = output.stringByReplacingOccurrencesOfString("u", withString: "ü")
        output = output.stringByReplacingOccurrencesOfString("e", withString: "ë")
        if(seed > 105){
            output = output.stringByReplacingOccurrencesOfString("aa", withString: "k")
        }
        if(Double(seed) > 106.5){
            output = output.stringByReplacingOccurrencesOfString("ed", withString: "ea")
        }
        if(seed > 102){
            output = output.stringByReplacingOccurrencesOfString("ch", withString: "je")
        }
        else{
            output = output.stringByReplacingOccurrencesOfString("ch", withString: "ea")
        }
        if(seed > 104 && seed < 105){
            output = output.stringByReplacingOccurrencesOfString("ee", withString: "at")
        }
        if(seed > 110){
            output = output.stringByReplacingOccurrencesOfString("rt", withString: "ck")
        }
        if(seed > 102 && seed < 105){
            output = output.stringByReplacingOccurrencesOfString("by", withString: "pa")
        }
        if(seed > 109){
            output = output.stringByReplacingOccurrencesOfString("yy", withString: "")
        }
        if(Double(seed) > 107.5){
            output = output.stringByReplacingOccurrencesOfString("eee", withString: "i")
        }
        else{
            output = output.stringByReplacingOccurrencesOfString("eee", withString: "e")
        }
        if(Double(seed) > 104.9){
            output = output.stringByReplacingOccurrencesOfString("er", withString: "vo")
        }
        if(seed < 105){
            output = output.stringByReplacingOccurrencesOfString("be", withString: "nd")
        }
        if(seed > 106){
            output = output.stringByReplacingOccurrencesOfString("ht", withString: "pa")
        }
        if(seed > 109){
            output = output.stringByReplacingOccurrencesOfString("hh", withString: "av")
        }
        if(seed < 105){
            output = output.stringByReplacingOccurrencesOfString("am", withString: "dt")
        }
        return output
    }
    
    func fixitswift(c: Character, i: Double, warr: [Character]) -> Bool{
        var co = Double(warr.count)
        if(c == "a" && i > co * 0.5){
            return true
        }
        if(c == "b" && i > co * 0.5){
            return true
        }
        if(c == "c" && i > co * 0.5){
            return true
        }
        if(c == "d" && i > co * 0.5){
            return true
        }
        if(c == "e" && i > co * 0.5){
            return true
        }
        if(c == "f" && i > co * 0.5){
            return true
        }
        if(c == "g" && i > co * 0.5){
            return true
        }
        if(c == "h" && i > co * 0.5){
            return true
        }
        if(c == "i" && i > co * 0.5){
            return true
        }
        if(c == "j" && i > co * 0.5){
            return true
        }
        if(c == "k" && i < co * 0.75){
            return true
        }
        if(c == "l"){
            return true
        }
        if(c == "m" && i > co * 0.5){
            return true
        }
        if(c == "n" && i != 0){
            return true
        }
        if(c == "o" && i > co * 0.5){
            return true
        }
        if(c == "p" && i > co * 0.5){
            return true
        }
        if(c == "q" && i > co * 0.5){
            return true
        }
        if(c == "r" && i < co * 0.25){
            return true
        }
        if(c == "s" && i > co * 0.6){
            return true
        }
        if(c == "t" && i > co * 0.5){
            return true
        }
        if(c == "u" && i > co * 0.5){
            return true
        }
        if(c == "v" && i > co * 0.5){
            return true
        }
        if(c == "w" && i > co * 0.5){
            return true
        }
        if(c == "x" && i > co * 0.5){
            return true
        }
        if(c == "y" && i > co * 0.5){
            return true
        }
        if(c == "z" && i > co * 0.5){
            return true
        }
        return false
    }
}