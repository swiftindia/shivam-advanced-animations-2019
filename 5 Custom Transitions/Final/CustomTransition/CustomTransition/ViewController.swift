//
//  ViewController.swift
//  CustomTransition
//
//  Created by Shivam on 24/07/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let delta: CGFloat = 40
    
    @IBOutlet weak var tableView: UITableView!
    let animator = Animator()
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
            vc.transitioningDelegate = self
            present(vc, animated: true, completion: nil)
        }
    }
    
}

extension ViewController: UIViewControllerTransitioningDelegate{
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        if let cell = tableView.cellForRow(at: tableView.indexPathForSelectedRow!), let superView = cell.superview {
            let rect = superView.convert(cell.frame, to: nil)
            animator.originFrame = CGRect(x: rect.origin.x, y: rect.origin.y + 20, width: rect.size.width, height: rect.size.height)
        }
        
        return animator
    }
}
