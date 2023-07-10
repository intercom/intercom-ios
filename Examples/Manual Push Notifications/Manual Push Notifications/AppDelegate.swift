//
//  AppDelegate.swift
//  Manual Push Notifications
//
//  Created by Brian Boyle on 23/06/2023.
//

import UIKit
import UserNotifications
import Intercom

let INTERCOM_APP_ID = "<#YOUR APP ID#>"
let INTERCOM_API_KEY = "<#YOUR API KEY#>"

@main
/// Sample code to demonstrate how to manually handle Intercom Push Notifications.
/// See our developer docs for more info https://developers.intercom.com/installing-intercom/docs/ios-push-notifications#manually
///
/// In order to handle Intercom Push Notifications manually, please ensure that `IntercomAutoIntegratePushNotifications` is set to `NO` in your `Info.plist`.
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        /// ⚠️ Its importanr that the `UNUserNotificationCenterDelegate` is assigned a value here.
        /// This is to ensure that `didReceiveResponse` will be called when the app launches after tapping on a push notification.
        UNUserNotificationCenter.current().delegate = self
        loginToIntercom()
        registerForPushNotifications()
        return true
    }
    
    fileprivate func loginToIntercom() {
        Intercom.enableLogging()
        Intercom.setApiKey(INTERCOM_API_KEY, forAppId: INTERCOM_APP_ID)
        Intercom.setLauncherVisible(true)

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
    
    func registerForPushNotifications() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            print("Permission granted: \(granted)")
        }
        UIApplication.shared.registerForRemoteNotifications()
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        /// Send your `deviceToken` to Intercom once you receive it from the system.
        Intercom.setDeviceToken(deviceToken)
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
}

extension AppDelegate : UNUserNotificationCenterDelegate {
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        let userInfo = response.notification.request.content.userInfo
        
        /// Check if the push notification belongs to Intercom. If it does, pass it to Intercom to handle it.
        if Intercom.isIntercomPushNotification(userInfo) {
            Intercom.handlePushNotification(userInfo)
        }
        completionHandler()
    }
}

