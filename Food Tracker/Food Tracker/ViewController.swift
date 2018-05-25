//
//  ViewController.swift
//  Food Tracker
//
//  Created by Ahmed Fuad Ali on 2018-05-20.
//  Copyright © 2018 Fuad Ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate { // adopting the uitextfield delegate so we can act on behalf of the uitextfield and get information from there
    
    //MARK: Outlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    // only need outlets if we plan to modify or access these values, AND use actions to actually modify or act on these outlets.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // handle user's input from the text field using a callback
        nameTextField.delegate = self // self refers to viewcontroller class
        // we want to set the delegate of the textfield as the viewcontroller so it can handle any input necessary
        // we need to implement two of the methods used by the UITextField Delegate, not all 8. these eight will be necessary for the processing of the input from the user in order to change the text of the label
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // actions indicate that something will be done with this, i.e. defining functions that correspond to outlets.
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // resign the text field's first-responder status
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true // true bc we always want to process the press of the return key
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) { // note: underscores mean "ignore this" i.e. ignore the label when calling it, don't have to pass it the particular name but still takes a textField of type UITextField
        mealNameLabel.text = textField.text
    }
    
    //MARK: Actions
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        // hide the keyboard first
        nameTextField.resignFirstResponder()
        // UIImagePickerController let's the user choose a picture so let's do that
        let imagePickerController = UIImagePickerController()
        
        // WE ONLY WANT TO LET THE user choose not take
        imagePickerController.sourceType = .photoLibrary
        
    }
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    
}

