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
        addGradientLayer()
        addTextMask()
        animateGradient()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func addGradientLayer(){
        let colors = [
            UIColor.black.cgColor,
            UIColor.white.cgColor,
            UIColor.black.cgColor
        ]
        gradient.startPoint = CGPoint(x: 0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1, y: 0.5)
        
        let locations: [NSNumber] = [
            0.25,
            0.5,
            0.75
        ]
        
        gradient.locations = locations
        
        gradient.colors = colors
        gradient.frame = slideView.bounds
        slideView.layer.addSublayer(gradient)
        
    }
    
    func animateGradient(){
        let anim = CABasicAnimation(keyPath: "locations")
        anim.fromValue = [0.0, 0.0, 0.25]
        anim.toValue = [0.75, 1.0, 1.0]
        anim.duration = 2.0
        anim.repeatCount = Float.infinity
        gradient.add(anim, forKey: nil)
    }
    
    func addTextMask(){
        let text = "Slide to Unlock"
        let image = UIGraphicsImageRenderer(size: slideView.bounds.size).image { (_) in
            text.draw(in: slideView.bounds, withAttributes: textAttributes)
        }
        
        let maskLayer = CALayer()
        maskLayer.backgroundColor = UIColor.clear.cgColor
        maskLayer.frame = slideView.bounds
        maskLayer.contents = image.cgImage
        
        slideView.layer.mask = maskLayer
    }

}

