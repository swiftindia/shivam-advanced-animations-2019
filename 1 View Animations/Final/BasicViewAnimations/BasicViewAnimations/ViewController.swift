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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animateCloud(cloud1)
        animateCloud(cloud2)
        flyBalloonWithKeyframe()
    }
    
    func animateCloud(_ cloud: UIView){
        let distance = view.bounds.width - cloud.frame.origin.x
        let speed = view.bounds.width / 10
        let duration = distance / speed
        UIView.animate(withDuration: TimeInterval(duration), delay: 0, options: [ .curveLinear], animations: {
            cloud.center.x += distance
        }) { (_) in
            cloud.center = CGPoint(x: -cloud.bounds.midX, y: cloud.center.y)
            self.animateCloud(cloud)
        }
    }
    
    func flyTheBalloon(){
        let center = balloon.center
        
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseInOut], animations: {
            self.balloon.center.x -= 150
            self.balloon.center.y -= 200
        }, completion: { _ in
            UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseInOut], animations: {
                self.balloon.center.x += 300
                self.balloon.center.y -= 200
            }, completion: { _ in
                UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseInOut], animations: {
                    self.balloon.center.x = self.view.center.x
                    self.balloon.center.y = 150
                }, completion: { _ in
                    UIView.animate(withDuration: 1, delay: 6, options: [.curveEaseInOut], animations: {
                        self.balloon.center = center
                    }, completion: nil)
                })
            })
        })
    }
    
    func flyBalloonWithKeyframe(){
        let center = balloon.center
        
        UIView.animateKeyframes(withDuration: 10, delay: 0, options: [.calculationModeLinear], animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1/10, animations: {
                self.balloon.center.x -= 150
                self.balloon.center.y -= 200
            })
            
            UIView.addKeyframe(withRelativeStartTime: 1/10, relativeDuration: 1/10, animations: {
                self.balloon.center.x += 300
                self.balloon.center.y -= 200
            })
            
            UIView.addKeyframe(withRelativeStartTime: 2/10, relativeDuration: 1/10, animations: {
                self.balloon.center.x = self.view.center.x
                self.balloon.center.y = 150
            })
            
            UIView.addKeyframe(withRelativeStartTime: 9/10, relativeDuration: 1/10, animations: {
                self.balloon.center = center
            })
            
        }) { (_) in
            
        }
    }
}

