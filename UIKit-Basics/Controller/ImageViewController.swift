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
    
}



// Configuración básica de una imagen
// Touch events
// Accessibility
// Animating a sequence of images
