//
//  ITCAppDelegate.m
//  SDKSample
//
//  Created by Roland Gröpmair on 08/09/2014.
//  Copyright (c) 2014 Intercom. All rights reserved.
//

#import "ITCAppDelegate.h"
#import "ITCUtils.h"
#import "Intercom.h"
#import "ITCIntercomSettings.h"

@implementation ITCAppDelegate

- (void)configureIntercom {
    
    // enable Intercom logging for debugging purposes
    [Intercom enableLogging];
    
    // ===================================================
    // Configure Intercom: set Intercom API key and App Id
    // ===================================================

    // Option 1: configure 'normal' mode
    [Intercom setApiKey:kIntercomAPIKey forAppId:kIntercomAppId];
    
    // Option 2: configure secure mode (see details http://docs.intercom.io/install-on-your-mobile-product/install-ios-sdk-part-3)
    //    [Intercom setApiKey:kIntercomAPIKey
    //               forAppId:kIntercomAppId
    //        securityOptions:@{
    //                          @"data" : @"sdk2-sample-user@yourapp.com",
    //                          @"hmac" : @"<hmac_of_data>"
    //                          }
    //     ];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.

    [self configureIntercom];
    
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
