//
//  UITextView+Hyperlink.swift
//  UKit-Basics
//
//  Created by Carlos Morgado on 5/4/23.
//

import UIKit

extension UITextView {
    
    func hyperLink(originalText: String, hyperLink: String, urlString: String) {
        
        let style = NSMutableParagraphStyle()
        style.lineSpacing = 2.5
        
        let attributedOriginalText = NSMutableAttributedString(string: originalText)
        let linkRange = attributedOriginalText.mutableString.range(of: hyperLink)
        let fullRange = NSMakeRange(0, attributedOriginalText.length)
        attributedOriginalText.addAttribute(NSAttributedString.Key.link, value: urlString, range: linkRange)
        attributedOriginalText.addAttribute(NSAttributedString.Key.paragraphStyle, value: style, range: fullRange)
        attributedOriginalText.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.textColor as Any, range: fullRange)
        attributedOriginalText.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFUIDisplay-Light", size: 16) as Any, range: fullRange)
        
        self.linkTextAttributes = [
            kCTForegroundColorAttributeName: UIColor.systemBlue,
            kCTUnderlineStyleAttributeName: NSUnderlineStyle.single.rawValue,
        ] as [NSAttributedString.Key : Any]
        
        self.attributedText = attributedOriginalText
    }
}
