//
//  DetailViewcontrollerViewController.swift
//  CustomTransition
//
//  Created by Shivam on 24/07/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var holderView: UIView!
    var avenger: Avengers!
    private var reusableView =  CommonView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let reusableView = Bundle.main.loadNibNamed("CommonView", owner: self, options: nil)!.first as! CommonView
        reusableView.imageView.image = UIImage(named: avenger.imageName)
        reusableView.nameLabel.text = avenger.name
        descriptionLabel.text = avenger.description
        reusableView.frame = holderView.bounds
        reusableView.tag = 1
        holderView.addSubview(reusableView)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    @IBAction func closeButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    

}
