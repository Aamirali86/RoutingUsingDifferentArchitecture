//
//  Coordinator.swift
//  RoutingWithRedux
//
//  Created by Amir on 30/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

import UIKit

protocol Coordinator {
    func start()
}

extension UIStoryboard {
    enum Name:String {
        case main = "Main"
    }
    
}

protocol Initializable where Self: Coordinator {
    static var storyboardName: String { get }
}

extension Initializable where Self: Coordinator {
    
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
