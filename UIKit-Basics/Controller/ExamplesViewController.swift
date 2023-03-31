//
//  ExamplesViewController.swift
//  UKit-Basics
//
//  Created by Carlos Morgado on 27/3/23.
//

import UIKit

class ExamplesViewController: UIViewController {

    private let labelExample1: UILabel = {
        let label = UILabel()
        label.text = "Label example 1"
        label.font = UIFont(name: "Arial Rounded MT Bold", size: 26)
        label.textAlignment = .center
        label.textColor = .blue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let labelExample2: UILabel = {
        let label = UILabel()
        label.text = "This is the second example of a UILable. Let's learn how to solve common problems with this type of label."
        label.font = UIFont(name: "SFUIDisplay-Light", size: 16)
        label.numberOfLines = 0
        label.textAlignment = .left
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let labelExample3: UILabel = {
        let atributedText: NSString = "This is the third label example, where we will see some different configurations."
        let mutableString = NSMutableAttributedString(string: String(atributedText)) // 1
        
        mutableString.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range: atributedText.range(of: "This is the"))
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFUIDisplay-Light", size: 30) as Any, range: atributedText.range(of: "This is the"))
        
        mutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.systemBlue, range: atributedText.range(of: "third label example,"))
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFUIDisplay-Light", size: 30) as Any, range: atributedText.range(of: "third label example,"))
        
        mutableString.addAttribute(NSAttributedString.Key.backgroundColor, value: UIColor.systemGray3, range: atributedText.range(of: "where we will see"))
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFUIDisplay-Light", size: 30) as Any, range: atributedText.range(of: "where we will see"))
        
        mutableString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "SFUIText-SemiboldItalic", size: 30) as Any, range: atributedText.range(of: "some different configurations"))
        
        let label = UILabel()
        label.font = UIFont(name: "SFUIDisplay-Light", size: 30)
        label.attributedText = mutableString
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(labelExample1)
        view.addSubview(labelExample2)
        view.addSubview(labelExample3)
                
        NSLayoutConstraint.activate([
            labelExample1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelExample1.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 30),
            
            labelExample2.centerXAnchor.constraint(equalTo: labelExample1.centerXAnchor),
            labelExample2.topAnchor.constraint(equalTo: labelExample1.bottomAnchor, constant: 12),
            labelExample2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            labelExample2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            labelExample3.centerXAnchor.constraint(equalTo: labelExample1.centerXAnchor),
            labelExample3.topAnchor.constraint(equalTo: labelExample2.bottomAnchor, constant: 12),
            labelExample3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            labelExample3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        ])
    }
}


//MARK: - COSAS PENDIENTES POR HACER

// HOMEVIEWCONTROLLER:
    // Enlazar botón "Go to App Developer" y animarlo.
    // Cambiar color gris de las celdas cuando se seleccionan

// LABELS VIEWCONTROLLER
    // Poner en negrita palabras importantes
    // Personalizar salto de línea
    // Enlazar "customized font" y que te lleve a una pop view explicando cómo instalar fuentes personalizadas
    // Meter screenshots de los códigos
    // Ajustar espaciados entre elementos
