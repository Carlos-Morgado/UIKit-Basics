//
//  ImageViewController.swift
//  Control and Text Views
//
//  Created by Carlos Morgado on 5/3/23.
//

import UIKit

class ImageViewController: UIViewController {

    // OUTLETS
    @IBOutlet weak private var mainScrollView: UIScrollView!
    @IBOutlet weak private var generalContentView: UIView!
    @IBOutlet weak private var uiImageViewMainTitle: UILabel!
    @IBOutlet weak private var uiImageViewDefinition: UILabel!
    @IBOutlet weak private var lineSeparator1: UIView!
    @IBOutlet weak private var declarationTitle: UILabel!
    @IBOutlet weak private var declarationBoxView: UIView!
    @IBOutlet weak private var declarationCode: UILabel!
    @IBOutlet weak private var creatingImageViewTitle: UILabel!
    @IBOutlet weak private var creatingImageViewIntroduction: UILabel!
    @IBOutlet weak private var imageViewExample: UIImageView!
    @IBOutlet weak private var codeImageViewExample: UIImageView!
    @IBOutlet weak private var imageViewExplanation: UIStackView!
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

private extension ImageViewController {
    func configView() {
        view.backgroundColor = .basicBackgroundColor
        
        generalContentView.backgroundColor = .basicBackgroundColor
        
        title = "UIImageView"
        
        configUIImageViewMainTitle()
        
        configUIImageViewDefinition()
        
        lineSeparator1.backgroundColor = .lineSeparatorColor
        
        configDeclarationTitle()
        
        declarationBoxView.backgroundColor = .cellColor
        declarationBoxView.layer.cornerRadius = 17
        
        configDeclarationCode()
        
        configCreatingImageViewTitle()
        
        configCreatingImageViewIntroduction()
        
        configImageViewExample()
        
        codeImageViewExample.image = .codeImageViewExampleSettings
        
        configImageViewExplanation()
        
        let imageViewExplanationLabels = [imageViewExplanationLabel1(), imageViewExplanationLabel2(), imageViewExplanationLabel3(), imageViewExplanationLabel4(), imageViewExplanationLabel5()]
        
        for label in imageViewExplanationLabels {
            imageViewExplanation.addArrangedSubview(label)
        }
        
        footerView.backgroundColor = .cellColor
        
        configMoreInfoIn()

    }
    
    func configUIImageViewMainTitle() {
        uiImageViewMainTitle.text = "UIImageView"
        uiImageViewMainTitle.textAlignment = .left
        uiImageViewMainTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 35)
        uiImageViewMainTitle.textColor = .textColor
    }
    
    func configUIImageViewDefinition() {
        uiImageViewDefinition.text = "UIImageView is a view that displays a single image or a sequence of animated images in your interface. Image views let you efficiently draw any image that can be specified using a UIImage object. For example, you can use the UIImageView class to display the contents of many standard image files, such as JPEG and PNG files. You can configure image views programmatically or in your storyboard file and change the images they display at runtime. For animated images, you can also use the methods of this class to start and stop the animation and specify other animation parameters."
        uiImageViewDefinition.font = UIFont(name: "SFUIDisplay-Light", size: 18)
        uiImageViewDefinition.textColor = .textColor
        uiImageViewDefinition.numberOfLines = 0
        uiImageViewDefinition.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configDeclarationTitle () {
        declarationTitle.text = "Declaration"
        declarationTitle.textAlignment = .left
        declarationTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 25)
        declarationTitle.textColor = .textColor
    }
    
    func configDeclarationCode() {
        let declarationCodeText: NSString = "@MainActor class UIImageView : UIView"
        let myMutableString = NSMutableAttributedString(string: String(declarationCodeText))
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor ?? .black, range: declarationCodeText.range(of: "@MainActor class"))

        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.textColor ?? .black, range: declarationCodeText.range(of: "UIImageView"))
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.textColor ?? .black, range: declarationCodeText.range(of: ":"))
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.systemPink, range: declarationCodeText.range(of: "UIView"))
        
        declarationCode.font = UIFont(name: "SFMono-Regular", size: 13)
        declarationCode.numberOfLines = 0
        declarationCode.attributedText = myMutableString
    }
    
    func configCreatingImageViewTitle() {
        creatingImageViewTitle.text = "Creating a ImageView"
        creatingImageViewTitle.textAlignment = .left
        creatingImageViewTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 24)
        creatingImageViewTitle.textColor = .textColor
    }
    
    func configCreatingImageViewIntroduction() {
        creatingImageViewIntroduction.text = "Let's see how to create the UIImageView example below by code through UIKit:"
        creatingImageViewIntroduction.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        creatingImageViewIntroduction.textColor = .textColor
        creatingImageViewIntroduction.numberOfLines = 0
        creatingImageViewIntroduction.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configImageViewExample() {
        imageViewExample.image = UIImage(systemName: "logo.xbox")
        imageViewExample.contentMode = .scaleAspectFit
        imageViewExample.tintColor = .green
        imageViewExample.backgroundColor = .darkGray
        imageViewExample.layer.cornerRadius = 15
        imageViewExample.isUserInteractionEnabled = true
        imageViewExample.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapImageView)))
    }
    
    @objc func didTapImageView() {
        if let url = URL(string: "https://www.xbox.com/es-ES") {
                UIApplication.shared.open(url)
            }
    }
    
    func configImageViewExplanation() {
        imageViewExplanation.axis = .vertical
        imageViewExplanation.distribution = .fillProportionally
        imageViewExplanation.alignment = .leading
        imageViewExplanation.spacing = 15
    }
    
    func imageViewExplanationLabel1() -> UILabel {
        let label1 = UILabel()
        let attributedText: NSString = "First of all, before customizing our imageView, we create it in our xib and then we link it to the code with an outlet."
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
    
    func imageViewExplanationLabel2() -> UILabel {
        let label2 = UILabel()
        let attributedText: NSString = "1. Now we can customize our imageView. First of all we add an image through the property .image. The image can be of the system itself or an image of our own."
        let mutableString = NSMutableAttributedString(string: String(attributedText))
        
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFMono-Medium", size: 15) as Any, range: attributedText.range(of: ".image"))
        mutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor as Any, range: attributedText.range(of: ".image"))
        
        label2.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        label2.textColor = .textColor
        label2.attributedText = mutableString
        label2.numberOfLines = 0
        label2.setLineSpacing(lineSpacing: 2.5)
        return label2
    }
    
    func imageViewExplanationLabel3() -> UILabel {
        let label3 = UILabel()
        let attributedText: NSString = "2. The .contentMode property is about how to scale de image inside de imageView, in this case we've selected .scaleAspect to fit. This scale the image to fit the space while maintaining the image’s original aspect ratio."
        let mutableString = NSMutableAttributedString(string: String(attributedText))
        
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFMono-Medium", size: 15) as Any, range: attributedText.range(of: ".contentMode"))
        mutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor as Any, range: attributedText.range(of: ".contentMode"))
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFMono-Medium", size: 15) as Any, range: attributedText.range(of: ".scaleAspect"))
        mutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor as Any, range: attributedText.range(of: ".scaleAspect"))
        
        label3.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        label3.textColor = .textColor
        label3.attributedText = mutableString
        label3.numberOfLines = 0
        label3.setLineSpacing(lineSpacing: 2.5)
        return label3
    }
    
    func imageViewExplanationLabel4() -> UILabel {
        let label4 = UILabel()
        let attributedText: NSString = "3. We can set different properties, such as .tintColor, .backgroundColor, .cornerRadius, and more visual properties. "
        let mutableString = NSMutableAttributedString(string: String(attributedText))
        
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFMono-Medium", size: 15) as Any, range: attributedText.range(of: ".tintColor"))
        mutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor as Any, range: attributedText.range(of: ".tintColor"))
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFMono-Medium", size: 15) as Any, range: attributedText.range(of: ".backgroundColor"))
        mutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor as Any, range: attributedText.range(of: ".backgroundColor"))
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFMono-Medium", size: 15) as Any, range: attributedText.range(of: ".cornerRadius"))
        mutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor as Any, range: attributedText.range(of: ".cornerRadius"))
        
        label4.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        label4.textColor = .textColor
        label4.attributedText = mutableString
        label4.numberOfLines = 0
        label4.setLineSpacing(lineSpacing: 2.5)
        return label4
    }
    
    func imageViewExplanationLabel5() -> UILabel {
        let label5 = UILabel()
        let attributedText: NSString = "4. You can also interact with an image. You have to set the .isUserInteractionEnabled property to 'true' so that the user can interact with the image. Don't forget to add the .addGestureRecognizer to attach any gesture you want to the image."
        let mutableString = NSMutableAttributedString(string: String(attributedText))
        
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFMono-Medium", size: 15) as Any, range: attributedText.range(of: ".isUserInteractionEnabled"))
        mutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor as Any, range: attributedText.range(of: ".isUserInteractionEnabled"))
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFMono-Medium", size: 15) as Any, range: attributedText.range(of: ".addGestureRecognizer"))
        mutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.pinkCodeTextColor as Any, range: attributedText.range(of: ".addGestureRecognizer"))
        
        label5.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        label5.textColor = .textColor
        label5.attributedText = mutableString
        label5.numberOfLines = 0
        label5.setLineSpacing(lineSpacing: 2.5)
        return label5
    }
    
    func configMoreInfoIn() {
        moreInfoIn.hyperLink(originalText: "Get more info in Developer >", hyperLink: "Developer", urlString: "https://developer.apple.com/documentation/uikit/uiimageview/")
        moreInfoIn.isUserInteractionEnabled = true
        moreInfoIn.isEditable = false
        moreInfoIn.font = UIFont(name: "SFUIDisplay-Regular", size: 18)
        moreInfoIn.textAlignment = .center
        moreInfoIn.backgroundColor = .clear
        moreInfoIn.textContainerInset = UIEdgeInsets(top: 0,left: -5,bottom: 0,right: -5)
        moreInfoIn.textContainer.heightTracksTextView = true
    }
}

