//
//  ViewController.swift
//  Swift-Scheme-Sample
//
//  Created by Michael McNamara on 24/09/2019.
//  Copyright © 2019 Michael McNamara. All rights reserved.
//

import UIKit
import Intercom

let emailKey = "email"

class ViewController: UIViewController {

    

    @IBOutlet weak var loginUserButton: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    @IBOutlet weak var openMessengerButton: UIButton!
    @IBOutlet weak var openInboxButton: UIButton!
    @IBOutlet weak var openHelpCenterButton: UIButton!
    @IBOutlet weak var openArticleButton: UIButton!
    @IBOutlet weak var openCarouselButton: UIButton!
    @IBOutlet weak var openSurveyButton: UIButton!
    
    var loggedIn = false {
        didSet {
            loginUserButton.isEnabled = !loggedIn
            logoutButton.isEnabled = loggedIn
            openMessengerButton.isEnabled = loggedIn
            openInboxButton.isEnabled = loggedIn
            openHelpCenterButton.isEnabled = loggedIn
            openArticleButton.isEnabled = loggedIn
            openCarouselButton.isEnabled = loggedIn
            openSurveyButton.isEnabled = loggedIn
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loggedIn = UserDefaults.standard.string(forKey: emailKey) != nil
    }

    @IBAction func loginTapped(_ sender: Any) {
        //The user is not logged in, so prompt for their email address
        
        let loginAlert = UIAlertController(title: "User Login", message: "Type in an email address", preferredStyle: UIAlertController.Style.alert)
        loginAlert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
        loginAlert.addAction(UIAlertAction(title: "Login", style: UIAlertAction.Style.default, handler: { (action: UIAlertAction) in
            self.handleLogin(loginAlert)
        }))
        loginAlert.addTextField { (textField : UITextField) in
            textField.placeholder = "Enter email"
        }
        present(loginAlert, animated: true, completion: nil)
    }
    
    @IBAction func openMessenger(_ sender: Any) {
        Intercom.present()
    }
    
    @IBAction func openInbox(_ sender: Any) {
        Intercom.present(.messages)
    }
    
    @IBAction func openHelpCenter(_ sender: Any) {
        Intercom.present(.helpCenter)
    }
    
    @IBAction func openHelpCenterCollections(_ sender: Any) {
        Intercom.presentContent(.helpCenterCollections(ids: ["<#COLLECTION_ID_1#>", "<#COLLECTION_ID_2#>"]))
    }
    
    @IBAction func openArticle(_ sender: Any) {
        Intercom.presentContent(.article(id: "<#ARTICLE_ID#>"))
    }
    
    @IBAction func openCarousel(_ sender: Any) {
        Intercom.presentContent(.carousel(id: "<#CAROUSEL_ID#>"))
    }
    
    @IBAction func openSurvey(_ sender: Any) {
        Intercom.presentContent(.survey(id: "<#SURVEY_ID#>"))
    }
    
    @IBAction func logout(_ sender: Any) {
        //Logout was pressed, so calling Intercom.logout() will log remove all local user data and stop tracking them.
        Intercom.logout()
        UserDefaults.standard.removeObject(forKey: emailKey)
        loggedIn = false
    }
    
    func handleLogin(_ alertController: UIAlertController) -> Void {
        
        let textField = (alertController.textFields?.first)!
        if !(textField.text?.isEmpty ?? false) {
            //Start tracking the user with Intercom
            let attributes = ICMUserAttributes()
            attributes.email = textField.text!
            Intercom.loginUser(with: attributes) { [unowned self] result in
                switch result {
                case .success:
                    UserDefaults.standard.set(textField.text, forKey: emailKey)
                    loggedIn = true
                case .failure(let error): print("Error logging in: \(error.localizedDescription)")
                }
            }
        }
    }
}

