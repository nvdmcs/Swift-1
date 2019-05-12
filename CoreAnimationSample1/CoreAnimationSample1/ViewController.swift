//
//  ViewController.swift
//  CoreAnimationSample1
//
//  Created by Crab Invader on 01/01/2019.
//  Copyright © 2019 Crab Invader. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBAction func animate(_ sender: UIButton) {
        let animation:CABasicAnimation = CABasicAnimation(keyPath: "position")
        animation.fromValue = NSValue(cgPoint:CGPoint(x: image.frame.midX, y: image.frame.midY))
        animation.toValue = NSValue(cgPoint:CGPoint(x: image.frame.midX, y: 340))
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        animation.duration = 1.0
        image.layer.add(animation, forKey: "position")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
