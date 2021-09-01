//
//  ICMActiveAdminsAvatarView.h
//  IntercomSDK-Dynamic
//
//  Created by Michael Isaakidis on 17/05/2018.
//  Copyright © 2018 Intercom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ICMActiveAdminsAvatarView : UIView

- (instancetype)initWithHeight:(CGFloat)avatarHeight
                       overlap:(CGFloat) avatarOverlap
                      maxCount:(NSInteger) maxAvatarCount;
- (NSUInteger)numberOfAvatarsDisplayed;
- (void)updateVisibleAvatars;

@end
