//
//  ViewController.swift
//  Bounce
//
//  Created by Shivam on 21/07/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ball: UIView!
    let duration = 1.0
    let widthFactor: CGFloat = 1.1
    let heightFactor: CGFloat = 0.95
    var bounceSize = CGSize.zero
    
    var maskLayer = CAShapeLayer()
    var roundLayer = CAShapeLayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

}

