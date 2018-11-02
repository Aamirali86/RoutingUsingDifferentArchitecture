//
//  GreenViewProtocols.swift
//  RoutingWithVIPER
//
//  Created by Amir on 31/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

protocol GreenViewProtocol {
    var persenter : GreenViewPresenterProtocol? { get set }
}

protocol GreenViewPresenterProtocol {
    var view : GreenViewProtocol? { get set }
    var interactor : GreenViewInteractorProtocol? { get set }
    var router : GreenViewRouterProtocol? { get set }
}

protocol GreenViewInteractorProtocol {
    var presenter : GreenViewInteractorToPresenterProtocol? { get set }
}

protocol GreenViewRouterProtocol {
    static func getGreenViewDetailRouter() -> GreenViewController?
}

protocol GreenViewInteractorToPresenterProtocol {
    
}
