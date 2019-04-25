//
//  AppDelegate.swift
//  Sample-Swift
//
//  Created by Brian Boyle on 20/07/2016.
//  Copyright © 2016 Intercom. All rights reserved.
//

import UIKit
import Intercom

let INTERCOM_APP_ID = "<#YOUR APP ID#>"
let INTERCOM_API_KEY = "<#YOUR API KEY#>"

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Intercom.setApiKey(INTERCOM_API_KEY, forAppId: INTERCOM_APP_ID)
        Intercom.setLauncherVisible(true)
        
        #if DEBUG
            Intercom.enableLogging()
        #endif
    
        let defaults = UserDefaults.standard
        if let email = defaults.string(forKey: emailKey) {
            Intercom.registerUser(withEmail: email)
        }
        
        return true
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        //Register for push notifications
        //For more info, see: https://developers.intercom.com/v2.0/docs/ios-push-notifications
        let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
        application.registerUserNotificationSettings(settings)
        application.registerForRemoteNotifications()

    }

}

