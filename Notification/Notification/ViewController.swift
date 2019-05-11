//
//  ViewController.swift
//  Notification
//
//  Created by Crab Invader on 27/04/2019.
//  Copyright © 2019 Crab Invader. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyboardWillAppear(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyboardWillDisappear(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.customNotification(_:)), name: NSNotification.Name(rawValue: "notificationName"), object: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            if(string == "\n"){
                textField.resignFirstResponder()
                return false
            } else{
                return true
            } }
    
    @objc func keyboardWillAppear(_ notification: Notification) {
        print("Show Keyboard")
    }
    
    @objc func customNotification(_ notification:Notification){
        print("custom")
    }
    
    @objc func keyboardWillDisappear(_ notification:Notification){
        print("Hide Keyboard")

        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "notificationName"), object: nil)
    }

}
