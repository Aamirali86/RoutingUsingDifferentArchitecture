//
//  homeViewModel.swift
//  RoutingWithMVVM
//
//  Created by Amir on 30/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

import Foundation

protocol HomeViewModelCoordinatorDelegate {
    func didTapGreenButton()
    func didTapRedButton()
}

class HomeViewModel {
    
    var coordinatorDelegate:HomeViewModelCoordinatorDelegate?
    
    func didTapGreenButton() {
        coordinatorDelegate?.didTapGreenButton()
    }
    
    func didTapRedButton() {
        coordinatorDelegate?.didTapRedButton()
    }
    
}
