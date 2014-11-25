//
//  Intercom.h
//  Intercom
//
//  Created by Intercom on 15/04/2014.
//  Copyright (c) 2014 Intercom. All rights reserved.
//

#if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_7_0
#error This version (2.x) of the Intercom iOS SDK supports iOS 7.0 upwards.
#endif

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//=========================================================================================================
/** @name Intercom Presentation Modes */
//=========================================================================================================
/*! Use these values to constrain an incoming notification view to a defined section of the window. */
typedef NS_ENUM(NSUInteger, ICMPresentationMode){
    /** Show the notification view in the bottom left area of the screen */
    ICMPresentationModeBottomLeft   = 0,
    /** Show the notification view in the bottom right area of the screen */
    ICMPresentationModeBottomRight  = 1,
    /** Show the notification view in the top left area of the screen */
    ICMPresentationModeTopLeft      = 2,
    /** Show the notification view in the top right area of the screen */
    ICMPresentationModeTopRight     = 3
};

//=========================================================================================================
/** @name Intercom SDK Error Domain and Error Codes */
//=========================================================================================================
/*! Use these values to identify errors returned by the Intercom iOS SDK */
UIKIT_EXTERN NSString *const IntercomSDKErrorDomain;

typedef NS_ENUM(NSInteger, ICMSDKError) {
    /** Mandatory parameter missing */
    ICMSDKErrorParameterMissing     = 1001,
    /** Credentials missing (no session begun for user) */
    ICMSDKErrorCredentialsMissing   = 1002,
    /** Error occured when trying to update user */
    ICMSDKErrorUpdateUserError      = 1003
};



//=========================================================================================================
/** @name Intercom Notifications */
//=========================================================================================================
/*!
 Notifications thrown by the SDK when the SDK window is displayed and hidden. These notifications are fired
 only when there is a change in the state of the SDK's UI: when a user receives a message for instance,
 willShow and didShow notifications will be fired accordingly when the Intercom Notification (chat head)
 is presented.
 
 Once the user taps on the chat head, the message is presented in your app. It will be presented covering
 the entire screen, but no notifications will be thrown here as the SDK has already been visible.
*/
UIKIT_EXTERN NSString *const IntercomWindowWillShowNotification;
UIKIT_EXTERN NSString *const IntercomWindowDidShowNotification;
UIKIT_EXTERN NSString *const IntercomWindowWillHideNotification;
UIKIT_EXTERN NSString *const IntercomWindowDidHideNotification;

typedef void(^ICMCompletion)(NSError *error);

//=========================================================================================================
/** @name Intercom session listener protocol. */
//=========================================================================================================
/*!
 Protocol that must be implemented by any object that will be passed as a session listener. It will get notified of
 changes in the session state of the SDK.

 @since 2.0.6
 */
@protocol IntercomSessionListener <NSObject>
- (void)intercomSessionStatusDidChange:(BOOL)isSessionOpen;
@end

/*! Intercom contains all the class methods to interact with Intercom. */
@interface Intercom : NSObject

//=========================================================================================================
/** @name Setup Intercom. */
//=========================================================================================================
/*!
 Prior to sending any data to Intercom, the SDK must be initialized with a valid `apiKey` and `appId`.
 These can be found in the configuration section of your application's settings page.
 
 This should be placed in the iOS application delegate like so:
 
     - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
     {
         // Override point for customization after application launch
         [Intercom setApiKey:@"my_api_key" forAppId:@"my_app_id"];
         return YES;
     }
 
 @param apiKey The API key required to communicate with your Intercom application.
 @param appId The App Id of your Intercom application.
 @since Available since version 1.0
*/
+ (void)setApiKey:(NSString *)apiKey forAppId:(NSString *)appId;

/*!
 Initialize the SDK with additional parameters for advanced security. The securityOptions dictionary
 should contain a user specific data string `data` and the HMAC digest `hmac` for that data string.
 For more details about [Secure Mode see here](<http://docs.intercom.io/install-on-your-mobile-product/secure-mode-ios-sdk>)
 
 
    [Intercom setApiKey:@"ios_sdk-2245d7aa263cb1def70bc95b66109bd18d6a9c35"
               forAppId:@"a2qhfto6" 
        securityOptions:@{
            @"data" : @"user@myapp.com",
            @"hmac" : @"6536f5f13b7ea53bc5e0073e7945e89918131d89"
    }];
 
 @param apiKey The API key required to communicate with your Intercom application.
 @param appId The App Id of your Intercom application.
 @param securityOptions A dictionary containing the security options (hmac and data) required to enable 
  advanced security mode
 @since Available since version 1.0
*/
+ (void)setApiKey:(NSString *)apiKey forAppId:(NSString *)appId securityOptions:(NSDictionary*) securityOptions;

//=========================================================================================================
/** @name Session control. */
//=========================================================================================================
/*!
 Begins a session for the specified user, identified by an email address.
 This should be the same as the one used for your web application.
 
 Intercom only tracks users who are logged in to your app. With this in mind, you should begin a session 
 for a user at the point in your app where authentication has been confirmed. Don't worry if Intercom hasn't 
 seen a specific user before - that user will be created automatically in Intercom when the session begins.
 
 @note Once a session has begun, Intercom persists the session information and will track `UIApplication`
 state changes for you, so you won't need to explicitly start and stop a session. 
 Start on login and end on logout - we'll do the rest.

 @note Calling `beginSessionForUser...` every time at app launch might interfere with processing
 push notifications in the SDK: `beginSessionForUser...` will wipe out the existing persisted
 session information but processing of push notifications will only work if there is a session.
 Therefore we recommend beginning a session only once - when the user authenticates.
 
 @discussion You should evaluate the error object in the completion block to handle errors as required:
 
    [Intercom beginSessionForUserWithEmail:self.dataSource.email
        completion:^(NSError *error) {
            // check the error object: only if we have no error, we have an active session and we can
            // allow other Intercom calls (such as updating a user)
            if (!error) {
                // handleBeginSessionOK
            } else {
                // handleBeginSessionWithError:error
            }
    }];
 
 @param email The user's email address.
 @param completion The completion block to be executed after the begin session operation is done.
 @since 2.0
*/
+ (void)beginSessionForUserWithEmail:(NSString *)email completion:(ICMCompletion)completion;

/*!
 Begins a session for the specified user but using a unique identifier rather than an email address.

 Intercom only tracks users who are logged in to your app. With this in mind, you should begin a session
 for a user at the point in your app where authentication has been confirmed. Don't worry if Intercom hasn't
 seen a specific user before - that user will be created automatically in Intercom when the session begins.

 @note Once a session has begun, Intercom persists the session information and will track `UIApplication`
 state changes for you, so you won't need to explicitly start and stop a session.
 Start on login and end on logout - we'll do the rest.
 
 @note Calling `beginSessionForUser...` every time at app launch might interfere with processing
 push notifications in the SDK: `beginSessionForUser...` will wipe out the existing persisted
 session information but processing of push notifications will only work if there is a session.
 Therefore we recommend beginning a session only once - when the user authenticates.
 
 @discussion You should evaluate the error object in the completion block to handle errors as required:
 
    [Intercom beginSessionForUserWithUserId:self.dataSource.userId
        completion:^(NSError *error) {
            // check the error object: only if we have no error, we have an active session and we can
            // allow other Intercom calls (such as updating a user)
            if (!error) {
                // handleBeginSessionOK
            } else {
                // handleBeginSessionWithError:error
            }
    }];

 @param userId A unique identifier representing the user.
 @param completion The completion block to be executed after the begin session operation is done.
 @since 2.0
 */
+ (void)beginSessionForUserWithUserId:(NSString *)userId completion:(ICMCompletion)completion;

/*!
 Begins a session for an anonymous user.
 @warning This is an *experimental BETA feature* and not fully supported. Future work in Intercom will 
 help to support this.
 @note Creating a new session using either an email or user id automatically logs out the anonymous user.
 @param completion The completion block to be executed after the begin session operation is done.
 @since 2.0
 */
+ (void)beginSessionForAnonymousUserWithCompletion:(ICMCompletion)completion;

/*!
 Ends a session for a user and deletes access tokens from the SDK instance. You would typically use this
 method if a user is logging out of your app.
 @note Only implement endSession when logging a user out of your application. You will not need to
 implement it anywhere else, as Intercom listens for changes in `UIApplication` state and calculates
 sessions based on those actions.
 @since 1.0
 */
+ (void)endSession;

//=========================================================================================================
/** @name Update a user. */
//=========================================================================================================
/*!
 Update user attributes.
 
 Updating attributes allows for the submission of multiple attributes with custom values.
 A detailed list with the fields you can use to [update a user is available here](<http://doc.intercom.io/api/#create-or-update-user>)
 Attributes such as the user email can be updated by calling
 
    [Intercom updateUserWithAttributes:@{
        @"email" : @"admin@intercom.io"
    }];
 
 Multiple attributes can be changed at once:
 
    [Intercom updateUserWithAttributes:@{
        @"email" : @"admin@intercom.io",
        @"name" : @"Admin Name"
    }];
 
 Custom user attributes can be created and modified by passing a custom_attributes dictionary
 You do not have to create attributes in Intercom beforehand. If one hasn't been seen before, it will be 
 created for you automatically. 
 
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

 id is a required field for adding or modifying a company. A detailed description of the 
 [company model is available here](<http://doc.intercom.io/api/#companies>)
 

 @param attributes This is a dictionary containing key/value pairs for multiple attributes.
 @note Attributes may be either a `string`, `integer`, `double`, `unix timestamp` or `bool`.
 @since Available since version 1.0
 @deprecated in 2.0.5 - Use method 'updateUserWithAttributes:completion:' instead
 */
+ (void)updateUserWithAttributes:(NSDictionary *)attributes __attribute((deprecated("Use method 'updateUserWithAttributes:completion:' instead")));

/*!
 Update user attributes.
 
 Updating attributes allows for the submission of multiple attributes with custom values.
 A detailed list with the fields you can use to [update a user is available here](<http://doc.intercom.io/api/#create-or-update-user>)
 Attributes such as the user email can be updated by calling
 
 
    [Intercom updateUserWithAttributes:@{
        @"email" : @"admin@intercom.io"
    } completion:^(NSError *error) {
        // handleError:error
    }];
 
 Multiple attributes can be changed at once:
 
    [Intercom updateUserWithAttributes:@{
        @"email" : @"admin@intercom.io",
        @"name" : @"Admin Name"
    } completion:^(NSError *error) {
        // handleError:error
    }];
 
 Custom user attributes can be created and modified by passing a custom_attributes dictionary
 You do not have to create attributes in Intercom beforehand. If one hasn't been seen before, it will be
 created for you automatically.
 

    [Intercom updateUserWithAttributes:@{
        @"custom_attributes": @{
            @"paid_subscriber" : @YES,
            @"monthly_spend": @155.5,
            @"team_mates": @3
        }
     } completion:^(NSError *error) {
         // handleError:error
     }];
 
 You can also set company data via this call by submitting an attribute dictionary like
 
     [Intercom updateUserWithAttributes:@{
         @"companies": @[ @{
             @"name" : @"My Company",
             @"id" : @"abcd1234"
         }
     ]} completion:^(NSError *error) {
         // handleError:error
     }];
 
 id is a required field for adding or modifying a company. A detailed description of the
 [company model is available here](<http://doc.intercom.io/api/#companies>)

 @param attributes This is a dictionary containing key/value pairs for multiple attributes.
 @param completion The completion block to be executed after the update operation is done.
 @note Attributes may be either a `string`, `integer`, `double`, `unix timestamp` or `bool`.
 @since Available since version 2.0.5
 */
+ (void)updateUserWithAttributes:(NSDictionary *)attributes completion:(ICMCompletion)completion;

//=========================================================================================================
/** @name Log events. */
//=========================================================================================================
/*!
 Log an event with a given name.

 Events are how you can submit user activity to Intercom. Once you are sending Intercom event data, you can
 filter your user base with those events and create Auto Messages to send whenever an event occurs. Every
 event is associated with an event name, the time it happened, the user that caused the event, and
 optionally some extra metadata. Events record the count, first and last occurrence of an event.
 
 Events are different to Custom Attributes in that events are information on what Users did and when they
 did it, whereas Custom Attributes represent the User’s current state as seen in their profile. For example,
 the first time they subscribed to a paid plan, or the most recent time they changed their plan would be
 represented by events, whereas a User Attribute would be used to record their current plan.
 
 Because Events are used for filtering and messaging, and event names are used directly in Intercom by
 your App's Admins we recommend sending high-level activity about your users that you would like to message
 on, rather than raw clickstream or user interface actions. For example an order action is a good candidate
 for an Event, versus all the clicks and actions that were taken to get to that point. We also recommend
 sending event names that combine a past tense verb and nouns, such as ‘created-project’.

 @param name The name of the event that it is going to be logged.
 @since 2.0
 @deprecated in 2.0.5 - Use method 'logEventWithName:completion:' instead
 */
+ (void)logEventWithName:(NSString *)name __attribute((deprecated("Use method 'logEventWithName:completion:' instead")));

//=========================================================================================================
/** @name Log events. */
//=========================================================================================================
/*!
 Log an event with a given name. Because of the asynchronous nature of this method, there is a completion block where
 you can check if the event was logged correctly

 Events are how you can submit user activity to Intercom. Once you are sending Intercom event data, you can
 filter your user base with those events and create Auto Messages to send whenever an event occurs. Every
 event is associated with an event name, the time it happened, the user that caused the event, and
 optionally some extra metadata. Events record the count, first and last occurrence of an event.
 
 Events are different to Custom Attributes in that events are information on what Users did and when they
 did it, whereas Custom Attributes represent the User’s current state as seen in their profile. For example,
 the first time they subscribed to a paid plan, or the most recent time they changed their plan would be
 represented by events, whereas a User Attribute would be used to record their current plan.
 
 Because Events are used for filtering and messaging, and event names are used directly in Intercom by
 your App's Admins we recommend sending high-level activity about your users that you would like to message
 on, rather than raw clickstream or user interface actions. For example an order action is a good candidate
 for an Event, versus all the clicks and actions that were taken to get to that point. We also recommend
 sending event names that combine a past tense verb and nouns, such as ‘created-project’.
 
 @param name The name of the event that it is going to be logged.
 @param completion The completion block to be executed after the event is logged.
 @since 2.0.5
 */
+ (void)logEventWithName:(NSString *)name completion:(ICMCompletion)completion;

/*!
 Metadata Objects support a few simple types that Intercom can present on your behalf, see the 
 [Intercom API docs](<http://doc.intercom.io/api/#event-metadata-types>)
 
 @param name The name of the event you wish to track.
 @param metadata contains simple types to present to Intercom
 
    [Intercom logEventWithName:@"ordered_item"
        optionalMetaData:@{
            @"event_name" : @"ordered-item",
            @"created_at": @1389913941,
            @"metadata": @{
                @"order_date": @1392036272,
                @"stripe_invoice": @"inv_3434343434",
                @"order_number": @{
                    @"value": @"3434-3434",
                    @"url": @"https://example.org/orders/3434-3434"
                },
                @"price": @{
                    @"currency": @"usd",
                    @"amount": @2999
                }
            }
        }
        completion:^(NSError *error) {
            // handleError:error
    }];
 
 @param completion The completion block to be executed after the event is logged.
 @since 2.0
 */
+ (void)logEventWithName:(NSString *)name optionalMetaData:(NSDictionary *)metadata completion:(ICMCompletion)completion;

//=========================================================================================================
/** @name Present Conversation List or Message Composer. */
//=========================================================================================================
/*!
 Present the message composer or the conversation list.
 
 @param showConversationList set to `YES` in order to display the conversation list rather then the
 compose new message screen.
 
 @since 2.0
 */
+ (void)presentMessageViewAsConversationList:(BOOL)showConversationList;

//=========================================================================================================
/** @name Enable SDK Push notifications. */
//=========================================================================================================
/*!
 If you use Remote (Push) Notifications in your app, you can enable notification handling for Intercom's
 SDK with this call. 
 
 This should be placed in the iOS application delegate like so:

     - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
     {
         // Override point for customization after application launch
         ...
         [Intercom registerForRemoteNotifications];
         return YES;
     }

 Please note you still need to call `[UIApplication sharedApplication] registerForRemoteNotificationTypes:...`.
 Registering for remote notification types is handled differently in iOS 8 - here's a code snippet:
 
     - (void)applicationDidBecomeActive:(UIApplication *)application
     {
         [application setApplicationIconBadgeNumber:0];
         if ([application respondsToSelector:@selector(registerUserNotificationSettings:)]){ //iOS8
             [application registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:
                (UIRemoteNotificationTypeBadge |
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

 @note You must have enabled and configured push notifications through the SDK Settings page of your app on the web.
 @since 2.0
*/
+ (void)registerForRemoteNotifications;

//=========================================================================================================
/** @name Customize incoming notifications. */
//=========================================================================================================
/*!
 Depending on the layout of your app you may need to tweak the position of an incoming notification to not
 infringe other elements in your UI.
 
 @param presentationInset Set the edge insets if padding is required around other UI elements.
 
 @since 2.0
 */
+ (void)setPresentationInsetOverScreen:(UIEdgeInsets)presentationInset;

/*!
 Use this to constrain an incoming notification view to a defined section of the window.
 
 @param presentationMode Select from any of the defined ICMPresentationMode values.
 
 @since 2.0
 */
+ (void)setPresentationMode:(ICMPresentationMode)presentationMode;

//=========================================================================================================
/** @name Customize color. */
//=========================================================================================================
/*!
 Set the base color used to draw elements in the Intercom SDK
 This overrides the theme color set in the Settings page of your app on the web.
 
 @param color The UIColor you wish to set as your base color.
 @since 2.0
 */
+ (void)setBaseColor:(UIColor *)color;

//=========================================================================================================
/** @name Trigger Message Loading. */
//=========================================================================================================
/*!
 Get any new and unread messages for this user
 
 @note Once a session has been established, the Intercom SDK checks periodically for new and unread
 messages - you don't need to do anything. Call this method only if you want to trigger this process manually.
 @since 2.0
 */
+ (void)checkForUnreadMessages;

//=========================================================================================================
/** @name Hide notifications. */
//=========================================================================================================
/*!
 Used to hide the SDK conversations window.
 
 @since 2.0
 @param hide This is a bool that specifies if the SDK needs to hide conversations
 @deprecated in 2.0.5 - Use method 'hideNotifications:' instead
 */
+ (void)hideConversations:(BOOL)hide __attribute((deprecated("Use method 'hideNotifications:' instead")));

//=========================================================================================================
/** @name Hide notifications. */
//=========================================================================================================
/*!
 Used to hide the SDK notifications and prevent conversations from being automatically presented to users, but
 it won't close the SDK messages window if it is already open.
 
 @param hide This is a bool that specifies if the SDK needs to hide notifications
 @since 2.0.5
 */
+ (void)hideNotifications:(BOOL)hide;

//=========================================================================================================
/** @name Enable logging. */
//=========================================================================================================
/*!
 Enable logging for the Intercom SDK. By calling this method, Intercom will display debug information.
 @note it is recommended to use it only while debugging)

 @since 2.0
 */
+ (void)enableLogging;

//=========================================================================================================
/** @name Listen for session state changes. */
//=========================================================================================================
/*!
 By setting a session listener, you will be notified of changes in the session state of the SDK, so you 
 can update your UI according to these changes (e.g. if you have a button to open our message composer, 
 you could disable this button if there is no Intercom session)

 @param sessionListener Object that implements the IntercomSessionListener protocol
 @since 2.0.6
 */
+ (void)setSessionListener:(id<IntercomSessionListener>)sessionListener;

@end
