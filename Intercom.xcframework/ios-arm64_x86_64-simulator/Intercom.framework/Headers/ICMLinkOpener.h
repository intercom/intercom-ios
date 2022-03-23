//
// Created by Ignacio Delgado on 18/11/2014.
// Copyright (c) 2014 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ICMLinkOpenerProtocol
+ (BOOL)isExternalLink:(NSURL *)url;
@end

@interface ICMLinkOpener : NSObject <ICMLinkOpenerProtocol>

+ (void)openLink:(NSURL *)url;
+ (BOOL)isCustomSchemeURL:(NSURL *)urlToCheck;
+ (BOOL)isUniversalLink:(NSURL *)urlToCheck;
+ (BOOL)isHelpCenterLink:(NSURL *)url;
+ (BOOL)isExternalLink:(NSURL *)url;

@end
