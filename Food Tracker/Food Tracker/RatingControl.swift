//
//  RatingControl.swift
//  Food Tracker
//
//  Created by Ahmed Fuad Ali on 2018-06-22.
//  Copyright © 2018 Fuad Ali. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView { // make it designable by the interface builder, draws copy of control directly on the canvas as well as sizing properly 
    
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    var rating = 0
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0){
        didSet{
            setupButtons() // once we set this variable, change the buttons to reflect this set
        }
    }
    @IBInspectable var starCount: Int = 5 { // interface builder can inspect and see these values
        didSet{
            setUpButtons() // same as above, if starCount changes, rebuild the buttons with new count
        }
    }
    
    
    //MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpButtons()
    }
    
    required init(coder: NSCoder){
        super.init(coder: coder)
        setUpButtons()
    }
    
    // initializers different in swift, if you call one you don't inherit ANY anymore, but if you don't call any you inherit all of them
    
    
    //MARK: Button Actions
    
    @objc func ratingButtonTapped(button: UIButton){
        print("Button Pressed nyaehhh")
    }
    
    //MARK: Private Methods
    
    private func setUpButtons(){
        
        // loop to create five buttons
        for _ in 0..<starCount{
            
            // create the buttons
            let button = UIButton()
            button.backgroundColor = UIColor.red
            
            // add some constraints to the button, so resizes properly
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
            
            // before we add to stack, estblish actions of the button
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            // add button to the stack
            addArrangedSubview(button)
            
            // add the created button to the array of buttons field
            ratingButtons.append(button)
        }
        
    }
    
    
    
    
    // this will be important later but we don't need it right now
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}
