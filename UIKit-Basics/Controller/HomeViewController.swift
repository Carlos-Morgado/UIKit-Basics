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
    @IBOutlet weak private var containerView: UIView!
    @IBOutlet weak private var uiKitLogo: UIImageView!
    @IBOutlet weak private var mainTitle: UILabel!
    @IBOutlet weak private var mainTitleView: UIView!
    @IBOutlet weak private var mainSubtitle: UILabel!
    @IBOutlet weak private var myTableView: UITableView!
    @IBOutlet weak private var tableViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak private var whatIsUIKitLabel: UILabel!
    @IBOutlet weak private var uiKitDefinition: UILabel!
    @IBOutlet weak private var uikitDefinition2: UILabel!
    @IBOutlet weak private var mockupImage: UIImageView!
    @IBOutlet weak private var toAppleDevButton: UIButton!
    @IBOutlet weak private var lightDarkButton: UISegmentedControl!
    
    // ENUMS
    enum MenuItems: String {
        case examples = "Examples"
        case uiLabel = "UILabel"
        case uiButton = "UIButton"
        case uiTextView = "UITextView"
        case uiImage = "UIImageView"
        case uiStackView = "UIStackView"
        case uiSearchBar = "UISearchBar"
        case uiSwitch = "UISwitch"
        case uiSlider = "UISlider"
        case uiStepper = "UIStepper"
        case uiSegmentedControl = "UISegmentedControl"
        case uiPickerView = "UIPickerView"
        case pageControls = "PageControls"
        case webView = "UIWebView"
        case mapView = "UIMapView"
        case lotties = "Lotties"
        case lightDarkMode = "Light/Dark Mode"
        case calendar = "Calendar"
        case videoAndMusic = "Video & Music"
        case carouselViews = "Carousel Pictures"
        case alertAction = "Alert Action"
        case uiCollectionView = "UICollectionView"
    }
    
    // CONSTANTS
    private let uiKitList: [MenuItems] = [.examples, .uiLabel, .uiButton, .uiTextView, .uiImage, .uiStackView, .uiPickerView, .pageControls, .uiSegmentedControl, .uiSlider, .uiStepper, .uiSwitch, .uiSearchBar, .webView, .mapView, .uiCollectionView]
    private let othersUIKitList: [MenuItems] = [.lotties, .alertAction, .lightDarkMode, .calendar, .videoAndMusic, .carouselViews]
    private let rowHeight: CGFloat = 40
    private let headerHeight: CGFloat = 35
    private let numberOfSections: Int = 2
    private let cellIdentifier = "myCellIdentifier"
    private let secondCellIdentifier = "mySecondCellIdentifier"
    
    // LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // PROPERTIES & CONFIGURATIONS
        configView()
    }

    // ACTIONS
    
    @IBAction func appleDevButtonAction(_ sender: UIButton) {
        sender.flash()
        if let url = URL(string: "https://developer.apple.com/") {
            UIApplication.shared.open(url)
            
        }
    }
    
    @IBAction func lightDarkButtonAction(_ sender: Any) {
        let window = UIApplication.shared.keyWindow
        if lightDarkButton.selectedSegmentIndex == 0 {
            window?.overrideUserInterfaceStyle = .light
        } else if lightDarkButton.selectedSegmentIndex == 1 {
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
        header.textLabel?.textColor = .textColor
        header.contentView.backgroundColor = .headerTableViewColor
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
            var myCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
            if myCell == nil {
                myCell = UITableViewCell(style: .default, reuseIdentifier: cellIdentifier)
                myCell?.backgroundColor = .cellColor
                myCell?.textLabel?.font = UIFont(name: "SFUIDisplay-Light", size: 16)
                myCell?.textLabel?.textColor = .textColor
                myCell?.accessoryType = .disclosureIndicator
            }
            myCell!.textLabel?.text = uiKitList[indexPath.row].rawValue
            return myCell!
        } else {
            var mySecondCell = tableView.dequeueReusableCell(withIdentifier: secondCellIdentifier)
            if mySecondCell == nil {
                mySecondCell = UITableViewCell(style: .default, reuseIdentifier: secondCellIdentifier)
                mySecondCell?.backgroundColor = .cellColor
                mySecondCell?.textLabel?.font = UIFont(name: "SFUIDisplay-Light", size: 16)
                mySecondCell?.textLabel?.textColor = .textColor
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
            print(uiKitList[indexPath.row])
        } else if indexPath.section == 1 {
            rowItem = othersUIKitList[indexPath.row]
            print(othersUIKitList[indexPath.row])
        }
        
        guard let rowItem else { return }
        var viewController: UIViewController? = nil
        switch rowItem {
            case .uiLabel:
                viewController = LabelsViewController()
            case .uiButton:
                viewController = ButtonsViewController()
            case .uiTextView:
                viewController = TextViewController()
            case .uiImage:
               viewController = ImageViewController()
            case .uiStackView:
                viewController = StackViewController()
            case .uiSearchBar:
                viewController = SearchBarViewController()
            case .uiSwitch:
                viewController = SwitchViewController()
            case .uiSlider:
                viewController = SliderViewController()
            case .uiStepper:
                viewController = StepperViewController()
            case .uiSegmentedControl:
                viewController = SegmentedControlViewController()
            case .uiPickerView:
                viewController = PickerViewController()
            case .pageControls:
                viewController = PageControlsViewController()
            case .webView:
                viewController = WebViewController()
            case .mapView:
                viewController = MapViewController()
            case .lotties:
                viewController = LottiesViewController()
            case .alertAction:
                viewController = AlertActionViewController()
            case .lightDarkMode:
                viewController = LightDarkViewController()
            case .calendar:
                viewController = CalendarViewController()
            case .videoAndMusic:
                viewController = Video_MusicViewController()
            case .carouselViews:
                viewController = CarouselsViewController()
            case .examples:
                viewController = ExamplesViewController()
            case .uiCollectionView:
                viewController = UICollectionViewController()
        }
        
        guard let viewController else { return }
        navigationController?.pushViewController(viewController, animated: true)
    }
    
}

private extension HomeViewController {
    
    func configView() {
        title = "Home"
        navigationController?.navigationBar.backgroundColor = .lightGray.withAlphaComponent(0.2)
        
        view.backgroundColor = .basicBackgroundColor
        containerView.backgroundColor  = .clear
        
        configMainTitle()
        
        configMainSubtitle()
        
        configTableView()
        
        configWhatIsUIKitTitle()
        
        configUIKitDefinition()
        
        mockupImage.image = UIImage(named: "mockup")
        
        configUIKitDefinition2()
        
        configLightDarkButton()
        
        configToAppleDevButton()
        
    }
    
    func configMainTitle() {
        mainTitleView.backgroundColor = .clear
        uiKitLogo.image = UIImage(named: "uikit-logo-png-transparent")
        mainTitle.text = "UIKit Basics"
        mainTitle.textAlignment = .left
        mainTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 30)
        mainTitle.textColor = .textColor
    }
    
    func configMainSubtitle() {
        mainSubtitle.text = "Construct and manage a graphical, event-driven user interface for your iOS, iPadOS, or tvOS app."
        mainSubtitle.font = UIFont(name: "SFUIDisplay-Light", size: 18)
        mainSubtitle.textColor = .textColor
        mainSubtitle.numberOfLines = 0
        mainSubtitle.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configTableView() {
        myTableView.dataSource = self
        myTableView.delegate = self
        myTableView.layer.cornerRadius = 5
        myTableView.isScrollEnabled = false
        myTableView.sectionHeaderTopPadding = 0.0
        let uikitSectionHeight = (rowHeight * CGFloat(uiKitList.count)) + headerHeight
        let otherUIKitSectionHeight = (rowHeight * CGFloat(othersUIKitList.count)) + headerHeight
        tableViewHeightConstraint.constant = uikitSectionHeight + otherUIKitSectionHeight
    }
    
    func configWhatIsUIKitTitle() {
        whatIsUIKitLabel.text = "What is UIKit?"
        whatIsUIKitLabel.font = UIFont(name: "SFUIDisplay-Bold", size: 25)
        whatIsUIKitLabel.textColor = .textColor
    }
    
    func configUIKitDefinition() {
        uiKitDefinition.text = "UIKit provides a variety of features for building apps, including components you can use to construct the core infrastructure of your iOS, iPadOS, or tvOS apps. The framework provides the window and view architecture for implementing your UI, the event-handling infrastructure for delivering Multi-Touch and other types of input to your app, and the main run loop for managing interactions between the user, the system, and your app."
        uiKitDefinition.font = UIFont(name: "SFUIDisplay-Light", size: 18)
        uiKitDefinition.textColor = .textColor
        uiKitDefinition.numberOfLines = 0
        uiKitDefinition.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configUIKitDefinition2() {
        uikitDefinition2.text = "UIKit also includes support for animations, documents, drawing and printing, text management and display, search, app extensions, resource management, and getting information about the current device. You can also customize accessibility support, and localize your app’s interface for different languages, countries, or cultural regions."
        uikitDefinition2.font = UIFont(name: "SFUIDisplay-Light", size: 18)
        uikitDefinition2.textColor = .textColor
        uikitDefinition2.numberOfLines = 0
        uikitDefinition2.setLineSpacing(lineSpacing: 2.5)
    }
    
    func configLightDarkButton() {
        lightDarkButton.setTitle("Light", forSegmentAt: 0)
        lightDarkButton.setTitle("Dark", forSegmentAt: 1)
        lightDarkButton.selectedSegmentTintColor = .systemBlue
        lightDarkButton.backgroundColor = .clear
        lightDarkButton.layer.borderColor = UIColor.systemBlue.cgColor
        lightDarkButton.layer.borderWidth = 1.0
        lightDarkButton.layer.cornerRadius = 15.0
    }
    
    func configToAppleDevButton() {
        toAppleDevButton.setTitle("Go to Apple Developer", for: .normal)
        toAppleDevButton.backgroundColor = .systemBlue
        toAppleDevButton.setTitleColor(.white, for: .normal)
        toAppleDevButton.layer.cornerRadius = 17
        toAppleDevButton.startAnimatingPressActions()
    }
    
}
