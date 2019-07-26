//
//  ViewController.swift
//  PropertyAnimator
//
//  Created by Shivam on 26/07/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let backgroundColor = UIColor.blue
    let highlightedColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
    var animator = UIViewPropertyAnimator()
    var panAnimator = UIViewPropertyAnimator()
    @IBOutlet weak var square: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = backgroundColor
        square.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }


}

