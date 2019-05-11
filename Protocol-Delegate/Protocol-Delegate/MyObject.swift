//
//  MyObject.swift
//  Protocol-Delegate
//
//  Created by Crab Invader on 01/01/2019.
//  Copyright © 2019 Crab Invader. All rights reserved.
//

import UIKit

protocol myDelegate {
    func delegateMethod()
}

class myObject: NSObject {
    
    var delegate: myDelegate?
    
    func start() {
    delegate?.delegateMethod()
    }
}
