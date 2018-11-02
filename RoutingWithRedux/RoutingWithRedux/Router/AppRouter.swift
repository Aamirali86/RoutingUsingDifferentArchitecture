//
//  AppRouter.swift
//  VistajetRevamp
//
//  Created by Amir on 18/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

import ReSwift

enum RoutingDestination: String {
    case home = "ViewController"
    case green = "GreenViewController"
    case red = "RedViewController"
}

final class AppRouter {
    
    let navigationController: UINavigationController
    
    init(window: UIWindow) {
        navigationController = UINavigationController()
        window.rootViewController = navigationController
        store.subscribe(self) {
            $0.select({
                $0.routingState
            })
        }
    }
    
    fileprivate func pushViewController(identifier: String, animated: Bool) {
        if let currentVC = navigationController.topViewController {
            if currentVC.restorationIdentifier == identifier {
                return
            }
        }
        
        let viewController = instantiateViewController(identifier: identifier)
        navigationController.pushViewController(viewController, animated: animated)
    }
    
    private func instantiateViewController(identifier: String) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: identifier)
    }
}

// MARK: - StoreSubscriber
extension AppRouter: StoreSubscriber {
    func newState(state: RoutingState) {
        let shouldAnimate = navigationController.topViewController != nil
        pushViewController(identifier: state.navigationState.rawValue, animated: shouldAnimate)
    }
}
