//
//  ICMHTTPClientProtocol.h
//  IntercomSDK
//
//  Created by Michael McNamara on 14/04/2021.
//  Copyright © 2021 Intercom. All rights reserved.
//

#ifndef ICMHTTPClientProtocol_h
#define ICMHTTPClientProtocol_h

#import <Intercom/ICMEngine.h>

@class ITBUpload;
@class ICMConversationsResponse;
@class ICMConversation;
@class ICMConversationPart;
@class ICMArticle;
@class ICMGIFResponse;
@class ICMSheet;
@class ICMHomescreen;
@class ICMBaseResponse;
@class ICMCarousel;
@class ICMUserIdentity;
@class Survey;
@class ICMComposerSuggestions;

static const NSInteger kICMHTTPClientDefaultPageSize = 10;
static const NSInteger kNewContentEventTypeCarousel = 44;

NS_ASSUME_NONNULL_BEGIN

typedef void  (^ICMHTTPBaseSuccess)(ICMBaseResponse *response);
typedef void  (^ICMHTTPConversationsSuccess)(ICMConversationsResponse *response);
typedef void  (^ICMHTTPConversationSuccess)(ICMConversation *response);
typedef void  (^ICMHTTPReplyConversationSuccess)(ICMConversationPart *response);
typedef void  (^ICMHTTPUploadCreateSuccess)(NSString * _Nullable publicUrl);
typedef void  (^ICMHTTPArticleSuccess)(ICMArticle *article);
typedef void  (^ICMHTTPGIFSuccess)(ICMGIFResponse *gifResponse);
typedef void  (^ICMHTTPSheetSuccess)(ICMSheet *sheet);
typedef void  (^ICMHTTPHomescreenSuccess)(ICMHomescreen *sheet);
typedef void  (^ICMHTTPEmptyBlock) (void);
typedef void  (^ICMHTTPSubmitFormSuccess)(ICMConversation *response);
typedef void  (^ICMHTTPCarouselSuccess)(ICMCarousel *carousel);
typedef void  (^ICMHTTPArraySuccess)(NSArray *array);
typedef void  (^ICMHTTPDictionarySuccess)(NSDictionary *object);
typedef void  (^ICMHTTPComposerSuggestionsSuccess)(ICMComposerSuggestions *composerSuggestions);

@protocol ICMHTTPClientProtocol

#pragma mark - Help Center

+ (void)getHelpCenterCollections:(nullable ICMHTTPArraySuccess)success
                           error:(nullable ICMHTTPClientError)failure;

+ (void)getHelpCenterCollection:(nullable NSString*)collectionId
                        success:(nullable ICMHTTPDictionarySuccess)success
                          error:(nullable ICMHTTPClientError)failure;

+ (void)getHelpCenterSearchResults:(NSString*)searchText
                            source:(nullable NSString*)source
                            success:(nullable ICMHTTPArraySuccess)success
                              error:(nullable ICMHTTPClientError)failure;

#pragma mark - Surveys

+ (void)submitSurvey:(Survey *)survey
             success:(nullable ICMHTTPDictionarySuccess)success
               error:(nullable ICMHTTPClientError)failure;

+ (void)dismissSurvey:(Survey *)survey
              success:(nullable ICMHTTPEmptyBlock)success
                error:(nullable ICMHTTPClientError)failure;

+ (void)failSurvey:(NSString *)surveyId
        progressId:(NSInteger)progressId
           success:(nullable ICMHTTPEmptyBlock)success
             error:(nullable ICMHTTPClientError)failure;

+ (void)actionButtonClicked:(Survey *)survey
                     stepId:(NSString *)stepId
                    success:(nullable ICMHTTPEmptyBlock)success
                      error:(nullable ICMHTTPClientError)failure;

+ (void)getSurvey:(NSString *)surveyId
             success:(nullable ICMHTTPDictionarySuccess)success
               error:(nullable ICMHTTPClientError)failure;




@end

NS_ASSUME_NONNULL_END


#endif /* ICMHTTPClientProtocol_h */
