//
//  ICMUserAttributesValidation.h
//  Pods
//
//  Created by James Treanor on 17/02/2017.
//
//
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class ICMCompany;

@interface ICMUserAttributesValidation : NSObject

+ (BOOL)validateNonEmptyString:(NSString *)value forKey:(NSString *)key;
+ (BOOL)validateDate:(NSDate *)value forKey:(NSString *)key;
+ (BOOL)validateNumber:(NSNumber *)value forKey:(NSString *)key;
+ (BOOL)validateCompanies:(NSArray<ICMCompany *> *)companies forKey:(NSString *)key;
+ (BOOL)validateCustomAttributes:(NSDictionary<NSString *, id> *)customAttributes forKey:(NSString *)key;

+ (NSDictionary<NSString *, id> *)replaceNullAttributesAttributesWithNSNull:(NSDictionary<NSString *, id> *)customAttributes;

+ (NSString *)nullStringAttribute;
+ (NSNumber *)nullNumberAttribute;
+ (NSDate *)nullDateAttribute;

@end

NS_ASSUME_NONNULL_END
