//
//  ICMButton.h
//  IntercomSDK
//
//  Created by Brian Boyle on 03/07/2019.
//  Copyright © 2019 Intercom. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, ICMButtonStyle) {
    ICMButtonStyleFilled,
    ICMButtonStyleColorFade,
};

@interface ICMButton : UIButton

@property (nonatomic, assign) CGFloat cornerRadius;

/**
 * Create a standard Intercom button. This button will adopt the apps primary colour.
 *
 * @param title The button title.
 * @param style The button style.
 * @return A new Intercom button instance.
*/
- (instancetype)initWithTitle:(NSString *)title style:(ICMButtonStyle)style;

/**
 * Create a standard Intercom button. This button will adopt colors derived from `backgroundColor`.
 *
 * @param title The button title.
 * @param style The button style.
 * @param backgroundColor Set the main color of the button.
 * @return A new Intercom button instance.
*/
- (instancetype)initWithTitle:(NSString *)title style:(ICMButtonStyle)style backgroundColor:(UIColor *)backgroundColor;

/// Computes `text` and `border` color from the backgroundColor and applies all 3 colors to the button.
/// @param backgroundColor Set the main color of the button.
- (void)configureForFilledStyleBackgroundColor:(UIColor *)backgroundColor;

@end

NS_ASSUME_NONNULL_END
