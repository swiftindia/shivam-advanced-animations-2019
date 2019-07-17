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
        self.cloud1.center.x -= self.view.bounds.width
        self.cloud2.center.x -= self.view.bounds.width
        self.cloud1.alpha = 0
        self.cloud2.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
    
    
    
    
    //Basic Animation
    /*func floatCloud(){
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
    
    func foatCloudWithAnimationOptions(){
        UIView.animate(withDuration: 1, delay: 1, options: [], animations: {
            self.cloud1.center.x = 250
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 1, options: [.repeat,.autoreverse, .curveEaseInOut], animations: {
            self.cloud2.center.x = 250
            
        }, completion: nil)
    }
    
    
    func floatCloudWithOtherAnimatableProperties(){
        UIView.animate(withDuration: 3, delay: 0, options: .curveEaseInOut, animations: {
            self.cloud1.center.x += self.view.bounds.width
            self.cloud2.center.x += self.view.bounds.width
            self.cloud1.alpha = 1
            self.cloud2.alpha = 0.7
        }, completion: nil)
    }
    */
}

