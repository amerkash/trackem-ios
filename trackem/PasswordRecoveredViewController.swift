//
//  PasswordRecoveredViewController.swift
//  trackem
//
//  Created by Amer Kachmar on 5/21/16.
//  Copyright © 2016 trackem. All rights reserved.
//

import UIKit

class PasswordRecoveredViewController: UIViewController {

    @IBOutlet weak var btOkay: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btOkay.layer.cornerRadius = 5
        btOkay.layer.borderWidth = 1
        btOkay.layer.borderColor = UIColor.whiteColor().CGColor
        
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
