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
        balloon.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
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
    }*/
}

