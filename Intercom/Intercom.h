//
//  Intercom.h
//  Intercom
//
//  Copyright (c) 2013 Intercom, Inc. All rights reserved.
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

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/** This is the interface for the Intercom iOS SDK.  From here you can begin and end sessions, track, update or increment attributes 
 that you can use to create filters and segments out of on the web.

 @note This product is currently in beta as we add more features to it.
 */

@interface Intercom : NSObject

//=========================================================================================================
/** @name Connecting to Intercom. */
//=========================================================================================================
/*! 
 Prior to sending any data to Intercom, the SDK must be initialized with a valid `apiKey` and `appId`.  
 These can be found in the configuration section of your application's 
 settings page. 
 
 This should be placed in the iOS application delegate like so;
 
    - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:
                         (NSDictionary *)launchOptions
    {
        // Override point for customization after application launch
        [Intercom setApiKey:@"my_api_key" forAppId:@"my_app_id"];
        return YES;
    }
 
 @param apiKey The api key required to communicate with your Intercom application.
 @param appId The app id of your Intercom application.
 */

+ (void)setApiKey:(NSString *)apiKey forAppId:(NSString *)appId;

//=========================================================================================================
/** @name Session control. */
//=========================================================================================================
/*!
 Begins a session for the specified user.  Either an email address orICM a unique identifier must be used.  
 This should be the same as the one used for your web application.
 @note Sessions only need to begin on authentication success.  Intercom listens for `UIApplication` state 
 changes so endSession doesn't need to be implemented in any additional locations other than a logout method.
 @param email The user's email address.
 */
+ (void)beginSessionForUserWithEmail:(NSString *)email;

/*!
 Begins a session for the specified user but using a unique identifier rather than an email address.
 @note Sessions only need to begin on authentication success.  Intercom listens for `UIApplication` state
 changes so endSession doesn't need to be implemented in any additional locations other than a logout method.
 @param userId A unqiue identifier representing the user..
 */
+ (void)beginSessionForUserWithUserId:(NSString *)userId;

/*!
 Begins a session for the specified user with both an email address and a unique identifier.  Only use this
 method if both pieces of information are present.
 @note Sessions only need to begin on authentication success.  Intercom listens for `UIApplication` state
 changes so endSession doesn't need to be implemented in any additional locations other than a logout method.
 @param userId A unqiue identifier representing the user..
 @param email The user's email address.
 */
+ (void)beginSessionForUserWithUserId:(NSString *)userId andEmail:(NSString *)email;

/*!
 Ends a session for a user. Typically used while logged a user out. All other changes of application state
 are managed for you so there is no need to implement this in your application's delegate.
 @note Only implement endSession when logging a user out of your application.  You will not need to implement it
 anywhere else as Intercom listens for changes in UIApplication state and calculates sessions based on those actions.
 */
+ (void)endSession;

//=========================================================================================================
/** @name Working with attributes. */
//=========================================================================================================
/*!
 Incrementing an attribute will add a value of `1` to the key of your choice. 
 
 In the example below, the attribute `sent_support_request` is incremented by a value of `1` every time.
 
    [Intercom incrementAttribute:@"sent_support_request"];
 
 @param attribute The name for which the attribute will be recorded under.
 */
+ (void)incrementAttribute:(NSString *)attribute;

/*!
 Updating attributes allows for the submission of multiple attributes with custom values. Attribute values can 
 also be decremented by using a negative operator.

 For example, the following dictionary can be sent;

    [Intercom updateAttributes:@{ @"increments" : @{ @"made_in_app_purchase" : @1 }, @"last_purchase_date" : @12345678 }];
 
 Where `made_in_app_purchase` is incremented with a value of 1 and `last_purchase_date` is simply updated with
 the timestamp `12345678`. 
 
 @param attributes This is a dictionary containing key/value pairs for multiple attributes.
 @warning Attributes may be either a `string`, `integer`, `double`, `unix timestamp` or `bool`.
 @note Note that to set custom incremental values, the syntax is { @"increments" : @{ @"made_in_app_purchase" : @1 } }
 
 */
+ (void)updateAttributes:(NSDictionary *)attributes;

//=========================================================================================================
/** @name Updating a user's name. */
//=========================================================================================================
/*!
 Append the user's full name so that it appears under their profile in Intercom.
 @param fullName The user's name.
 */
+ (void)updateUserName:(NSString *)fullName;

//=========================================================================================================
/** @name Sending a new message to Intercom. */
//=========================================================================================================
/*!
 Enabling users send messages to Intercom from inside your app is easy. Simply include;
 
    [Intercom showMessageComposer];
 
 In a button's action method or upon selection of a tableViewCell or other element and the message composer will appear as a modal
 view controller on iPhone and a modal with formSheet style on iPad.
 
 @note The Intercom SDK requires that you have a rootViewController at the end of application launch in order to use messaging features.
 
 */
+ (void)showNewMessageComposer;

//=========================================================================================================
/** @name Troubleshooting a statusbar offset. */
//=========================================================================================================
/*!
 Depending on the composition of your rootViewController, sometimes in messages appear to be offset by 20 pixels, the height of the status bar.
 This is due to Apple's expectation of navigation controllers being used as top level contructs and not beind children of UIViewControllers.
 
 If messages being displayed in your apps appear 20 pixels out of place, call
 
    [Intercom requiresDisplayOffset:YES];

 and the SDK will force messages to draw 20 pixels higher.
 
 By default, this is set to NO.
 
 @note This bug has only been observed in iOS 6. In iOS 7 the display offset is ignored.
 
 */
+ (void)requiresDisplayOffset:(BOOL)offset;

@end