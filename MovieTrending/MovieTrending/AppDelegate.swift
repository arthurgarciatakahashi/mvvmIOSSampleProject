//
//  AppDelegate.swift
//  MovieTrending
//
//  Created by arthur takahashi on 19/04/24.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        //let navigationController = UINavigationController(rootViewController: MainViewController())
        window.rootViewController = MainViewController()
        window.makeKeyAndVisible()
        
        self.window = window
        
        return true
    }
}

