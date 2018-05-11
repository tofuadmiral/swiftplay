//
//  ViewController.swift
//  Food Tracker
//
//  Created by Ahmed Fuad Ali on 2018-05-06.
//  Copyright © 2018 Fuad Ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    /*
        the above statement implies that UITextField is an unwrapped optional
        use the outlet to either modify a value or to access the value inside something
        outlets let you call stuff, but you also need to respond to user interaction. i.e. ACTIONS
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // the below comment indicates that the code below it contains actions for my app, which will allow me to respond to events, etc. 
    
    //MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }

    


}
