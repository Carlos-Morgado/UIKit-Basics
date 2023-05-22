//
//  DatePickerViewController.swift
//  Control and Text Views
//
//  Created by Carlos Morgado on 5/3/23.
//

import UIKit

class PickerViewController: UIViewController {

    // OUTLETS
    @IBOutlet weak private var generalContentView: UIView!
    @IBOutlet weak private var uiPickerViewMainTitle: UILabel!
    @IBOutlet weak private var pickerViewExample: UIPickerView!
    @IBOutlet weak private var setAlarmTitle: UILabel!
    @IBOutlet weak private var timeLabel: UILabel!
    
    // VARIABLES
    
    
    // LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // PROPERTIES AND CONFIGURATIONS
        configView()
        
        
    }
    
  // ACTIONS
   
}


// MARK: - EXTENSIONS

private extension PickerViewController {
    func configView() {
        title = "UIPickerView"
        view.backgroundColor = .basicBackgroundColor
        generalContentView.backgroundColor = .basicBackgroundColor
        configUIPickerViewMainTitle()
        configPickerViewExample()
        configSetAlarmTitle()
        configTimeLabel()
    }
    
    func configUIPickerViewMainTitle() {
        uiPickerViewMainTitle.text = "UIPickerView"
        uiPickerViewMainTitle.textAlignment = .left
        uiPickerViewMainTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 35)
        uiPickerViewMainTitle.textColor = .textColor
    }
    
    func configSetAlarmTitle() {
        setAlarmTitle.text = "Set Alarm"
        setAlarmTitle.font = UIFont.systemFont(ofSize: 20)
        setAlarmTitle.textColor = .textColor
        setAlarmTitle.textAlignment = .center
    }
    
    func configPickerViewExample() {
        pickerViewExample.dataSource = self
        pickerViewExample.delegate = self
    }
    
    func configTimeLabel(){
        timeLabel.font = UIFont(name: "SFUIDisplay-Bold", size: 20)
        timeLabel.text = "00:00"
        timeLabel.textColor = .systemBlue
        timeLabel.textAlignment = .center
        timeLabel.backgroundColor = .cellColor
        timeLabel.layer.masksToBounds = true
        timeLabel.layer.cornerRadius = 15
    }
}

// MARK: - PICKERVIEW dataSOURCE EXTENSION

extension PickerViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return 24
        } else {
            return 60
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(format: "%02d", row)
    }
}

// MARK: - PICKERVIEW DELEGATE EXTENSION

extension PickerViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 30
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        if component == 0 {
            let pickerLabelHours = UILabel()
            pickerLabelHours.textColor = .textColor
            pickerLabelHours.text = String(format: "%02d", row)
            pickerLabelHours.font = UIFont(name: "Helvetica", size: 22)
            pickerLabelHours.textAlignment = .center
            return pickerLabelHours
        } else {
            let pickerLabelMinutes = UILabel()
            pickerLabelMinutes.textColor = .textColor
            pickerLabelMinutes.text = String(format: "%02d", row)
            pickerLabelMinutes.font = UIFont(name: "Helvetica", size: 22)
            pickerLabelMinutes.textAlignment = .center
            return pickerLabelMinutes
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedHour = pickerViewExample.selectedRow(inComponent: 0)
        let selectedMinute = pickerViewExample.selectedRow(inComponent: 1)
        let formattedTime = String(format: "%02d:%02d", selectedHour, selectedMinute)
        timeLabel.text = formattedTime
    }
}
