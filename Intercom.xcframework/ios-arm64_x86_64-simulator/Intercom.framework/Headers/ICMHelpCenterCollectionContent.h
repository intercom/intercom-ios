//
//  ICMHelpCenterCollectionContent.h
//  IntercomSDK-Dynamic
//
//  Created by Michael McNamara on 03/06/2021.
//  Copyright © 2021 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ICMHelpCenterArticle;
@class ICMHelpCenterCollection;
@class ICMHelpCenterArticleAuthor;

NS_ASSUME_NONNULL_BEGIN

/**
 ICMHelpCenterCollection represents a Help Center collection and its contents. 
*/
NS_SWIFT_SENDABLE
NS_SWIFT_NAME(HelpCenterCollectionContent)
@interface ICMHelpCenterCollectionContent : NSObject

/**
 The id of this collection.
 */
@property (nonatomic, copy) NSString *collectionId;

/**
 The title of this collection.
 */
@property (nonatomic, copy) NSString *title;

/**
 A summary of this collection.
 */
@property (nonatomic, copy, nullable) NSString *summary;

/**
 The articles contained in this collection.
 */
@property (nonatomic, strong) NSArray<ICMHelpCenterArticle *> *articles;

/**
 The total number of articles in this collection, which comprises of all articles not belonging to any section, and all articles in all sections of this collection.
 */
@property (nonatomic, assign) NSInteger articleCount;

/**
 The collections contained inside this collection.
 */
@property (nonatomic, strong) NSArray<ICMHelpCenterCollection *> *collections;

/**
 The authors of articles in this collection.
 */
@property (nonatomic, copy) NSArray<ICMHelpCenterArticleAuthor *> *authors;

- (instancetype)initWithCollectionId:(NSString *)collectionId
                               title:(NSString *)title
                             summary:(nullable NSString *)summary
                            articles:(NSArray<ICMHelpCenterArticle *> *)articles
                   articleCount:(NSInteger)articleCount
                         collections:(NSArray<ICMHelpCenterCollection *> *)collections
                             authors:(NSArray<ICMHelpCenterArticleAuthor *> *)authors;


@end

NS_ASSUME_NONNULL_END
