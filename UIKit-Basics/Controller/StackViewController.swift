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
    @IBOutlet weak private var creatingStackViewTitle: UILabel!
    @IBOutlet weak private var creatingStackViewIntro: UILabel!
    @IBOutlet weak private var citiesStackView: UIStackView!
    @IBOutlet weak private var londonView: UIView!
    @IBOutlet weak private var londonImageView: UIImageView!
    @IBOutlet weak private var londonLabel: UILabel!
    @IBOutlet weak private var parisView: UIView!
    @IBOutlet weak private var parisImageView: UIImageView!
    @IBOutlet weak private var parisLabel: UILabel!
    @IBOutlet weak private var romeView: UIView!
    @IBOutlet weak private var romeImageView: UIImageView!
    @IBOutlet weak private var romeLabel: UILabel!
    @IBOutlet weak private var searchButtonView: UIView!
    @IBOutlet weak private var searchButton: UIButton!
    @IBOutlet weak private var codeStackView: UIImageView!
    @IBOutlet weak private var stackViewExplanation: UIStackView!
    @IBOutlet weak private var footerView: UIView!
    @IBOutlet weak private var moreInfoIn: UITextView!
    
    // LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }
    
    // ACTIONS

    @IBAction func searchButtonAction(_ sender: UIButton) {
        sender.flash()
        if let url = URL(string: "https://www.ryanair.com/es/es") {
            UIApplication.shared.open(url)
        }
    }
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
        
        configCreatingStackViewTitle()
        
        configCreatingStackViewIntro()
        
        configCitiesStackView()
        
        codeStackView.image = .codeStackViewSettings
        
        configStackViewExplanation()
        
        let stackViewExplanationLabels = [stackViewExplanationLabel1(), stackViewExplanationLabel2(), stackViewExplanationLabel3(), stackViewExplanationLabel4(), stackViewExplanationLabel5(), stackViewExplanationLabel6()]
        
        for label in stackViewExplanationLabels {
            stackViewExplanation.addArrangedSubview(label)
        }
        
        footerView.backgroundColor = .cellColor
        
        configMoreInfoIn()
    }
    
    func configUIStackViewMainTitle() {
        uiStackViewMainTitle.text = "UIStackView"
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
    
    func configCreatingStackViewTitle() {
        creatingStackViewTitle.text = "Creating a StackView"
        creatingStackViewTitle.textAlignment = .left
        creatingStackViewTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 24)
        creatingStackViewTitle.textColor = .textColor
    }
    
    func configCreatingStackViewIntro() {
        creatingStackViewIntro.text = "Let's see how to create the UIStackView example below by code through UIKit:"
        creatingStackViewIntro.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        creatingStackViewIntro.textColor = .textColor
        creatingStackViewIntro.numberOfLines = 0
        creatingStackViewIntro.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configCitiesStackView() {
        citiesStackView.axis = .vertical
        citiesStackView.distribution = .fill
        citiesStackView.spacing = 20
        citiesStackView.backgroundColor = .clear
        configLondonView()
        citiesStackView.addArrangedSubview(londonView)
        configParisView()
        citiesStackView.addArrangedSubview(parisView)
        configRomeView()
        citiesStackView.addArrangedSubview(romeView)
        configSearchButtonView()
        citiesStackView.addArrangedSubview(searchButtonView)
        citiesStackView.isUserInteractionEnabled = true
    }
    
    func configLondonView() {
        londonView.addSubview(londonImageView)
        londonView.addSubview(londonLabel)
        londonView.backgroundColor = UIColor.blue
        londonView.layer.cornerRadius = 14
        londonView.isUserInteractionEnabled = true
        londonImageView.image = UIImage(named: "London")
        londonImageView.layer.cornerRadius = 15
        londonImageView.alpha = 0.5
        londonLabel.text = "VISIT LONDON >"
        londonLabel.font = UIFont(name: "SFUIDisplay-Bold", size: 20)
        londonLabel.textColor = .white
    }
    
    func configParisView() {
        parisView.addSubview(parisImageView)
        parisView.addSubview(parisLabel)
        parisView.backgroundColor = UIColor.blue
        parisView.layer.cornerRadius = 14
        parisImageView.image = UIImage(named: "Paris 2")
        parisImageView.layer.cornerRadius = 15
        parisImageView.alpha = 0.5
        parisLabel.text = "VISITEZ PARIS >"
        parisLabel.font = UIFont(name: "SFUIDisplay-Bold", size: 20)
        parisLabel.textColor = .white
    }
    
    func configRomeView() {
        romeView.addSubview(romeImageView)
        romeView.addSubview(romeLabel)
        romeView.backgroundColor = UIColor.blue
        romeView.layer.cornerRadius = 15
        romeImageView.image = UIImage(named: "Rome")
        romeImageView.layer.cornerRadius = 15
        romeImageView.alpha = 0.5
        romeLabel.text = "VISITARE ROMA >"
        romeLabel.font = UIFont(name: "SFUIDisplay-Bold", size: 20)
        romeLabel.textColor = .white
    }
    
    func configSearchButtonView() {
        searchButtonView.addSubview(searchButton)
        searchButtonView.backgroundColor = .clear
        searchButtonView.isUserInteractionEnabled = true
        searchButton.setTitle("Search flights", for: .normal)
        searchButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        searchButton.backgroundColor = .systemYellow
        searchButton.setTitleColor(.systemBlue, for: .normal)
        searchButton.layer.cornerRadius = 16
        searchButton.startAnimatingPressActions()
    }
    
    func configStackViewExplanation() {
        stackViewExplanation.axis = .vertical
        stackViewExplanation.distribution = .fillProportionally
        stackViewExplanation.alignment = .leading
        stackViewExplanation.spacing = 15
    }
    
    func stackViewExplanationLabel1() -> UILabel {
        let label1 = UILabel()
        let paragraph = "First of all, before customizing our stackView, we create it in our xib and then we link it to the code with an outlet."
        let mutableParagraph = NSMutableAttributedString(string: paragraph)
        
        let wordsAndAttributes: [(String, [NSAttributedString.Key: Any])] = [
            ("xib", [.font: (UIFont(name: "SFMono-Medium", size: 15) as Any),
                     .foregroundColor: (UIColor.pinkCodeTextColor as Any)])
        ]
        
        for (word, attributes) in wordsAndAttributes {
            let range = mutableParagraph.mutableString.range(of: word)
            mutableParagraph.addAttributes(attributes, range: range)
            //            if let range = paragraph.range(of: word) {
            //                let nsRange = NSRange(range, in: paragraph)
            //                mutableString.addAttributes(attributes, range: nsRange)
            //            }
        }
        
        label1.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        label1.textColor = .textColor
        label1.attributedText = mutableParagraph
        label1.numberOfLines = 0
        label1.setLineSpacing(lineSpacing: 2.5)
        return label1
    }
    
    func stackViewExplanationLabel2() -> UILabel {
        let label2 = UILabel()
        let paragraph = "1. The .axis property is to set the type of stackView we want, vertical or horizontal."
        let mutableParagraph = NSMutableAttributedString(string: paragraph)
        
        let wordsAndAttributes: [(String, [NSAttributedString.Key: Any])] = [
            (".axis", [.font: (UIFont(name: "SFMono-Medium", size: 15) as Any),
                       .foregroundColor: (UIColor.pinkCodeTextColor as Any)])
        ]
        
        for (word, attributes) in wordsAndAttributes {
            let range = mutableParagraph.mutableString.range(of: word)
            mutableParagraph.addAttributes(attributes, range: range)
        }
        
        label2.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        label2.textColor = .textColor
        label2.attributedText = mutableParagraph
        label2.numberOfLines = 0
        label2.setLineSpacing(lineSpacing: 2.5)
        return label2
        
    }
        
    func stackViewExplanationLabel3() -> UILabel {
        let label3 = UILabel()
        let paragraph = "2. To adjust the type of distribution and size of the elements we need the .distribution property, where you can find different options, such as .fill, .fillEqually, .fillProportionaly..."
        let mutableParagraph = NSMutableAttributedString(string: paragraph)
        
        let wordsAndAttributes: [(String, [NSAttributedString.Key: Any])] = [
            (".distribution", [.font: (UIFont(name: "SFMono-Medium", size: 15) as Any),
                       .foregroundColor: (UIColor.pinkCodeTextColor as Any)])
        ]
        
        for (word, attributes) in wordsAndAttributes {
            let range = mutableParagraph.mutableString.range(of: word)
            mutableParagraph.addAttributes(attributes, range: range)
        }
        
        label3.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        label3.textColor = .textColor
        label3.attributedText = mutableParagraph
        label3.numberOfLines = 0
        label3.setLineSpacing(lineSpacing: 2.5)
        return label3
    }
        
    func stackViewExplanationLabel4() -> UILabel {
        let label4 = UILabel()
        let paragraph = "3. With .spacing we can adjust the spacing between the different elements of the stackView."
        let mutableParagraph = NSMutableAttributedString(string: paragraph)
        
        let wordsAndAttributes: [(String, [NSAttributedString.Key: Any])] = [
            ("spacing", [.font: (UIFont(name: "SFMono-Medium", size: 15) as Any),
                       .foregroundColor: (UIColor.pinkCodeTextColor as Any)])
        ]
        
        for (word, attributes) in wordsAndAttributes {
            let range = mutableParagraph.mutableString.range(of: word)
            mutableParagraph.addAttributes(attributes, range: range)
        }
            
        label4.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        label4.textColor = .textColor
        label4.attributedText = mutableParagraph
        label4.numberOfLines = 0
        label4.setLineSpacing(lineSpacing: 2.5)
        return label4
    }
        
    func stackViewExplanationLabel5() -> UILabel {
        let label5 = UILabel()
        let paragraph = "4. To add the views inside the stackView we need the .addArrangedSubview property."
        let mutableParagraph = NSMutableAttributedString(string: paragraph)
        
        let wordsAndAttributes: [(String, [NSAttributedString.Key: Any])] = [
            (".addArrangedSubview", [.font: (UIFont(name: "SFMono-Medium", size: 15) as Any),
                       .foregroundColor: (UIColor.pinkCodeTextColor as Any)])
        ]
        
        for (word, attributes) in wordsAndAttributes {
            let range = mutableParagraph.mutableString.range(of: word)
            mutableParagraph.addAttributes(attributes, range: range)
        }
            
        label5.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        label5.textColor = .textColor
        label5.attributedText = mutableParagraph
        label5.numberOfLines = 0
        label5.setLineSpacing(lineSpacing: 2.5)
        return label5
    }
        
    func stackViewExplanationLabel6() -> UILabel {
        let label6 = UILabel()
        let paragraph = "5. If you want to interact with the stackView you need to enable the .isUserInteractionEnabled property."
        let mutableParagraph = NSMutableAttributedString(string: paragraph)
        
        let wordsAndAttributes: [(String, [NSAttributedString.Key: Any])] = [
            (".isUserInteractionEnabled", [.font: (UIFont(name: "SFMono-Medium", size: 15) as Any),
                       .foregroundColor: (UIColor.pinkCodeTextColor as Any)])
        ]
        
        for (word, attributes) in wordsAndAttributes {
            let range = mutableParagraph.mutableString.range(of: word)
            mutableParagraph.addAttributes(attributes, range: range)
        }
        
        label6.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        label6.textColor = .textColor
        label6.attributedText = mutableParagraph
        label6.numberOfLines = 0
        label6.setLineSpacing(lineSpacing: 2.5)
        return label6
    }
        
    func configMoreInfoIn() {
        moreInfoIn.hyperLink(originalText: "Get more info in Developer >", hyperLink: "Developer", urlString: "https://developer.apple.com/documentation/uikit/uistackview/")
        moreInfoIn.isUserInteractionEnabled = true
        moreInfoIn.isEditable = false
        moreInfoIn.font = UIFont(name: "SFUIDisplay-Regular", size: 18)
        moreInfoIn.textAlignment = .center
        moreInfoIn.backgroundColor = .clear
        moreInfoIn.textContainerInset = UIEdgeInsets(top: 0,left: -5,bottom: 0,right: -5)
        moreInfoIn.textContainer.heightTracksTextView = true
    }
}
