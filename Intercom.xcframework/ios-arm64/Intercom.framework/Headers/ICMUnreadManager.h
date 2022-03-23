//
//  ICMUnreadManager.h
//  IntercomSDK
//
//  Created by Gavin Rooney on 31/07/2014.
//  Copyright (c) 2014 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

static NSString *const kICMConversationMarkedAsReadNotification = @"ICMConversationMarkedAsReadNotification";

@interface ICMUnreadManager : NSObject

@property (nonatomic, strong) NSOrderedSet<NSString *> *unreadConversationIds;

- (void)conversationIdRead:(NSString *)conversationId;

@end

NS_ASSUME_NONNULL_END
