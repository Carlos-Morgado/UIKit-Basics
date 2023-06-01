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
    @IBOutlet weak private var stepperExample: UIStepper!
    @IBOutlet weak private var sliderExample: UISlider!
    @IBOutlet weak private var pickerViewExample: UIPickerView!
    
    // VARIABLES
    private let pickerViewItems = ["Madrid", "Rome", "London", "New York"]
    
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
        
        configStepperExample()
        
        configSliderExample()
        
        configPickerViewExample()
        
    }
    
    func configStepperMainTitle() {
        stepperMainTitle.text = "UIStepper"
        stepperMainTitle.textAlignment = .left
        stepperMainTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 35)
        stepperMainTitle.textColor = .textColor
    }
    
    func configStepperExample() {
        stepperExample.minimumValue = 1
        stepperExample.maximumValue = Double(pickerViewItems.count)
    }
    
    @IBAction func stepperExampleAction(_ sender: Any) {
        let stepperValue = stepperExample.value
        sliderExample.value = Float(stepperValue)
        pickerViewExample.selectRow(Int(stepperValue), inComponent: 0, animated: true)
        
    }
    
    func configSliderExample() {
        sliderExample.minimumTrackTintColor = .systemRed
        sliderExample.maximumTrackTintColor = .systemGray6
        sliderExample.minimumValue = 1
        sliderExample.maximumValue = Float(pickerViewItems.count)
        sliderExample.value = 1
    }
    
    func configPickerViewExample() {
        pickerViewExample.dataSource = self
        pickerViewExample.delegate = self
    }
}

// MARK: - DATA SOURCE PICKERVIEW EXTENSION

extension StepperViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerViewItems.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerViewItems[row]
    }
}

// MARK: - PICKERVIEW DELEGATE EXTENSION

extension StepperViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 35
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
}
