//
//  CustomSegue.swift
//  WhatsNewInStoryboards
//
//  Created by Mr.Alien on 16/2/11.
//  Copyright © 2016年 wrcj. All rights reserved.
//

import UIKit

class CustomSegue: UIStoryboardSegue, UIViewControllerTransitioningDelegate, UINavigationControllerDelegate {
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        return FadeAnimator()
    }
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return FadeAnimator()
  
    }
    
    override func perform() {
        // Modal动画代理
        destinationViewController.transitioningDelegate = self

        // Push动画代理 代理
        (sourceViewController.parentViewController as! UINavigationController).delegate = self;

        super.perform()
    }
    
    func navigationController(navigationController: UINavigationController, animationControllerForOperation operation: UINavigationControllerOperation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        return FadeAnimator()
    }
}

class FadeAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
    var isPresenting = true
    let fadeDuration = 0.3
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        
        let containerView = transitionContext.containerView()
        let toView = transitionContext.viewForKey(UITransitionContextToViewKey)!
        
        if isPresenting {
            // Presenting
            toView.alpha = 0.0;
            containerView?.addSubview(toView)
            
            UIView.animateWithDuration(transitionDuration(transitionContext), animations: { () -> Void in
                
                toView.alpha = 1.0
                
                }, completion: { (success) -> Void in
                    
                    transitionContext.completeTransition(success)
            })
            
        } else {
            // Dismissing
            let fromView = transitionContext.viewForKey(UITransitionContextFromViewKey)!
            
            UIView.performWithoutAnimation({ () -> Void in
                containerView?.insertSubview(fromView, aboveSubview: toView)
            })
            
            UIView.animateWithDuration(transitionDuration(transitionContext), animations: { () -> Void in
                fromView.alpha = 0.0
                }, completion: { (success) -> Void in
                    transitionContext.completeTransition(success)
            })
        }
        
    }
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return fadeDuration
    }
}
