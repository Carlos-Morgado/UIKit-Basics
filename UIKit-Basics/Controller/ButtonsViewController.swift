//
//  ButtonsViewController.swift
//  Control and Text Views
//
//  Created by Carlos Morgado on 1/3/23.
//

import UIKit

class ButtonsViewController: UIViewController {
    
    // OUTLETS

    @IBOutlet weak private var myFirstButton: UIButton!
    @IBOutlet weak private var closeButton: UIButton!
    
    // LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // BUTTONS SETTINGS
        myFirstButton.setTitle("My First Button", for: .normal)
        myFirstButton.backgroundColor = .blue
        myFirstButton.setTitleColor(.white, for: .normal)
        myFirstButton.layer.cornerRadius = 5
        
        closeButton.setTitle("Close", for: .normal)
    }
        
    // ACTIONS
    @IBAction func MyFirstButtonAction(_ sender: Any) {
        if myFirstButton.backgroundColor == .blue {
            myFirstButton.backgroundColor = .darkGray
            myFirstButton.setTitleColor(.yellow, for: .normal)
            myFirstButton.setTitle("Color has changed!", for: .normal)
        } else {
            myFirstButton.backgroundColor = .blue
            myFirstButton.setTitleColor(.white, for: .normal)
            myFirstButton.setTitle("Mi primer botón", for: .normal)
        }
    }
    
    @IBAction func closeButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
}

