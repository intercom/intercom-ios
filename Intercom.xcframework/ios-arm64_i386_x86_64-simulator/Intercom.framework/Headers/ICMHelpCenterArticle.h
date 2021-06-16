//
//  ICMHelpCenterArticle.h
//  IntercomSDK-Dynamic
//
//  Created by Michael McNamara on 03/06/2021.
//  Copyright © 2021 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 ICMHelpCenterArticle represents a Help Center article.
*/
NS_SWIFT_NAME(HelpCenterArticle)
@interface ICMHelpCenterArticle : NSObject

/**
 The id of this article.
 */
@property (nonatomic, copy) NSString *articleId;

/**
 The title of this article.
 */
@property (nonatomic, copy) NSString *title;

- (instancetype)initWithArticleId:(NSString *)articleId
                          title:(NSString *)title;

@end

NS_ASSUME_NONNULL_END
