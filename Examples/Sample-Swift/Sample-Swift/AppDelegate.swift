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
let INETERCOM_API_KEY = "<#YOUR API KEY#>"

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        Intercom.setApiKey(INETERCOM_API_KEY, forAppId: INTERCOM_APP_ID)
        Intercom.setLauncherVisible(true)
        
        #if DEBUG
            Intercom.enableLogging()
        #endif
    
        let defaults = NSUserDefaults.standardUserDefaults()
        if let email = defaults.stringForKey(emailKey) {
            Intercom.registerUserWithEmail(email)
        }
        
        return true
    }

    func applicationDidBecomeActive(application: UIApplication) {
        //Register for push notifications
        //For more info, see: http://docs.intercom.io/Install-on-your-mobile-product/enabling-push-notifications-with-intercom-for-ios
        let settings = UIUserNotificationSettings(forTypes: [.Badge, .Sound, .Alert], categories: nil)
        application.registerUserNotificationSettings(settings)
        application.registerForRemoteNotifications()

    }

}

