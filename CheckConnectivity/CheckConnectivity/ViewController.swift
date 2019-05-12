//
//  ViewController.swift
//  CheckConnectivity
//
//  Created by Crab Invader on 01/01/2018.
//  Copyright © 2018 Crab Invader. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var checkingLabel: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        checkConnectivity()
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @objc func checkConnectivity() {
        print(Reachability.isConnectedToNetwork(), terminator: "")
        if Reachability.isConnectedToNetwork() == false {
          let alert = UIAlertController(title: "Alert", message: "Internet is not working", preferredStyle: UIAlertController.Style.alert)
            self.present(alert, animated: false, completion: nil)
          let okAction = UIAlertAction(title: "Retry", style: UIAlertAction.Style.default) {
                UIAlertAction in
                alert.dismiss(animated: false, completion: nil)
                self.checkConnectivity()
            }
            alert.addAction(okAction)
            checkingLabel.text = ""
        }
        else {
            checkingLabel.text = "Connected"
        }
    }
}
