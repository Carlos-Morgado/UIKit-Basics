//
//  LottiesViewController.swift
//  UKit-Basics
//
//  Created by Carlos Morgado on 21/3/23.
//

import UIKit

class LottiesViewController: UIViewController {

    // OUTLETS
    
    
    // LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // PROPERTIES AND CONFIGURATIONS
        view.backgroundColor = .myBasicBackgroundColor
        
        title = "Lotties"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextAction))
        
    }
    
    // ACTIONS
    @objc func nextAction() {
        print("Next action")
    }
   
}

// EXTENSIONS

