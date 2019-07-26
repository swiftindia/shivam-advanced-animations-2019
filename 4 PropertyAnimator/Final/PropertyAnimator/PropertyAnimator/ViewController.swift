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
        
        let tap = UILongPressGestureRecognizer(target: self, action: #selector(tapped(recognizer:)))
        tap.minimumPressDuration = 0
        //view.addGestureRecognizer(tap)
        
        let pan = UIPanGestureRecognizer(target: self, action: #selector(pan(recogniser:)))
        square.addGestureRecognizer(pan)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
    @objc func tapped(recognizer: UITapGestureRecognizer){
        if recognizer.state == .began{
            animator.stopAnimation(true)
            view.backgroundColor = highlightedColor
        }
        
        else if recognizer.state == .ended{
            animator = UIViewPropertyAnimator(duration: 2, curve: .easeOut, animations: {
                self.view.backgroundColor = self.backgroundColor
            })
            animator.startAnimation()
        }
        
    }
    
    @objc func pan(recogniser : UIPanGestureRecognizer){
        switch recogniser.state {
        case .began:
            panAnimator = UIViewPropertyAnimator(duration: 2, dampingRatio: 0.8, animations: {
                self.square.center.x = 300
                self.square.alpha = 0.2
                self.view.backgroundColor = self.highlightedColor

            })
            panAnimator.startAnimation()
            panAnimator.pauseAnimation()
        case .changed:
            let delta = recogniser.translation(in: square).x
            let fraction = delta / 300
            panAnimator.fractionComplete = fraction
        case .ended:
            panAnimator.continueAnimation(withTimingParameters: nil, durationFactor: 0)
            panAnimator.addCompletion { (position) in
                self.view.backgroundColor = self.backgroundColor
            }
        default:
            break
        }
    }

    
    
    

}

