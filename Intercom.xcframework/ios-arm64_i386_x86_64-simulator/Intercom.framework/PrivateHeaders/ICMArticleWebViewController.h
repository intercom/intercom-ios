//
//  ICMArticleWebViewController.m
//  IntercomSDK-Dynamic
//
//  Created by Katherine Brennan on 02/10/2020.
//  Copyright © 2020 Intercom. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ICMContentViewController.h"

@protocol ICMContentViewControllerDelegate;

@interface ICMArticleWebViewController : UIViewController <ICMContentViewController>

@property (nonatomic, weak) id <ICMContentViewControllerDelegate> contentDelegate;
- (instancetype)initWithId:(NSString *)articleId;

@end
