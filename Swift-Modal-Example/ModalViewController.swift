//
//  ModalViewController.swift
//  Swift-Modal-Example
//
//  Created by Osamu Nishiyama on 2014/10/22.
//  Copyright (c) 2014年 ever sense. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.orangeColor()
        
        let closeMeBtn = UIButton(frame: CGRectMake(0, 0, 300, 50))
        closeMeBtn.layer.position = CGPoint(x: self.view.frame.width/2, y:100)
        closeMeBtn.setTitle("Close Me!", forState: .Normal)
        closeMeBtn.addTarget(self, action: "closeMe:", forControlEvents: .TouchUpInside)
        self.view.addSubview(closeMeBtn)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func closeMe(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
