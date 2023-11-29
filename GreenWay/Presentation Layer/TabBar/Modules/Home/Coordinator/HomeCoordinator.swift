//
//  HomeCoordinator.swift
//  GreenWay
//
//  Created by Ernar Khasen on 28.11.2023.
//

import UIKit

final class HomeCoordinator: BaseCoordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let viewModel = HomeViewModel()
        viewModel.coordinator = self
        
        let mainController = HomeViewController()
        mainController.viewModel = viewModel
        
        navigationController.pushViewController(mainController, animated: true)
    }
}
