//
//  AppDelegate.swift
//  GreenWay
//
//  Created by Ernar Khasen on 28.11.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    private var appCoordinate: AppCoordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        setCoordinator()
        
        return true
    }
    
    private func setCoordinator() {
        guard let window = window else {return}
        
        appCoordinate = AppCoordinator(window: window)
        appCoordinate?.start()
    }
}

