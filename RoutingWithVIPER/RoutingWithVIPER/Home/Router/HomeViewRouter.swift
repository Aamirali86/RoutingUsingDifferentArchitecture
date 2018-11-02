//
//  HomeViewRouter.swift
//  RoutingWithVIPER
//
//  Created by Amir on 30/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

import UIKit

class HomeViewRouter : HomeViewRouterProtocol {

    static func getHomeViewRouter() -> HomeViewController? {
        
        guard let homeVC = HomeViewRouter.initializeViewController() as? HomeViewController else { return nil }
        
        let presenter = HomeViewPresenter()
        homeVC.persenter = presenter
        
        let interactor = HomeViewInteractor()
        presenter.view = homeVC
        presenter.interactor = interactor
        presenter.router = HomeViewRouter()

        return homeVC
    }
    
    func presentGreenViewController(from view:HomeViewProtocol) {
        guard
            let greenDetail = GreenViewRouter.getGreenViewDetailRouter(),
            let homeVC = view as? HomeViewController else {
            return
        }
        homeVC.navigationController?.pushViewController(greenDetail, animated: true)

    }

    func presentRedViewController(from view:HomeViewProtocol) {
        guard
            let redDetail = RedViewRouter.getRedViewDetailRouter(),
            let homeVC = view as? HomeViewController else {
            return
        }
        homeVC.navigationController?.pushViewController(redDetail, animated: true)

    }
    
}

extension HomeViewRouter : Initializable {}
