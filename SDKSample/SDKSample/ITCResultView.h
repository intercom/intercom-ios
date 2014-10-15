//
//  ITCResultView.h
//  SDKSample
//
//  Created by Roland Gröpmair on 09/10/2014.
//  Copyright (c) 2014 Intercom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ITCResultView : UIView

+ (void)presentError:(NSError *)error description:(NSString *)description;
+ (void)presentSuccessWithDescription:(NSString *)description;

@end
