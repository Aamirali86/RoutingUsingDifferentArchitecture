//
//  ViewController.swift
//  RoutingWithNavigator
//
//  Created by Amir on 24/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    private var homeNavigator: HomeNavigator!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        homeNavigator = HomeNavigator(navigationController: navigationController)
    }

    @IBAction func pushToGreenView(_ sender: Any) {
        homeNavigator.navigate(to: .green)
    }

    @IBAction func pushToRedView(_ sender: Any) {
        homeNavigator.navigate(to: .red)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
