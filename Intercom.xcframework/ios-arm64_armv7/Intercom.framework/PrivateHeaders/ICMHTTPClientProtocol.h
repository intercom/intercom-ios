//
//  ICMHTTPClientProtocol.h
//  IntercomSDK
//
//  Created by Michael McNamara on 14/04/2021.
//  Copyright © 2021 Intercom. All rights reserved.
//

#ifndef ICMHTTPClientProtocol_h
#define ICMHTTPClientProtocol_h

#import "ICMEngine.h"

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

static const NSInteger kICMHTTPClientDefaultPageSize = 10;

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

@protocol ICMHTTPClientProtocol
+ (void)getHelpCenterCollections:(nullable ICMHTTPArraySuccess)success
                           error:(nullable ICMHTTPClientError)failure;

+ (void)getHelpCenterCollection:(nullable NSString*)collectionId
                        success:(nullable ICMHTTPDictionarySuccess)success
                          error:(nullable ICMHTTPClientError)failure;

+ (void)getHelpCenterSearchResults:(NSString*)searchText
                            success:(nullable ICMHTTPArraySuccess)success
                              error:(nullable ICMHTTPClientError)failure;

@end

NS_ASSUME_NONNULL_END


#endif /* ICMHTTPClientProtocol_h */
