//
//  AppNavigator.swift
//  RoutingWithNavigator
//
//  Created by Amir on 01/03/2020.
//  Copyright © 2020 Venturedive. All rights reserved.
//

import UIKit

struct AppNavigator: Navigator {
    enum Destination {
        case home
        
        var identifier: String {
            switch self {
            default:
                return "HomeNavigator"
            }
        }
    }
    
    private var window: UIWindow?
    
    init(window: UIWindow?) {
        self.window = window
    }
    
    func navigate(to destination: Destination) {
        let vc = HomeNavigator.initializeViewController(storyboardIdentifier: destination.identifier)
        window?.rootViewController = UINavigationController(rootViewController: vc)
    }

}

extension AppNavigator: Initializable {}
