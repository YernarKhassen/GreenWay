//
//  HomeViewController.swift
//  GreenWay
//
//  Created by Ernar Khasen on 28.11.2023.
//

import UIKit

final class HomeViewController: UIViewController {
    
    weak var viewModel: HomeViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
    }
}
