//
// Created by Roland Gropmair on 25/04/2014.
// Copyright (c) 2014 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <Intercom/ICMTeammatePresenceView.h>

@interface ICMAvatarView : UIView

- (instancetype)initWithDiameter:(CGFloat)diameter showTeammatePresence:(BOOL)showTeammatePresence;

@property (nonatomic, assign, readonly) CGFloat diameter;
@property (nonatomic, strong) UIColor *borderColor;
@property (nonatomic, assign) CGFloat borderWidth;
@property (nonatomic, strong) ICMTeammatePresenceView *teammatePresenceView;

- (void)loadAvatarWithURLString:(NSString *)urlString userName:(NSString *)userName;
- (void)cancelImageLoad;
- (NSString *)firstInitialOfName:(NSString *)fullName;
- (void)hideUserPresenceView;
- (void)setTeamPresenceBorderColor:(UIColor *)color;

@end
