//
//  ViewController.swift
//  Slide
//
//  Created by Shivam on 21/07/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import UIKit
import Foundation
import CoreGraphics

class ViewController: UIViewController {

    let textAttributes: [NSAttributedString.Key: Any] = {
        let style = NSMutableParagraphStyle()
        style.alignment = .center
        return [
            .font: UIFont(
                name: "HelveticaNeue-Thin",
                size: 28.0)!,
            .paragraphStyle: style
        ]
    }()
    
    @IBOutlet weak var slideView: UIView!
    let gradient = CAGradientLayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

