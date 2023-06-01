//
//  SwitchViewController.swift
//  Control and Text Views
//
//  Created by Carlos Morgado on 5/3/23.
//

import UIKit

class SwitchViewController: UIViewController {

    // OUTLETS
    @IBOutlet weak private var generalContentView: UIView!
    @IBOutlet weak private var switchMainTitle: UILabel!
    @IBOutlet weak private var switchExample: UISwitch!
    @IBOutlet weak private var imageExample: UIImageView!
    
    // LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }
    
  // ACTIONS

}

// MARK: - EXTENSIONS

private extension SwitchViewController {
    func configView(){
        title = "UISwitch"
        view.backgroundColor = .basicBackgroundColor
        generalContentView.backgroundColor = .basicBackgroundColor
        
        configSwitchMainTitle()
        
        configSwitchExample()
        
        configImageExample()
    }
    
    func configSwitchMainTitle() {
        switchMainTitle.text = "UISwitch"
        switchMainTitle.textAlignment = .left
        switchMainTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 35)
        switchMainTitle.textColor = .textColor
    }
    
    func configSwitchExample() {
        switchExample.onTintColor = .systemBlue
        switchExample.isOn = false
    }
    
    @IBAction func switchExampleAction(_ sender: Any) {
        if switchExample.isOn {
            imageExample.isHidden = false
        } else {
            imageExample.isHidden = true
        }
    }
    
    func configImageExample() {
        imageExample.image = UIImage(named: "uikit-logo-png-transparent")
        imageExample.isHidden = true
    }
}
