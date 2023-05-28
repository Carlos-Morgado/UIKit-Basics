//
//  PageControllerViewController.swift
//  UKit-Basics
//
//  Created by Carlos Morgado on 25/5/23.
//

import UIKit

class PageControlsViewController: UIViewController {
    
    // OUTLETS
    
    @IBOutlet weak private var generalContentView: UIView!
    @IBOutlet weak private var pageControlsMainTitle: UILabel!
    @IBOutlet weak private var pageControlsDefinition: UILabel!
    @IBOutlet weak private var pickerViewExample: UIPickerView!
    @IBOutlet weak private var pageControlExample: UIPageControl!
    
    // VARIABLES
    
    private let pickerViewItems = ["Audi", "Peugeot", "Hyundai", "Seat", "Mercedes", "Ferrari", "Opel", "Renault"]
    
    // LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
       
        
    }
    
    // ACTIONS

    @IBAction func pageControlAction(_ sender: Any) {
        pickerViewExample.selectRow(pageControlExample.currentPage, inComponent: 0, animated: true)
    }
}


// MARK: - EXTENSIONS

private extension PageControlsViewController {
    func configView() {
        title = "PageControls"
        view.backgroundColor = .basicBackgroundColor
        generalContentView.backgroundColor = .basicBackgroundColor
        
        configPageControlsMainTitle()
        
        configPageControlsDefinition()
        
        pickerViewExample.dataSource = self
        pickerViewExample.delegate = self
        
        pageControlExample.numberOfPages = pickerViewItems.count
        pageControlExample.currentPageIndicatorTintColor = .systemBlue
        pageControlExample.pageIndicatorTintColor = .systemGray6
    }
    
    func configPageControlsMainTitle() {
        pageControlsMainTitle.text = "Page Controls"
        pageControlsMainTitle.textAlignment = .left
        pageControlsMainTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 35)
        pageControlsMainTitle.textColor = .textColor
    }
    
    func configPageControlsDefinition() {
        pageControlsDefinition.text = "A page control displays a row of indicator images, each of which represents a page in a flat list."
        pageControlsDefinition.font = UIFont(name: "SFUIDisplay-Light", size: 18)
        pageControlsDefinition.textColor = .textColor
        pageControlsDefinition.numberOfLines = 0
        pageControlsDefinition.setLineSpacing(lineSpacing: 2.5)
    }
}

// MARK: - PICKERVIEW DATASOURCE EXTENSION

extension PageControlsViewController: UIPickerViewDataSource {
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

extension PageControlsViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 35
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pageControlExample.currentPage = row
    }
}
