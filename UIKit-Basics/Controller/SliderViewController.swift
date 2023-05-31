//
//  SliderViewController.swift
//  Control and Text Views
//
//  Created by Carlos Morgado on 5/3/23.
//

import UIKit

class SliderViewController: UIViewController {

    // OUTLETS
    @IBOutlet weak private var generalContentView: UIView!
    @IBOutlet weak private var sliderMainTitle: UILabel!
    
    // LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }
    
  // ACTIONS
   
}

// MARK: - EXTENSIONS

private extension SliderViewController {
    func configView() {
        title = "UISlider"
        view.backgroundColor = .basicBackgroundColor
        generalContentView.backgroundColor = .basicBackgroundColor
        
        configSliderMainTitle()
    }
    
    func configSliderMainTitle() {
        sliderMainTitle.text = "UISlider"
        sliderMainTitle.textAlignment = .left
        sliderMainTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 35)
        sliderMainTitle.textColor = .textColor
    }
}
