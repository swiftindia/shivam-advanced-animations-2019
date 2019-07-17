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
        self.balloon.alpha = 1
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animateCloud(cloud1)
        animateCloud(cloud2)
        
    }

    func animateCloud(_ cloud: UIImageView){
        let distance = view.frame.size.width - cloud.frame.origin.x
        let cloudSpeed = 10.0 / view.frame.size.width
        let time = distance * cloudSpeed
        UIView.animate(withDuration: TimeInterval(time),  delay: 0, options: .curveLinear, animations: {
            cloud.frame.origin = CGPoint(x: self.view.frame.width, y: cloud.frame.origin.y)
        }) { _ in
            cloud.frame.origin = CGPoint(x: -cloud.frame.size.width, y: cloud.frame.origin.y)
            self.animateCloud(cloud)
        }
    }
    
    
   
}

