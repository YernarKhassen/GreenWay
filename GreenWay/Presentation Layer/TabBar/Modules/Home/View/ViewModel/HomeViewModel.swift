//
//  HomeViewModel.swift
//  GreenWay
//
//  Created by Ernar Khasen on 29.11.2023.
//

import Foundation

protocol HomeViewModelInput {
}

protocol HomeViewModelOutput {
}

typealias HomeViewModelProtocol = HomeViewModelInput & HomeViewModelOutput

final class HomeViewModel {
    weak var coordinator: HomeCoordinator?
}

extension HomeViewModel: HomeViewModelProtocol {
    
}
