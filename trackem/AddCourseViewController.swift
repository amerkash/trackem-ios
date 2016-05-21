//
//  AddCourseViewController.swift
//  trackem
//
//  Created by Amer Kachmar on 5/21/16.
//  Copyright © 2016 trackem. All rights reserved.
//

import UIKit

class AddCourseViewController: UIViewController {
    
    
    @IBOutlet weak var tfCourseName: UITextField!
    @IBOutlet weak var tfCoursePassword: UITextField!
    @IBOutlet weak var btAdd: UIButton!
    @IBOutlet weak var btCancel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btAdd.layer.cornerRadius = 5
        btAdd.layer.borderWidth = 1
        btAdd.layer.borderColor = UIColor.whiteColor().CGColor
        
        
        btCancel.layer.cornerRadius = 5
        btCancel.layer.borderWidth = 1
        btCancel.layer.borderColor = UIColor.whiteColor().CGColor
        
        
        tfCourseName.layer.borderColor = UIColor.whiteColor().CGColor
        tfCourseName.layer.borderWidth = 1
        tfCourseName.layer.cornerRadius = 5
        tfCourseName.attributedPlaceholder = NSAttributedString(string:"Course Name",
            attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
        tfCourseName.backgroundColor = UIColor.clearColor()
        
        tfCoursePassword.layer.borderColor = UIColor.whiteColor().CGColor
        tfCoursePassword.layer.borderWidth = 1
        tfCoursePassword.layer.cornerRadius = 5
        tfCoursePassword.attributedPlaceholder = NSAttributedString(string:"Course Password (Given by host)",
            attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
        tfCoursePassword.backgroundColor = UIColor.clearColor()
        
        
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
