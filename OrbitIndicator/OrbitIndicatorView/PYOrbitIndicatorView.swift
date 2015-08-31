//
//  PYOrbitIndicatorView.swift
//  OrbitIndicator
//
//  Created by Puyan Lin on 2015/9/1.
//  Copyright (c) 2015年 Puyan. All rights reserved.
//

import Foundation
import UIKit

class PYOrbitIndicatorView: UIView{
    
    @IBOutlet var imgIndicator: UIImageView!
    var interval=0.5
    
    func rotateTo(#degree:CGFloat){
        rotateTo(degree: degree, timeInterval: interval)
    }
    
    func rotateTo(#degree:CGFloat,timeInterval:NSTimeInterval){
        
        UIView.animateWithDuration(timeInterval, animations: { () -> Void in
            let angle = CGFloat( degree/180.0 ) * CGFloat(M_PI)
            self.imgIndicator.layer.transform = CATransform3DMakeRotation( angle , 0, 0, 1);
        })
    }
    
}