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
    @IBOutlet weak private var segmentedControlExample: UISegmentedControl!
    @IBOutlet weak private var sliderExample: UISlider!
    
    // VARIBALES
    private let segmentedControlItems = ["Light", "Dark", "Automatic"]
    
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
        
        configSegmentedControlExample()
        
        configSliderExample()
    }
    
    func configSliderMainTitle() {
        sliderMainTitle.text = "UISlider"
        sliderMainTitle.textAlignment = .left
        sliderMainTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 35)
        sliderMainTitle.textColor = .textColor
    }
    
    func configSegmentedControlExample() {
        segmentedControlExample.backgroundColor = .systemGray3
        segmentedControlExample.selectedSegmentTintColor = .systemGray6
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
        segmentedControlExample.setTitleTextAttributes(titleTextAttributes, for: .selected)
        segmentedControlExample.removeAllSegments()
        for (index, value) in segmentedControlItems.enumerated() {
            segmentedControlExample.insertSegment(withTitle: value, at: index, animated: true)
        }
    }
    
    @IBAction func segmentedControlExample(_ sender: Any) {
        switch segmentedControlExample.selectedSegmentIndex {
        case 0:
            sliderExample.value = 1
        case 1:
            sliderExample.value = 2
        default:
            sliderExample.value = 3
        }
    }
    
    func configSliderExample() {
        sliderExample.minimumTrackTintColor = .systemRed
        sliderExample.maximumTrackTintColor = .systemGray6
        sliderExample.minimumValue = 1
        sliderExample.maximumValue = Float(segmentedControlItems.count)
        sliderExample.value = 1
    }
    
    @IBAction func sliderExampleAction(_ sender: Any) {
        switch sliderExample.value {
        case 1..<2:
            segmentedControlExample.selectedSegmentIndex = 0
        case 2..<3:
            segmentedControlExample.selectedSegmentIndex = 1
        default:
            segmentedControlExample.selectedSegmentIndex = 2
        }
    }
}
