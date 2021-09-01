//
//  ICMErrorViewDelegate.h
//  IntercomSDK-Dynamic
//
//  Created by Brian Boyle on 29/03/2021.
//  Copyright © 2021 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ICMErrorViewDelegate <NSObject>

@optional
- (void) didSelectErrorAction;

@end

NS_ASSUME_NONNULL_END
