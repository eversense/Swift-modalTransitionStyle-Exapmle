// miss
//  ViewController.swift
//  Swift-Modal-Example
//
//  Created by Osamu Nishiyama on 2014/10/22.
//  Copyright (c) 2014年 ever sense. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let CoverVerticalBtn:UIButton = UIButton(frame: CGRectMake(0, 0, 300, 50))
        CoverVerticalBtn.layer.position = CGPoint(x: self.view.frame.width/2, y: 100)
        CoverVerticalBtn.setTitle("CoverVertical", forState: .Normal)
        CoverVerticalBtn.setTitleColor(UIColor.blueColor(), forState: .Normal)
        CoverVerticalBtn.layer.cornerRadius = 10
        CoverVerticalBtn.layer.borderWidth = 1
        CoverVerticalBtn.addTarget(self, action: "showCoverVertical:", forControlEvents:.TouchUpInside)
        self.view.addSubview(CoverVerticalBtn)

        let CrossDissolveBtn = UIButton(frame: CGRectMake(0, 0, 300, 50))
        CrossDissolveBtn.layer.position = CGPoint(x: self.view.frame.width/2, y: 200)
        CrossDissolveBtn.setTitle("CrossDissolve", forState: .Normal)
        CrossDissolveBtn.setTitleColor(UIColor.blueColor(), forState: .Normal)
        CrossDissolveBtn.layer.cornerRadius = 10
        CrossDissolveBtn.layer.borderWidth = 1
        CrossDissolveBtn.addTarget(self, action: "showCrossDissolve:", forControlEvents:.TouchUpInside)
        self.view.addSubview(CrossDissolveBtn)

        let FlipHorizontalBtn = UIButton(frame: CGRectMake(0, 0, 300, 50))
        FlipHorizontalBtn.layer.position = CGPoint(x: self.view.frame.width/2, y: 300)
        FlipHorizontalBtn.setTitle("CrossDissolve", forState: .Normal)
        FlipHorizontalBtn.setTitleColor(UIColor.blueColor(), forState: .Normal)
        FlipHorizontalBtn.layer.cornerRadius = 10
        FlipHorizontalBtn.layer.borderWidth = 1
        FlipHorizontalBtn.addTarget(self, action: "showFlipHorizontal:", forControlEvents:.TouchUpInside)
        self.view.addSubview(FlipHorizontalBtn)

        let PartialCurlBtn = UIButton(frame: CGRectMake(0, 0, 300, 50))
        PartialCurlBtn.layer.position = CGPoint(x: self.view.frame.width/2, y: 400)
        PartialCurlBtn.setTitle("PartialCurl", forState: .Normal)
        PartialCurlBtn.setTitleColor(UIColor.blueColor(), forState: .Normal)
        PartialCurlBtn.layer.cornerRadius = 10
        PartialCurlBtn.layer.borderWidth = 1
        PartialCurlBtn.addTarget(self, action: "showPartialCurl:", forControlEvents:.TouchUpInside)
        self.view.addSubview(PartialCurlBtn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func showCoverVertical(sender: AnyObject){
        let modalView = ModalViewController()
        modalView.modalTransitionStyle = UIModalTransitionStyle.CoverVertical
        self.presentViewController(modalView, animated: true, completion: nil)
    }

    func showCrossDissolve(sender: AnyObject){
        let modalView = ModalViewController()
        modalView.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        self.presentViewController(modalView, animated: true, completion: nil)
    }

    func showFlipHorizontal(sender: AnyObject){
        let modalView = ModalViewController()
        modalView.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
        self.presentViewController(modalView, animated: true, completion: nil)
    }

    func showPartialCurl(sender: AnyObject){
        let modalView = ModalViewController()
        modalView.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        self.presentViewController(modalView, animated: true, completion: nil)
    }

}

