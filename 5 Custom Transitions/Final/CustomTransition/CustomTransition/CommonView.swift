//
//  CommonView.swift
//  CustomTransition
//
//  Created by Shivam on 24/07/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import UIKit

class CommonView: UIView {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func awakeFromNib() {
        self.layer.shadowOpacity = 1
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width: 3, height: 3)
        self.layer.cornerRadius = 10.0
        self.layer.masksToBounds = false
        
    }
}
