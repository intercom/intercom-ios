//
//  ICMRecentConversationsViewController.h
//  IntercomSDK-Dynamic
//
//  Created by Brian Boyle on 11/09/2021.
//  Copyright © 2021 Intercom. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ICMRecentConversationsViewControllerDelegate <NSObject>
- (void)reloadConversationHistoryCard;
- (void)navigateToViewController:(UIViewController *)viewController NS_SWIFT_NAME(navigate(toViewController:));
@end

@interface ICMRecentConversationsViewController : UIViewController
@property (nonatomic, weak) id<ICMRecentConversationsViewControllerDelegate> delegate;
- (void)reloadTableView;
@end

NS_ASSUME_NONNULL_END
