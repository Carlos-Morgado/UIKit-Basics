//
//  WebViewController.swift
//  UKit-Basics
//
//  Created by Carlos Morgado on 24/4/23.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    // OUTLETS
    @IBOutlet weak private var generalContentView: UIView!
    @IBOutlet weak private var webViewMainTitle: UILabel!
    @IBOutlet weak private var webViewExample: WKWebView!
    
    // LIFE CYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configView()
    }
    
    // ACTIONS

}

// MARK: - EXTENSION

private extension WebViewController {
    func configView() {
        title = "Web View"
        view.backgroundColor = .basicBackgroundColor
        
        generalContentView.backgroundColor = .basicBackgroundColor
        
        configWebViewMainTitle()
        
        webViewExample.load(URLRequest(url: URL(string: "https://google.es")!))
    }
    
    func configWebViewMainTitle() {
        webViewMainTitle.text = "Web View"
        webViewMainTitle.textAlignment = .left
        webViewMainTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 35)
        webViewMainTitle.textColor = .textColor
    }
}
