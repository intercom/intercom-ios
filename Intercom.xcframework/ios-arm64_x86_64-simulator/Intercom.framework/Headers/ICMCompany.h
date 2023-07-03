//
//  ICMCompany.h
//
//  Created by Intercom on 17/01/2017.
//  Copyright (c) 2017 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * The ICMCompany object is used for adding companies to users in Intercom.
 * All of the default attributes you can modify are available as properties on ICMCompany.
 * This is an example of how to create an ICMCompany object to update default attributes.
 *
 *     ICMCompany *company = [ICMCompany new];
 *     company.companyId = @"12345";
 *     company.name = @"TestCorp";
 *
 * You can also add custom attributes to your company.
 *
 *     ICMCompany *company = [ICMCompany new];
 *     company.companyId = @"12345";
 *     company.name = @"TestCorp";
 *     company.customAttributes = @{@"employee_count" : @200};
 *
 */
@interface ICMCompany : NSObject

/**
 The ID of the company.
 @note This property is required
 */
@property (nonatomic, copy, nullable) NSString *companyId;

/**
 The name of the company.
 */
@property (nonatomic, copy, nullable) NSString *name;

/**
 The created at date for this company.
 */
@property (nonatomic, strong, nullable) NSDate *createdAt;

/**
 The monthly spend of the company.
 */
@property (nonatomic, strong, nullable) NSNumber *monthlySpend;

/**
 The plan of the company.
 */
@property (nonatomic, copy, nullable) NSString *plan;

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
 A dictionary representation for the company.
 */
- (nonnull NSDictionary<NSString *, id> *)attributes;

@end
