#import "SceneDelegate.h"
@import UserNotifications;
@import Intercom;

/*!
 To try out the sample, change these values to your own iOS API key and App ID.
 */
#define INTERCOM_APP_ID  @"<#YOUR APP ID#>"
#define INTERCOM_API_KEY @"<#YOUR API KEY#>"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    [Intercom setApiKey:INTERCOM_API_KEY forAppId:INTERCOM_APP_ID];
    [Intercom setLauncherVisible:YES];
    
    #ifdef DEBUG
        [Intercom enableLogging];
    #endif
    
    NSString *email = [[NSUserDefaults standardUserDefaults] objectForKey:@"email"];
    if (email.length > 0) { //There is a user logged in
        [Intercom registerUserWithEmail:email];
    }
    
}

- (void)sceneDidBecomeActive:(UIScene *)scene {
    //Register for push notifications
    //For more info, see: https://developers.intercom.com/installing-intercom/docs/ios-push-notifications
    
    UNUserNotificationCenter *notificationCenter = [UNUserNotificationCenter currentNotificationCenter];
    [notificationCenter requestAuthorizationWithOptions:(UNAuthorizationOptionSound | UNAuthorizationOptionAlert | UNAuthorizationOptionBadge) completionHandler:^(BOOL granted, NSError * _Nullable error) {
        // Enable or disable features based on authorization.
    }];
    
    [[UIApplication sharedApplication] registerForRemoteNotifications];
}

@end
