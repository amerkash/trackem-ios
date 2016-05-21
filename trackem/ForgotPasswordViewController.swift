//
//  ForgotPasswordViewController.swift
//  trackem
//
//  Created by Amer Kachmar on 5/21/16.
//  Copyright © 2016 trackem. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var btRecover: UIButton!
    @IBOutlet weak var btSignIn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Email textfield layout
        tfEmail.layer.borderColor = UIColor.whiteColor().CGColor
        tfEmail.layer.borderWidth = 1
        tfEmail.layer.cornerRadius = 5
        tfEmail.attributedPlaceholder = NSAttributedString(string:"Email Address",
            attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
        tfEmail.backgroundColor = UIColor.clearColor()
        
        // Recover button layout
        btRecover.layer.cornerRadius = 5
        btRecover.layer.borderWidth = 1
        btRecover.layer.borderColor = UIColor.whiteColor().CGColor
        
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
