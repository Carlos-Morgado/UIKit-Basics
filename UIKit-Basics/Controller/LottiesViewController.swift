//
//  LottiesViewController.swift
//  UKit-Basics
//
//  Created by Carlos Morgado on 21/3/23.
//

import UIKit
import Lottie

class LottiesViewController: UIViewController {

    // OUTLETS
    @IBOutlet weak private var lottiesMainTitle: UILabel!
    @IBOutlet weak private var generalContentView: UIView!
    @IBOutlet weak private var cocoaPodsMainTitle: UILabel!
    @IBOutlet weak private var lottieExample: LottieAnimationView!
    
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
    
        configCocoaPodsMainTitle()
        
        configLottieExample()
        
    }
    
    func configLottiesMainTitle() {
        lottiesMainTitle.text = "Lotties"
        lottiesMainTitle.textAlignment = .left
        lottiesMainTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 35)
        lottiesMainTitle.textColor = .textColor
    }
    
    func configCocoaPodsMainTitle() {
        cocoaPodsMainTitle.text = "With Cocoa Pods"
        cocoaPodsMainTitle.textAlignment = .left
        cocoaPodsMainTitle.font = UIFont(name: "SFUIDisplay-Regular", size: 20)
        cocoaPodsMainTitle.textColor = .textColor
    }
    
    func configLottieExample() {
        lottieExample.animation = LottieAnimation.named("93257-battery")
        lottieExample.contentMode = .scaleAspectFit
        lottieExample.loopMode = .loop
        lottieExample.animationSpeed = 0.5
        lottieExample.play()
    }
}

