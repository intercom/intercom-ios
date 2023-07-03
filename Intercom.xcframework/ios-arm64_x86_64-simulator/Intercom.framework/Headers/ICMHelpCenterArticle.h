//
//  ICMHelpCenterArticle.h
//  IntercomSDK-Private
//
//  Created by Brian Boyle on 25/01/2022.
//  Copyright © 2022 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

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
