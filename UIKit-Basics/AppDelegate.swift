//
//  AppDelegate.swift
//  Control and Text Views
//
//  Created by Carlos Morgado on 28/2/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupView()
        return true
    }
    
    private func setupView() {                         // Indicamos cual es la primera vista de la app
        window = UIWindow(frame: UIScreen.main.bounds) // Instanciamos UIWindow para que ocupe toda la pantalla
        // Instanciamos el controlador y lo almacenamos en una constante
        window?.rootViewController = UINavigationController(rootViewController: HomeViewController())   // Le decimos a window cuál es el controlador de vista principal
        window?.makeKeyAndVisible()
        
    }


}

