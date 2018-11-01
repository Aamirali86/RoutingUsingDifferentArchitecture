//
//  AppDelegate.swift
//  RoutingWithRedux
//
//  Created by Amir on 24/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

import UIKit
import ReSwift

var store = Store<AppState>(reducer: appReducer, state: nil)

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appRouter: AppRouter?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        window.makeKeyAndVisible()
        appRouter = AppRouter(window: window)
        
        return true
    }

}

