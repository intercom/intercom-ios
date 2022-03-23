//
//  ICMContentStackView.h
//  IntercomSDK
//
//  Created by Brian Boyle on 16/01/2020.
//  Copyright © 2020 Intercom. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ITBBlock;
@class ICMBlockAppearance; 

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, ICMContentStackViewContext) {
    ICMContentStackViewContextCarousel,
    ICMContentStackViewContextSurvey
};

@interface ICMContentStackView : UIStackView

- (instancetype)initWithBlocks:(NSArray<ITBBlock *> *)blocks context:(ICMContentStackViewContext)context;
- (void)renderContent;
- (void)updateFirstBlockWithAppearance:(ICMBlockAppearance *)appearance;

@end

NS_ASSUME_NONNULL_END
