//
//  ViewController.swift
//  Sample-Swift
//
//  Created by Brian Boyle on 20/07/2016.
//  Copyright © 2016 Intercom. All rights reserved.
//

import UIKit
import Intercom

let emailKey = "email"

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    @IBOutlet weak var openIntercomButton: UIButton!
    var loggedIn: Bool! = false {
        didSet {
            loginButton.enabled = !loggedIn
            logoutButton.enabled = loggedIn
            openIntercomButton.enabled = loggedIn
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loggedIn = NSUserDefaults.standardUserDefaults().stringForKey(emailKey) != nil
    }
    
    
    @IBAction func loginTapped(sender: UIButton) {
        //The user is not logged in, so prompt for their email address
        
        let loginAlert = UIAlertController(title: "User Login", message: "Type in an email address", preferredStyle: UIAlertControllerStyle.Alert)
        loginAlert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
        loginAlert.addAction(UIAlertAction(title: "Login", style: UIAlertActionStyle.Default, handler: { (action: UIAlertAction) in
            self.handleLogin(loginAlert)
        }))
        loginAlert.addTextFieldWithConfigurationHandler { (textField : UITextField) in
            textField.placeholder = "Enter email"
        }
        loginAlert.view.setNeedsLayout()
        self.presentViewController(loginAlert, animated: true, completion: nil)
    }


    @IBAction func logoutTapped(sender: UIButton) {
        //Logout was pressed, so calling [Intercom reset] will log remove all local user data and stop tracking them.
        Intercom.reset()
        NSUserDefaults.standardUserDefaults().removeObjectForKey(emailKey)
        loggedIn = false
    }
    
    
    @IBAction func openIntercomTapped(sender: UIButton) {
        Intercom.presentMessenger()
    }
    
    func handleLogin(alertController: UIAlertController) -> Void {
        
        let textField = (alertController.textFields?.first)!
        if !(textField.text?.isEmpty)! {
            //Start tracking the user with Intercom
            Intercom.registerUserWithEmail(textField.text!)
            
            NSUserDefaults.standardUserDefaults().setObject(textField.text!, forKey: emailKey)
            loggedIn = true
        }
    }
}

