//
//  ViewController.swift
//  CustomTransition
//
//  Created by Shivam on 24/07/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Avengers.all().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath)
        
        let avenger = Avengers.all()[indexPath.row]
        let reusableView = Bundle.main.loadNibNamed("CommonView", owner: self, options: nil)!.first as! CommonView
        reusableView.imageView.image = UIImage(named: avenger.imageName)
        reusableView.nameLabel.text = avenger.name
        reusableView.center = cell.center
        reusableView.frame = CGRect(x: 20, y: 20, width: cell.bounds.size.width - 40, height: cell.bounds.size.height - 40)
        reusableView.tag = 1
        cell.contentView.addSubview(reusableView)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DispatchQueue.main.async {
            self.presentDetail(for: indexPath.row)
        }
    }
    
    func presentDetail(for index:Int){
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController{
            vc.avenger = Avengers.all()[index]
            present(vc, animated: true, completion: nil)
        }
    }
    
}
