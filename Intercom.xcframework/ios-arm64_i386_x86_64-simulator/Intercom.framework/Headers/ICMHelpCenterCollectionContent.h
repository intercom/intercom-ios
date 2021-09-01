//
//  ICMHelpCenterCollectionContent.h
//  IntercomSDK-Dynamic
//
//  Created by Michael McNamara on 03/06/2021.
//  Copyright © 2021 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ICMHelpCenterArticle;
@class ICMHelpCenterSection;

NS_ASSUME_NONNULL_BEGIN

/**
 ICMHelpCenterCollection represents a Help Center collection and its contents. 
*/
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
 The sections contained in this collection.
 */
@property (nonatomic, strong) NSArray<ICMHelpCenterSection *> *sections;

- (instancetype)initWithCollectionId:(NSString *)collectionId
                               title:(NSString *)title
                             summary:(nullable NSString *)summary
                            articles:(NSArray<ICMHelpCenterArticle *> *)articles
                            sections:(NSArray<ICMHelpCenterSection *> *)sections;


@end

NS_ASSUME_NONNULL_END
