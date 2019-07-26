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
    var bounceFrame = CGRect.zero
    
    var maskLayer = CAShapeLayer()
    var roundLayer = CAShapeLayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let bounceSize = CGSize(width: ball.bounds.size.width * widthFactor, height: ball.bounds.size.height * heightFactor)
        bounceFrame = CGRect(x: (ball.bounds.width - bounceSize.width)/2,
                             y: ball.bounds.height - bounceSize.height,
                             width: bounceSize.width, height: bounceSize.height)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

}

