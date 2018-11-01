//
//  ViewController.swift
//  RoutingWithRedux
//
//  Created by Amir on 24/10/2018.
//  Copyright © 2018 Venturedive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func pushToGreenView(_ sender: Any) {
        store.dispatch(RoutingAction(destination: .green))
    }
    
    @IBAction func pushToRedView(_ sender: Any) {
        store.dispatch(RoutingAction(destination: .red))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        print("deinit")
    }


}

