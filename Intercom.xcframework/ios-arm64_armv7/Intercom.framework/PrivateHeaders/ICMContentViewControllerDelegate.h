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
- (void)showLoadingViewWithImage:(UIImage *)image;
- (void)contentLoadingDidFail:(NSString *)errorMessage
             showActionButton:(BOOL)showActionButton
            actionButtonTitle:(NSString * _Nullable)actionButtonTitle;
- (void)configureCloseButtonForBackgroundColor:(UIColor *)backgroundColor;
- (void)closeContentModal;

@end

NS_ASSUME_NONNULL_END
