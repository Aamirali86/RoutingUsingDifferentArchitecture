//
//  RoutingReducer.swift
//  VistajetRevamp
//
//  Created by Amir on 18/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

import ReSwift

func routingReducer(action: Action, state: RoutingState?) -> RoutingState {
    
    var state = state ?? RoutingState()
    
    switch action {
    case let routingAction as RoutingAction:
        state.navigationState = routingAction.destination
    default:
        break
    }
    
    return state
}
