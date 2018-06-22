//
//  RatingControl.swift
//  Food Tracker
//
//  Created by Ahmed Fuad Ali on 2018-06-22.
//  Copyright © 2018 Fuad Ali. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder){
        super.init(coder: coder)
    }
    
    // initializers different in swift, if you call one you don't inherit ANY anymore, but if you don't call any you inherit all of them
    
    
    // this will be important later but we don't need it right now
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
