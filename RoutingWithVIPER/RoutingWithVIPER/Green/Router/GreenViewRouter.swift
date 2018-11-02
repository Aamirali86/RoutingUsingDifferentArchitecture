//
//  GreenViewRouter.swift
//  RoutingWithVIPER
//
//  Created by Amir on 31/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

import UIKit

class GreenViewRouter : GreenViewRouterProtocol {
    
    static func getGreenViewDetailRouter() -> GreenViewController? {
        guard let greenVC = GreenViewRouter.initializeViewController() as? GreenViewController else { return nil }
        
//        let presenter = GreenViewPresenter()
//        greenVC.persenter = presenter
//
//        let interactor = GreenViewInteractor()
//        presenter.view = greenVC
//        presenter.interactor = interactor
//        presenter.router = self

        return greenVC
    }
    
}

extension GreenViewRouter : Initializable {}
