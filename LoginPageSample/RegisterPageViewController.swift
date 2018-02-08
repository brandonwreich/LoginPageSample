//
//  RegisterPageViewController.swift
//  LoginPageSample
//
//  Created by Reich, Brandon on 2/8/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController
{
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var userConfirmPasswordTextField: UITextField!
        
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButtonPushed(_ sender: Any)
    {
        let userEmail = userEmailTextField.text
        let userPassword = userPasswordTextField.text
        let userConfirmPassword = userConfirmPasswordTextField.text
        
        // Check for empyt fields
        if (userEmail == "" || userPassword == "" || userConfirmPassword == "")
        {
            // Display alert message
            displayMyAlertMessage(userMessage: "All fields are required")
            
            return;
        }
        
        // Check if passwords match
        if (userPassword != userConfirmPassword)
        {
            // Display an alert message
            displayMyAlertMessage(userMessage: "Passwords do not match")
            
            return;
        }
        
        // Store Data
        UserDefaults.standard.set(userEmail, forKey: "userEmail")
        UserDefaults.standard.set(userPassword, forKey: "userPassword")
        UserDefaults.standard.synchronize();
    
        // Display Alert message with confirmation
         let myAlert = UIAlertController(title: "Oops", message: "Registration is successfl. Thank you!", preferredStyle: UIAlertControllerStyle.alert);
        let okAction = UIAlertAction(title: "Okay", style: UIAlertActionStyle.default){ action in
            self.dismiss(animated: true, completion: nil)
        }
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
    }

    public func displayMyAlertMessage(userMessage: String)
    {
        let myAlert = UIAlertController(title: "Oops", message: userMessage, preferredStyle: UIAlertControllerStyle.alert);
        let okAction = UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil)
        
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
    }
    
}
