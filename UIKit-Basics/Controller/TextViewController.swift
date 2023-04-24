//
//  TextViewController.swift
//  Control and Text Views
//
//  Created by Carlos Morgado on 3/3/23.
//

import UIKit

class TextViewController: UIViewController {

    // OUTLETS
    @IBOutlet weak private var contentScrollView: UIView!
    @IBOutlet weak private var uiTextViewMainTitle: UILabel!
    @IBOutlet weak private var uiTextViewDefinition: UILabel!
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

private extension TextViewController {
    func configView() {
        view.backgroundColor = .basicBackgroundColor
        contentScrollView.backgroundColor = .basicBackgroundColor
        
        title = "UITextView"
        
        configUITextViewMainTitle()
        
        configUITextViewDefinition()
        
        lineSeparator.backgroundColor = .lineSeparatorColor
        
    }
    
    func configUITextViewMainTitle() {
        uiTextViewMainTitle.text = "UITextView"
        uiTextViewMainTitle.textAlignment = .left
        uiTextViewMainTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 35)
        uiTextViewMainTitle.textColor = .textColor
    }
    
    func configUITextViewDefinition() {
        uiTextViewDefinition.text = "UITextView is a scrollable, multiline text region that supports the display of text using custom style information and also supports text editing. You typically use a text view to display multiple lines of text, such as when displaying the body of a large text document."
        uiTextViewDefinition.font = UIFont(name: "SFUIDisplay-Light", size: 18)
        uiTextViewDefinition.textColor = .textColor
        uiTextViewDefinition.numberOfLines = 0
        uiTextViewDefinition.setLineSpacing(lineSpacing: 2.5)
    }
}




// Introduction
// Declaration
// Creating a textView editable
// Creating a static text View (with hyperlink)
// Footer
