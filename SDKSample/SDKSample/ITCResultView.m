//
//  ITCResultView.m
//  SDKSample
//
//  Created by Roland Gröpmair on 09/10/2014.
//  Copyright (c) 2014 Intercom. All rights reserved.
//

#import "ITCResultView.h"

@interface ITCResultView ()
@end

@implementation ITCResultView

- (id)init {
    self = [super initWithFrame:CGRectZero];
    if (self) {
    }
    return self;
}

+ (void)presentDescription:(NSString *)description isError:(BOOL)isError {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 100)];
    label.text = description;
    label.numberOfLines = 5;
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = isError ? [UIColor whiteColor] : [UIColor darkGrayColor];
    label.backgroundColor = isError ? [[UIColor redColor] colorWithAlphaComponent:0.5f] : [[UIColor greenColor] colorWithAlphaComponent:0.9f];
    label.alpha = 0.f;
    label.layer.cornerRadius = 20;
    label.layer.masksToBounds = YES;
    [[[UIApplication sharedApplication] keyWindow] addSubview:label];
    CGPoint center = [[UIApplication sharedApplication] keyWindow].center;
    label.center = CGPointMake(center.x, center.y+100);
    
    [UIView animateWithDuration:0.5 animations:^{
        label.alpha = 1.f;
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [UIView animateWithDuration:0.5 animations:^{
                label.alpha = 0.f;
            } completion:^(BOOL finished) {
                [label removeFromSuperview];
            }];
        });
    }];
}

+ (void)presentError:(NSError *)error description:(NSString *)description {
    [self presentDescription:[NSString stringWithFormat:@"%@: failed with error=%@", description, error.localizedDescription] isError:YES];
}

+ (void)presentSuccessWithDescription:(NSString *)description {
    [self presentDescription:[NSString stringWithFormat:@"%@: OK", description] isError:NO];
}

@end
