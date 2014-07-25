//
//  Intercom.h
//  Intercom
//
//  Created by Intercom on 15/04/2014.
//  Copyright (c) 2014 Intercom. All rights reserved.
//

#if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_7_0
#error This version (2.0) of the Intercom iOS SDK supports iOS 7.0 upwards.
#endif

@import Foundation;
@import UIKit;

typedef NS_ENUM(NSUInteger, ICMPresentationMode){
    ICMPresentationModeBottomLeft   = 0,
    ICMPresentationModeBottomRight  = 1,
    ICMPresentationModeTopLeft      = 2,
    ICMPresentationModeTopRight     = 3,
};

extern NSString *const kIntercomErrorDomain;

enum
{
    IntercomErrorUnknown            = -1,
    IntercomSessionError            = 1001,
    IntercomLoginError              = 1002,
    IntercomCredentialsError        = 1003,
    IntercomUpdateUserError         = 1004
};

/**
Notifications thrown by the SDK when the SDK window is displayed and hidden. These notifications are fired only when
there is a change in the state of the SDKs UI,
eg: If a user receives a message, willShow and didShow notifications will be fired when the chatHead is presented.
If after the chatHead is visible and the user press it, they will go to see the message. The message will be presented in full screen but
no notifications will be thrown here as SDK was already visible.
*/
UIKIT_EXTERN NSString *const IntercomWindowWillShowNotification;
UIKIT_EXTERN NSString *const IntercomWindowDidShowNotification;
UIKIT_EXTERN NSString *const IntercomWindowWillHideNotification;
UIKIT_EXTERN NSString *const IntercomWindowDidHideNotification;

typedef void(^ICMCompletion)(NSError *error);

@interface Intercom : NSObject

//=========================================================================================================
/** @name Connecting to Intercom. */
//=========================================================================================================
/*!
 Prior to sending any data to Intercom, the SDK must be initialized with a valid `apiKey` and `appId`.
 These can be found in the configuration section of your application's
 settings page.
 
 This should be placed in the iOS application delegate like so;
 
     - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
     {
         // Override point for customization after application launch
         [Intercom setApiKey:@"my_api_key" forAppId:@"my_app_id"];
         return YES;
     }
 
 @param apiKey The api key required to communicate with your Intercom application.
 @param appId The app id of your Intercom application.
 @since Available since version 1.0
 */

+ (void)setApiKey:(NSString *)apiKey forAppId:(NSString *)appId;

 /*!
 Initialize the SDK with additional parameters for advanced security. The securityOptions dictionary should contain
 user specific data string and the HMAC digest for that data string.
  
  @{
      @"data" : @"user@intercom.io",
      @"hmac" : @"<hmac_of_data>"
  }
 
  The dictionary may be passed to the setApiKey call to enable HMAC secuity
  
  [Intercom setApiKey:@"ios_sdk-2245d7aa263cb1def70bc95b66109bd18d6a9c35" forAppId:@"a2qhfto6" securityOptions:@{
      @"data" : @"user@intercom.io",
      @"hmac" : @"6536f5f13b7ea53bc5e0073e7945e89918131d89"
  }];
 
 @param apiKey The api key required to communicate with your Intercom application.
 @param appId The app id of your Intercom application.
 @param securityOptions A dictionary containing the security options (hmac and data) required to enable advanced security mode
 @since Available since version 1.0
 */
+ (void)setApiKey:(NSString *)apiKey forAppId:(NSString *)appId securityOptions:(NSDictionary*) securityOptions;

//=========================================================================================================
/** @name Presenting incoming notifications. */
//=========================================================================================================
/*!
 Depending on the layout of your app you may need to tweak the position of an incoming notification to not
 infringe other elements in your UI.
 
 @param presentationInset Set the edge insets if padding is required around other UI elements.
 
 @since 2.0
 */
+ (void)setPresentationInsetOverScreen:(UIEdgeInsets)presentationInset;

/*!
 Use this to contain an incoming notification view to a defined section of the window.
 
 @param presentationMode Select from any of the defined areas.
 
 @since 2.0
 */
+ (void)setPresentationMode:(ICMPresentationMode)presentationMode;

//=========================================================================================================
/** @name Messaging. */
//=========================================================================================================
/*!
 Get any new and unread messages for this user
 
 @since 2.0
 */
+ (void)checkForUnreadMessages;

+ (void)hideConversations:(BOOL)hide;

+ (void)presentMessageView;

+ (void)presentMessageViewWithCompletion:(ICMCompletion)completion;
    
//=========================================================================================================
/** @name Session control. */
//=========================================================================================================
/*!
 Begins a session for the specified user.  Either an email address or a unique identifier must be used.
 This should be the same as the one used for your web application.
 @note Sessions only need to begin on authentication success.  Intercom listens for `UIApplication` state
 changes so endSession doesn't need to be implemented in any additional locations other than a logout method.
 @param email The user's email address.
 @since 1.0
 */
+ (void)beginSessionForUserWithEmail:(NSString *)email completion:(ICMCompletion)completion;

/*!
 Begins a session for the specified user but using a unique identifier rather than an email address.
 @note Sessions only need to begin on authentication success.  Intercom listens for `UIApplication` state
 changes so endSession doesn't need to be implemented in any additional locations other than a logout method.
 @param userId A unique identifier representing the user..
 @since 1.0
 */
+ (void)beginSessionForUserWithUserId:(NSString *)userId completion:(ICMCompletion)completion;

/*!
 Ends a session for a user and deletes access tokens from the SDK instance. Typically used while logging a user out.
 @note Only implement endSession when logging a user out of your application.  You will not need to implement it
 anywhere else as Intercom listens for changes in `UIApplication` state and calculates sessions based on those actions.
 @since 1.0
 */
+ (void)endSession;

//=========================================================================================================
/** @name Update a user. */
//=========================================================================================================
/*!
 Updating attributes allows for the submission of multiple attributes with custom values. 
 Attributes such as the user email can be updated by calling
 
    [Intercom updateUserWithAttributes:@{@"email" : @"admin@intercom.io"}];
 
 Custom user attributes can be created and modifyed by passing a custom_attributes dictionary
 
    [Intercom updateUserWithAttributes:@{
        @"custom_attributes": @{
            @"paid_subscriber" : @YES,
            @"monthly_spend": @155.5,
            @"team_mates": @3
        }
    }];
 
 You can also set company data via this call by submitting an attribute dictionary like
 
    [Intercom updateUserWithAttributes:@{
        @"companies": @[ @{
            @"name" : @"My Company", 
            @"id" : @"abcd1234" 
        } 
    ]}];

 id is a required field for adding or modifying a company.
 
 @param attributes This is a dictionary containing key/value pairs for multiple attributes.
 @warning Attributes may be either a `string`, `integer`, `double`, `unix timestamp` or `bool`.
 @since Available since version 1.0
 
 */
+ (void)updateUserWithAttributes:(NSDictionary *)attributes;

//=========================================================================================================
/** @name Events. */
//=========================================================================================================
/*!
 Events are how you can submit user activity to Intercom. Once you’re sending Intercom event data, you can 
 filter your user base with those events and create Auto Messages to send whenever an event occurs. Every 
 event is associated with an event name, the time it happened, the user that caused the event, and optionally 
 some extra metadata. Events record the count, first and last occurrence of an event.
 
 Events are different to Custom Attributes in that events are information on what Users did and when they 
 did it, whereas Custom Attributes represent the User’s current state as seen in their profile. For example, 
 the first time they subscribed to a paid plan, or the most recent time they changed their plan would be 
 represented by events, whereas a User Attribute would be used to record their current plan.
 
 Because Events are used for filtering and messaging, and event names are used directly in Intercom by 
 your App’s Admins we recommend sending high-level activity about your users that you would like to message 
 on, rather than raw clickstream or user interface actions. For example an order action is a good candidate 
 for an Event, versus all the clicks and actions that were taken to get to that point. We also recommmend sending 
 event names that combine a past tense verb and nouns, such as ‘created-project’.
 
 @param name The name of the event you wish to track.
 
 @since 2.0
 */
+ (void)logEventWithName:(NSString *)name;

/*!
        http://doc.intercom.io/api/#event-metadata-types
 */
+ (void)logEventWithName:(NSString *)name optionalMetaData:(NSDictionary *)metadata;

//=========================================================================================================
/** @name Push notifications. */
//=========================================================================================================
/*!
 If you use Remote (Push) Notifications in your app, you can enable notification handling for Intercom's SDK with this
 call. (Please note you still need to call [UIApplication sharedApplication] registerForRemoteNotificationTypes:).
 This should be placed in the iOS application delegate like so;

     - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
     {
         // Override point for customization after application launch
         ...
         [Intercom registerForRemoteNotifications];
         return YES;
     }
 @note You must have enabled and configured push notifications through the SDK Settings page of your app on the web.
 @since 2.0
*/
+ (void)registerForRemoteNotifications;

//=========================================================================================================
/** @name Set the performance mode. */
//=========================================================================================================
/*!
 Flag Intercom to remove elements that may cause performance impacts
 
 @since 2.0
 */
+ (void)reducedGraphicsMode;

//=========================================================================================================
/** @name Set the base color. */
//=========================================================================================================
/*!
 Set the base color used to draw elements in the Intercom SDK
 This overrides the theme color set on intercom.io
 
 @param color The UIColor you wish to set as your base color.
 @since 2.0
 */
+ (void)setBaseColor:(UIColor *)color;

@end
