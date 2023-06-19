//
//  AlertActionViewController.swift
//  UKit-Basics
//
//  Created by Carlos Morgado on 19/6/23.
//

import UIKit

class AlertActionViewController: UIViewController {

    // OUTLETS
    @IBOutlet weak private var generalContentView: UIView!
    @IBOutlet weak private var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
      
    }

    // ACTIONS
    @IBAction func buttonAction(_ sender: Any) {
        let alertController = UIAlertController(title: "Log In Confirmation", message: "Are you sure to log in?", preferredStyle: .alert)
            
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in
            // Acción a realizar cuando el usuario presiona "Cancelar"
            print("El usuario presionó Cancelar")
        }
            
        let confirmAction = UIAlertAction(title: "Confirm", style: .default) { (_) in
            // Acción a realizar cuando el usuario presiona "Confirmar"
            print("El usuario presionó Confirmar")
        }
            
        alertController.addAction(cancelAction)
        alertController.addAction(confirmAction)
            
        present(alertController, animated: true, completion: nil)
    }
}

// MARK: - EXTENSION

private extension AlertActionViewController {
    func configView() {
        title = "Alert Action"
        view.backgroundColor = .basicBackgroundColor
        generalContentView.backgroundColor = .basicBackgroundColor
        
        configButton()
    }
    
    func configButton() {
        logInButton.setTitle("Log In", for: .normal)
        logInButton.backgroundColor = .blue
        logInButton.setTitleColor(.white, for: .normal)
        logInButton.layer.cornerRadius = 5
    }
}
