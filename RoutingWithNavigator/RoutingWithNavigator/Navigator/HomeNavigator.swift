//
//  HomeNavigator.swift
//  RoutingWithNavigator
//
//  Created by Amir on 01/03/2020.
//  Copyright © 2020 Venturedive. All rights reserved.
//

import UIKit

struct HomeNavigator: Navigator {
    
    private weak var navigationController: UINavigationController?
    
    enum Destination {
        case green
        case red
        
        var identifier: String {
            switch self {
            case .green:
                return "GreenNavigator"
            case .red:
                return "RedNavigator"
            }
        }
    }
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    func navigate(to destination: HomeNavigator.Destination) {
        let vc = makeViewController(destination: destination)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func makeViewController(destination: Destination) -> UIViewController {
        return HomeNavigator.initializeViewController(storyboardIdentifier: destination.identifier)
    }
}

extension HomeNavigator: Initializable {}
