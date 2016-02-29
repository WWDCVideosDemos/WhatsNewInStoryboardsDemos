/*
    Copyright (C) 2015 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    The view controller used as the root of the split view's master-side navigation controller.
*/

import UIKit

class MasterViewController: UITableViewController {
    @IBAction func unwindInMaster(segue: UIStoryboardSegue)  {
        /*
            Empty. Exists solely so that "unwind in master" segues can
            find this instance as a destination.
        */
    }

    
    override func allowedChildViewControllersForUnwindingFromSource(source: UIStoryboardUnwindSegueSource) -> [UIViewController] {
        
        return super.allowedChildViewControllersForUnwindingFromSource(source)
        
    }
    
    override func childViewControllerContainingSegueSource(source: UIStoryboardUnwindSegueSource) -> UIViewController? {
        
        return super.childViewControllerContainingSegueSource(source)
    }
    
    override func canPerformUnwindSegueAction(action: Selector, fromViewController: UIViewController, withSender sender: AnyObject) -> Bool {
        return super.canPerformUnwindSegueAction(action, fromViewController: fromViewController, withSender: sender)
    }
}
