//
//  ProfileCoordinator.swift
//  GreenWay
//
//  Created by Ernar Khasen on 29.11.2023.
//

import UIKit

final class ProfileCoordinator: BaseCoordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let viewModel = ProfileViewModel()
        viewModel.coordinator = self
        
        let mainController = ProfileViewController()
        mainController.viewModel = viewModel
        
        navigationController.pushViewController(mainController, animated: true)
    }
}

