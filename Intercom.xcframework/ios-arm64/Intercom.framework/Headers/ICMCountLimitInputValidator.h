//
//  ICMCountLimitInputValidator.h
//  IntercomSDK-Dynamic
//
//  Created by Michael McNamara on 18/11/2021.
//  Copyright © 2021 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Intercom/ICMValidatorProtocol.h>

NS_ASSUME_NONNULL_BEGIN

@interface ICMCountLimitInputValidator : NSObject <ICMValidatorProtocol>

- (instancetype)initWithMinimumCount:(NSInteger)minimumCount maximumCount:(NSInteger)maximumCount;

@end

NS_ASSUME_NONNULL_END
