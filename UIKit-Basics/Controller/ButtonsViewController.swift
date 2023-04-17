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
}

