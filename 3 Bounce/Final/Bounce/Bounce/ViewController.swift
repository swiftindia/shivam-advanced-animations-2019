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

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addLayer()
        addMask()
        animate()
    }
    
    func addMask(){
        maskLayer.path = UIBezierPath(ovalIn: ball.bounds).cgPath
        ball.layer.mask = maskLayer
    }
    
    func addLayer(){
        roundLayer.path = UIBezierPath(ovalIn: ball.bounds).cgPath
        roundLayer.fillColor = UIColor.clear.cgColor
        roundLayer.lineWidth = 5.0
        roundLayer.strokeColor = UIColor.red.cgColor
        ball.layer.addSublayer(roundLayer)
    }
    
    func animate(){
        UIView.animate(withDuration: duration, delay: 0, options: [.curveEaseIn], animations: {
            self.ball.center.y += 275
        }) { (_) in
            
        }
        
        UIView.animate(withDuration: duration, delay: duration, options: [.curveEaseOut], animations: {
            self.ball.center.y -= 275
        }) { (_) in
            self.animate()
        }
      
        
        
        let newPath = UIBezierPath(ovalIn: bounceFrame).cgPath
        let anim = CABasicAnimation(keyPath: "path")
        anim.toValue = newPath
        anim.timingFunction = CAMediaTimingFunction(name: .easeOut)
        anim.duration = duration - 0.7
        anim.beginTime = CACurrentMediaTime() + 0.8
        roundLayer.add(anim, forKey: nil)
        maskLayer.add(anim, forKey: nil)
        
    }

}

