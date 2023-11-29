//
//  AppCoordinator.swift
//  GreenWay
//
//  Created by Ernar Khasen on 29.11.2023.
//

import Foundation
import UIKit

final class AppCoordinator: BaseCoordinator {
    
    private var window: UIWindow?
    
    init(window: UIWindow) {
        self.window = window
    }
    
    override func start() {
        let navigationController = UINavigationController()
        window?.rootViewController = navigationController
        window?.backgroundColor = .white
        window?.makeKeyAndVisible()

        let mainCoordinator = TabBarCoordinator(navigationController: navigationController)
        coordinate(to: mainCoordinator)
    }
}
