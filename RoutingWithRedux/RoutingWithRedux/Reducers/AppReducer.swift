//
//  AppReducer.swift
//  VistajetRevamp
//
//  Created by Amir on 18/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

import ReSwift

func appReducer(action: Action, state: AppState?) -> AppState {
    return AppState(
        routingState: routingReducer(action: action, state: state?.routingState)
    )
}
