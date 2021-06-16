//
// Created by Ignacio Delgado on 15/04/2014.
// Copyright (c) 2014 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ICMHTTPClientProtocol.h"

@interface ICMHTTPClient : NSObject <ICMHTTPClientProtocol>

#pragma mark - User Updates

+ (void)updateUserWithUserAttributes:(NSDictionary *)attributes
                          newSession:(BOOL)newSession
                  sentFromBackground:(BOOL)sentFromBackground
                     carouselVisible:(BOOL)carouselCurrentlyPresented
                             success:(ICMHTTPBaseSuccess)success
                               error:(ICMHTTPClientError)failure;


#pragma mark - Push Notification Tokens

+ (void)submitDeviceToken;
+ (void)deleteDeviceToken:(NSString *)deviceTokenString
          forUserIdentity:(ICMUserIdentity *)userIdentity
               completion:(ICMHTTPEmptyBlock)completion;


#pragma mark - Events

+ (void)logEventWithName:(NSString *)name
                metadata:(NSDictionary *)metadata
      sentFromBackground:(BOOL)sentFromBackground
         carouselVisible:(BOOL)carouselCurrentlyPresented
                 success:(ICMHTTPBaseSuccess)success
                   error:(ICMHTTPClientError)failure;


#pragma mark - Conversations

+ (void)markConversationAsRead:(NSString *)conversationId success:(ICMHTTPBaseSuccess)success error:(ICMHTTPClientError)failure;
+ (void)markConversationAsDismissed:(NSString *)conversationId success:(ICMHTTPEmptySuccess)success error:(ICMHTTPClientError)failure;
+ (void)recordInteractions:(NSString *)conversationId
              interactions:(NSArray<NSString *> *)interactions;
+ (void)unreadConversations:(NSInteger)pageSize success:(ICMHTTPBaseSuccess)success error:(ICMHTTPClientError)failure;
+ (void)conversationsBefore:(NSDate *)beforeTimestamp pageSize:(NSInteger)pageSize success:(ICMHTTPConversationsSuccess)success error:(ICMHTTPClientError)failure;

/// Create a new conversation.
/// @param blocks The blocks.
/// @param articleId If a conversation is started from an article, the articleId should be passed through. This allows teammates know what article a conversation was started from.
/// @param success Success completion block.
/// @param failure Failure completion block.
+ (void)createConversationWithBlocks:(NSArray<NSDictionary *> *)blocks
                           articleId:(NSString *)articleId
                             success:(ICMHTTPConversationSuccess)success
                               error:(ICMHTTPClientError)failure;
+ (void)replyToConversation:(NSString *)conversationId
                 withBlocks:(NSArray<NSDictionary *> *)blocks
                    success:(ICMHTTPReplyConversationSuccess)success
                      error:(ICMHTTPClientError)failure;

+ (void)reactToConversation:(NSString *)conversationId withReactionIndex:(NSUInteger)index;
+ (void)conversationDetail:(NSString *)conversationId success:(ICMHTTPConversationSuccess)success error:(ICMHTTPClientError)failure;


#pragma mark - Conversation Ratings

+ (void)rateConversation:(NSString *)conversationId withRatingIndex:(NSUInteger)ratingIndex;
+ (void)addConversationRatingRemarkForConversation:(NSString *)conversationId remark:(NSString *)remark;


#pragma mark - Articles

+ (void)article:(NSString *)articleId success:(ICMHTTPArticleSuccess)success error:(ICMHTTPClientError)failure;
+ (void)reactToArticle:(NSString *)articleId articleContentId:(NSString *)articleContentId withReactionIndex:(NSUInteger)index allowAutoResponses:(BOOL)allowAutoResponses;


#pragma mark - GIFs

+ (void)loadGIFs:(NSString *)searchQuery
         success:(ICMHTTPGIFSuccess)success
           error:(ICMHTTPClientError)failure;


#pragma mark - Metrics

+ (void)submitMetrics:(NSArray<NSDictionary<NSString *, id> *> *)metrics
           opsMetrics:(NSArray<NSDictionary<NSString *, id> *> *)opsMetrics
              success:(ICMHTTPEmptySuccess)success
                error:(ICMHTTPClientError)failure;


#pragma mark - Uploads

+ (void)createUploadWithUpload:(ITBUpload *)upload success:(ICMHTTPUploadCreateSuccess)success progress:(ICMHTTPClientProgress)progress error:(ICMHTTPClientError)failure;


#pragma mark - URL Tracker

+ (void)trackURL:(NSString *)url;


#pragma mark - Operator

+ (void)operatorConditionSatisfied:(NSString *)transitionId
             converstionId:(NSString *)conversationId
                     error:(ICMHTTPClientError)failure;


#pragma mark - Sheets

+ (void)fetchMessengerSheetData:(NSDictionary *)sheetParams success:(ICMHTTPSheetSuccess)success failure:(ICMHTTPClientError)failure;
+ (void)submitMessengerSheet:(NSDictionary *)sheetPayload uri:(NSString *)uri success:(ICMHTTPEmptyBlock)success failure:(ICMHTTPClientError)failure;


#pragma mark - Homescreen

+ (void)fetchHomescreenWithSuccess:(ICMHTTPHomescreenSuccess)success failure:(ICMHTTPClientError)failure;


#pragma mark - Quick Reply

+ (void)quickReplyToConversation:(NSString *)conversationId
         withPartId:(NSString *)quickReplyPartId
        withOptionUUID:(NSString *)uuid
           success:(ICMHTTPReplyConversationSuccess)success
             error:(ICMHTTPClientError)failure;


#pragma mark - Attribute Collector

+ (void)submitFormParams:(NSDictionary *)formParams
         forConversation:(NSString *)conversationId
                 success:(ICMHTTPSubmitFormSuccess)success
                   error:(ICMHTTPClientError)failure;


#pragma mark - Inbound Custom Bots

+ (void)triggerInboundBotWithOptionUUID:(NSString *)uuid
                                success:(ICMHTTPConversationSuccess)success
                                  error:(ICMHTTPClientError)failure;


#pragma mark - Stats System

+ (void)recordStatistic:(NSString *)statToRecord withInstanceId:(NSString *)instanceId statsMetadata:(NSDictionary *)statsMetadata success:(ICMHTTPBaseSuccess)success error:(ICMHTTPClientError)failure;


#pragma mark - Carousels

+ (void)getCarouselWithId:(NSString*)carouselId
                    success:(ICMHTTPCarouselSuccess)success
                      error:(ICMHTTPClientError)failure;

#pragma mark - Help Center

+ (void)getHelpCenterCollections:(ICMHTTPArraySuccess)success
                           error:(ICMHTTPClientError)failure;

+ (void)getHelpCenterCollection:(NSString*)collectionId
                        success:(ICMHTTPDictionarySuccess)success
                          error:(ICMHTTPClientError)failure;

+ (void)getHelpCenterSearchResults:(NSString*)searchText
                            success:(ICMHTTPArraySuccess)success
                              error:(ICMHTTPClientError)failure;

@end

