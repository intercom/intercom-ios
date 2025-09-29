//
//  SceneDelegate.swift
//  Swift-Scheme-Sample
//
//  Created by Michael McNamara on 24/09/2019.
//  Copyright © 2019 Michael McNamara. All rights reserved.
//

import UIKit
import Intercom

let INTERCOM_APP_ID = "<#YOUR APP ID#>"
let INTERCOM_API_KEY = "<#YOUR API KEY#>"

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        
        Intercom.setApiKey(INTERCOM_API_KEY, forAppId: INTERCOM_APP_ID)
        Intercom.setLauncherVisible(true)
        
        #if DEBUG
        Intercom.enableLogging()
        #endif
        
        let defaults = UserDefaults.standard
        if let email = defaults.string(forKey: emailKey) {
            let attributes = ICMUserAttributes()
            attributes.email = email
            Intercom.loginUser(with: attributes) { result in
                switch result {
                case .success: print("Successfully logged in \(email)")
                case .failure(let error): print("Error logging in: \(error.localizedDescription)")
                }
            }
        }
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        //Register for push notifications
        //For more info, see: https://developers.intercom.com/installing-intercom/docs/ios-push-notifications
        
        let center = UNUserNotificationCenter.current()
        // Request permission to display alerts and play sounds.
        center.requestAuthorization(options: [.alert, .sound, .badge]) { (granted, error) in
            // Enable or disable features based on authorization.
        }
        UIApplication.shared.registerForRemoteNotifications()
    }

}

