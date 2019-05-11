//
//  ViewController.swift
//  Protocol-Delegate
//
//  Created by Crab Invader on 01/01/2019.
//  Copyright © 2019 Crab Invader. All rights reserved.
//

import UIKit

class ViewController: UIViewController, myDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let myRequest: myObject = myObject()
        myRequest.delegate = self
        myRequest.start()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func delegateMethod() {
        print("Received message")
    }
}
