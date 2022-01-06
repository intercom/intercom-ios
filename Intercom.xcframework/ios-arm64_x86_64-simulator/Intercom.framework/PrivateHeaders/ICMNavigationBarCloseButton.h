//
//  ICMCloseBarButtonItem.h
//  IntercomSDK
//
//  Created by Michael Isaakidis on 28/06/2018.
//  Copyright © 2018 Intercom. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ICMNavigationBarCloseButtonStyle) {
    ICMNavigationBarCloseButtonStyleDefault,
    ICMNavigationBarCloseButtonStyleLight,
    ICMNavigationBarCloseButtonStyleDark,
    ICMNavigationBarCloseButtonStyleText
};

extern const CGFloat kICMContentHolderDismissButtonBackgroundAlpha; 

@interface ICMNavigationBarCloseButton : UIButton

@property (nonatomic, assign) CGFloat backgroundViewAlpha;
@property (nonatomic) ICMNavigationBarCloseButtonStyle style;
- (instancetype)initWithFrame:(CGRect)frame style:(ICMNavigationBarCloseButtonStyle)style;

@end
