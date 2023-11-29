//
//  ProfileViewModel.swift
//  GreenWay
//
//  Created by Ernar Khasen on 29.11.2023.
//

import Foundation

protocol ProfileViewModelInput {
}

protocol ProfileViewModelOutput {
}

typealias ProfileViewModelProtocol = ProfileViewModelInput & ProfileViewModelOutput

final class ProfileViewModel {
    weak var coordinator: ProfileCoordinator?
}

extension ProfileViewModel: ProfileViewModelProtocol {
    
}
