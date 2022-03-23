//
// Created by Karim Frenn on 08/03/2017.
// Copyright (c) 2017 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ICMTeammatePresenceView : UIView

@property (nonatomic, assign, getter=isActive) BOOL active;
@property (nonatomic, copy) UIColor *borderColor;

- (instancetype)initWithDiameter:(CGFloat)diameter;
- (void)setActive:(BOOL)active;

@end
