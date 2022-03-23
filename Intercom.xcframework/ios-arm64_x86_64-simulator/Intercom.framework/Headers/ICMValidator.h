//
//  ICMValidator.h
//  IntercomSDK
//
//  Created by Brian Boyle on 05/03/2019.
//  Copyright © 2019 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol ICMValidatorProtocol;

NS_ASSUME_NONNULL_BEGIN

@interface ICMValidator : NSObject

+ (BOOL)validateText:(nullable NSString *)text validators:(NSArray<id<ICMValidatorProtocol>> *)validators error:(NSError * __autoreleasing *)error;
+ (BOOL)validateArray:(nullable NSArray *)array validators:(NSArray<id<ICMValidatorProtocol>> *)validators error:(NSError * __autoreleasing *)error;
+ (BOOL)validateNumber:(nullable NSNumber *)number validators:(NSArray<id<ICMValidatorProtocol>> *)validators error:(NSError * __autoreleasing *)error;

@end

NS_ASSUME_NONNULL_END
