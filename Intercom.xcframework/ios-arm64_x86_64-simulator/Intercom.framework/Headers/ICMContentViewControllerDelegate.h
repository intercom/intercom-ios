//
//  ICMContentViewControllerDelegate.h
//  IntercomSDK
//
//  Created by Michael McNamara on 30/03/2021.
//  Copyright © 2021 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ICMContentViewControllerDelegate <NSObject>

@required
- (void)contentDidLoadWithDismissEnabled:(BOOL)dismissEnabled;
- (void)contentDidLoadWithDismissEnabled:(BOOL)dismissEnabled
      swipeDismissalRequiresConfirmation:(BOOL)requiresConfirmation
                       didAttemptDismiss:(void (^_Nullable)(void))didAttemptDismissBlock;
- (void)showLoadingViewWithImage:(UIImage *)image;
- (void)contentLoadingDidFail:(NSString *)errorMessage
             showActionButton:(BOOL)showActionButton
            actionButtonTitle:(NSString * _Nullable)actionButtonTitle;
- (void)configureCloseButtonForBackgroundColor:(UIColor *)backgroundColor;
- (void)closeContentModal;
- (void)configureDismissEnabled:(BOOL)dismissEnabled;
- (void)configureDismissEnabled:(BOOL)dismissEnabled
swipeDismissalRequiresConfirmation:(BOOL)requiresConfirmation
              didAttemptDismiss:(void (^_Nullable)(void))didAttemptDismissBlock;

@end

NS_ASSUME_NONNULL_END
