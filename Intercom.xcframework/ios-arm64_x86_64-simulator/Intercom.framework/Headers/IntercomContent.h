//
//  IntercomContent.h
//  IntercomSDK-Public
//
//  Created by Brian Boyle on 27/09/2022.
//  Copyright © 2022 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 A enum of Intercom Content Types.
 
 Use along with ``Intercom/presentContent:`` to specify the type Intercom content you want to present.
 */
typedef NS_ENUM(NSInteger, ContentType) {
    article,
    survey,
    carousel,
    helpCenterCollections,
    conversation,
};

NS_ASSUME_NONNULL_BEGIN

@protocol IntercomContentProtocol <NSObject>

@property (nonatomic, assign) ContentType type;
@property (nonatomic, strong) id contentId;

@end

/**
 An object that encapsulates data used to present Intercom Content.
 Currently supported content types are:
    - Articles
    - Surveys
    - Carousels
    - Help Center Collections
    - Conversations
 
 This object is passed into ``Intercom/presentContent:``.
 */
@interface IntercomContent : NSObject <IntercomContentProtocol>

/**
 Create an Article content object.
 
 - Parameters:
    - articleId: The ID of the Article that is to be presented.
 
 - Returns: An ``IntercomContent`` object used to present an Article.
 */
+ (IntercomContent *)articleWithId:(NSString *)articleId;

/**
 Create a Carousel content object.
 
 - Parameters:
    - carouselId: The ID of the Carousel that is to be presented.
 
 - Returns: An ``IntercomContent`` object used to present a Carousel.
 */
+ (IntercomContent *)carouselWithId:(NSString *)carouselId;

/**
 Create a Survey content object.
 
 - Parameters:
    - surveyId: The ID of the Survey that is to be presented.
 
 - Returns: An ``IntercomContent`` object used to present a Survey.
 */
+ (IntercomContent *)surveyWithId:(NSString *)surveyId;

/**
 Create a Help Center Collection content object.
 
 - Parameters:
    - collectionIds: An ``NSArray`` of HelpCenterCollection IDs that are to be presented.
 
 - Returns: An ``IntercomContent`` object used to present a list of Help Center Collections.
 */
+ (IntercomContent *)helpCenterCollectionsWithIds:(NSArray<NSString *> *)collectionIds;

/**
 Create a Conversation content object.
 
- Parameters:
- conversationId: The ID of the Conversation that is to be presented.

- Returns: An ``IntercomContent`` object used to present a Conversation.
*/
+ (IntercomContent *)conversationWithId:(NSString *)conversationId;


@end

NS_ASSUME_NONNULL_END
