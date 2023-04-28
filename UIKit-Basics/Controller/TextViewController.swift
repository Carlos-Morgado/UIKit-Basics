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
    @IBOutlet weak private var declarationTitle: UILabel!
    @IBOutlet weak private var declarationBoxView: UIView!
    @IBOutlet weak private var declarationCode: UILabel!
    @IBOutlet weak private var creatingTextViewTitle: UILabel!
    @IBOutlet weak private var creatingTextViewIntro: UILabel!
    @IBOutlet weak private var textViewExample: UITextView!
    @IBOutlet weak private var codeTextView: UIImageView!
    @IBOutlet weak private var stackViewTextViewExplanation: UIStackView!
    @IBOutlet weak private var uiTextFieldMainTitle: UILabel!
    @IBOutlet weak private var uiTextFieldDefinition: UILabel!
    @IBOutlet weak private var lineSeparator2: UIView!
    @IBOutlet weak private var creatingTextFieldTitle: UILabel!
    @IBOutlet weak private var creatingTextFieldIntro: UILabel!
    @IBOutlet weak private var textFieldExample: UITextField!
    @IBOutlet weak private var codeTextField: UIImageView!
    @IBOutlet weak private var stackViewTextFieldExplanation: UIStackView!
    @IBOutlet weak private var versusLabel: UILabel!
    @IBOutlet weak private var versusImage: UIImageView!
    @IBOutlet weak private var stackViewVersusExplanation: UIStackView!
    @IBOutlet weak private var footerView: UIView!
    @IBOutlet weak private var moreInfoIn: UITextView!
    
    var placeholderLabel : UILabel!
    
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
        
        configDeclarationTitle()
        
        declarationBoxView.backgroundColor = .cellColor
        declarationBoxView.layer.cornerRadius = 17
        
        configDeclarationCode()
        
        configCreatingTextViewTitle()
        
        configCreatingTextViewIntroduction()
        
        configTextViewExample()
        
        codeTextView.image = .codeTextViewExampleSettings
        codeTextView.layer.cornerRadius = 5
        
        configStackViewTextViewExplanation()
        
        let textViewExplanationlabels = [textViewExplanationLabel1(), textViewExplanationLabel2(), textViewExplanationLabel3()]
        
        for label in textViewExplanationlabels {
            stackViewTextViewExplanation.addArrangedSubview(label)
        }
        
        configUITextFieldMainTitle()
        
        configUITextFieldDefinition()
        
        lineSeparator2.backgroundColor = .lineSeparatorColor
        
        configCreatingTextFieldTitle()
        
        configCreatingTextFieldIntroduction()
        
        configTextFieldExample()
        
        codeTextField.image = .codeTextFieldExampleSettings
        codeTextField.layer.cornerRadius = 5
        
        configStackViewTextFieldExplanation()
        
        let textFieldExplanationLabels = [textFieldExplanationLabel1(), textFieldExplanationLabel2()]
        
        for label in textFieldExplanationLabels {
            stackViewTextFieldExplanation.addArrangedSubview(label)
        }
        
        configVersusLabel()
        
        versusImage.image = UIImage(named: "TexField VS TextView")
        versusImage.layer.cornerRadius = 5
        
        configStackViewVersusExplanation()
        
        let versusExplanationLabels = [versusExplanationLabel1(), versusExplanationLabel2(), versusExplanationLabel3(), versusExplanationLabel4()]
        
        for label in versusExplanationLabels {
            stackViewVersusExplanation.addArrangedSubview(label)
        }
        
        footerView.backgroundColor = .cellColor
        
        configMoreInfoIn()
        
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
    
    func configDeclarationTitle () {
        declarationTitle.text = "Declaration"
        declarationTitle.textAlignment = .left
        declarationTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 25)
        declarationTitle.textColor = .textColor
    }
    
    func configDeclarationCode() {
        let declarationCodeText: NSString = "@MainActor class UITextView:UIScrollView"
        let myMutableString = NSMutableAttributedString(string: String(declarationCodeText))
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor ?? .black, range: declarationCodeText.range(of: "@MainActor class"))

        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.textColor ?? .black, range: declarationCodeText.range(of: "UITextView"))
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.textColor ?? .black, range: declarationCodeText.range(of: ":"))
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.systemPink, range: declarationCodeText.range(of: "UIScrollView"))
        
        declarationCode.font = UIFont(name: "SFMono-Regular", size: 12)
        declarationCode.numberOfLines = 0
        declarationCode.attributedText = myMutableString
    }
    
    func configCreatingTextViewTitle() {
        creatingTextViewTitle.text = "Creating a TextView"
        creatingTextViewTitle.textAlignment = .left
        creatingTextViewTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 24)
        creatingTextViewTitle.textColor = .textColor
    }
    
    func configCreatingTextViewIntroduction() {
        creatingTextViewIntro.text = "Let's see how to create the TextView example below by code through UIKit (you can write on the textView and test it) :"
        creatingTextViewIntro.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        creatingTextViewIntro.textColor = .textColor
        creatingTextViewIntro.numberOfLines = 0
        creatingTextViewIntro.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configTextViewExample() {
//        textViewExample.delegate = self
//        placeholderLabel = UILabel()
//        placeholderLabel.text = "Enter some text you want to write..."
//        placeholderLabel.font = .italicSystemFont(ofSize: (textViewExample.font?.pointSize)!)
//        placeholderLabel.sizeToFit()
//        textViewExample.addSubview(placeholderLabel)
//        placeholderLabel.frame.origin = CGPoint(x: 5, y: (textViewExample.font?.pointSize)! / 2)
//        placeholderLabel.textColor = .tertiaryLabel
//        placeholderLabel.isHidden = !textViewExample.text.isEmpty
        textViewExample.text = ""
        textViewExample.addPlaceholder("Write something, whatever you want...", color: .systemGray)
        textViewExample.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        textViewExample.textColor = .systemBlue
        textViewExample.backgroundColor = .systemGray6
        textViewExample.layer.cornerRadius = 5
        textViewExample.layer.borderWidth = 0.5
        textViewExample.layer.borderColor = UIColor.systemGray.cgColor
        textViewExample.textAlignment = .left
        textViewExample.textContainerInset = UIEdgeInsets(top: 5,left: 2,bottom: 0,right: 0)
        textViewExample.isUserInteractionEnabled = true
        textViewExample.isEditable = true
    }
    
    func configStackViewTextViewExplanation() {
        stackViewTextViewExplanation.axis = .vertical
        stackViewTextViewExplanation.distribution = .fillProportionally
        stackViewTextViewExplanation.alignment = .leading
        stackViewTextViewExplanation.spacing = 15
    }
    
    func textViewExplanationLabel1() -> UILabel {
        let label1 = UILabel()
        let attributedText: NSString = "First of all, before customizing our TextView, we create it in our xib and then we link it to the code with an outlet."
        let mutableString = NSMutableAttributedString(string: String(attributedText))
        
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFMono-Medium", size: 15) as Any, range: attributedText.range(of: "xib"))
        mutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor as Any, range: attributedText.range(of: "xib"))
        label1.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        label1.textColor = .textColor
        label1.attributedText = mutableString
        label1.numberOfLines = 0
        label1.setLineSpacing(lineSpacing: 2.5)
        return label1
    }
    
    func textViewExplanationLabel2() -> UILabel {
        let label1 = UILabel()
        let attributedText: NSString = """
        1. Now we can personalize our TextView with different characteristics like text, font, backgroundColor... etc. If you look at the 'text' property you can see that is empty. This means that textView is editable and you can write on it.
        """
        let mutableString = NSMutableAttributedString(string: String(attributedText))
        
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFMono-Medium", size: 15) as Any, range: attributedText.range(of: "'text'"))
        mutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor as Any, range: attributedText.range(of: "'text'"))
        label1.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        label1.textColor = .textColor
        label1.attributedText = mutableString
        label1.numberOfLines = 0
        label1.setLineSpacing(lineSpacing: 2.5)
        return label1
    }
    
    func textViewExplanationLabel3() -> UILabel {
        let label1 = UILabel()
        let attributedText: NSString = """
        2. This textView is editable because the property 'isEditable' and 'isUserInteractionEnabled' are 'true'.
        """
        let mutableString = NSMutableAttributedString(string: String(attributedText))
        
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFMono-Medium", size: 15) as Any, range: attributedText.range(of: "'isEditable'"))
        mutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor as Any, range: attributedText.range(of: "'isEditable'"))
        
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFMono-Medium", size: 15) as Any, range: attributedText.range(of: "'isUserInteractionEnabled'"))
        mutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor as Any, range: attributedText.range(of: "'isUserInteractionEnabled'"))
        
        label1.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        label1.textColor = .textColor
        label1.attributedText = mutableString
        label1.numberOfLines = 0
        label1.setLineSpacing(lineSpacing: 2.5)
        return label1
    }
    
    func configUITextFieldMainTitle() {
        uiTextFieldMainTitle.text = "UITextField"
        uiTextFieldMainTitle.textAlignment = .left
        uiTextFieldMainTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 35)
        uiTextFieldMainTitle.textColor = .textColor
    }
    
    func configUITextFieldDefinition() {
        uiTextFieldDefinition.text = "A TextField is an object that displays an editable text area in your interface. You use text fields to gather text-based input from the user using the onscreen keyboard. The keyboard is configurable for many different types of input such as plain text, emails, numbers, and so on."
        uiTextFieldDefinition.font = UIFont(name: "SFUIDisplay-Light", size: 18)
        uiTextFieldDefinition.textColor = .textColor
        uiTextFieldDefinition.numberOfLines = 0
        uiTextFieldDefinition.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configCreatingTextFieldTitle() {
        creatingTextFieldTitle.text = "Creating a TextField"
        creatingTextFieldTitle.textAlignment = .left
        creatingTextFieldTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 24)
        creatingTextFieldTitle.textColor = .textColor
    }
    
    func configCreatingTextFieldIntroduction() {
        creatingTextFieldIntro.text = "Let's see how to create the TextField example below by code through UIKit (you can write on the textField and test it) :"
        creatingTextFieldIntro.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        creatingTextFieldIntro.textColor = .textColor
        creatingTextFieldIntro.numberOfLines = 0
        creatingTextFieldIntro.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configTextFieldExample() {
        textFieldExample.placeholder = "Write something..."
        textFieldExample.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        textFieldExample.textColor = .systemBlue
        textFieldExample.backgroundColor = .systemGray6
        textFieldExample.layer.cornerRadius = 5
        textFieldExample.layer.borderWidth = 0.5
        textFieldExample.layer.borderColor = UIColor.systemGray.cgColor
        textFieldExample.textAlignment = .left
    }
    
    func configStackViewTextFieldExplanation() {
        stackViewTextFieldExplanation.axis = .vertical
        stackViewTextFieldExplanation.distribution = .fillProportionally
        stackViewTextFieldExplanation.alignment = .leading
        stackViewTextFieldExplanation.spacing = 15
    }
    
    func textFieldExplanationLabel1() -> UILabel {
        let label1 = UILabel()
        let attributedText: NSString = "First of all, before customizing our TextField, we create it in our xib and then we link it to the code with an outlet."
        let mutableString = NSMutableAttributedString(string: String(attributedText))
        
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFMono-Medium", size: 15) as Any, range: attributedText.range(of: "xib"))
        mutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor as Any, range: attributedText.range(of: "xib"))
        
        label1.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        label1.textColor = .textColor
        label1.attributedText = mutableString
        label1.numberOfLines = 0
        label1.setLineSpacing(lineSpacing: 2.5)
        return label1
    }
    
    func textFieldExplanationLabel2() -> UILabel {
        let label1 = UILabel()
        let attributedText: NSString = "The next step is to customize our TextField with different features such as text, font, backgroundColor... etc. One of the most important differences between TextField and TextView is the placeholder. TextField has this property in its own property list, but TextView has to be created manually."
        let mutableString = NSMutableAttributedString(string: String(attributedText))
        
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFMono-Medium", size: 15) as Any, range: attributedText.range(of: "placeholder"))
        mutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor as Any, range: attributedText.range(of: "placeholder"))
        
        label1.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        label1.textColor = .textColor
        label1.attributedText = mutableString
        label1.numberOfLines = 0
        label1.setLineSpacing(lineSpacing: 2.5)
        return label1
    }
    
    func configVersusLabel() {
        versusLabel.text = "TextField VS TextView"
        versusLabel.textAlignment = .left
        versusLabel.font = UIFont(name: "SFUIDisplay-Bold", size: 24)
        versusLabel.textColor = .textColor
    }
    
    func configStackViewVersusExplanation() {
        stackViewVersusExplanation.axis = .vertical
        stackViewVersusExplanation.distribution = .fillProportionally
        stackViewVersusExplanation.alignment = .leading
        stackViewVersusExplanation.spacing = 15
    }
    
    func versusExplanationLabel1() -> UILabel {
        let label1 = UILabel()
        let attributedText: NSString = "Sometimes the terms TextView, TextField and Label can be confused. These three terms have to do with text, but there are some differences between them, let's see what they are:"
        let mutableString = NSMutableAttributedString(string: String(attributedText))
        
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFMono-Medium", size: 15) as Any, range: attributedText.range(of: "xib"))
        mutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor as Any, range: attributedText.range(of: "xib"))
        
        label1.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        label1.textColor = .textColor
        label1.attributedText = mutableString
        label1.numberOfLines = 0
        label1.setLineSpacing(lineSpacing: 2.5)
        return label1
    }
    
    func versusExplanationLabel2() -> UILabel {
        let label1 = UILabel()
        let attributedText: NSString = "- Textfields are editable, and provide horizontal character seeking (not really scrolling) when the text is too long to display all at once. Generally used to input short text."
        let mutableString = NSMutableAttributedString(string: String(attributedText))
        
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFUIDisplay-Bold", size: 15) as Any, range: attributedText.range(of: "- Textfields"))
        mutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor as Any, range: attributedText.range(of: "- Textfields"))
        
        label1.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        label1.textColor = .textColor
        label1.attributedText = mutableString
        label1.numberOfLines = 0
        label1.setLineSpacing(lineSpacing: 2.5)
        return label1
    }
    
    func versusExplanationLabel3() -> UILabel {
        let label1 = UILabel()
        let attributedText: NSString = "- Textviews are also editable, but provide vertical scrolling when the text is too long to display all at one."
        let mutableString = NSMutableAttributedString(string: String(attributedText))
        
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFUIDisplay-Bold", size: 15) as Any, range: attributedText.range(of: "- Textviews"))
        mutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor as Any, range: attributedText.range(of: "- Textviews"))
        
        label1.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        label1.textColor = .textColor
        label1.attributedText = mutableString
        label1.numberOfLines = 0
        label1.setLineSpacing(lineSpacing: 2.5)
        return label1
    }
    
    func versusExplanationLabel4() -> UILabel {
        let label1 = UILabel()
        let attributedText: NSString = "- Labels are read-only."
        let mutableString = NSMutableAttributedString(string: String(attributedText))
        
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFUIDisplay-Bold", size: 15) as Any, range: attributedText.range(of: "- Labels"))
        mutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor as Any, range: attributedText.range(of: "- Labels"))
        
        label1.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        label1.textColor = .textColor
        label1.attributedText = mutableString
        label1.numberOfLines = 0
        label1.setLineSpacing(lineSpacing: 2.5)
        return label1
    }
    
    func configMoreInfoIn() {
        moreInfoIn.hyperLink(originalText: "Get more info in Developer >", hyperLink: "Developer", urlString: "https://developer.apple.com/documentation/uikit/uitextfield/")
        moreInfoIn.isUserInteractionEnabled = true
        moreInfoIn.isEditable = false
        moreInfoIn.font = UIFont(name: "SFUIDisplay-Regular", size: 18)
        moreInfoIn.textAlignment = .center
        moreInfoIn.backgroundColor = .clear
        moreInfoIn.textContainerInset = UIEdgeInsets(top: 0,left: -5,bottom: 0,right: -5)
        moreInfoIn.textContainer.heightTracksTextView = true
    }

}

//extension TextViewController : UITextViewDelegate {
//
//    func textViewDidChange(_ textView: UITextView) {
//        placeholderLabel?.isHidden = !textView.text.isEmpty
//    }
//    func textViewDidEndEditing(_ textView: UITextView) {
//        placeholderLabel?.isHidden = !textView.text.isEmpty
//    }
//    func textViewDidBeginEditing(_ textView: UITextView) {
//        placeholderLabel?.isHidden = true
//    }
//}







// Creating a textView editable, placeholder, teclado, change color
// Creating a textField, placeholder, teclado, change color
// Difference between TextView, TexField, and UILabel
// Footer
