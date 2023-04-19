//
//  ButtonsViewController.swift
//  Control and Text Views
//
//  Created by Carlos Morgado on 1/3/23.
//

import UIKit

class ButtonsViewController: UIViewController {
    
    // OUTLETS
    @IBOutlet weak private var contentScrollView: UIView!
    @IBOutlet weak private var uiButtonMainTitle: UILabel!
    @IBOutlet weak private var uiButtonDefinition: UILabel!
    @IBOutlet weak private var lineSeparator: UIView!
    @IBOutlet weak private var declarationTitle: UILabel!
    @IBOutlet weak private var declarationBoxView: UIView!
    @IBOutlet weak private var declarationCodeLabel: UILabel!
    @IBOutlet weak private var creatingButtonTitle: UILabel!
    @IBOutlet weak private var creatingButtonIntroduction: UILabel!
    @IBOutlet weak private var buttonExampleScreenshot: UIImageView!
    @IBOutlet weak private var codeButtonExample: UIImageView!
    @IBOutlet weak private var footerView: UIView!
    @IBOutlet weak private var moreInfoIn: UITextView!
    
    // LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // PROPERTIES AND CONFIGURATIONS
        configView()
    }
        
    // ACTIONS
    
}












// MARK: - EXTENSIONS

private extension ButtonsViewController {
    
    func configView() {
        view.backgroundColor = .basicBackgroundColor
        contentScrollView.backgroundColor = .basicBackgroundColor
        
        title = "UIButton"
        
        configUIButtonMainTitle()
        
        configUIButtonDefinition()
        
        lineSeparator.backgroundColor = .lineSeparatorColor
        
        configDeclarationTitle()
        
        declarationBoxView.backgroundColor = .cellColor
        declarationBoxView.layer.cornerRadius = 17
        
        configDeclarationCodeLabel()
        
        configCreatingButtonTitle()
        
        configCreatingButtonIntroduction()
        
        buttonExampleScreenshot.image = UIImage(named: "Button example screenshot")
        
        codeButtonExample.image = .codeButtonExampleSettings
        
        footerView.backgroundColor = .cellColor
        
        configMoreInfoIn()
        
        }
    
    func configUIButtonMainTitle() {
        uiButtonMainTitle.text = "UIButton"
        uiButtonMainTitle.textAlignment = .left
        uiButtonMainTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 35)
        uiButtonMainTitle.textColor = .textColor
    }
    
    func configUIButtonDefinition() {
        uiButtonDefinition.text = "A control that executes your custom code in response to user interactions. When you tap a button, or select a button that has focus, the button performs any actions attached to it. You communicate the purpose of a button using a text label, an image, or both. The appearance of buttons is configurable, so you can tint buttons or format titles to match the design of your app. You can add buttons to your interface programmatically or using Interface Builder."
        uiButtonDefinition.font = UIFont(name: "SFUIDisplay-Light", size: 18)
        uiButtonDefinition.textColor = .textColor
        uiButtonDefinition.numberOfLines = 0
        uiButtonDefinition.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configDeclarationTitle () {
        declarationTitle.text = "Declaration"
        declarationTitle.textAlignment = .left
        declarationTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 25)
        declarationTitle.textColor = .textColor
    }
    
    func configDeclarationCodeLabel() {
        let declarationCodeText: NSString = "@MainActor class UIButton : UIControl"
        let myMutableString = NSMutableAttributedString(string: String(declarationCodeText))
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor ?? .black, range: declarationCodeText.range(of: "@MainActor class"))

        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.textColor ?? .black, range: declarationCodeText.range(of: "UIButton"))
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.textColor ?? .black, range: declarationCodeText.range(of: ":"))
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.systemPink, range: declarationCodeText.range(of: "UIControl"))
        
        declarationCodeLabel.font = UIFont(name: "SFMono-Regular", size: 13)
        declarationCodeLabel.attributedText = myMutableString
    }
    
    func configCreatingButtonTitle() {
        creatingButtonTitle.text = "Creating a customized button"
        creatingButtonTitle.textAlignment = .left
        creatingButtonTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 24)
        creatingButtonTitle.textColor = .textColor
    }
    
    func configCreatingButtonIntroduction() {
        creatingButtonIntroduction.text = "Let's see how to create the UIButton example below by code through UIKit:"
        creatingButtonIntroduction.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        creatingButtonIntroduction.textColor = .textColor
        creatingButtonIntroduction.numberOfLines = 0
        creatingButtonIntroduction.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configMoreInfoIn() {
        moreInfoIn.hyperLink(originalText: "Get more info in Developer >", hyperLink: "Developer", urlString: "https://developer.apple.com/documentation/uikit/uibutton/")
        moreInfoIn.isUserInteractionEnabled = true
        moreInfoIn.isEditable = false
        moreInfoIn.font = UIFont(name: "SFUIDisplay-Regular", size: 18)
        moreInfoIn.textAlignment = .center
        moreInfoIn.backgroundColor = .clear
        moreInfoIn.textContainerInset = UIEdgeInsets(top: 0,left: -5,bottom: 0,right: -5)
        moreInfoIn.textContainer.heightTracksTextView = true
    }
}

