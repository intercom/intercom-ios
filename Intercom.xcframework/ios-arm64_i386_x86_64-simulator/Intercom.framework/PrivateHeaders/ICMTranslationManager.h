//
// Created by Ignacio Delgado on 22/08/2014.
// Copyright (c) 2014 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ICMTranslationKeys.h"

@interface ICMTranslationManager : NSObject

+ (NSLocale *)translationLocale; 
+ (NSString *)translationForKey:(NSString *)key;
+ (NSString *)translationForKey:(NSString *)key params:(NSDictionary<NSString *, NSString *> *)params;
+ (NSArray *)supportedLocales;

@end
