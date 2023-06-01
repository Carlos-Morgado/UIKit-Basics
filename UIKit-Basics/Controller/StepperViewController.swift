//
//  StepperViewController.swift
//  Control and Text Views
//
//  Created by Carlos Morgado on 5/3/23.
//

import UIKit

class StepperViewController: UIViewController {

    // OUTLETS
    @IBOutlet weak private var generalContentView: UIView!
    @IBOutlet weak private var stepperMainTitle: UILabel!
    
    
    // LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }
    
  // ACTIONS
   
}


// MARK: - GENERAL CONFIGURATION EXTENSION

private extension StepperViewController {
    func configView() {
        title = "UIStepper"
        view.backgroundColor = .basicBackgroundColor
        generalContentView.backgroundColor = .basicBackgroundColor
        
        configStepperMainTitle()
    }
    
    func configStepperMainTitle() {
        stepperMainTitle.text = "UIStepper"
        stepperMainTitle.textAlignment = .left
        stepperMainTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 35)
        stepperMainTitle.textColor = .textColor
    }
}
