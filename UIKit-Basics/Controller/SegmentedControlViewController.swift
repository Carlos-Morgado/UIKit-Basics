//
//  SegmentedControllViewController.swift
//  Control and Text Views
//
//  Created by Carlos Morgado on 5/3/23.
//

import UIKit

class SegmentedControlViewController: UIViewController {

    // OUTLETS
    @IBOutlet weak private var generalContentView: UIView!
    @IBOutlet weak private var segmentedControlMainTitle: UILabel!
    @IBOutlet weak private var segmentedControlExample: UISegmentedControl!
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


// MARK: - EXTENSIONS

private extension SegmentedControlViewController {
    func configView() {
        title = "UISegmentedControl"
        view.backgroundColor = .basicBackgroundColor
        generalContentView.backgroundColor = .basicBackgroundColor
        
        configSegmentedControlMainTitle()
        
        configSegmentedControlExample()
        
        pickerViewExample.dataSource = self
        pickerViewExample.delegate = self
    }
    
    func configSegmentedControlMainTitle() {
        segmentedControlMainTitle.text = "UISegmentedControl"
        segmentedControlMainTitle.textAlignment = .left
        segmentedControlMainTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 30)
        segmentedControlMainTitle.textColor = .textColor
    }
    
    func configSegmentedControlExample() {
        segmentedControlExample.backgroundColor = .systemGray3
        segmentedControlExample.selectedSegmentTintColor = .systemGray6
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
        segmentedControlExample.setTitleTextAttributes(titleTextAttributes, for: .selected)
        segmentedControlExample.removeAllSegments()
        for (index, value) in pickerViewItems.enumerated() {
            segmentedControlExample.insertSegment(withTitle: value, at: index, animated: true)
        }
    }
    
    @IBAction func segmentedControlAction(_ sender: Any) {
        pickerViewExample.selectRow(segmentedControlExample.selectedSegmentIndex, inComponent: 0, animated: true)
    }
}

// MARK: - DATA SOURCE PICKERVIEW EXTENSION

extension SegmentedControlViewController: UIPickerViewDataSource {
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

extension SegmentedControlViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 35
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        segmentedControlExample.selectedSegmentIndex = row
    }
}
