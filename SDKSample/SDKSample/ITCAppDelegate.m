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

- (void)configureIntercomWithLaunchOptions:(NSDictionary *)launchOptions application:(UIApplication *)application {
    
    // enable Intercom logging for debugging purposes
    [Intercom enableLogging];
    
    // ===================================================
    // Mandatory: Set Intercom API key and App Id
    // ===================================================

    // Option 1: configure 'normal' mode
    [Intercom setApiKey:kIntercomAPIKey forAppId:kIntercomAppId];
    
    // Option 2: configure secure mode (see details http://docs.intercom.io/install-on-your-mobile-product/install-ios-sdk-part-3 )
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
    // see details http://docs.intercom.io/install-on-your-mobile-product/configure-the-ios-sdk-part-2#using-push-notifications
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
    
    // reset the app icon badge value
    [application setApplicationIconBadgeNumber:0];
    
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

@end
