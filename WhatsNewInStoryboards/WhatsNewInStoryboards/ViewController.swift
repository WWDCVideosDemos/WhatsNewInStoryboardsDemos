//
//  ViewController.swift
//  WhatsNewInStoryboards
//
//  Created by Mr.Alien on 16/2/11.
//  Copyright © 2016年 wrcj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindForDismiss(segue: UIStoryboardSegue) {
        
//        canPerformUnwindSegueAction(<#T##action: Selector##Selector#>, fromViewController: <#T##UIViewController#>, withSender: <#T##AnyObject#>)
        
// 遍历数组查询 canPerformUnwindSegueAction(
//        allowedChildViewControllersForUnwindingFromSource(<#T##source: UIStoryboardUnwindSegueSource##UIStoryboardUnwindSegueSource#>)
    }
    
    @IBAction func unwindForQuickReturnItem1(segue: UIStoryboardSegue) {
    }
    
    override func childViewControllerContainingSegueSource(source: UIStoryboardUnwindSegueSource) -> UIViewController? {
        // 返回子控制器数组中含有UnwindSegueSource的控制器
        return nil
    }
}

