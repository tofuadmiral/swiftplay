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
        setUpButtons()
    } // must use required to inherit the initaliazers that we HAVE to have, otherwise will take none if we specifiy our own
    required init(coder: NSCoder){
        super.init(coder: coder)
        setUpButtons()
    }
    
    //MARK: Button Action
    @objc func ratingButtonTapped(button: UIButton){
        print("button tapped nya eh") // prints to the debugger console, just for testing purposes
        
    }
    
    //MARK: Private Methods
    private func setUpButtons(){
        // create a button
        let button = UIButton()
        button.backgroundColor = UIColor.red
        
        // constraints for the button, first disable inherited ones then define our own for height and width
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        // setup the button's actions
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
        // touchUpInside is useful because it means the user has to tap and ALSO touch up from inside the button in order for the action to be triggered
        
        
        // add the button to the stack, managed by ratingcontrol stack view, which will create our constraints
        addArrangedSubview(button)
    }
    
    
    
    
    
    
    // this is important to note below, but won't be working with it for the purposes of this tutorial

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
