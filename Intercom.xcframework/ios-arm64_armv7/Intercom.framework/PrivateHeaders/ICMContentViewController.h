//
//  ICMContentViewController.h
//  IntercomSDK
//
//  Created by Michael McNamara on 05/10/2020.
//  Copyright © 2020 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ICMContentViewControllerDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@protocol ICMContentViewController <NSObject>

@property (nonatomic, weak) id <ICMContentViewControllerDelegate> contentDelegate;

@required
- (void)reload;

@optional
- (void)closeButtonTapped;
- (void)viewDidDismissBySwipe;

@end

NS_ASSUME_NONNULL_END
