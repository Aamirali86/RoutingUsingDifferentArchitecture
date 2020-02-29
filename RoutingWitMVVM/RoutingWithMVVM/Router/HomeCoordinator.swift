//
//  HomeCoordinator.swift
//  RoutingWithMVVM
//
//  Created by Amir on 30/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

import UIKit

class HomeCoordinator : Coordinator {
    
    var navigationController: UINavigationController!
    weak var window: UIWindow?
    
    init(window:UIWindow) {
        self.window = window
    }
    
    func start() {
        guard let homeVC = HomeCoordinator.initializeViewController() as? HomeViewController else {
            return
        }
        let viewModel = HomeViewModel()
        viewModel.coordinatorDelegate = self
        homeVC.viewModel = viewModel
        navigationController = UINavigationController(rootViewController: homeVC)
        self.window?.rootViewController = navigationController
    }
    
}

extension HomeCoordinator : Initializable {}

extension HomeCoordinator : HomeViewModelCoordinatorDelegate {
    func didTapGreenButton() {
        let greenCoordinator = GreenCoordinator(navigationController: navigationController)
        greenCoordinator.start()
    }
    
    func didTapRedButton() {
        let redCoordinator = RedCoordinator(navigationController: navigationController)
        redCoordinator.start()
    }
    
}
