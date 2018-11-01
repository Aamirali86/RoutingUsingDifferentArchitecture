//
//  BaseRouter.swift
//  RoutingWithVIPER
//
//  Created by Amir on 30/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

import UIKit

class BaseRouter {
    weak var window: UIWindow?
    var navigationController: UINavigationController!

    init(window: UIWindow) {
        self.window = window
        navigationController = UINavigationController()
        createBaseRoute()
    }
    
    func createBaseRoute() {
        presentHomeViewController()
    }
    
    func presentHomeViewController() {
        let homeRouter = HomeViewRouter(navigationController: navigationController);
        guard let homeVC = homeRouter.getHomeViewRouter() else { return }
        
        navigationController.viewControllers = [homeVC]
        self.window?.rootViewController = navigationController
    }
    
}

extension UIStoryboard {
    enum Name:String {
        case main = "Main"
    }
}

protocol Initializable {
    static var storyboardName: String { get }
}

extension Initializable {
    
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
    
    static var storyboardName: String {
        return UIStoryboard.Name.main.rawValue
    }
    
    static func initializeViewController() -> UIViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let instance = storyboard.instantiateViewController(withIdentifier: storyboardIdentifier)
        return instance
    }
}
