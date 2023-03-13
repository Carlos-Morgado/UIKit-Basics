//
//  UILabell+LineSpacing.swift
//  Control and Text Views
//
//  Created by Carlos Morgado on 9/3/23.
//

import UIKit

extension UILabel {
    func setLineSpacing(lineSpacing: CGFloat = 0.0) {
        guard let labelText = self.text else { return }
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineSpacing
        
        let attributedString:NSMutableAttributedString
        
        if let labelattributedText = self.attributedText {
            attributedString = NSMutableAttributedString(attributedString: labelattributedText)
        } else {
            attributedString = NSMutableAttributedString(string: labelText)
        }
        
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0,attributedString.length))
        
        self.attributedText = attributedString
    }
}
