//
//  ITCResultView.m
//  SDKSample
//
//  Copyright 2014 Intercom
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

#import "ITCResultView.h"

@interface ITCResultView ()
@end

@implementation ITCResultView

#pragma mark - Public Methods

+ (void)showError:(NSError *)error description:(NSString *)description {
    if (error) {
        NSLog(@"%@ failed with error=%@", description, error.localizedDescription);
        [ITCResultView presentErrorString:error.localizedDescription description:description];
    } else {
        NSLog(@"%@ OK", description);
        [ITCResultView presentSuccessWithDescription:description];
    }
}

+ (void)showErrorString:(NSString *)errorString description:(NSString *)description {
    if (errorString && errorString.length>0) {
        NSLog(@"%@ failed with error=%@", description, errorString);
        [ITCResultView presentErrorString:errorString description:description];
    }
}

#pragma mark - Private Methods

+ (void)presentErrorString:(NSString *)error description:(NSString *)description {
    [self presentDescription:[NSString stringWithFormat:@"%@: failed with error=%@", description, error] isError:YES];
}

+ (void)presentSuccessWithDescription:(NSString *)description {
    [self presentDescription:[NSString stringWithFormat:@"%@: OK", description] isError:NO];
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
    [[[[UIApplication sharedApplication] delegate] window] addSubview:label];
    CGPoint center = [[UIApplication sharedApplication] keyWindow].center;
    label.center = CGPointMake(center.x, center.y+100);
    label.transform = [[[[[UIApplication sharedApplication] keyWindow] rootViewController] view] transform];    // so we proper rotation
    
    [UIView animateWithDuration:0.5f animations:^{
        label.alpha = 1.f;
        
    } completion:^(BOOL finished) {
        
        if (finished) {
            
            [UIView animateWithDuration:0.5f delay:2.f options:UIViewAnimationOptionBeginFromCurrentState animations:^{
                label.alpha = 0.f;
            } completion:^(BOOL finished2) {
                [label removeFromSuperview];
            }];
        }
        
    }];
}

@end
