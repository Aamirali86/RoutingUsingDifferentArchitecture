//
//  ViewController.swift
//  RoutingWithRedux
//
//  Created by Amir on 24/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var viewModel: HomeViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func pushToGreenView(_ sender: Any) {
        viewModel.didTapGreenButton()
    }
    
    @IBAction func pushToRedView(_ sender: Any) {
        viewModel.didTapRedButton()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

