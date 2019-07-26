//
//  ViewController.swift
//  BasicViewAnimations
//
//  Created by Shivam on 14/07/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cloud1: UIImageView!
    
    @IBOutlet weak var cloud2: UIImageView!
    
    @IBOutlet weak var balloon: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        cloud1.layer.shadowOpacity = 0.7
        cloud1.layer.shadowOffset = CGSize(width: 5, height: 5)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animateCloud(cloud1)
        animateCloud(cloud2)
        animateBalloon()
    }

    func animateCloud(_ cloud: UIImageView){
        let distance = view.frame.size.width - cloud.frame.origin.x
        let cloudSpeed = 10.0 / view.frame.size.width
        let time = distance * cloudSpeed
        UIView.animate(withDuration: TimeInterval(time), delay: 0, options: .curveLinear, animations: {
            cloud.frame.origin = CGPoint(x: self.view.frame.width, y: cloud.frame.origin.y)
        }) { _ in
            cloud.frame.origin = CGPoint(x: -cloud.frame.size.width, y: cloud.frame.origin.y)
            self.animateCloud(cloud)
        }
    }
    
    func animateBalloon(){
        let fly = CASpringAnimation(keyPath: "position.x")
        fly.fromValue = 0
        fly.toValue = 300
        fly.mass = 1
        fly.initialVelocity = 0
        fly.stiffness = 100
        fly.damping = 10
        fly.duration = fly.settlingDuration
        balloon.layer.add(fly, forKey: nil)
        balloon.layer.position.y = 300
    }
}

