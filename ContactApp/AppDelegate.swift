//
//  AppDelegate.swift
//  ContactApp
//
//  Created by ievgenii on 6/17/19.
//  Copyright © 2019 hw. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setup()
        return true
    }
    
    func setup() {
        setupWindow()
    }
    
    func setupWindow() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(
            rootViewController: ViewControllerA())
        window?.makeKeyAndVisible()
    }

}

