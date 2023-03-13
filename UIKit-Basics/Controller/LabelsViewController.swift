//
//  LabelsViewController.swift
//  Control and Text Views
//
//  Created by Carlos Morgado on 1/3/23.
//

import UIKit

class LabelsViewController: UIViewController {
    
    // OUTLETS
    
    
    // LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // PROPERTIES AND CONFIGURATIONS
        title = "UILabel"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextAction))
        
    }
    
    // ACTIONS
    @objc func nextAction() {
        print("Next action")
    }
   
}

// EXTENSIONS

