//
//  Intercom.h
//  Intercom for iOS
//
//  Created by Intercom on 8/01/2015.
//  Copyright (c) 2014 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ICMUserAttributes.h"

#if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_8_0
#error This version of Intercom for iOS supports iOS 8.0 upwards.
#endif

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, ICMPreviewPosition){
    ICMPreviewPositionBottomLeft   = 0,
    ICMPreviewPositionBottomRight  = 1,
    ICMPreviewPositionTopLeft      = 2,
    ICMPreviewPositionTopRight     = 3
};

/**
 Intercom is your direct line of communication to every user, right inside your app. Intercom’s in-app messages
 are up to 10 times more effective than email too! Send the right messages, to the right users, at exactly the right time.

 ## How do I track my users?

 In order to see your users in Intercom's user list, you must first register them via your iOS application. If you have a
 place in your application where you become aware of the user's identity such as a log in view controller, call one of the
 following depending on the information you have available for that user:

 If you have both a unique user identifier and an email for your users::

 [Intercom registerUserWithUserId:@"123456" email:@"joe@example.com"];

 If you only have a unique identifier for your users:

 [Intercom registerUserWithUserId:@"123456"];

 Finally, if you only have an email address for your users:

 [Intercom registerUserWithEmail:@"joe@example.com"];

 ## Can I track unidentified users?

 Yes, absolutely. If you have an application that doesn't require users to log in, you can call:

 [Intercom registerUnidentifiedUser];

 If the user subsequently logs in or you learn additional information about them (e.g. get an email address),
 calling any of the other user registration methods will update that user's identity in Intercom and contain
 all user data tracked previously.

 ## How do push notifications work?

 Intercom for iOS enables your users to receive push notifications for new messages. Simply call:

 - (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
     [Intercom setDeviceToken:deviceToken];
 }

 in your `didRegisterForRemoteNotificationsWithDeviceToken:` method once you have registered your app for
 push notifications with the `UIApplicationDelegate`.

 When your app receives a push notification Intercom for iOS checks to see if it is an Intercom push notification
 and opens the message. You do not need to implement any additional code in order to launch the message window.

 To do this we [safely swizzle](http://blog.newrelic.com/2014/04/16/right-way-to-swizzle/) the public methods
 in `UIApplicationDelegate` that handle receiving push notifications. We do not use any private APIs to do this.

 ## More information

 Full documentation is available [here](https://developers.intercom.com/docs/ios-installation ) and please contact
 us directly via Intercom for any support or questions you may have.

 */
@interface Intercom : NSObject

//=========================================================================================================
/*! @name Getting set up */
//=========================================================================================================
/*!
 Initialize Intercom with your iOS API key and App ID.  This will allow your app to connect with Intercom.
 This is best done in the application delegate's didFinishLaunchingWithOptions: method.

 @param apiKey The iOS API key found on the API Key settings page.
 @param appId  The App ID of your Intercom app.
 */
+ (void)setApiKey:(NSString *)apiKey forAppId:(NSString *)appId;

//=========================================================================================================
/*! @name Using Identity Verification */
//=========================================================================================================
/*!
 Identity Verification helps to make sure that conversations between you and your users are kept private, and that one
 user can't impersonate another. If Identity Verification is enabled for your app Intercom for iOS will sign all requests
 going to the Intercom servers with tokens. It requires your mobile application to have its own server which authenticates the app's users,
 and which can store a secret. More information on Identity VerificationIdentity Verification can be found [here](https://docs.intercom.com/configure-intercom-for-your-product-or-site/staying-secure/enable-identity-verification-in-intercom-for-ios )
 
 @note This should be called before any user registration takes place.
 @param userHash A HMAC digest of the user ID or email.
 */
+ (void)setUserHash:(NSString *)userHash;

//=========================================================================================================
/*! @name Working with anonymous users */
//=========================================================================================================
/*!
 If you call registerUnidentifiedUser, all activity will be tracked anonymously. If you choose to subsequently
 identify that user, all that anonymous activity will be merged into the identified user. This means that you
 will no longer see the anonymous user in Intercom, but rather the identified one.

 We recommend this is called from within the application delegate's didFinishLaunchingWithOptions: method.

 @note You must call one of the user registration methods in order to start communicating with Intercom.
 */
+ (void)registerUnidentifiedUser;

//=========================================================================================================
/*! @name Working with identified users */
//=========================================================================================================
/*!
 In order to keep track of a specific user, you must identify it with a unique user identifier, an email
 address, or both. By supplying information like this Intercom provides richer user profiles for your users.
 This is a userId, supplied by you (e.g. from an existing web service for your product) to represent your
 user in Intercom, once set it cannot be changed.

 If you are putting Intercom for iOS into an app that has persisted an authentication token or equivalent
 so your users don't have to log in repeatedly (like most apps) then we advise putting the user registration
 call in the `didBecomeActive:` method in your application delegate. This won't have any negative impact if
 you also add it to your authentication success method elsewhere in your app.

 @param userId  A unique identifier for your user.
 @param email   Your user's email address.
 @note You must call one of the user registration methods in order to start communicating with Intercom.
 */
+ (void)registerUserWithUserId:(NSString *)userId email:(NSString *)email;

/*!
 Register a user just with their userId.

 @param userId A unique identifier for your user.
 @note You must call one of the user registration methods in order to start communicating with Intercom.
 */
+ (void)registerUserWithUserId:(NSString *)userId;

/*!
 Register a user with just their email address.

 @param email   Your user's email address.
 @note You must call one of the user registration methods in order to start communicating with Intercom.
 */
+ (void)registerUserWithEmail:(NSString *)email;

//=========================================================================================================
/*! @name Logging the user out */
//=========================================================================================================
/*!
 logout is used to clear all local caches and user data Intercom has created. Logout will also close any active
 UI that is on screen. Use this at a time when you wish to log a user out of your app or change a user.
 Once called, Intercom for iOS will no longer communicate with Intercom until a further registration is made.
 */
+ (void)logout;

/*!
 @deprecated  +[Intercom reset] is deprecated. Use +[Intercom logout] instead.
 */
+ (void)reset __attribute((deprecated("'+[Intercom reset]' is deprecated. 'Use +[Intercom logout]' instead.")));

//=========================================================================================================
/** @name Updating the user */
//=========================================================================================================
/*!
 You can send any data you like to Intercom. Typically our customers see a lot of value in sending data that
 relates to customer development, such as price plan, value of purchases, etc. Once these have been sent to
 Intercom you can then apply filters based on these attributes.
 
 Details on attributes available to update can be found in ICMUserAttributes.
 
 @param userAttributes The attributes to update the user with.
 */
+ (void)updateUser:(ICMUserAttributes *)userAttributes;

/*!
 Log an event with a given name.

 You can log events in Intercom based on user actions in your app. Events are different
 to custom user attributes in that events are information on what Users did and when they
 did it, whereas custom user attributes represent the User's current state as seen in their
 profile. See details about Events [here](https://developers.intercom.com/reference/#events )

 @param name The name of the event that it is going to be logged.
 */
+ (void)logEventWithName:(NSString *)name;

/*!
 Metadata Objects support a few simple types that Intercom can present on your behalf, see the
 [Intercom API docs](https://developers.intercom.com/reference/#event-metadata-types )

 [Intercom logEventWithName:@"ordered_item" metaData:@{
 @"order_date": @1392036272,
 @"stripe_invoice": @"inv_3434343434",
 @"order_number": @{
 @"value": @"3434-3434",
 @"url": @"https://example.org/orders/3434-3434"
 }];

 @param name The name of the event you wish to track.
 @param metaData contains simple types to present to Intercom
 */
+ (void)logEventWithName:(NSString *)name metaData:(NSDictionary *)metaData;

//=========================================================================================================
/*! @name Show Intercom messages and message composers */
//=========================================================================================================

/*!
 Present the Intercom Messenger

 Opens the Intercom messenger to automatically to the best place for your users.
 */
+ (void)presentMessenger;

/*!
 Present the message composer.
 */
+ (void)presentMessageComposer;

/*!
 Present the message composer with a message to pre-populate the composer.
 */
+ (void)presentMessageComposerWithInitialMessage:(NSString *)message;

/*!
 Present the conversation list.
 */
+ (void)presentConversationList;

//=========================================================================================================
/*! @name Working with push notifications */
//=========================================================================================================
/*!
 Set the device token for push notifications. Once the device token is set, the methods for receiving push
 notifications are safely swizzled so ones sent from Intercom can be intercepted. When a push notification from
 Intercom is received, Intercom for iOS will automatically launch the message from the notification.

 @param deviceToken The device token provided in the `didRegisterForRemoteNotificationsWithDeviceToken` method.
 */
+ (void)setDeviceToken:(NSData *)deviceToken;

/*!
 Use this method to check if a push notification payload was sent by Intercom. Typically you should call
 +[Intercom handleIntercomPushNotification:] after checking this.
 
 @note This is only needed if you have set `IntercomAutoIntegratePushNotifications` to NO in your Info.plist
 @return YES if the payload is an Intercom push notification, NO otherwise.
 */
+ (BOOL)isIntercomPushNotification:(NSDictionary *)userInfo;

/*!
 Use this method to handle a push notification payload received by Intercom. You should first check if this
 notification was send by Intercom with `+[Intercom isIntercomPushNotification:]`.
 
 @note This is only needed if you have set `IntercomAutoIntegratePushNotifications` to NO in your Info.plist
 */
+ (void)handleIntercomPushNotification:(NSDictionary *)userInfo;

//=========================================================================================================
/*! @name Incoming message presentation options */
//=========================================================================================================

/*!
 This method allows you to set a fixed bottom padding for in app messages and the launcher.
 It is useful if your app has a tab bar or similar UI at the bottom of your window.

 @param bottomPadding The size of the bottom padding in points.
 */
+ (void)setBottomPadding:(CGFloat)bottomPadding;

//=========================================================================================================
/*! @name Intercom UI Visibility */
//=========================================================================================================

/*!
 Use this to hide all incoming Intercom messages and message previews in the parts of your app where you do
 not wish to interrupt users, for example Camera views, parts of a game or other scenarios.

 By default, all in app messages will be visible.

 @param visible A boolean indicating if in app messages should be visible.
 */
+ (void)setInAppMessagesVisible:(BOOL)visible;

/*!
 Use this to show the Intercom launcher selectively within your app. If you choose to display the launcher,
 you may want to hide it on some screens where screen space is critical (e.g. parts of a game).

 By default, the launcher is hidden.

 @param visible A boolean indicating if the launcher should be visible.
 */
+ (void)setLauncherVisible:(BOOL)visible;

/*!
 Hide the Intercom messenger, if it is on screen.
 This can be useful if your app wishes to get the users attention (e.g. opening an in app link).
 */
+ (void)hideMessenger;

//=========================================================================================================
/*! @name Unread conversations */
//=========================================================================================================

/*!
 This method provides the current number of unread conversations.
 This is useful if you want to display a badge counter on the button where you launch Intercom.

 @return The number of unread conversations.
 */
+ (NSUInteger)unreadConversationCount;

/*!
 This notification is fired when the number of unread conversations changes.
 */
UIKIT_EXTERN NSString *const IntercomUnreadConversationCountDidChangeNotification;

//=========================================================================================================
/*! @name Enable logging */
//=========================================================================================================

/*!
 Enable logging for Intercom for iOS. By calling this method, Intercom will display debug information.
 @note it is recommended to use it only while debugging)
 */
+ (void)enableLogging;

//=========================================================================================================
/*! @name Status bar handling */
//=========================================================================================================

/*!
 If you wish to change your status bar's style or visibility while an Intercom notification may be on
 screen, call this method so that Intercom's window can reflect these changes accordingly.
 */
+ (void)setNeedsStatusBarAppearanceUpdate;

//=========================================================================================================
/*! @name Intercom Notifications */
//=========================================================================================================
/*!
 These are notifications thrown by Intercom for iOS when the Intercom window is displayed and hidden or when
 a new conversation has been started. These notifications are fired only when there is a change in the state
 of Intercom's UI: when a user receives a message for instance, willShow and didShow notifications will be
 fired accordingly when the Intercom Notification (chat head) is presented.

 Once the user taps on the chat head, the message is presented in your app. It will be presented covering
 the entire screen, but no notifications will be thrown here as Intercom has already been visible.

 In the case of a new conversation this notification may be used to prompt users to enable push notifications.
 */

UIKIT_EXTERN NSString *const IntercomWindowWillShowNotification;
UIKIT_EXTERN NSString *const IntercomWindowDidShowNotification;
UIKIT_EXTERN NSString *const IntercomWindowWillHideNotification;
UIKIT_EXTERN NSString *const IntercomWindowDidHideNotification;
UIKIT_EXTERN NSString *const IntercomDidStartNewConversationNotification;

@end

NS_ASSUME_NONNULL_END
