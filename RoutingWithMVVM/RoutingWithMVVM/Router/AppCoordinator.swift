//
//  AppCoordinator.swift
//  RoutingWithRedux
//
//  Created by Amir on 30/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

import UIKit
import Foundation

class AppCoordinator : Coordinator {
    weak var window: UIWindow?
    var homeCoordinator: HomeCoordinator!

    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        homeCoordinator = HomeCoordinator(window: window!)
        homeCoordinator.start()
    }
}
