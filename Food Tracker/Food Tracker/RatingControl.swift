//
//  RatingControl.swift
//  Food Tracker
//
//  Created by Ahmed Fuad Ali on 2018-06-16.
//  Copyright © 2018 Fuad Ali. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
    } // must use required to inherit the initaliazers that we HAVE to have, otherwise will take none if we specifiy our own
    required init(coder: NSCoder){
        super.init(coder: <#T##NSCoder#>)
    }
    
    //MARK: Private Methods
    
    
    
    
    
    
    // this is important to note below, but won't be working with it for the purposes of this tutorial

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
