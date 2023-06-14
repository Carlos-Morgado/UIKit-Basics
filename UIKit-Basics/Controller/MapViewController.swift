//
//  MapViewController.swift
//  UKit-Basics
//
//  Created by Carlos Morgado on 24/4/23.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    // OUTLETS
    @IBOutlet weak private var generalContentView: UIView!
    @IBOutlet weak private var mapViewMainTitle: UILabel!
    @IBOutlet weak private var mapViewExample: MKMapView!
    
    // LIFE CYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configView()
    }
}

// MARK: - EXTENSION

private extension MapViewController {
    func configView() {
        title = "MapView"
        view.backgroundColor = .basicBackgroundColor
        generalContentView.backgroundColor = .basicBackgroundColor
        
        configMapViewMainTitle()
        
        configMapViewExample()
    }
    
    func configMapViewMainTitle() {
        mapViewMainTitle.text = "MapView"
        mapViewMainTitle.textAlignment = .left
        mapViewMainTitle.font = UIFont(name: "SFUIDisplay-Bold", size: 35)
        mapViewMainTitle.textColor = .textColor
    }
    
    func configMapViewExample() {
        mapViewExample.overrideUserInterfaceStyle = .dark
        let latitude = 40.4165000
        let longitude = -3.7025600
        let center = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        mapViewExample.setRegion(region, animated: true)
    }
}
