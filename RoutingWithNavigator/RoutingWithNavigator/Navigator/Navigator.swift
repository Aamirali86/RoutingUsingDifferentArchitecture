//
//  Navigator.swift
//  RoutingWithNavigator
//
//  Created by Amir on 01/03/2020.
//  Copyright © 2020 Venturedive. All rights reserved.
//

import UIKit

protocol Navigator {
    associatedtype Destination

    func navigate(to destination: Destination)
}

extension UIStoryboard {
    enum Name: String {
        case main = "Main"
    }

}

protocol Initializable where Self: Navigator {
    static var storyboardName: String { get }
}

extension Initializable where Self: Navigator {

    static var storyboardName: String {
        return UIStoryboard.Name.main.rawValue
    }

    static func initializeViewController(storyboardIdentifier: String) -> UIViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let instance = storyboard.instantiateViewController(withIdentifier: storyboardIdentifier)
        return instance
    }
}
