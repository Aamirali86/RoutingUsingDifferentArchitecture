//
//  HomeViewPresenter.swift
//  RoutingWithVIPER
//
//  Created by Amir on 30/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

import Foundation

class HomeViewPresenter : HomeViewPresenterProtocol {

    var view: HomeViewProtocol?
    var interactor: HomeViewInteractorProtocol?
    var router: HomeViewRouterProtocol?
    
    func didTapGreenButton() {
        router?.presentGreenViewController(from: view!)
    }
    
    func didTapRedButton() {
        router?.presentRedViewController(from: view!)
    }

}
