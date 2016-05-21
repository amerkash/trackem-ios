//
//  SignUpViewController.swift
//  trackem
//
//  Created by Amer Kachmar on 5/19/16.
//  Copyright © 2016 trackem. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var btRegister: UIButton!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfFullName: UITextField!
    @IBOutlet weak var tfID: UITextField!
    @IBOutlet weak var tfPhone: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfConfirmPassword: UITextField!
    
    
    // Define global variables of this view
//    var index = 0
//    var backgroundColors = [UIColor()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Register button layout
        btRegister.layer.cornerRadius = 5
        btRegister.layer.borderWidth = 1
        btRegister.layer.borderColor = UIColor.whiteColor().CGColor
        
        // Email textfield layout
        tfEmail.layer.borderColor = UIColor.whiteColor().CGColor
        tfEmail.layer.borderWidth = 1
        tfEmail.layer.cornerRadius = 5
        tfEmail.attributedPlaceholder = NSAttributedString(string:"Email Address",
            attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
        tfEmail.backgroundColor = UIColor.clearColor()
        
        // Full Name textfield layout
        tfFullName.layer.borderColor = UIColor.whiteColor().CGColor
        tfFullName.layer.borderWidth = 1
        tfFullName.layer.cornerRadius = 5
        tfFullName.attributedPlaceholder = NSAttributedString(string:"Full Name",
            attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
        tfFullName.backgroundColor = UIColor.clearColor()

        // ID Number textfield layout
        tfID.layer.borderColor = UIColor.whiteColor().CGColor
        tfID.layer.borderWidth = 1
        tfID.layer.cornerRadius = 5
        tfID.attributedPlaceholder = NSAttributedString(string:"ID Number",
            attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
        tfID.backgroundColor = UIColor.clearColor()

        // Phone Number textfield layout
        tfPhone.layer.borderColor = UIColor.whiteColor().CGColor
        tfPhone.layer.borderWidth = 1
        tfPhone.layer.cornerRadius = 5
        tfPhone.attributedPlaceholder = NSAttributedString(string:"Phone Number",
            attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
        tfPhone.backgroundColor = UIColor.clearColor()

        
        // Password textfield layout
        tfPassword.layer.borderColor = UIColor.whiteColor().CGColor
        tfPassword.layer.borderWidth = 1
        tfPassword.layer.cornerRadius = 5
        tfPassword.attributedPlaceholder = NSAttributedString(string:"Password",
            attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
        tfPassword.backgroundColor = UIColor.clearColor()
        
        // Confirm password textfield layout
        tfConfirmPassword.layer.borderColor = UIColor.whiteColor().CGColor
        tfConfirmPassword.layer.borderWidth = 1
        tfConfirmPassword.layer.cornerRadius = 5
        tfConfirmPassword.attributedPlaceholder = NSAttributedString(string:"Confirm Password",
            attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
        tfConfirmPassword.backgroundColor = UIColor.clearColor()
        
        
        
        self.animateBackgroundColor()
        
    }
    
    
    // Function to animate the background
    func animateBackgroundColor() {
        if index < backgroundColors.count - 1 {
            index++
        } else {
            index = 0
        }
        UIView.animateWithDuration(5.0, delay: 0.0, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            self.view.backgroundColor =  backgroundColors[index];
            }) {(Bool) -> Void in
                self.animateBackgroundColor();
        }
    }
    
    // Function to close the keyboard when background is pressed
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // Function to set the status bar's color to light
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent;
    }
    
    

    
}
