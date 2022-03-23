//
//  ICMDataManager.h
//  IntercomSDK
//
//  Created by Dale Cantwell on 28/04/2014.
//  Copyright (c) 2014 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ICMUnreadManager.h"
#import "ICMDataManagerProtocol.h"

@class ICMConversation;

@interface ICMDataManager : NSObject <ICMDataManagerProtocol>
@property (nonatomic, readonly) NSMutableArray<ICMConversation *> *conversations;
@property (nonatomic, strong) NSString *conversationToMark;
@property (nonatomic, strong) ICMUnreadManager *unreadManager;
@property (nonatomic, strong) ICMConversation *lastViewedConversation;
@property (nonatomic, assign) BOOL morePagesAvailable;
@property (nonatomic, assign) BOOL hasReceivedConversationsResponse;

+ (instancetype)sharedManager;
- (void)updateConversationsBefore:(NSDate *)before success:(void (^)(NSArray <ICMConversation *> *conversations, BOOL newElementsAdded))success failure:(void (^)(NSError *error))failure;
- (void)updateConversationsWithSuccess:(void (^)(NSArray <ICMConversation *> *conversations))success failure:(void (^)(NSError *error))failure;
- (void)updateWithConversation:(ICMConversation *)conversation;
- (void)getUnreadConversationsIfNeeded;
- (NSArray<ICMConversation *> *)getRecentConversations;
- (NSArray<ICMConversation *> *)getPreviousConversations;
- (void)clearConversations;
- (BOOL)hasRecentConversations;
- (BOOL)hasPreviousConversations;
- (NSInteger)recentConversationCount;
- (BOOL)hasConversations;
- (BOOL)hasOpenInboundConversation;

@end
