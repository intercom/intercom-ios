//
//  ICMStartConversationButton.h
//  IntercomSDK
//
//  Created by Michael Isaakidis on 29/05/2018.
//  Copyright © 2018 Intercom. All rights reserved.
//

typedef NS_ENUM(NSUInteger, ICMStartConversationButtonStyle) {
    ICMStartConversationButtonStyleFilled,
    ICMStartConversationButtonStyleBordered,
};

static const CGFloat kStartConversationButtonHeight = 40.f;

@interface ICMStartConversationButton : UIButton

- (void)configureWithStyle:(ICMStartConversationButtonStyle)style;

@end
