//
//  UITextView+LinSpacing.swift
//  UKit-Basics
//
//  Created by Carlos Morgado on 11/4/23.
//

import UIKit

extension UITextView {
    /// Gets & Sets line spacing via `typingAttributes`.
    /// Preserves defined `style` and `textColor`.
    var lineSpacing: CGFloat {
        get {
            if let style = typingAttributes[NSAttributedString.Key.paragraphStyle] {
                return (style as! NSMutableParagraphStyle).lineSpacing
            }
            return 0
        }
        set {
            let style = NSMutableParagraphStyle()
            style.lineSpacing = newValue
            let attributes = [
                NSAttributedString.Key.paragraphStyle: style
            ]
            typingAttributes = attributes as [NSAttributedString.Key : Any]
        }
    }
}

