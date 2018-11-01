//
//  HomeViewRouter.swift
//  RoutingWithVIPER
//
//  Created by Amir on 30/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

import UIKit

class HomeViewRouter : HomeViewRouterProtocol {

    weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func getHomeViewRouter() -> HomeViewController? {
        
        guard let homeVC = HomeViewRouter.initializeViewController() as? HomeViewController else { return nil }
        
        let presenter = HomeViewPresenter()
        homeVC.persenter = presenter
        
        let interactor = HomeViewInteractor()
        presenter.view = homeVC
        presenter.interactor = interactor
        presenter.router = self

        return homeVC
    }
    
    func presentGreenViewController() {
        guard let greenDetail = GreenViewRouter().getGreenViewDetailRouter() else {
            return
        }
        navigationController?.pushViewController(greenDetail, animated: true)

    }

    func presentRedViewController() {
        guard let redDetail = RedViewRouter().getRedViewDetailRouter() else {
            return
        }
        navigationController?.pushViewController(redDetail, animated: true)

    }
    
}

extension HomeViewRouter : Initializable {}
