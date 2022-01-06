//
//  ICMHelpCenterSection.h
//  IntercomSDK-Dynamic
//
//  Created by Michael McNamara on 03/06/2021.
//  Copyright © 2021 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ICMHelpCenterArticle;

NS_ASSUME_NONNULL_BEGIN

/**
 ICMHelpCenterSection represents a Help Center section.
*/
NS_SWIFT_NAME(HelpCenterSection)
@interface ICMHelpCenterSection : NSObject

/**
 The title of this section.
 */
@property (nonatomic, copy) NSString *title;

/**
 The articles contained in this section.
 */
@property (nonatomic, strong) NSArray<ICMHelpCenterArticle *> *articles;

- (instancetype)initWithTitle:(NSString *)title
                     articles:(NSArray<ICMHelpCenterArticle *> *)articles;

@end

NS_ASSUME_NONNULL_END
