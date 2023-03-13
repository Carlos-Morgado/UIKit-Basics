//
//  HomeViewController.swift
//  Control and Text Views
//
//  Created by Carlos Morgado on 28/2/23.
//

import UIKit

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

class HomeViewController: UIViewController {

    // INITIALIZATION
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // OUTLETS
    @IBOutlet weak var uiKitLogo: UIImageView!
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var mainSubtitle: UILabel!
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var whatIsUIKitLabel: UILabel!
    @IBOutlet weak var uiKitDefinition: UILabel!
    @IBOutlet weak var uikitDefinition2: UILabel!
    @IBOutlet weak var mockupImage: UIImageView!
    @IBOutlet weak var toAppleDevButton: UIButton!
    @IBOutlet weak var tableViewHeightConstraint: NSLayoutConstraint!
    
    // CONSTANTS
//    private let uiKitList = ["UILabel", "UIButton", "UIImageView", "UITextView", "UISwitch", "UISlider", "UIStepper", "UISegmentedControl", "UIDatePicker", "StackViews", "ScrollViews", "UICollectionView", "UITableView",]
//    private let othersUIKitList = ["Lotties", "Light/Dark Mode", "Calendar", "Video & Music", "Carrousel Pictures"]
    private let uiKitList: [MenuItems] = [.uiImage, .uiLabel, .uiButton, .uiTextView, .uiSwitch, .uiSlider, .uiStepper, .uiSegmentedControl, .uiDatePicker]
    private let othersUIKitList: [MenuItems] = [.lotties, .lightDarkMode, .calendar, .videoAndMusic, .carouselViews]
    private let rowHeight: CGFloat = 50
    private let headerHeight: CGFloat = 25
    private let numberOfSections: Int = 2
    
    // LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // PROPERTIES & CONFIGURATIONS
        title = "Home"
        navigationController?.navigationBar.backgroundColor = .lightGray.withAlphaComponent(0.2)
        
        uiKitLogo.image = UIImage(named: "uikit-logo-png-transparent")
        mainTitle.text = "UIKit Basics"
        mainTitle.textAlignment = .left
        mainTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 30)
        
        mainSubtitle.text = "Construct and manage a graphical, event-driven user interface for your iOS, iPadOS, or tvOS app."
        mainSubtitle.font = UIFont(name: "SFUIDisplay-Light", size: 18)
        mainSubtitle.numberOfLines = 0
        mainSubtitle.setLineSpacing(lineSpacing: 2.5)
        
        myTableView.dataSource = self
        myTableView.delegate = self
        myTableView.layer.cornerRadius = 10
        myTableView.isScrollEnabled = false
        myTableView.sectionHeaderTopPadding = 0.0
        let uikitSectionHeight = (rowHeight * CGFloat(uiKitList.count)) + headerHeight
        let otherUIKitSectionHeight = (rowHeight * CGFloat(othersUIKitList.count)) + headerHeight
        tableViewHeightConstraint.constant = uikitSectionHeight + otherUIKitSectionHeight
        
        whatIsUIKitLabel.text = "What is UIKit?"
        whatIsUIKitLabel.font = UIFont(name: "SFUIDisplay-Bold", size: 25)
        
        uiKitDefinition.text = "UIKit provides a variety of features for building apps, including components you can use to construct the core infrastructure of your iOS, iPadOS, or tvOS apps. The framework provides the window and view architecture for implementing your UI, the event-handling infrastructure for delivering Multi-Touch and other types of input to your app, and the main run loop for managing interactions between the user, the system, and your app."
        uiKitDefinition.font = UIFont(name: "SFUIDisplay-Light", size: 18)
        uiKitDefinition.numberOfLines = 0
        uiKitDefinition.setLineSpacing(lineSpacing: 2.5)
        
        mockupImage.image = UIImage(named: "mockup")
        
        uikitDefinition2.text = "UIKit also includes support for animations, documents, drawing and printing, text management and display, search, app extensions, resource management, and getting information about the current device. You can also customize accessibility support, and localize your app’s interface for different languages, countries, or cultural regions."
        uikitDefinition2.font = UIFont(name: "SFUIDisplay-Light", size: 18)
        uikitDefinition2.numberOfLines = 0
        uikitDefinition2.setLineSpacing(lineSpacing: 2.5)
        
        toAppleDevButton.setTitle("Go to Apple Developer", for: .normal)
        toAppleDevButton.backgroundColor = .systemBlue
        toAppleDevButton.setTitleColor(.white, for: .normal)
        toAppleDevButton.layer.cornerRadius = 19
    }

    // ACTIONS
    
}

// EXTENSIONS
extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Basics"
        } else {
            return "more functionalities"
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return headerHeight
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return numberOfSections
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
                myCell?.backgroundColor = UIColor(red: 135/255, green: 206/255, blue: 250/255, alpha: 0.3)
                myCell?.textLabel?.font = UIFont(name: "SFUIText-Regular", size: 17)
                myCell?.accessoryType = .disclosureIndicator
            }
            myCell!.textLabel?.text = uiKitList[indexPath.row].rawValue
            return myCell!
        } else {
            var mySecondCell = tableView.dequeueReusableCell(withIdentifier: "mySecondCellIdentifier")
            if mySecondCell == nil {
                mySecondCell = UITableViewCell(style: .default, reuseIdentifier: "mySecondCellIdentifier")
                mySecondCell?.backgroundColor = UIColor(red: 135/255, green: 206/255, blue: 250/255, alpha: 0.3)
                mySecondCell?.textLabel?.font = UIFont(name: "SFUIText-Regular", size: 17)
                mySecondCell?.accessoryType = .disclosureIndicator
            }
            mySecondCell!.textLabel?.text = othersUIKitList[indexPath.row].rawValue
            return mySecondCell!
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.blue
        header.contentView.backgroundColor = .red
    }
    
}

extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if indexPath.row == 0 {
//            navigationController?.pushViewController(LabelsViewController(), animated: true)
//        } else if indexPath.row == 1 {
//            navigationController?.pushViewController(ButtonsViewController(), animated: true)
//        } else if indexPath.row == 2 {
//            navigationController?.pushViewController(ImageViewController(), animated: true)
//        }
        
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



