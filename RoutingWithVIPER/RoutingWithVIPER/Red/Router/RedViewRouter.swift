//
//  RedViewRouter.swift
//  RoutingWithVIPER
//
//  Created by Amir on 31/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

import UIKit

class RedViewRouter : RedViewRouterProtocol {
    
    static func getRedViewDetailRouter() -> RedViewController? {
        guard let redVC = RedViewRouter.initializeViewController() as? RedViewController else { return nil }
        
//        let presenter = RedViewPresenter()
//        redVC.persenter = presenter
//
//        let interactor = RedViewInteractor()
//        presenter.view = redVC
//        presenter.interactor = interactor
//        presenter.router = self
        
        return redVC
    }
    
}

extension RedViewRouter : Initializable {}
