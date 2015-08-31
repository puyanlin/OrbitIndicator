//
//  ViewController.swift
//  OrbitIndicator
//
//  Created by Puyan Lin on 2015/8/31.
//  Copyright (c) 2015年 Puyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imgindicator: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(10, animations: { () -> Void in
            self.imgindicator.layer.transform = CATransform3DMakeRotation( CGFloat( 90.0/180 * M_PI ) , 0, 0, 1);
        })
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

