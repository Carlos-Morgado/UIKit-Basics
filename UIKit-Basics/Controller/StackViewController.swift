//
//  StackViewController.swift
//  UKit-Basics
//
//  Created by Carlos Morgado on 10/4/23.
//

import UIKit

class StackViewController: UIViewController {
    
    // OUTLETS
    @IBOutlet weak private var generalContentView: UIView!
    @IBOutlet weak private var uiStackViewMainTitle: UILabel!
    @IBOutlet weak private var uiStackViewDefinition: UILabel!
    @IBOutlet weak private var lineSeparator1: UIView!
    @IBOutlet weak private var declarationTitle: UILabel!
    @IBOutlet weak private var declarationBoxView: UIView!
    @IBOutlet weak private var declarationCode: UILabel!
    
    // LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()

    }
    
    // ACTIONS

}


// MARK: - EXTENSIONS

private extension StackViewController {
    func configView() {
        view.backgroundColor = .basicBackgroundColor
        
        generalContentView.backgroundColor = .basicBackgroundColor
        
        title = "UIStackView"
        
        configUIStackViewMainTitle()
        
        configUIStackViewDefinition()
        
        lineSeparator1.backgroundColor = .lineSeparatorColor
        
        configDeclarationTitle()
        
        declarationBoxView.backgroundColor = .cellColor
        declarationBoxView.layer.cornerRadius = 17
        
        configDeclarationCode()
    }
    
    func configUIStackViewMainTitle() {
        uiStackViewMainTitle.text = "UIImageView"
        uiStackViewMainTitle.textAlignment = .left
        uiStackViewMainTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 35)
        uiStackViewMainTitle.textColor = .textColor
    }
    
    func configUIStackViewDefinition() {
        uiStackViewDefinition.text = "UIStackView is a streamlined interface for laying out a collection of views in either a column or a row. Stack views let you leverage the power of Auto Layout, creating user interfaces that can dynamically adapt to the device’s orientation, screen size, and any changes in the available space."
        uiStackViewDefinition.font = UIFont(name: "SFUIDisplay-Light", size: 18)
        uiStackViewDefinition.textColor = .textColor
        uiStackViewDefinition.numberOfLines = 0
        uiStackViewDefinition.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configDeclarationTitle () {
        declarationTitle.text = "Declaration"
        declarationTitle.textAlignment = .left
        declarationTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 25)
        declarationTitle.textColor = .textColor
    }
    
    func configDeclarationCode() {
        let declarationCodeText: NSString = "@MainActor class UIStackView : UIView"
        let myMutableString = NSMutableAttributedString(string: String(declarationCodeText))
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor ?? .black, range: declarationCodeText.range(of: "@MainActor class"))

        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.textColor ?? .black, range: declarationCodeText.range(of: "UIStackView"))
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.textColor ?? .black, range: declarationCodeText.range(of: ":"))
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.systemPink, range: declarationCodeText.range(of: "UIView"))
        
        declarationCode.font = UIFont(name: "SFMono-Regular", size: 13)
        declarationCode.numberOfLines = 0
        declarationCode.attributedText = myMutableString
    }
    
}
