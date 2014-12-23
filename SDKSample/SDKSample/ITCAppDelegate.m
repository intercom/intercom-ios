//
//  ITCAppDelegate.m
//  SDKSample
//
//  Copyright 2014 Intercom
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

#import "ITCAppDelegate.h"
#import "ITCUtils.h"
#import "Intercom.h"
#import "ITCIntercomSettings.h"

@implementation ITCAppDelegate


#pragma mark - Configure Intercom SDK

- (void)configureIntercomWithLaunchOptions:(NSDictionary *)launchOptions application:(UIApplication *)application {
    
    // enable Intercom logging for debugging purposes
    [Intercom enableLogging];
    
    // ===================================================
    // Mandatory: Set Intercom API key and App Id
    // ===================================================

    // Option 1: configure 'normal' mode
    [Intercom setApiKey:kIntercomAPIKey forAppId:kIntercomAppId];
    
    // Option 2: configure secure mode - see details here <http://docs.intercom.io/install-on-your-mobile-product/secure-mode-ios-sdk>
    // Call the following method after a user authenticated successfully in your app (you won't have the HMAC data in your app before that happened)
    //    [Intercom setApiKey:kIntercomAPIKey
    //               forAppId:kIntercomAppId
    //        securityOptions:@{
    //                          @"data" : kIntercomSampleUserEmail,
    //                          @"hmac" : kIntercomSampleUserEmailHmac
    //                          }
    //     ];

    
    // ===================================================
    // Optional: Enable Push Notifications in Intercom
    // ===================================================
    
    // Prerequisite: you need to export your certificate and private key and upload the PEM file to Intercom.
    // see details here <http://docs.intercom.io/install-on-your-mobile-product/push-notifications-ios-sdk>
    [Intercom registerForRemoteNotifications];
    
    // see also code in applicationWillEnterForeground: to register for push
    
    NSDictionary *notificationPayload = launchOptions[UIApplicationLaunchOptionsRemoteNotificationKey];
    if (notificationPayload) {
        // we have a remote notification for the app to process; i.e. the app was launched by tapping on a push notification alert
        dispatch_async(dispatch_get_main_queue(), ^{
            [self application:application didReceiveRemoteNotification:notificationPayload];
        });
    }

    
    // ===================================================
    // Optional: Customize Intercom Notification position
    // ===================================================
    
    [Intercom setPresentationMode:ICMPresentationModeBottomRight];
    
}


#pragma mark - UIApplicationDelegate Calls

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.

    [self configureIntercomWithLaunchOptions:launchOptions application:application];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    
    // if you are using Push Notifications
    
    // reset the app icon badge value - depending on your badge handling logic, you might do this somewhere else
//    [application setApplicationIconBadgeNumber:0];
    
    // register for push notifications; this has changed in iOS 8
    if ([application respondsToSelector:@selector(registerUserNotificationSettings:)]){ // iOS8
        [application registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:(UIRemoteNotificationTypeBadge |
                                                                                                    UIRemoteNotificationTypeSound |
                                                                                                    UIRemoteNotificationTypeAlert)
                                                                                        categories:nil]];
        [application registerForRemoteNotifications];
    } else {
        [application registerForRemoteNotificationTypes:(UIRemoteNotificationType)
         (UIRemoteNotificationTypeBadge |
          UIRemoteNotificationTypeSound |
          UIRemoteNotificationTypeAlert)];
    }
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

// handle deep linking from the SDK: in this sample app, just show an alert view
- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Testing deep linking" message:@"If you see this, a deep link has successfully been called" delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil];
    [alert show];
    return YES;
}


#pragma mark - Handle Push Notifications

// if you want to use push notifications in the Intercom SDK, the following two delegate calls
// application:didRegisterForRemoteNotificationsWithDeviceToken: and application:didReceiveRemoteNotification:
// are REQUIRED - you need at least an empty implementation of these calls

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    // The Intercom SDK handles this automatically, so you don't need to call any Intercom methods here - just an empty method is OK
    // If your app handles push notifications, connect with your push notification server and give the token to it
    
    NSLog(@"🐸 Registered device token for push notifications: token=%@", deviceToken);
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
    // The Intercom SDK handles this automatically, so you don't need to call any Intercom methods here - just an empty method is OK
    // If you app handles push notifications, handle them here
    
    NSLog(@"🌈 Host app received push notification: userInfo=%@", userInfo);
}

- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error {
    // handle registration error
    
    NSLog(@"Failed to register for push notifications - error: %@", error.localizedDescription);
}

@end
