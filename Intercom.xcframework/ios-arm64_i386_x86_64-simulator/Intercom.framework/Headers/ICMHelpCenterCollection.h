//
//  ICMHelpCenterCollection.h
//  IntercomSDK-Dynamic
//
//  Created by Michael McNamara on 26/05/2021.
//  Copyright © 2021 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>

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

- (instancetype)initWithCollectionId:(NSString *)collectionId
                               title:(NSString *)title
                             summary:(nullable NSString *)summary;

@end

NS_ASSUME_NONNULL_END
