//
//  ExamplesViewController.swift
//  UKit-Basics
//
//  Created by Carlos Morgado on 27/3/23.
//

import UIKit

final class ExamplesViewController: UIViewController {
    
    @IBOutlet weak var exampleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exampleButton.setTitle("Go to Apple Developer", for: .normal)
        exampleButton.backgroundColor = .blue
        exampleButton.setTitleColor(.white, for: .normal)
        exampleButton.layer.cornerRadius = 17
    }
    
    @IBAction func exampleButtonAction(_ sender: Any) {
        if exampleButton.backgroundColor == .blue {
            exampleButton.backgroundColor = .red
        } else {
            exampleButton.backgroundColor = .blue
        }

        if let url = URL(string: "https://developer.apple.com/") {
            UIApplication.shared.open(url)
        }
    }
}
    
    



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
    // Enlazar botón "Go to App Developer" y animarlo.
    // Cambiar color gris de las celdas de la tableView cuando se seleccionan
    // Añadir un tab bar para toda la app

// LABELS VIEWCONTROLLER
    // Ajustar espaciados entre elementos
