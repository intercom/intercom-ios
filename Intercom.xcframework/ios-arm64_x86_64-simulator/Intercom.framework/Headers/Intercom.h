//
//  Intercom.h
//  Intercom for iOS
//
//  Created by Intercom on 8/01/2015.
//  Copyright (c) 2014 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>
#import <Intercom/ICMUserAttributes.h>
#import <Intercom/ICMCompany.h>
#import <Intercom/ICMHelpCenterCollection.h>
#import <Intercom/ICMHelpCenterCollectionContent.h>
#import <Intercom/ICMHelpCenterArticleSearchResult.h>
#import <Intercom/ICMHelpCenterSection.h>
#import <Intercom/ICMHelpCenterDataError.h>
#import <Intercom/ICMHelpCenterArticle.h>
#import <Intercom/ICMHelpCenterArticleAuthor.h>
#import <Intercom/IntercomContent.h>
/**
 A enum of Intercom Spaces.
 
 Use along with ``Intercom/presentIntercom:`` to specify the Intercom Space you want to present.
 */
typedef NS_ENUM(NSInteger, Space) {
    home,
    helpCenter,
    messages,
    tickets
};

NS_ASSUME_NONNULL_BEGIN

@interface Intercom : NSObject


#pragma mark - Intercom Initialisation


/**
 Initialize Intercom with your iOS API key and App ID.  This will allow your app to connect with Intercom.
 This is best done in the application delegate's didFinishLaunchingWithOptions: method.

 - Parameters:
    - apiKey: The iOS API key found on the API Key settings page.
    - appId: The App ID of your Intercom app.
 */
+ (void)setApiKey:(NSString *)apiKey forAppId:(NSString *)appId;

/**
 Set `userHash` string if you are using Identity Verification for your Intercom workspace.
 - Note: This should be called before any user login takes place.
 
 Identity Verification helps to make sure that conversations between you and your users are kept private, and that one
 user can't impersonate another. If Identity Verification is enabled for your app, Intercom for iOS will sign all requests
 going to the Intercom servers with tokens. It requires your mobile application to have its own server which authenticates the app's users,
 and which can store a secret.
 
 @see More information on Identity Verification can be found {[here](https://developers.intercom.com/docs/ios-identity-verification)
 
 - Parameters:
    - userHash: A HMAC digest of the user ID or email.
 */
+ (void)setUserHash:(NSString *)userHash;


#pragma mark - User Login

/**
 Login a unidentified user.
 This is a user that doesn't have any identifiable information such as a `userId` or `email`.
 
 - Note: You must call one of the user login methods in order to start communicating with Intercom.
 
 - Parameters:
    - success: A nullable success callback with no parameters.
    - failure: A failure callback with an error parameter.
 */
+ (void)loginUnidentifiedUserWithSuccess:(void(^ __nullable)(void))success failure:(void(^ __nullable)(NSError *_Nonnull error))failure NS_REFINED_FOR_SWIFT;

/**
 Login a user with identifiable information.
 Valid identifiers are `userId` and `email` which must be set in the ``ICMUserAttributes`` object.
 
 - Parameters:
    - userAttributes: An ``ICMUserAttributes`` object. Either or both `email` and `userId` properties must be populated.
    - success: A nullable success callback with no parameters.
    - failure: A failure callback with an error parameter.
 */
+ (void)loginUserWithUserAttributes:(ICMUserAttributes *)userAttributes success:(void(^ __nullable)(void))success failure:(void(^ __nullable)(NSError *_Nonnull error))failure NS_REFINED_FOR_SWIFT;

/**
 Log a user out of their Intercom session.
 This will dismiss any Intercom UI and clear Intercom's local cache.
 */
+ (void)logout;

/**
 Update a user in Intercom with data specified in ``UserAttributes``.
 Full details of the data data attributes that can be stored on a user can be found in  ``UserAttributes``.
 
 - Parameters:
    - userAttributes: The attributes to update the user with.
    - success: A nullable success callback with no parameters.
    - failure: A failure callback with an error parameter.
 */
+ (void)updateUser:(ICMUserAttributes *)userAttributes success:(void(^ __nullable)(void))success failure:(void(^ __nullable)(NSError *_Nonnull error))failure NS_REFINED_FOR_SWIFT;


#pragma mark - Log Event

/**
 Log an event with a given name.
 You can log events in Intercom based on user actions in your app.
 Details about Events [here](https://developers.intercom.com/reference/#events )
 
 - Parameters:
    - name: The name of the event that it is going to be logged.
 */
+ (void)logEventWithName:(NSString *)name;

/**
 Log an event with a given name and metaData.
 You can log events in Intercom based on user actions in your app.
 Details about Events [here](https://developers.intercom.com/reference/#events )
 
 - Parameters:
    - name: The name of the event that it is going to be logged
    - metaData: Metadata Objects support a few simple types that Intercom can present on your behalf. See [Intercom API docs](https://developers.intercom.com/intercom-api-reference/reference/event-model)
 */
+ (void)logEventWithName:(NSString *)name metaData:(NSDictionary *)metaData;


#pragma mark - Present Intercom UI

/**
 Present Intercom in your app.
 
 This opens Intercom and displays the ``home`` Space.
 */
+ (void)presentIntercom;

/**
 Present a specific Intercom ``Space``.
 
 This opens Intercom and displays the ``Space`` specified.
 
 - Parameters:
    - space: The enum identifed for the ``Space`` to be presented.
 */
+ (void)presentIntercom:(Space)space;


/**
 Present Intercom content.
 
 - Parameters:
    - content: An ``IntercomContent`` object.
 */
+ (void)presentContent:(IntercomContent *)content NS_REFINED_FOR_SWIFT;

/**
 Present the message composer.
 
 - Parameters:
    - initialMessage: An optional message that is used to pre-populate the composer with some text.
 */
+ (void)presentMessageComposer:(nullable NSString *)initialMessage;


#pragma mark - Help Center Data API

/**
 Fetch all Help Center collections.

 - Parameters:
    - completion: A completion callback with two parameters: an array of collections or an error.
 */
+ (void)fetchHelpCenterCollectionsWithCompletion:(void (^)(NSArray<ICMHelpCenterCollection *> *_Nullable collections, NSError *_Nullable error))completion NS_REFINED_FOR_SWIFT;

/**
 Fetch the contents of a Help Center collection.
 
 - Parameters:
    - collectionId: The ID of the Help Center collection.
    - completion: A completion callback with two parameters: a collection content object or an error.
 */
+ (void)fetchHelpCenterCollection:(nonnull NSString *)collectionId
                   withCompletion:(void (^)(ICMHelpCenterCollectionContent *_Nullable collectionContent, NSError *_Nullable error))completion NS_REFINED_FOR_SWIFT;

/**
 Search the Help Center.
 
 - Parameters:
    - searchTerm: The search string.
    - completion: A completion callback with two parameters: an array of search results or an error.
 */
+ (void)searchHelpCenter:(nonnull NSString *)searchTerm
          withCompletion:(void (^)(NSArray<ICMHelpCenterArticleSearchResult *> *_Nullable articleSearchResults, NSError *_Nullable error))completion NS_REFINED_FOR_SWIFT;


#pragma mark - Push Notifications


/**
 Set the device token for push notifications. Once the device token is set, the methods for receiving push
 notifications are safely swizzled so ones sent from Intercom can be intercepted. When a push notification from
 Intercom is received, Intercom for iOS will automatically launch the message from the notification.
 
 - Parameters:
    - deviceToken: The device token provided in the `didRegisterForRemoteNotificationsWithDeviceToken` method.
    - failure: A failure callback with an error parameter.
 */
+ (void)setDeviceToken:(NSData *)deviceToken failure:(void(^ __nullable)(NSError * _Nullable error))failure;

/**
 Use this method to check if a push notification payload was sent by Intercom. Typically you should call
 ``handleIntercomPushNotification:`` after checking this.
 
 - Note: This is only needed if you have set `IntercomAutoIntegratePushNotifications` to NO in your Info.plist
 
 - Returns: YES if the payload is an Intercom push notification, NO otherwise.
 */
+ (BOOL)isIntercomPushNotification:(NSDictionary *)userInfo;

/**
 Use this method to handle a push notification payload sent by Intercom. You should first check if this
 notification was sent by Intercom with ``isIntercomPushNotification:``.
 
 - Note: This is only needed if you have set `IntercomAutoIntegratePushNotifications` to NO in your Info.plist
 
 - Parameters:
    - userInfo: The push notification payload.
 */
+ (void)handleIntercomPushNotification:(NSDictionary *)userInfo;

/**
 Handle a rich push notification payload sent by Intercom in your Notification Service Extension. You should first check if this
 notification was sent by Intercom with ``isIntercomPushNotification:``. This method downloads any media specified in the payload and
 attaches it to the notification content.
 
 - Note: This is only needed if you have set `IntercomAutoIntegratePushNotifications` to NO in your Notification Service Extension's `Info.plist`.
 
 - Parameters:
    - notificationContent: The content of the notification request received by your Notification Service Extensions's principal class.
    - contentHandler: The `contentHandler` block that is passed into ``didReceiveNotificationRequest:withContentHandler:``.
 */
+ (void)handleIntercomRichPushNotificationContent:(UNNotificationContent *)notificationContent withContentHandler:(void (^)(UNNotificationContent * _Nonnull))contentHandler;


#pragma mark - Intercom UI Visibility

/**
 Set a fixed bottom padding for in app messages and the Intercom Launcher.
 
 - Parameters:
    - bottomPadding: The size of the bottom padding in points.
 */
+ (void)setBottomPadding:(CGFloat)bottomPadding;

/**
 Show or hide the Intercom InApp Messages in your app.
 
 - Note: All InApp Messages are visible by default.
 
 - Parameters:
    - visible: A boolean indicating if the InApps should be visible.
 */
+ (void)setInAppMessagesVisible:(BOOL)visible;

/**
 Show or hide the Intercom Launcher in your app.
 
 - Note: The Launcher is hidden by default.
 
 - Parameters:
    - visible: A boolean indicating if the Intercom Launcher should be visible..
 */
+ (void)setLauncherVisible:(BOOL)visible;

/**
 Hide all Intercom windows that are currently displayed.
 This will hide the Messenger, Help Center, Articles, and in-product messages (eg. Mobile Carousels, chats, and posts).
 */
+ (void)hideIntercom;


#pragma mark - Unread Conversation Count

/**
 Fetch the current number of unread conversations for the logged in User.
 This is useful if you want to display a badge counter on the button where you launch Intercom.
 
 - Returns: The number of unread conversations.
 */
+ (NSUInteger)unreadConversationCount;

/**
 This notification is fired when the number of unread conversations changes.
 */
UIKIT_EXTERN NSString *const IntercomUnreadConversationCountDidChangeNotification;


#pragma mark - Logging

/**
 Enable `DEBUG` logging for Intercom.
 
 - Note: it is recommended to use it only while debugging
 */
+ (void)enableLogging;

/**
 Change the Status Bar's style or visibility while an Intercom notification is on screen.
 Call this method so that Intercom's window can reflect your app's status bar accordingly.
 */
+ (void)setNeedsStatusBarAppearanceUpdate;


#pragma mark - Intercom Notifications

/**
 Notifications fired when any Intercom UI is displayed (Messenger, Help Center, Carousels, Surveys)
 */
UIKIT_EXTERN NSString *const IntercomWindowWillShowNotification;
UIKIT_EXTERN NSString *const IntercomWindowDidShowNotification;
UIKIT_EXTERN NSString *const IntercomWindowWillHideNotification;
UIKIT_EXTERN NSString *const IntercomWindowDidHideNotification;

/**
 Notification fired when a new conversation is started.
 */
UIKIT_EXTERN NSString *const IntercomDidStartNewConversationNotification;

@end


NS_ASSUME_NONNULL_END
