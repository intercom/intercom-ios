//
//  ITCAppDelegate.m
//  Sample
//
//  Created by Brian Boyle on 19/07/2016.
//  Copyright (c) 2016 Intercom. All rights reserved.
//

#import "ITCAppDelegate.h"
@import Intercom;

/*!
 To try out the sample, change these values to your own iOS API key and App ID.
 */
#define INTERCOM_APP_ID  @"<#YOUR APP ID#>"
#define INTERCOM_API_KEY @"<#YOUR API KEY#>"

@implementation ITCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [Intercom setApiKey:INTERCOM_API_KEY forAppId:INTERCOM_APP_ID];
    [Intercom setLauncherVisible:YES];
    
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
    //For more info, see: https://developers.intercom.com/v2.0/docs/ios-push-notifications
    [application registerUserNotificationSettings:[UIUserNotificationSettings
                                                   settingsForTypes:(UIUserNotificationTypeBadge
                                                                     | UIUserNotificationTypeSound
                                                                     | UIUserNotificationTypeAlert)
                                                   categories:nil]];
    [application registerForRemoteNotifications];
}

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    [Intercom setDeviceToken:deviceToken];
}

@end
