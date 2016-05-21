//
//  ViewController.swift
//  trackem
//
//  Created by Amer Kachmar on 5/19/16.
//  Copyright © 2016 trackem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btLogin: UIButton!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var btForgot: UIButton!
    @IBOutlet weak var btSignUp: UIButton!
    
    
    @IBAction func btLoginAction(sender: AnyObject) {
        
        // Action for the login button
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // Login Button Layout
        btLogin.layer.borderColor = UIColor.whiteColor().CGColor
        btLogin.layer.borderWidth = 1
        btLogin.layer.cornerRadius = 5
        
        // Email textfield layout
        tfEmail.layer.borderColor = UIColor.whiteColor().CGColor
        tfEmail.layer.borderWidth = 1
        tfEmail.layer.cornerRadius = 5
        tfEmail.attributedPlaceholder = NSAttributedString(string:"Email Address",
            attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
        tfEmail.backgroundColor = UIColor.clearColor()
        
        // Password textfield layout
        tfPassword.layer.borderColor = UIColor.whiteColor().CGColor
        tfPassword.layer.borderWidth = 1
        tfPassword.layer.cornerRadius = 5
        tfPassword.attributedPlaceholder = NSAttributedString(string:"Password",
            attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
        tfPassword.backgroundColor = UIColor.clearColor()
        
        // Animate the background
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