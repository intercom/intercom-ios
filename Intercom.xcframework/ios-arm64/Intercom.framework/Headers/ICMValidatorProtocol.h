//
//  ICMValidatorProtocol.h
//  IntercomSDK
//
//  Created by Brian Boyle on 04/03/2019.
//  Copyright © 2019 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ICMValidatorProtocol <NSObject>

- (BOOL)validateText:(nullable NSString *)text error:(NSError * __autoreleasing *)error;
- (BOOL)validateArray:(nullable NSArray *)array error:(NSError * __autoreleasing *)error;
- (BOOL)validateNumber:(nullable NSNumber *)number error:(NSError * __autoreleasing *)error;

@end

NS_ASSUME_NONNULL_END
