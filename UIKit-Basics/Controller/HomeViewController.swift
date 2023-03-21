//
//  HomeViewController.swift
//  Control and Text Views
//
//  Created by Carlos Morgado on 28/2/23.
//

import UIKit
import SwiftUI

class HomeViewController: UIViewController {

    // INITIALIZATION
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // OUTLETS
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var lightDarkButton: UISegmentedControl!
    @IBOutlet weak var uiKitLogo: UIImageView!
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var mainTitleView: UIView!
    @IBOutlet weak var mainSubtitle: UILabel!
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var tableViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var whatIsUIKitLabel: UILabel!
    @IBOutlet weak var uiKitDefinition: UILabel!
    @IBOutlet weak var uikitDefinition2: UILabel!
    @IBOutlet weak var mockupImage: UIImageView!
    @IBOutlet weak var toAppleDevButton: UIButton!
    
    // ENUMS
    enum MenuItems: String {
        case uiLabel = "UILabel"
        case uiButton = "UIButton"
        case uiImage = "UIImageView"
        case uiTextView = "UITextView"
        case uiSwitch = "UISwitch"
        case uiSlider = "UISlider"
        case uiStepper = "UIStepper"
        case uiSegmentedControl = "UISegmentedControl"
        case uiDatePicker = "UIDatePicker"
        case lotties = "Lotties"
        case lightDarkMode = "Light/Dark Mode"
        case calendar = "Calendar"
        case videoAndMusic = "Video & Music"
        case carouselViews = "Carousel Pictures"
        
    }
    
    // CONSTANTS
    private let uiKitList: [MenuItems] = [.uiLabel, .uiButton, .uiTextView, .uiImage, .uiSwitch, .uiSlider, .uiStepper, .uiSegmentedControl, .uiDatePicker]
    private let othersUIKitList: [MenuItems] = [.lotties, .lightDarkMode, .calendar, .videoAndMusic, .carouselViews]
    private let rowHeight: CGFloat = 40
    private let headerHeight: CGFloat = 35
    private let numberOfSections: Int = 2
    
    
 
    
    
    // LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // PROPERTIES & CONFIGURATIONS
        title = "Home"
        navigationController?.navigationBar.backgroundColor = .lightGray.withAlphaComponent(0.2)
        
        view.backgroundColor = .myBasicBackgroundColor
        containerView.backgroundColor  = .clear
        
        lightDarkButton.setTitle("Light", forSegmentAt: 0)
        lightDarkButton.setTitle("Dark", forSegmentAt: 1)
        lightDarkButton.selectedSegmentTintColor = .systemBlue
        lightDarkButton.backgroundColor = .clear
        lightDarkButton.layer.borderColor = UIColor.systemBlue.cgColor
        lightDarkButton.layer.borderWidth = 1.0
        lightDarkButton.layer.cornerRadius = 15.0
        
        mainTitleView.backgroundColor = .clear
        uiKitLogo.image = UIImage(named: "uikit-logo-png-transparent")
        mainTitle.text = "UIKit Basics"
        mainTitle.textAlignment = .left
        mainTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 30)
        mainTitle.textColor = .myTextColor
        
        mainSubtitle.text = "Construct and manage a graphical, event-driven user interface for your iOS, iPadOS, or tvOS app."
        mainSubtitle.font = UIFont(name: "SFUIDisplay-Light", size: 18)
        mainSubtitle.textColor = .myTextColor
        mainSubtitle.numberOfLines = 0
        mainSubtitle.setLineSpacing(lineSpacing: 2.5)
        
        myTableView.dataSource = self
        myTableView.delegate = self
        myTableView.layer.cornerRadius = 5
        myTableView.isScrollEnabled = false
        myTableView.sectionHeaderTopPadding = 0.0
        let uikitSectionHeight = (rowHeight * CGFloat(uiKitList.count)) + headerHeight
        let otherUIKitSectionHeight = (rowHeight * CGFloat(othersUIKitList.count)) + headerHeight
        tableViewHeightConstraint.constant = uikitSectionHeight + otherUIKitSectionHeight
        
        whatIsUIKitLabel.text = "What is UIKit?"
        whatIsUIKitLabel.font = UIFont(name: "SFUIDisplay-Bold", size: 25)
        whatIsUIKitLabel.textColor = .myTextColor
        
        uiKitDefinition.text = "UIKit provides a variety of features for building apps, including components you can use to construct the core infrastructure of your iOS, iPadOS, or tvOS apps. The framework provides the window and view architecture for implementing your UI, the event-handling infrastructure for delivering Multi-Touch and other types of input to your app, and the main run loop for managing interactions between the user, the system, and your app."
        uiKitDefinition.font = UIFont(name: "SFUIDisplay-Light", size: 18)
        uiKitDefinition.textColor = .myTextColor
        uiKitDefinition.numberOfLines = 0
        uiKitDefinition.setLineSpacing(lineSpacing: 2.5)
        
        mockupImage.image = UIImage(named: "mockup")
        
        uikitDefinition2.text = "UIKit also includes support for animations, documents, drawing and printing, text management and display, search, app extensions, resource management, and getting information about the current device. You can also customize accessibility support, and localize your app’s interface for different languages, countries, or cultural regions."
        uikitDefinition2.font = UIFont(name: "SFUIDisplay-Light", size: 18)
        uikitDefinition2.textColor = .myTextColor
        uikitDefinition2.numberOfLines = 0
        uikitDefinition2.setLineSpacing(lineSpacing: 2.5)
        
        toAppleDevButton.setTitle("Go to Apple Developer", for: .normal)
        toAppleDevButton.backgroundColor = .systemBlue
        toAppleDevButton.setTitleColor(.white, for: .normal)
        toAppleDevButton.layer.cornerRadius = 17
    
    }

    // ACTIONS
    @IBAction func lightDarkButtonAction(_ sender: Any) {
        if lightDarkButton.selectedSegmentIndex == 0 {
            let window = UIApplication.shared.keyWindow
            window?.overrideUserInterfaceStyle = .light
        } else if lightDarkButton.selectedSegmentIndex == 1 {
            let window = UIApplication.shared.keyWindow
            window?.overrideUserInterfaceStyle = .dark
        }
    }
    
}

// EXTENSIONS
extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Basics"
        } else {
            return "More functionalities"
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return headerHeight
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return numberOfSections
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = .myTextColor
        header.contentView.backgroundColor = .myHeaderTableViewColor
        header.textLabel?.font = UIFont(name: "SFUIDisplay-Bold", size: 16)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return uiKitList.count
        } else {
            return othersUIKitList.count
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return rowHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            var myCell = tableView.dequeueReusableCell(withIdentifier: "myCellIdentifier")
            if myCell == nil {
                myCell = UITableViewCell(style: .default, reuseIdentifier: "myCellIdentifier")
                myCell?.backgroundColor = .myCellColor
                myCell?.textLabel?.font = UIFont(name: "SFUIDisplay-Light", size: 16)
                myCell?.textLabel?.textColor = .myTextColor
                myCell?.accessoryType = .disclosureIndicator
            }
            myCell!.textLabel?.text = uiKitList[indexPath.row].rawValue
            return myCell!
        } else {
            var mySecondCell = tableView.dequeueReusableCell(withIdentifier: "mySecondCellIdentifier")
            if mySecondCell == nil {
                mySecondCell = UITableViewCell(style: .default, reuseIdentifier: "mySecondCellIdentifier")
                mySecondCell?.backgroundColor = .myCellColor
                mySecondCell?.textLabel?.font = UIFont(name: "SFUIDisplay-Light", size: 16)
                mySecondCell?.textLabel?.textColor = .myTextColor
                mySecondCell?.accessoryType = .disclosureIndicator
            }
            mySecondCell!.textLabel?.text = othersUIKitList[indexPath.row].rawValue
            return mySecondCell!
        }
    }
    
}

extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        
        var rowItem: MenuItems? = nil
        
        if indexPath.section == 0 {
            rowItem = uiKitList[indexPath.row]
        } else if indexPath.section == 1 {
            rowItem = othersUIKitList[indexPath.row]
        }
        
        guard let rowItem else { return }
        
        var viewController: UIViewController? = nil
        
        switch rowItem {
            case .uiLabel:
                viewController = LabelsViewController()
            case .uiButton:
                viewController = ButtonsViewController()
            case .uiImage:
               viewController = ImageViewController()
            case .uiTextView:
                viewController = TextViewController()
            case .uiSwitch:
                viewController = SwitchViewController()
            case .uiSlider:
                viewController = SliderViewController()
            case .uiStepper:
                viewController = StepperViewController()
            case .uiSegmentedControl:
                viewController = SegmentedControlViewController()
            case .uiDatePicker:
                viewController = DatePickerViewController()
            case .lotties:
                viewController = UIHostingController(rootView: SwiftUIView())
                break
            case .lightDarkMode:
                break
            case .calendar:
                break
            case .videoAndMusic:
                break
            case .carouselViews:
                break
        }
        
        guard let viewController else { return }
        navigationController?.pushViewController(viewController, animated: true)
        
        print(uiKitList[indexPath.row])
    }
    
}



