//
//  Intercom.h
//  Intercom for iOS
//
//  Created by Intercom on 8/01/2015.
//  Copyright (c) 2014 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <Intercom/ICMUserAttributes.h>
#import <Intercom/ICMFormAttribute.h>
#import <Intercom/ICMUserAttributesValidation.h>
#import <Intercom/ICMCompany.h>
#import <Intercom/ICMHelpCenterCollection.h>
#import <Intercom/ICMHelpCenterSection.h>
#import <Intercom/ICMHelpCenterArticle.h>
#import <Intercom/ICMHelpCenterCollectionContent.h>
#import <Intercom/ICMHelpCenterArticleSearchResult.h>
#import <Intercom/ICMHelpCenterDataError.h>
#import <Intercom/ICMAssets.h>
#import <Intercom/ICMHTTPClientProtocol.h>
#import <Intercom/ICMDataManagerProtocol.h>
#import <Intercom/ICMHTTPClient.h>
#import <Intercom/ICMTranslationManager.h>
#import <Intercom/ICMHelpCenterTranslationManager.h>
#import <Intercom/ICMTranslationKeys.h>
#import <Intercom/ICMEngine.h>
#import <Intercom/ICMNavigationController.h>
#import <Intercom/ICMErrorViewController.h>
#import <Intercom/ICMLoadingViewController.h>
#import <Intercom/ICMNavigationBarCloseButton.h>
#import <Intercom/ICMErrorViewDelegate.h>
#import <Intercom/ICMColor.h>
#import <Intercom/ICMArticleWebViewController.h>
#import <Intercom/ICMContentViewControllerDelegate.h>
#import <Intercom/ICMContentViewController.h>
#import <Intercom/ICMUtils.h>
#import <Intercom/UIImage+ICMImageUtils.h>
#import <Intercom/ICMFeedbackGenerator.h>
#import <Intercom/ICMActiveAdminsAvatarView.h>
#import <Intercom/ICMStartConversationButton.h>
#import <Intercom/ICMConfig.h>
#import <Intercom/ICMSafeNetworkModel.h>
#import <Intercom/ICMPresentationManager.h>
#import <Intercom/ICMMetric.h>
#import <Intercom/ICMMetricEvent.h>
#import <Intercom/ICMDataManager.h>
#import <Intercom/ICMUnreadManager.h>
#import <Intercom/ICMTeamPresence.h>
#import <Intercom/ICMParticipant.h>
#import <Intercom/ICMAvatar.h>
#import <Intercom/ICMParticipatingAdmin.h>
#import <Intercom/ICMRecentConversationsViewController.h>
#import <Intercom/ICMMultipleAvatarView.h>
#import <Intercom/ICMAutoLayout.h>
#import <Intercom/ICMRootViewController.h>
#import <Intercom/ICMInAppsViewController.h>
#import <Intercom/ICMNavigationController.h>
#import <Intercom/ICMWindowProvider.h>
#import <Intercom/ICMWindow.h>
#import <Intercom/ICMBlockLoader.h>
#import <Intercom/ICMCarouselBlockAppearance.h>
#import <Intercom/ICMAdminBlockAppearance.h>
#import <Intercom/ICMSurveyStepBlockAppearance.h>
#import <Intercom/ICMSurveyQuestionBlockAppearance.h>
#import <Intercom/ICMBlockAppearance.h>
#import <Intercom/ICMButton.h>
#import <Intercom/ICMContentStackView.h>
#import <Intercom/ICMTimestampCalculator.h>
#import <Intercom/ICMInputViewProtocol.h>
#import <Intercom/ICMTextField.h>
#import <Intercom/ICMIntegerTextField.h>
#import <Intercom/ICMPickerTextField.h>
#import <Intercom/ICMEmailTextField.h>
#import <Intercom/ICMPhoneTextField.h>
#import <Intercom/ICMValidatorProtocol.h>
#import <Intercom/ICMEmptyInputValidator.h>
#import <Intercom/ICMValidator.h>
#import <Intercom/ICMCountLimitInputValidator.h>
#import <Intercom/ICMAvatarView.h>
#import <Intercom/ICMLinkOpener.h>
#import <Intercom/ITBBlockAppearance.h>
#import <Intercom/ITBLoadingView.h>
#import <Intercom/ITBImageLoader.h>
#import <Intercom/ITBBlock.h>
#import <Intercom/IntercomConversationCustomCell.h>

NS_ASSUME_NONNULL_BEGIN

@interface Intercom : NSObject

#pragma mark - Intercom Initialisation

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
 user can't impersonate another. If Identity Verification is enabled for your app, Intercom for iOS will sign all requests
 going to the Intercom servers with tokens. It requires your mobile application to have its own server which authenticates the app's users,
 and which can store a secret. More information on Identity Verification can be found [here](https://developers.intercom.com/docs/ios-identity-verification)

 
 @note This should be called before any user login takes place.
 @param userHash A HMAC digest of the user ID or email.
 */
+ (void)setUserHash:(NSString *)userHash;

#pragma mark - User Login

//=========================================================================================================
/*! @name Working with anonymous users */
//=========================================================================================================
/*!
 If you call loginUnidentifiedUserWithSuccess:failure:, all activity will be tracked anonymously. If you choose to
 subsequently identify that user, all that anonymous activity will be merged into the identified user. This means that
 you will no longer see the anonymous user in Intercom, but rather the identified one.
 
 We recommend this is called from within the application delegate's didFinishLaunchingWithOptions: method.
 @param success A nullable success callback with no parameters.
 @param failure A failure callback with an error parameter.
 @note You must call one of the user login methods in order to start communicating with Intercom.
 */
+ (void)loginUnidentifiedUserWithSuccess:(void(^ __nullable)(void))success failure:(void(^ __nullable)(NSError *_Nonnull error))failure NS_REFINED_FOR_SWIFT;

/*!
 If you call registerUnidentifiedUser, all activity will be tracked anonymously. If you choose to subsequently
 identify that user, all that anonymous activity will be merged into the identified user. This means that you
 will no longer see the anonymous user in Intercom, but rather the identified one.

 We recommend this is called from within the application delegate's didFinishLaunchingWithOptions: method.

 @note You must call one of the user login methods in order to start communicating with Intercom.
 */
+ (void)registerUnidentifiedUser __attribute((deprecated("'+[Intercom registerUnidentifiedUser]' is deprecated. 'Use +[Intercom loginUnidentifiedUserWithSuccess:failure:]' instead.")));

//=========================================================================================================
/*! @name Working with identified users */
//=========================================================================================================
/*!
 In order to keep track of a specific user, you must identify it with a unique user identity, an email
 address, or both. To provide these, you must first create a new `ICMUserAttributes` object and then populate
 the `email` and/or `userId` properties for that object. This is a userId, supplied by you (e.g. from an
 existing web service for your product) to represent your user in Intercom, once set it cannot be changed.
 
 As well as the `email` and `userId` fields, you can populate the other user attribute fields within
 `ICMUserAttributes` when you login as an identified user. By supplying information like this, Intercom
 provides richer user profiles for your users.

 If you are putting Intercom for iOS into an app that has persisted an authentication token or equivalent
 so your users don't have to log in repeatedly (like most apps) then we advise putting the user login
 call in the `didBecomeActive:` method in your application delegate. This won't have any negative impact if
 you also add it to your authentication success method elsewhere in your app.

 @param userAttributes An `ICMUserAttributes` object. Either or both `email` and `userId` properties must be populated.
 @param success A nullable success callback with no parameters.
 @param failure A failure callback with an error parameter.
 */
+ (void)loginUserWithUserAttributes:(ICMUserAttributes *)userAttributes success:(void(^ __nullable)(void))success failure:(void(^ __nullable)(NSError *_Nonnull error))failure NS_REFINED_FOR_SWIFT;

/*!
 Login as a user just with their userId and email.
 
 @param userId A unique identifier for your user.
 @param email Your user's email address.
 @note You must call one of the user registration methods in order to start communicating with Intercom.
 */
+ (void)registerUserWithUserId:(NSString *)userId email:(NSString *)email __attribute((deprecated("'+[Intercom registerUserWithUserId:email:]' is deprecated. 'Use +[Intercom loginUserWithUserAttributes:success:failure:]' instead.")));

/*!
 Login as a user just with their userId.
 @param userId A unique identifier for your user.
 @note You must call one of the user registration methods in order to start communicating with Intercom.
 */
+ (void)registerUserWithUserId:(NSString *)userId __attribute((deprecated("'+[Intercom registerUserWithUserId:]' is deprecated. 'Use +[Intercom loginUserWithUserAttributes:success:failure:]' instead.")));

/*!
 Login as a user with just their email address.

 @param email   Your user's email address.
 @note You must call one of the user registration methods in order to start communicating with Intercom.
 */
+ (void)registerUserWithEmail:(NSString *)email __attribute((deprecated("'+[Intercom registerUserWithEmail:]' is deprecated. 'Use +[Intercom loginUserWithUserAttributes:success:failure:]' instead.")));

//=========================================================================================================
/*! @name Logging the user out */
//=========================================================================================================
/*!
 logout is used to clear all local caches and user data Intercom has created. Logout will also close any active
 UI that is on screen. Use this at a time when you wish to log a user out of your app or change a user.
 Once called, Intercom for iOS will no longer communicate with Intercom until a further login is made.
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
 @param success A nullable success callback with no parameters.
 @param failure A failure callback with an error parameter.
 */
+ (void)updateUser:(ICMUserAttributes *)userAttributes success:(void(^ __nullable)(void))success failure:(void(^ __nullable)(NSError *_Nonnull error))failure NS_REFINED_FOR_SWIFT;

/*!
 You can send any data you like to Intercom. Typically our customers see a lot of value in sending data that
 relates to customer development, such as price plan, value of purchases, etc. Once these have been sent to
 Intercom you can then apply filters based on these attributes.
 
 Details on attributes available to update can be found in ICMUserAttributes.
 
 @param userAttributes The attributes to update the user with.
 */
+ (void)updateUser:(ICMUserAttributes *)userAttributes __attribute((deprecated("'+[Intercom updateUser:]' is deprecated. 'Use +[Intercom updateUser:success:failure:]' instead.")));

#pragma mark - Log Event

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

#pragma mark - Present Messenger

/*!
 Present the Intercom Messenger

 Opens the Intercom messenger automatically to the best place for your users.
 */
+ (void)presentMessenger;

/*!
  Present the message composer.
  @param initialMessage An optional message that is used to pre-populate the composer with some text.
 */
+ (void)presentMessageComposer:(nullable NSString *)initialMessage;

/*!
 Present the message composer.
 */
+ (void)presentMessageComposer __attribute((deprecated("'+[Intercom presentMessageComposer]' is deprecated. 'Use +[Intercom presentMessageComposer:initialMessage]' instead.")));

/*!
 Present the message composer with a message to pre-populate the composer.
 */
+ (void)presentMessageComposerWithInitialMessage:(NSString *)message __attribute((deprecated("'+[Intercom presentMessageComposerWithInitialMessage]' is deprecated. 'Use +[Intercom presentMessageComposer:initialMessage]' instead.")));

/*!
 Present the conversation list.
 */
+ (void)presentConversationList __attribute((deprecated("'+[Intercom presentConversationList]' is deprecated. 'Use +[Intercom presentMessenger]' instead.")));;

#pragma mark - Help Center UI

/*!
 Present the Help Center.
 */
+ (void)presentHelpCenter;

/*!
 Present the Help Center with specific collections only.
 - Note: If the requested collections cannot be found, the full Help Center will be shown instead.
 @param collectionIds The ID of the collections to be presented.
 */
+ (void)presentHelpCenterCollections:(nonnull NSArray<NSString *> *)collectionIds;

/*!
 Present an article.
 @param articleId The ID of the article to be presented.
 */
+ (void)presentArticle:(nonnull NSString *)articleId;

#pragma mark - Help Center Data API

/*!
 Fetch all Help Center collections.
 @param completion A completion callback with two parameters: an array of collections or an error.
 */
+ (void)fetchHelpCenterCollectionsWithCompletion:(void (^)(NSArray<ICMHelpCenterCollection *> *_Nullable collections, NSError *_Nullable error))completion NS_REFINED_FOR_SWIFT;

/*!
 Fetch the contents of a Help Center collection.
 @param collectionId The ID of the Help Center collection.
 @param completion A completion callback with two parameters: a collection content object or an error.
 */
+ (void)fetchHelpCenterCollection:(nonnull NSString *)collectionId
                   withCompletion:(void (^)(ICMHelpCenterCollectionContent *_Nullable collectionContent, NSError *_Nullable error))completion NS_REFINED_FOR_SWIFT;

/*!
 Search the Help Center.
 @param searchTerm The search string.
 @param completion A completion callback with two parameters: an array of search results or an error.
 */
+ (void)searchHelpCenter:(nonnull NSString *)searchTerm
                   withCompletion:(void (^)(NSArray<ICMHelpCenterArticleSearchResult *> *_Nullable articleSearchResults, NSError *_Nullable error))completion NS_REFINED_FOR_SWIFT;

#pragma mark - Mobile Carousels

/*!
 Present a Mobile Carousel.
 @param carouselId The ID of the Mobile Carousel to be presented.
 */
+ (void)presentCarousel:(nonnull NSString *)carouselId;

#pragma mark - Surveys

/*!
 Present a Survey.
 @param surveyId The ID of the Survey to be presented.
 */
+ (void)presentSurvey:(nonnull NSString *)surveyId;

#pragma mark - Push Notifications

//=========================================================================================================
/*! @name Working with push notifications */
//=========================================================================================================
/*!
 Set the device token for push notifications. Once the device token is set, the methods for receiving push
 notifications are safely swizzled so ones sent from Intercom can be intercepted. When a push notification from
 Intercom is received, Intercom for iOS will automatically launch the message from the notification.
 @param deviceToken The device token provided in the `didRegisterForRemoteNotificationsWithDeviceToken` method.
 @param failure A failure callback with an error parameter.
 */
+ (void)setDeviceToken:(NSData *)deviceToken failure:(void(^ __nullable)(NSError * _Nullable error))failure;

/*!
 Set the device token for push notifications. Once the device token is set, the methods for receiving push
 notifications are safely swizzled so ones sent from Intercom can be intercepted. When a push notification from
 Intercom is received, Intercom for iOS will automatically launch the message from the notification.

 @param deviceToken The device token provided in the `didRegisterForRemoteNotificationsWithDeviceToken` method.
 */
+ (void)setDeviceToken:(NSData *)deviceToken __attribute((deprecated("'+[Intercom setDeviceToken:]' is deprecated. 'Use +[Intercom setDeviceToken:failure:]' instead.")));

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

#pragma mark - Intercom UI Visibility

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
 Hide all Intercom windows that are currently displayed.
 This will hide the Messenger, Help Center, Articles, and in-product messages (eg. Mobile Carousels, chats, and posts).
 */
+ (void)hideIntercom;

#pragma mark - Unread Conversation Count

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

#pragma mark - Logging

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
 These are notifications thrown by Intercom for iOS when the Intercom window is displayed and hidden.
 These notifications are fired only when there is a change in the state
 of Intercom's UI: when a user receives a message for instance, willShow and didShow notifications will be
 fired accordingly when the Intercom Notification (chat head) is presented.

 Once the user taps on the chat head, the message is presented in your app. It will be presented covering
 the entire screen, but no notifications will be thrown here as Intercom has already been visible.

 In the case of a new conversation the notification `IntercomDidStartNewConversationNotification`, this
 notification is fired when a new conversation is started. This may be used to prompt users to enable push notifications.
 
 The Intercom Help Center notifications are fired when the Help Center is being displayed or hidden.
 These notifications can be used to take certain actions in your app before and after the Help Center is displayed to the user.
 */

UIKIT_EXTERN NSString *const IntercomWindowWillShowNotification;
UIKIT_EXTERN NSString *const IntercomWindowDidShowNotification;
UIKIT_EXTERN NSString *const IntercomWindowWillHideNotification;
UIKIT_EXTERN NSString *const IntercomWindowDidHideNotification;
UIKIT_EXTERN NSString *const IntercomDidStartNewConversationNotification;
UIKIT_EXTERN NSString *const IntercomHelpCenterWillShowNotification;
UIKIT_EXTERN NSString *const IntercomHelpCenterDidShowNotification;
UIKIT_EXTERN NSString *const IntercomHelpCenterWillHideNotification;
UIKIT_EXTERN NSString *const IntercomHelpCenterDidHideNotification;

@end

NS_ASSUME_NONNULL_END
