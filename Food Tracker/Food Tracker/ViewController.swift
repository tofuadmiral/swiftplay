//
//  ViewController.swift
//  Food Tracker
//
//  Created by Ahmed Fuad Ali on 2018-05-20.
//  Copyright © 2018 Fuad Ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel! // only need outlets if we plan to modify or access these values, AND use actions to actually modify or act on these outlets.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // actions indicate that something will be done with this, i.e. defining functions that correspond to outlets.
    
    //MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    
}

