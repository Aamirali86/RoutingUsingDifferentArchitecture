//
//  RedCoordinator.swift
//  RoutingWithMVVM
//
//  Created by Amir on 30/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

import UIKit

class RedCoordinator : Coordinator, Initializable {
    weak var navigationController: UINavigationController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let redVC = RedCoordinator.initializeViewController()
        navigationController.pushViewController(redVC, animated: true)
    }
}
