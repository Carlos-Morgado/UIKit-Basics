//
//  UITextView+Placeholder.swift
//  UKit-Basics
//
//  Created by Carlos Morgado on 26/4/23.
//

import UIKit

extension UITextView {
    func addPlaceholder(_ text: String, color: UIColor) {
        let placeholderLabel = UILabel()
        placeholderLabel.text = text
        placeholderLabel.textColor = color
        placeholderLabel.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        placeholderLabel.sizeToFit()
        placeholderLabel.frame.origin = CGPoint(x: 5, y: self.font!.pointSize / 2)
        placeholderLabel.isHidden = !self.text.isEmpty
        placeholderLabel.tag = 100
        self.addSubview(placeholderLabel)
        self.delegate = self
    }
    
}

extension UITextView: UITextViewDelegate {
    public func textViewDidChange(_ textView: UITextView) {
        guard let placeholderLabel = self.viewWithTag(100) as? UILabel else { return }
        placeholderLabel.isHidden = !textView.text.isEmpty
    }
    
    public func textViewDidBeginEditing(_ textView: UITextView) {
        guard let placeholderLabel = self.viewWithTag(100) as? UILabel else { return }
        placeholderLabel.isHidden = !textView.text.isEmpty
    }
    
    public func textViewDidEndEditing(_ textView: UITextView) {
        guard let placeholderLabel = self.viewWithTag(100) as? UILabel else { return }
        placeholderLabel.isHidden = !textView.text.isEmpty
    }
    
}

