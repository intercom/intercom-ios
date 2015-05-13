//
//  ITCAppDelegate.m
//  Sample
//
//  Created by James Treanor on 13/05/2015.
//  Copyright (c) 2015 Intercom. All rights reserved.
//

#import "ITCAppDelegate.h"
#import "ITCViewController.h"
#import <Intercom/Intercom.h>

/*!
 To try out the sample, change these values to your own iOS API key and App ID.
 */
#define INTERCOM_APP_ID  @"<#YOUR APP ID#>"
#define INTERCOM_API_KEY @"<#YOUR API KEY#>"

@implementation ITCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [Intercom setApiKey:INTERCOM_API_KEY forAppId:INTERCOM_APP_ID];
    
    #ifdef DEBUG
        [Intercom enableLogging];
    #endif
    
    NSString *email = [[NSUserDefaults standardUserDefaults] objectForKey:@"email"];
    if (email.length > 0) { //There is a user logged in
        [Intercom registerUserWithEmail:email];
    }

    return YES;
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    //Register for push notifications
    //For more info, see: http://docs.intercom.io/Install-on-your-mobile-product/enabling-push-notifications-with-intercom-for-ios
    if ([application respondsToSelector:@selector(registerUserNotificationSettings:)]){ // iOS 8 (User notifications)
        [application registerUserNotificationSettings:[UIUserNotificationSettings
                                                       settingsForTypes:(UIUserNotificationTypeBadge
                                                                         | UIUserNotificationTypeSound
                                                                         | UIUserNotificationTypeAlert)
                                                       categories:nil]];
        [application registerForRemoteNotifications];
    } else { // iOS 7 (Remote notifications)
        [application registerForRemoteNotificationTypes:UIRemoteNotificationTypeBadge
                                                        | UIRemoteNotificationTypeSound
                                                        | UIRemoteNotificationTypeAlert];
    }
}

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    [Intercom setDeviceToken:deviceToken];
}

@end
