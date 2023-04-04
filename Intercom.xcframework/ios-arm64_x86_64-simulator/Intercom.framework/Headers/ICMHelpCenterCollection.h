//
//  ICMHelpCenterCollection.h
//  IntercomSDK-Dynamic
//
//  Created by Michael McNamara on 26/05/2021.
//  Copyright © 2021 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

NS_ASSUME_NONNULL_BEGIN

/**
 ICMHelpCenterCollection represents a Help Center collection.
*/
NS_SWIFT_NAME(HelpCenterCollection)
@interface ICMHelpCenterCollection : NSObject

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
 The number of articles in this collection.
 */
@property (nonatomic, assign) NSInteger articleCount;

/**
 The number of collection inside this collection.
 */
@property (nonatomic, assign) NSInteger collectionCount;

- (instancetype)initWithCollectionId:(NSString *)collectionId
                               title:(NSString *)title
                             summary:(nullable NSString *)summary
                        articleCount:(NSInteger)articleCount DEPRECATED_MSG_ATTRIBUTE("'-initWithCollectionId:title:summary:articleCount:' intializer is deprecated and will be removed in a future release. Use '-initWithCollectionId:title:summary:articleCount:collectionCount:' instead.");

- (instancetype)initWithCollectionId:(NSString *)collectionId
                               title:(NSString *)title
                             summary:(nullable NSString *)summary
                        articleCount:(NSInteger)articleCount
                     collectionCount:(NSInteger)collectionCount;

@end

NS_ASSUME_NONNULL_END
