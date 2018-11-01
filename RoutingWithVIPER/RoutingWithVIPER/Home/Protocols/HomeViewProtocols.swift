//
//  HomeViewProtocols.swift
//  RoutingWithVIPER
//
//  Created by Amir on 30/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

import UIKit

protocol HomeViewProtocol {
    var persenter : HomeViewPresenterProtocol? { get set }
}

protocol HomeViewPresenterProtocol {
    var view : HomeViewProtocol? { get set }
    var interactor : HomeViewInteractorProtocol? { get set }
    var router : HomeViewRouterProtocol? { get set }
    
    func didTapGreenButton()
    func didTapRedButton()
}

protocol HomeViewInteractorProtocol {
    var presenter : HomeViewInteractorToPresenterProtocol? { get set }
    
}

protocol HomeViewRouterProtocol {
    func getHomeViewRouter() -> HomeViewController?
    func presentGreenViewController()
    func presentRedViewController()
}

protocol HomeViewInteractorToPresenterProtocol {
    
}

