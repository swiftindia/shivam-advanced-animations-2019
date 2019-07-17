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
//        self.cloud1.center.x -= self.view.bounds.width
//        self.cloud2.center.x -= self.view.bounds.width
//        self.cloud1.alpha = 0
//        self.cloud2.alpha = 0
        self.balloon.alpha = 1
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animateCloud(cloud1)
        animateCloud(cloud2)
        floatTheBalloonWithKeyFrame()
        //floatTheBalloon()
    }
    
    //Basic Animation
    func floatCloud(){
        UIView.animate(withDuration: 3) {
            self.cloud1.center.x += self.view.bounds.width
            self.cloud2.center.x += self.view.bounds.width
        }
    }

    func floatCloudWithDelay(){
        UIView.animate(withDuration: 3, delay: 0, options: [], animations: {
            self.cloud1.center.x += self.view.bounds.width
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 1, options: [], animations: {
            self.cloud2.center.x += self.view.bounds.width

        }, completion: nil)
    }
    
    func floatCloudWithAnimationOptions(){
        UIView.animate(withDuration: 1, delay: 1, options: [], animations: {
            self.cloud1.center.x = 250
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 1, options: [.repeat,.autoreverse, .curveEaseInOut], animations: {
            self.cloud2.center.x = 250
            
        }, completion: nil)
    }
    
    
    func floatCloudWithOtherAnimatableProperties(){
        UIView.animate(withDuration: 2, delay: 0, options: .curveEaseInOut, animations: {
            self.cloud1.center.x += self.view.bounds.width
            self.cloud2.center.x += self.view.bounds.width
            self.cloud1.alpha = 1
            self.cloud2.alpha = 0.7
        }, completion: nil)
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
    
    
    func floatTheBalloon(){
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
                    UIView.animate(withDuration: 1, delay: 15, options: [.curveEaseInOut], animations: {
                        self.balloon.center = center
                    }, completion: nil)
                })
            })
        })
    }
    
    func floatTheBalloonWithKeyFrame(){
        let center = balloon.center
        UIView.animateKeyframes(withDuration: 10, delay: 0, options: [], animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.1, animations: {
                self.balloon.center.x -= 150
                self.balloon.center.y -= 200
                self.balloon.transform = CGAffineTransform(rotationAngle: -.pi/8)
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.1, relativeDuration: 0.25, animations: {
                self.balloon.center.x += 300
                self.balloon.center.y -= 200
                self.balloon.transform = CGAffineTransform(rotationAngle: .pi/8)
            })

            UIView.addKeyframe(withRelativeStartTime: 0.2, relativeDuration: 0.3, animations: {
                self.balloon.center.x = self.view.center.x
                self.balloon.center.y = 150
                self.balloon.transform = CGAffineTransform(rotationAngle: 0)
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.95, relativeDuration: 0.05, animations: {
                self.balloon.center = center
            })
            
        }, completion: nil)
    }
}

