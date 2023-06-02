//
//  LottiesViewController.swift
//  UKit-Basics
//
//  Created by Carlos Morgado on 21/3/23.
//

import UIKit

class LottiesViewController: UIViewController {

    // OUTLETS
    @IBOutlet weak private var lottiesMainTitle: UILabel!
    @IBOutlet weak private var generalContentView: UIView!
    @IBOutlet weak private var swiftPackageMainTitle: UILabel!
    
    // LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }
    
    // ACTIONS
   
}

// MARK: - EXTENSIONS

private extension LottiesViewController {
    func configView() {
        title = "Lotties"
        view.backgroundColor = .basicBackgroundColor
        generalContentView.backgroundColor = .basicBackgroundColor
        
        configLottiesMainTitle()
    
        configSwiftPackageMainTitle()
    }
    
    func configLottiesMainTitle() {
        lottiesMainTitle.text = "Lotties"
        lottiesMainTitle.textAlignment = .left
        lottiesMainTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 35)
        lottiesMainTitle.textColor = .textColor
    }
    
    func configSwiftPackageMainTitle() {
        swiftPackageMainTitle.text = "With Swift Package Manager"
        swiftPackageMainTitle.textAlignment = .left
        swiftPackageMainTitle.font = UIFont(name: "SFUIDisplay-Regular", size: 20)
        swiftPackageMainTitle.textColor = .textColor
    }
}

