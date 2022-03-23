//
//  ITBLoadingView.h
//  IntercomBlocks
//
//  Created by Brian Boyle on 23/04/2020.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    ITBLoadingViewDarkColor,
    ITBLoadingViewLightColor,
} ITBLoadingViewColorType;

@interface ITBLoadingView : UIView
@property (nonatomic, assign, setter=isLoading:) BOOL loading;

- (void)setShimmerSpeedForImageWidth:(CGFloat)imageWidth;
- (void)handleLoadingFailure;
- (void)setLoadingViewColorType:(ITBLoadingViewColorType)colorType;
- (void)cleanup;
@end

NS_ASSUME_NONNULL_END
