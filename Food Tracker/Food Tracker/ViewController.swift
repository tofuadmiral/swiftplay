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
    
    //MARK: UIImagePickerControllerDelegate
    //      this section is the image picker implementation
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // dismiss if user cancels
        dismiss(animated: true, completion: nil)// i.e. dismiss, show animation, don't do anything after
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        // make sure we choose original image, bc there might be diff versions
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Expected a dictionary with an image inside, but was provided instead with \(info)") // fatal error terminates the app
        }
        
        // set photoImageView to display selected image
        photoImageView.image = selectedImage
        
        // now we done so dismiss the image picker
        dismiss(animated: true, completion: nil)
        
        
    }
    
    //MARK: Actions
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        // hide the keyboard first
        nameTextField.resignFirstResponder()
        // UIImagePickerController let's the user choose a picture so let's do that
        let imagePickerController = UIImagePickerController()
        
        // WE ONLY WANT TO LET THE user choose not take
        imagePickerController.sourceType = .photoLibrary
        
        // make sure that the viewcontroller is notified of when the user wants to pick an image
        imagePickerController.delegate = self
        
        // being called on ViewController, executed on implicit "self", present the view defined by imagepickercontroller i.e. UIImagePickerController, completion handler says what to do after and we don't need to do anything so 'nil'
        present(imagePickerController, animated: true, completion: nil)
        
    }
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    
}

