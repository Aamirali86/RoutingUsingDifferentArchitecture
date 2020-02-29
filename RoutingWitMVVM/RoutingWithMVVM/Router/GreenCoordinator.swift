//
//  GreenCoordinator.swift
//  RoutingWithMVVM
//
//  Created by Amir on 30/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

import UIKit

class GreenCoordinator: Coordinator, Initializable {
    weak var navigationController: UINavigationController!

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let greenVC = GreenCoordinator.initializeViewController()
        navigationController.pushViewController(greenVC, animated: true)
    }

}
