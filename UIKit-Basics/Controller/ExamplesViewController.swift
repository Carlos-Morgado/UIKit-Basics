//
//  ExamplesViewController.swift
//  UKit-Basics
//
//  Created by Carlos Morgado on 27/3/23.
//

import UIKit

final class ExamplesViewController: UIViewController {
    
    private let textViewTitle: UILabel = {
        let label = UILabel()
        label.text = "1. TextView"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textAlignment = .left
        label.textColor = .blue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let myTextViewExample: UITextView = {
        let textView = UITextView()
        textView.frame = CGRect(x: 22, y: 175, width: 350, height: 95)
        textView.text = "This TextView is editable, you can add some lines and start scrolling. This class supports multiple text styles through use of the attributedText property. (Styled text isn’t supported in versions of iOS earlier than iOS 6.) Setting a value for this property causes the text view to use the style information provided in the attributed string. You can still use the font, textColor, and textAlignment properties to set style attributes, but those properties apply to all of the text in the text view."
        textView.font = UIFont.systemFont(ofSize: 16)
        textView.textColor = .darkGray
        textView.backgroundColor = .systemGray6
        textView.layer.cornerRadius = 5
        textView.layer.borderWidth = 0.5
        textView.layer.borderColor = UIColor.systemGray.cgColor
        textView.textAlignment = .left
        textView.textContainerInset = UIEdgeInsets(top: 5,left: 2,bottom: 0,right: 0)
        textView.isUserInteractionEnabled = true
        textView.isEditable = true
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    private let textFieldTitle: UILabel = {
        let label = UILabel()
        label.text = "2. TextField"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textAlignment = .left
        label.textColor = .blue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(textViewTitle)
        view.addSubview(myTextViewExample)
        view.addSubview(textFieldTitle)
        
        NSLayoutConstraint.activate([
            textViewTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textViewTitle.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 35),
            textViewTitle.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 5),
            textViewTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 5),
            
            textFieldTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textFieldTitle.topAnchor.constraint(equalTo: textViewTitle.bottomAnchor, constant: 120),
            textFieldTitle.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 5),
            textFieldTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 5),
        ])
    }
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    @IBOutlet weak private var exampleButton: UIButton!
//    @IBOutlet weak private var stackView: UIStackView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        exampleButton.setTitle("Go to Apple Developer", for: .normal)
//        exampleButton.backgroundColor = .blue
//        exampleButton.setTitleColor(.white, for: .normal)
//        exampleButton.layer.cornerRadius = 17
//
//        let views = [createLabel1(), createLabel2(), createLabel3()]
//
//        stackView.axis = .vertical
//        stackView.distribution = .fillProportionally
//        stackView.alignment = .leading
//        stackView.spacing = 5
//
//        for view in views {
//            stackView.addArrangedSubview(view)
//        }
//    }
//
//    @IBAction func exampleButtonAction(_ sender: Any) {
//        if exampleButton.backgroundColor == .blue {
//            exampleButton.backgroundColor = .red
//        } else {
//            exampleButton.backgroundColor = .blue
//        }
//
//        if let url = URL(string: "https://developer.apple.com/") {
//            UIApplication.shared.open(url)
//        }
//    }
//
//    func createLabel1() -> UILabel {
//        let label1 = UILabel()
//        label1.text = "1. UIKit provides a variety of features for building apps, including components you can use to construct the core infrastructure of your iOS, iPadOS, or tvOS apps."
//        label1.font = UIFont(name: "SFUIDisplay-Light", size: 15)
//        label1.textColor = .textColor
//        label1.numberOfLines = 0
//        label1.backgroundColor = .orange
//        label1.setLineSpacing(lineSpacing: 2.5)
//        label1.sizeToFit()
//        label1.layoutIfNeeded()
//        return label1
//    }
//
//    func createLabel2() -> UILabel {
//        let label2 = UILabel()
//        label2.text = "2. UIKit provides a variety of features for building apps, including components you can use to construct the core infrastructure of your iOS, iPadOS, or tvOS apps. The framework provides the window and view architecture for implementing your UI, the event-handling infrastructure for delivering Multi-Touch and other types of input to your app, and the main run loop for managing interactions between the user, the system, and your app."
//        label2.font = UIFont(name: "SFUIDisplay-Light", size: 15)
//        label2.textColor = .textColor
//        label2.numberOfLines = 0
//        label2.backgroundColor = .orange
//        label2.setLineSpacing(lineSpacing: 2.5)
//        label2.sizeToFit()
//        label2.layoutIfNeeded()
//        return label2
//    }
//
//    func createLabel3() -> UILabel {
//        let label3 = UILabel()
//        label3.text = "3. UIKit provides a variety of features for building apps, including components you can use to construct the core infrastructure of your iOS, iPadOS, or tvOS apps. The framework provides the window and view architecture for implementing your UI, the event-handling infrastructure for delivering Multi-Touch and other types of input to your app."
//        label3.font = UIFont(name: "SFUIDisplay-Light", size: 15)
//        label3.textColor = .textColor
//        label3.numberOfLines = 0
//        label3.backgroundColor = .orange
//        label3.setLineSpacing(lineSpacing: 2.5)
//        label3.sizeToFit()
//        label3.layoutIfNeeded()
//        return label3
//    }
//}
    
    



//final class ExamplesViewController: UIViewController {
//
//
//    @IBOutlet weak private var textView: UITextView!
//
//    private let labelExample1: UILabel = {
//        let label = UILabel()
//        label.text = "Label example 1"
//        label.font = UIFont(name: "Arial Rounded MT Bold", size: 26)
//        label.textAlignment = .center
//        label.textColor = .blue
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//
//    private let labelExample2: UILabel = {
//        let label = UILabel()
//        label.text = "This is the second example of a UILable. Let's learn how to solve common problems with this type of label."
//        label.font = UIFont(name: "SFUIDisplay-Light", size: 16)
//        label.numberOfLines = 0
//        label.textAlignment = .left
//        label.textColor = .black
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//
//    private let labelExample3: UILabel = {
//        let atributedText: NSString = "This is the third label example, where we will see some different configurations."
//        let mutableString = NSMutableAttributedString(string: String(atributedText))
//
//        mutableString.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range: atributedText.range(of: "This is the"))
//
//        mutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.systemBlue, range: atributedText.range(of: "third label example,"))
//

//        mutableString.addAttribute(NSAttributedString.Key.backgroundColor, value: UIColor.systemGray3, range: atributedText.range(of: "where we will see"))
//
//        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFUIText-SemiboldItalic", size: 30) as Any, range: atributedText.range(of: "some different configurations"))
//
//        let label = UILabel()
//        label.font = UIFont(name: "SFUIDisplay-Light", size: 30)
//        label.attributedText = mutableString
//        label.numberOfLines = 0
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let attributedText: NSString = "Want to learn iOS? You should visit the best source of free iOS tutorials!"
//        let attributedString = NSMutableAttributedString(string: String (attributedText))
//        attributedString.addAttribute(.link, value: "https://sarunw.com/posts/how-to-add-custom-fonts-to-ios-app/", range: attributedText.range(of: "should visit"))
//
//        textView.attributedText = attributedString
//        textView.font = UIFont(name: "SFUIDisplay-Light", size: 16)
//        textView.textColor = .textColor
//
//
//        view.addSubview(labelExample1)
//        view.addSubview(labelExample2)
//        view.addSubview(labelExample3)
//
//        NSLayoutConstraint.activate([
//            labelExample1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            labelExample1.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 30),
//
//            labelExample2.centerXAnchor.constraint(equalTo: labelExample1.centerXAnchor),
//            labelExample2.topAnchor.constraint(equalTo: labelExample1.bottomAnchor, constant: 12),
//            labelExample2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
//            labelExample2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
//
//            labelExample3.centerXAnchor.constraint(equalTo: labelExample1.centerXAnchor),
//            labelExample3.topAnchor.constraint(equalTo: labelExample2.bottomAnchor, constant: 12),
//            labelExample3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
//            labelExample3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
//        ])
//    }
//
//    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
//        UIApplication.shared.open(URL)
//        return false
//    }
//}


//MARK: - COSAS PENDIENTES POR HACER

// HOMEVIEWCONTROLLER:
    // Cambiar color gris de las celdas de la tableView cuando se seleccionan
    // Añadir un tab bar para toda la app
