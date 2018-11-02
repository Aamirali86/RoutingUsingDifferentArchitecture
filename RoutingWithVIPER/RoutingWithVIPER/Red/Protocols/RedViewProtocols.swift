//
//  RedViewProtocols.swift
//  RoutingWithVIPER
//
//  Created by Amir on 31/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

protocol RedViewProtocol {
    var persenter : RedViewPresenterProtocol? { get set }
}

protocol RedViewPresenterProtocol {
    var view : RedViewProtocol? { get set }
    var interactor : RedViewInteractorProtocol? { get set }
    var router : RedViewRouterProtocol? { get set }
}

protocol RedViewInteractorProtocol {
    var presenter : RedViewInteractorToPresenterProtocol? { get set }
}

protocol RedViewRouterProtocol {
    static func getRedViewDetailRouter() -> RedViewController?
}

protocol RedViewInteractorToPresenterProtocol {
    
}
