//
//  UILabel+Color.swift
//  UKit-Basics
//
//  Created by Carlos Morgado on 27/3/23.
//

import UIKit

extension UILabel {
    func labelColorChange(For givenText: NSString,into color: UIColor, from locationNumber: Int, to length: Int){
        let myString:NSString = givenText
        var myMutableString = NSMutableAttributedString()
        myMutableString = NSMutableAttributedString(string: myString as String, attributes: [NSAttributedString.Key.font:UIFont(name: "Courier New", size: 14.0)!])
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: NSRange(location: locationNumber,length: length))
        // set label Attribute
            self.attributedText = myMutableString
        }
   
}





