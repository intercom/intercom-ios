//
//  ICMHelpCenterArticleSearchResult.h
//  IntercomSDK-Dynamic
//
//  Created by Michael McNamara on 04/06/2021.
//  Copyright © 2021 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 ICMHelpCenterArticleSearchResult represents the result of a Help Center search.
*/
NS_SWIFT_NAME(HelpCenterArticleSearchResult)
@interface ICMHelpCenterArticleSearchResult : NSObject

/**
 The id of this article.
 */
@property (nonatomic, copy) NSString *articleId;

/**
 The title of this article.
 */
@property (nonatomic, copy) NSString *title;

/**
 The summary of this article.
 */
@property (nonatomic, copy) NSString *summary;

/**
 A snippet of this article that matches the search term.
 */
@property (nonatomic, copy) NSString *matchingSnippet;

- (instancetype)initWithArticleId:(NSString *)articleId
                            title:(NSString *)title
                          summary:(nullable NSString *)summary
                  matchingSnippet:(nullable NSString *)matchingSnippet;

@end

NS_ASSUME_NONNULL_END
