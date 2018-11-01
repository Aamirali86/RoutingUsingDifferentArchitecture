//
//  RoutingState.swift
//  VistajetRevamp
//
//  Created by Amir on 18/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

import ReSwift

struct RoutingState: StateType {
    var navigationState: RoutingDestination
    
    init(destination:RoutingDestination = .home) {
        navigationState = destination
    }
}
