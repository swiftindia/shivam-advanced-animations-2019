//
//  Animator.swift
//  CustomTransition
//
//  Created by Shivam on 24/07/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import UIKit

class Animator: NSObject, UIViewControllerAnimatedTransitioning {
    var duration = 0.8
    var originFrame = CGRect.zero
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let toView = transitionContext.view(forKey: .to)!
        let container = transitionContext.containerView
        let fromView = transitionContext.view(forKey: .from)!
        let finalFrame = toView.frame
        
        toView.frame = originFrame
        toView.clipsToBounds = true
        container.addSubview(toView)
        container.bringSubviewToFront(toView)
        
        UIView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 5, initialSpringVelocity: 10, options: [.curveEaseIn], animations: {
            toView.center = CGPoint(x: finalFrame.midX, y: finalFrame.midY)
            toView.bounds = fromView.bounds
        }) { (_) in
            transitionContext.completeTransition(true)

        }
        
    }
    

}
