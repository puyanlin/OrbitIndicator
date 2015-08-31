//
//  ViewController.swift
//  OrbitIndicator
//
//  Created by Puyan Lin on 2015/8/31.
//  Copyright (c) 2015年 Puyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let orbitIndicatorView : PYOrbitIndicatorView = NSBundle.mainBundle().loadNibNamed("PYOrbitIndicatorView", owner: self, options: nil)[0] as! PYOrbitIndicatorView
        
        orbitIndicatorView.frame=self.view.bounds
        self.view.addSubview(orbitIndicatorView)
        
        orbitIndicatorView.rotateTo(degree: 90)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

