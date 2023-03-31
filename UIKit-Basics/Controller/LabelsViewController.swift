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
    @IBOutlet weak private var labelExample1Explanation: UILabel!
    @IBOutlet weak private var creatingSecondLabelTitle: UILabel!
    @IBOutlet weak private var creatingSecondLabelIntroduction: UILabel!
    @IBOutlet weak private var secondLabelExampleView: UIImageView!
    @IBOutlet weak private var secondLabelConstraintsExplanation: UILabel!
    @IBOutlet weak private var codeSecondLabelExampleView: UIImageView!
    @IBOutlet weak private var secondLabelConstraintsExplanation2: UILabel!
    @IBOutlet weak private var secondLabelFail1ConstraintsView: UIImageView!
    @IBOutlet weak private var secondLabelFail2constraintsView: UIImageView!
    @IBOutlet weak private var secondLabelLinesExplanation: UILabel!
    @IBOutlet weak var codeSecondLabelLinesView: UIImageView!
    @IBOutlet weak var secondLabelLinesExplanation2: UILabel!
    @IBOutlet weak private var secondLabelLinesExplanationView: UIImageView!
    @IBOutlet weak private var creatingThirdLabelTitle: UILabel!
    @IBOutlet weak private var creatingThirdLabelIntroduction: UILabel!
    @IBOutlet weak private var thirdLabelExampleView: UIImageView!
    @IBOutlet weak private var codeThirdLabelExampleView: UIImageView!
    
    
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
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextAction))
        
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
        
        configLabelExample1Explanation()
        
        configCreatingAsecondLabelTitle()
        
        configCreatingSecondLabelIntroduction()
        
        secondLabelExampleView.image = UIImage(named: "Second label example screenshot")
        
        configSecondLabelConstraintsExplanation()
        
        codeSecondLabelExampleView.backgroundColor = .systemGray6
        
        configSecondLabelConstraintsExplanation2()
        
        secondLabelFail1ConstraintsView.image = UIImage(named: "Second label fail 1 example screenshot")
        secondLabelFail2constraintsView.image = UIImage(named: "Second label fail 2 example screenshot")
        
        configSecondLabelLinesExplanation()
        
        codeSecondLabelLinesView.image = UIImage(named: "")
        codeSecondLabelLinesView.backgroundColor = .systemGray6
        
        secondLabelLinesExplanation2.text = "If we add a value 0, it means that we tell our UILabel to use as many lines as needed to display the text (and therefore the '...' disappears, like in the picture below)."
        secondLabelLinesExplanation2.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        secondLabelLinesExplanation2.textColor = .textColor
        secondLabelLinesExplanation2.numberOfLines = 0
        secondLabelLinesExplanation2.setLineSpacing(lineSpacing: 2.5)
        
        secondLabelLinesExplanationView.image = UIImage(named: "Second label example screenshot")
        
        configCreatingThirdLabelTitle()
        
        configCreatingThirdLabelIntroduction()
        
        thirdLabelExampleView.image = UIImage(named: "Third-label-example-screenshot")
        
        codeThirdLabelExampleView.backgroundColor = .systemGray6
        
    }
    
    @objc func nextAction() {
        print("Next action")
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
        myMutableString.addAttribute(NSAttributedString.Key.backgroundColor, value: UIColor.green, range: declarationCodeText.range(of: "@MainActor class"))
        myMutableString.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range: declarationCodeText.range(of: "@MainActor class"))

        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.textColor ?? .black, range: declarationCodeText.range(of: "UILabel"))
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.textColor ?? .black, range: declarationCodeText.range(of: ":"))
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.systemPink, range: declarationCodeText.range(of: "UIView"))
        
        declarationCodeLabel.attributedText = myMutableString
        declarationCodeLabel.font = UIFont(name: "Courier New", size: 14)
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
    
    func configLabelExample1Explanation() {
        labelExample1Explanation.text = """
        The steps we have followed are as follows:
        
        1. We have created a UILabel instance
        2. We have assigned a text to our UILabel
        3. We have customized the font of our UILabel
        4. We assign the textAlignment centered
        5. Change the text color of our UILabel
        6. We assign "false" to translatesAutoresizingMaskIntoConstraints, so we can assign constraints in code.
        7. Add our UILabel to our ViewController view
        8. We create constraints so that the UILabel knows in which position in the parent view to be placed
        """
        labelExample1Explanation.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        labelExample1Explanation.textColor = .textColor
        labelExample1Explanation.numberOfLines = 0
        labelExample1Explanation.setLineSpacing(lineSpacing: 2.5, lineHeightMultiple: 0.0)
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
        secondLabelConstraintsExplanation.text = """
        1. With the leading and trailing constraints we can avoid that our UILabel is in a single line and we can't read the whole text, since we need to apply two contraints, leading (left) and trailing (right).
        """
        secondLabelConstraintsExplanation.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        secondLabelConstraintsExplanation.textColor = .textColor
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
        secondLabelLinesExplanation.text = "2. We have fixed the constraints, but if you see the second picture we still can't read the full text, it is cut off. This can be solved by using the property 'numberOfLines':"
        secondLabelLinesExplanation.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        secondLabelLinesExplanation.textColor = .textColor
        secondLabelLinesExplanation.numberOfLines = 0
        secondLabelLinesExplanation.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configCreatingThirdLabelTitle() {
        creatingThirdLabelTitle.text = "Creating a third label"
        creatingThirdLabelTitle.textAlignment = .left
        creatingThirdLabelTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 25)
        creatingThirdLabelTitle.textColor = .textColor
    }
    
    func configCreatingThirdLabelIntroduction() {
        creatingThirdLabelIntroduction.text = "In this case we are going to create a label with some special configurations and properties. Let's see them:"
        creatingThirdLabelIntroduction.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        creatingThirdLabelIntroduction.textColor = .textColor
        creatingThirdLabelIntroduction.numberOfLines = 0
        creatingThirdLabelIntroduction.setLineSpacing(lineSpacing: 2.5)
    }
}


