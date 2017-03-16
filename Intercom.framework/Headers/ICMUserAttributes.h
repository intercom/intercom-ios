//
//  ICMUserAttributes.h
//
//  Created by Intercom on 17/01/2017.
//  Copyright (c) 2017 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ICMCompany.h"

/**
 The ICMUserAttributes object is used for updating a user in Intercom.
 All of the default attributes you can modify are available as properties on ICMUserAttributes.
 This is an example of how to create an ICMUserAttributes object to update default attributes
 
     ICMUserAttributes *userAttributes = [ICMUserAttributes new];
     userAttributes.userId = @"12345";
     userAttributes.email = @"test@email.com";
     userAttributes.name = @"Andy";
 
 You can also add custom attributes to your user:
 
     ICMUserAttributes *userAttributes = [ICMUserAttributes new];
     userAttributes.userId = @"12345";
     userAttributes.email = @"test@email.com";
     userAttributes.customAttributes = @{@"items_in_cart" : @8};
*/
@interface ICMUserAttributes : NSObject

/**
 The email for this user.
 */
@property (nonatomic, copy, nullable) NSString *email;

/**
 The user ID for this user.
 */
@property (nonatomic, copy, nullable) NSString *userId;

/**
 The name of this user.
 */
@property (nonatomic, copy, nullable) NSString *name;

/**
 The phone number of this user.
 */
@property (nonatomic, copy, nullable) NSString *phone;

/**
 The language override code for this user.
 
 @note languageOverride must be a valid language code. For more information see [here](https://docs.intercom.com/configure-intercom-for-your-product-or-site/customize-the-intercom-messenger/localize-intercom-to-work-with-multiple-languages ).
 */
@property (nonatomic, copy, nullable) NSString *languageOverride;

/**
 The signed up date for this user.
 */
@property (nonatomic, strong, nullable) NSDate *signedUpAt;

/**
 A boolean indicating if the user has unsubscribed from emails.
 */
@property (nonatomic, assign) BOOL unsubscribedFromEmails;

/**
 The companies for this user.
 */
@property (nonatomic, strong, nullable) NSArray<ICMCompany *> *companies;

/**
 Custom attributes for this user.
 @note Each key must be an NSString and each value must be of type NSString, NSNumber or NSNull.
 */
@property (nonatomic, strong, nullable) NSDictionary<NSString *, id> *customAttributes;

/**
 Gives you a null value to apply to string attributes.
 
 @return the value to set on string attributes which you wish to be null
 */
+ (nonnull NSString *)nullStringAttribute;

/**
 Gives you a null value to apply to number attributes.
 
 @return the value to set on number attributes which you wish to be null
 */
+ (nonnull NSNumber *)nullNumberAttribute;

/**
 Gives you a null value to apply to date attributes.
 
 @return the value to set on date attributes which you wish to be null
 */
+ (nonnull NSDate *)nullDateAttribute;

/**
 A dictionary representation for the user attributes.
 */
- (nonnull NSDictionary<NSString *, id> *)attributes;

@end
