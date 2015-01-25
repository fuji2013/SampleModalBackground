//
//  ViewController.swift
//  SampleModalBackground
//
//  Created by fuhi1983 on 2015/01/25.
//  Copyright (c) 2015年 sample. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let btn = UIButton.buttonWithType(.System) as UIButton

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btn.frame = CGRectMake(0, 0, 100, 100)
        btn.center = view.center
        btn.setTitle("タップ", forState: .Normal)
        btn.addTarget(self, action: "pressBtn:", forControlEvents: .TouchUpInside)
        view.addSubview(btn)
    }
    
    func pressBtn(sender:UIButton){
        let controller = ModalViewController()
        controller.modalPresentationStyle = UIModalPresentationStyle.OverCurrentContext
        self.presentViewController(controller, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

