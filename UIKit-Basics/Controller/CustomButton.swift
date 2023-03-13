//
//  CustomButton.swift
//  Control and Text Views
//
//  Created by Carlos Morgado on 10/3/23.
//

import UIKit

class CustomButton: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    func initSubviews() {
        
        let nib = UINib(nibName: "CustomView", bundle: nil)
        
        guard let view = nib.instantiate(withOwner: self, options: nil).first as?
                UIView else {fatalError("Unable to convert nib")}
        
        view.frame = bounds
        
    }
}
