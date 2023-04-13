//
//  LabelsViewController.swift
//  Control and Text Views
//
//  Created by Carlos Morgado on 1/3/23.
//

import UIKit

class LabelsViewController: UIViewController {
    
    // OUTLETS
    @IBOutlet weak private var contentView: UIView!
    @IBOutlet weak private var mainTitle: UILabel!
    @IBOutlet weak private var uiLabelDefinition: UILabel!
    @IBOutlet weak private var lineSeparator: UIView!
    @IBOutlet weak private var declarationTitle: UILabel!
    @IBOutlet weak private var declarationBoxView: UIView!
    @IBOutlet weak private var declarationCodeLabel: UILabel!
    @IBOutlet weak private var creatingAlabelTitle: UILabel!
    @IBOutlet weak private var creatingAlabelIntroduction: UILabel!
    @IBOutlet weak private var labelExample1ImageView: UIImageView!
    @IBOutlet weak private var codeLabelExample1View: UIImageView!
    @IBOutlet weak private var firstLabelExplanation: UITextView!
    @IBOutlet weak private var creatingSecondLabelTitle: UILabel!
    @IBOutlet weak private var creatingSecondLabelIntroduction: UILabel!
    @IBOutlet weak private var secondLabelExampleView: UIImageView!
    @IBOutlet weak private var secondLabelConstraintsExplanation: UILabel!
    @IBOutlet weak private var codeSecondLabelExampleView: UIImageView!
    @IBOutlet weak private var secondLabelConstraintsExplanation2: UILabel!
    @IBOutlet weak private var secondLabelFail1ConstraintsView: UIImageView!
    @IBOutlet weak private var secondLabelFail2constraintsView: UIImageView!
    @IBOutlet weak private var secondLabelLinesExplanation: UILabel!
    @IBOutlet weak private var codeSecondLabelLinesView: UIImageView!
    @IBOutlet weak private var secondLabelLinesExplanation2: UILabel!
    @IBOutlet weak private var secondLabelLinesExplanationView: UIImageView!
    @IBOutlet weak private var creatingThirdLabelTitle: UILabel!
    @IBOutlet weak private var creatingThirdLabelIntroduction: UILabel!
    @IBOutlet weak private var thirdLabelExampleView: UIImageView!
    @IBOutlet weak private var codeThirdLabelView: UIImageView!
    @IBOutlet weak private var thirdLabelExplanation: UILabel!
    @IBOutlet weak private var footerView: UIView!
    @IBOutlet weak private var moreInfoIn: UITextView!
    
    // CONSTANTS

    
    // LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // PROPERTIES AND CONFIGURATIONS
        configView()
    }
    
    // ACTIONS
   
   
}


// MARK: - EXTENSIONS

private extension LabelsViewController {
    
    func configView() {
        view.backgroundColor = .basicBackgroundColor
        contentView.backgroundColor = .basicBackgroundColor
        
        title = "UILabel"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "UIButton", style: .plain, target: self, action: #selector(nextScreen))
        
        configMainTitle()
        
        configUILabelDefinition()
        
        lineSeparator.backgroundColor = .lineSeparatorColor
        
        configDeclarationTitle()
        
        declarationBoxView.backgroundColor = .cellColor
        declarationBoxView.layer.cornerRadius = 17
        
        configDeclarationCodeLabel()
        
        configCreatingAlabelTitle()
        
        configCreatingAlabelIntroduction()
       
        labelExample1ImageView.image = UIImage(named: "Label example 1 picture")
        
        codeLabelExample1View.image = .codeLabelExample1
        
        configFirstLabelExplanation()
    
        configCreatingAsecondLabelTitle()
        
        configCreatingSecondLabelIntroduction()
        
        secondLabelExampleView.image = UIImage(named: "Second label example screenshot")
        
        configSecondLabelConstraintsExplanation()
        
        codeSecondLabelExampleView.image = UIImage.codeSecondLabelConstraintsSettings
        
        configSecondLabelConstraintsExplanation2()
        
        secondLabelFail1ConstraintsView.image = UIImage(named: "Second label fail 1 example screenshot")
        secondLabelFail2constraintsView.image = UIImage(named: "Second label fail 2 example screenshot")
        
        configSecondLabelLinesExplanation()
        
        codeSecondLabelLinesView.image = UIImage.codeSecondLabelLinesSettings
        
        configSecondLabelLinesExplanation2()
        
        secondLabelLinesExplanationView.image = UIImage(named: "Second label example screenshot")
        
        configCreatingThirdLabelTitle()
        
        configCreatingThirdLabelIntroduction()
        
        thirdLabelExampleView.image = UIImage(named: "Third-label-example-screenshot")
        
        codeThirdLabelView.image = .codeThirdLabelSettings
        
        configThirdLabelExplanation()
        
        footerView.backgroundColor = .cellColor
        
        configMoreInfoIn()
    }
    
    @objc func nextScreen() {
        navigationController?.pushViewController(ButtonsViewController(), animated: true)
        print("Next screen: UIButton")
    }
    
    func configMainTitle() {
        mainTitle.text = "UILabel"
        mainTitle.textAlignment = .left
        mainTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 35)
        mainTitle.textColor = .textColor
    }
    
    func configUILabelDefinition() {
        uiLabelDefinition.text = "A view that displays one or more lines of informational text. You can configure the overall appearance of a label’s text, and use attributed strings to customize the appearance of substrings within the text. Add and customize labels in your interface programmatically, or with the Attributes inspector in Interface Builder."
        uiLabelDefinition.font = UIFont(name: "SFUIDisplay-Light", size: 18)
        uiLabelDefinition.textColor = .textColor
        uiLabelDefinition.numberOfLines = 0
        uiLabelDefinition.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configDeclarationTitle () {
        declarationTitle.text = "Declaration"
        declarationTitle.textAlignment = .left
        declarationTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 25)
        declarationTitle.textColor = .textColor
    }
    
    func configDeclarationCodeLabel() {
        let declarationCodeText: NSString = "@MainActor class UILabel : UIView"
        let myMutableString = NSMutableAttributedString(string: String(declarationCodeText))
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor ?? .black, range: declarationCodeText.range(of: "@MainActor class"))

        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.textColor ?? .black, range: declarationCodeText.range(of: "UILabel"))
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.textColor ?? .black, range: declarationCodeText.range(of: ":"))
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.systemPink, range: declarationCodeText.range(of: "UIView"))
        
        declarationCodeLabel.font = UIFont(name: "SFUIDisplay-Regular", size: 14)
        declarationCodeLabel.attributedText = myMutableString
        
    }
    
    func configCreatingAlabelTitle() {
        creatingAlabelTitle.text = "Creating our first label"
        creatingAlabelTitle.textAlignment = .left
        creatingAlabelTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 25)
        creatingAlabelTitle.textColor = .textColor
    }
    
    func configCreatingAlabelIntroduction() {
        creatingAlabelIntroduction.text = "Let's see how to create the UILabel example below by code through UIKit:"
        creatingAlabelIntroduction.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        creatingAlabelIntroduction.textColor = .textColor
        creatingAlabelIntroduction.numberOfLines = 0
        creatingAlabelIntroduction.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configFirstLabelExplanation() {
        firstLabelExplanation.hyperLink(originalText: """
        The steps we have followed are as follows:
        
        1. We have created a UILabel instance.
        2. We have assigned a text to our UILabel.
        3. We have customized the font of our UILabel.
        4. We assign the '.textAlignment' centered.
        5. Change the text color of our UILabel with the property '.textcolor'.
        6. We assign "false" to '.translatesAutoresizingMaskIntoConstraints', so we can assign constraints in code.
        7. Add our UILabel to our ViewController view.
        8. We create constraints so that the UILabel knows in which position in the parent view to be placed.
        """, hyperLink: "customized the font", urlString: "https://sarunw.com/posts/how-to-add-custom-fonts-to-ios-app/")
        firstLabelExplanation.isScrollEnabled = false
        firstLabelExplanation.isUserInteractionEnabled = true
        firstLabelExplanation.isEditable = false
        firstLabelExplanation.backgroundColor = .clear
        firstLabelExplanation.textContainerInset = UIEdgeInsets(top: 0,left: -5,bottom: 0,right: -5)
        
    }
    
    func configCreatingAsecondLabelTitle() {
        creatingSecondLabelTitle.text = "Creating a second label"
        creatingSecondLabelTitle.textAlignment = .left
        creatingSecondLabelTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 25)
        creatingSecondLabelTitle.textColor = .textColor
    }
    
    func configCreatingSecondLabelIntroduction() {
        creatingSecondLabelIntroduction.text = "Next we create our second UILabel, let's see some problems we may encounter:"
        creatingSecondLabelIntroduction.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        creatingSecondLabelIntroduction.textColor = .textColor
        creatingSecondLabelIntroduction.numberOfLines = 0
        creatingSecondLabelIntroduction.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configSecondLabelConstraintsExplanation() {
        let attributedText: NSString = """
        1. Leading and trailing constraints: With the leading and trailing constraints we can avoid that our UILabel is in a single line and we can't read the whole text, since we need to apply two contraints, leading (left) and trailing (right).
        """
        let mutableString = NSMutableAttributedString(string: String(attributedText))
        
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFUIDisplay-Bold", size: 16) as Any, range: attributedText.range(of: "1. Leading and trailing constraints"))
        
        secondLabelConstraintsExplanation.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        secondLabelConstraintsExplanation.textColor = .textColor
        secondLabelConstraintsExplanation.attributedText = mutableString
        secondLabelConstraintsExplanation.numberOfLines = 0
        secondLabelConstraintsExplanation.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configSecondLabelConstraintsExplanation2() {
        secondLabelConstraintsExplanation2.text = "In the first image we can see the problem of the UILabel without leading and trailing constraints, and in the second image we can see how the problem is fixed."
        secondLabelConstraintsExplanation2.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        secondLabelConstraintsExplanation2.textColor = .textColor
        secondLabelConstraintsExplanation2.numberOfLines = 0
        secondLabelConstraintsExplanation2.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configSecondLabelLinesExplanation() {
        let attributedText: NSString = """
        2. Number of lines: We have fixed the constraints, but if you see the second picture we still can't read the full text, it is cut off. This can be solved by using the property '.numberOfLines':
        """
        let mutableString = NSMutableAttributedString(string: String(attributedText))
        
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFUIDisplay-Bold", size: 16) as Any, range: attributedText.range(of: "2. Number of lines"))
        mutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor as Any, range: attributedText.range(of: "'.numberOfLines'"))
        
        secondLabelLinesExplanation.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        secondLabelLinesExplanation.textColor = .textColor
        secondLabelLinesExplanation.attributedText = mutableString
        secondLabelLinesExplanation.numberOfLines = 0
        secondLabelLinesExplanation.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configSecondLabelLinesExplanation2() {
        secondLabelLinesExplanation2.text = "If we add a value 0, it means that we tell our UILabel to use as many lines as needed to display the text (and therefore the '...' disappears, like in the picture below)."
        secondLabelLinesExplanation2.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        secondLabelLinesExplanation2.textColor = .textColor
        secondLabelLinesExplanation2.numberOfLines = 0
        secondLabelLinesExplanation2.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configCreatingThirdLabelTitle() {
        creatingThirdLabelTitle.text = "Creating a third label"
        creatingThirdLabelTitle.textAlignment = .left
        creatingThirdLabelTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 25)
        creatingThirdLabelTitle.textColor = .textColor
    }
    
    func configCreatingThirdLabelIntroduction() {
        creatingThirdLabelIntroduction.text = "In this case we are going to create a label with some special configurations and properties through substrings. Let's see them:"
        creatingThirdLabelIntroduction.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        creatingThirdLabelIntroduction.textColor = .textColor
        creatingThirdLabelIntroduction.numberOfLines = 0
        creatingThirdLabelIntroduction.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configThirdLabelExplanation() {
        let thirdLabelExplanationAtributedText: NSString = """
        1. Previous preparation: In order to configure and customize specific parts of a text, ranges are needed. To do this we must give the complete text the class 'NSMutableAttributedString', and assign it to a constant, in this case called "mutableString". From here we can modify our text with different ranges.
        
        2. Text customization: Here we can configure the concrete parts that we want of our text with the property '.addAttribute'.
        
        3. Creating the label: Finally we instantiate the UILabel to a constant called "label", which we add the property '.attributedText' and match it to our "mutableString".
        """
        let thirdLabelExplanationMutable = NSMutableAttributedString(string: String(thirdLabelExplanationAtributedText))
        
        thirdLabelExplanationMutable.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFUIDisplay-Bold", size: 16) as Any, range: thirdLabelExplanationAtributedText.range(of: "1. Previous preparation:"))
        thirdLabelExplanationMutable.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor as Any, range: thirdLabelExplanationAtributedText.range(of: "'NSMutableAttributedString'"))
        
        thirdLabelExplanationMutable.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFUIDisplay-Bold", size: 16) as Any, range: thirdLabelExplanationAtributedText.range(of: "2. Text customization:"))
        thirdLabelExplanationMutable.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor as Any, range: thirdLabelExplanationAtributedText.range(of: "'.addAttribute'"))
        
        thirdLabelExplanationMutable.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFUIDisplay-Bold", size: 16) as Any, range: thirdLabelExplanationAtributedText.range(of: "3. Creating the label:"))

        thirdLabelExplanation.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        thirdLabelExplanation.textColor = .textColor
        thirdLabelExplanation.attributedText = thirdLabelExplanationMutable
        thirdLabelExplanation.numberOfLines = 0
        thirdLabelExplanation.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configMoreInfoIn() {
        moreInfoIn.hyperLink(originalText: "Get more info in Developer >", hyperLink: "Developer", urlString: "https://developer.apple.com/documentation/uikit/uilabel/")
        moreInfoIn.isUserInteractionEnabled = true
        moreInfoIn.isEditable = false
        moreInfoIn.font = UIFont(name: "SFUIDisplay-Regular", size: 18)
        moreInfoIn.textAlignment = .center
        moreInfoIn.backgroundColor = .clear
        moreInfoIn.textContainerInset = UIEdgeInsets(top: 0,left: -5,bottom: 0,right: -5)
        moreInfoIn.textContainer.heightTracksTextView = true
    }
}

//extension UILabel {
//    func indexOfAttributedTextCharacterAtPoint(_ point: CGPoint) -> Int {
//        guard let attributedText = attributedText else { return -1 }
//        let textStorage = NSTextStorage(attributedString: attributedText)
//        let layoutManager = NSLayoutManager()
//        textStorage.addLayoutManager(layoutManager)
//        let textContainer = NSTextContainer(size: bounds.size)
//        textContainer.lineFragmentPadding = 0
//        textContainer.maximumNumberOfLines = numberOfLines
//        textContainer.lineBreakMode = lineBreakMode
//        layoutManager.addTextContainer(textContainer)
//        let index = layoutManager.characterIndex(for: point, in: textContainer, fractionOfDistanceBetweenInsertionPoints: nil)
//        return index
//    }
//}

