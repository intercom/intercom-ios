//
//  ICMHelpCenterArticleAuthor.h
//  IntercomSDK-Private
//
//  Created by Karthik Maharajan Skandarajah on 07/07/22.
//  Copyright © 2022 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

NS_SWIFT_SENDABLE
NS_SWIFT_NAME(HelpCenterArticleAuthor)
@interface ICMHelpCenterArticleAuthor : NSObject

/**
 The id of this author.
 */
@property (nonatomic, copy) NSString *authorId;

/**
 The name of this author.
 */
@property (nonatomic, copy) NSString *displayName;

/**
 The url for the avatar of this author.
 */
@property (nonatomic, copy, nullable) NSURL *avatarURL;


- (instancetype)initWithAuthorId:(NSString *)authorId
                     displayName:(NSString *)displayName
                          avatarURL:(nullable NSURL *)avatarURL;

@end

NS_ASSUME_NONNULL_END
