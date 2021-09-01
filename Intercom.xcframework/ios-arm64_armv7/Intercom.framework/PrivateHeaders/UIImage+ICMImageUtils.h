//
//  UIImage+ICMGrayscale.h
//  Pods
//
//  Created by Brian Boyle on 19/01/2017.
//
//

#import <UIKit/UIKit.h>

@interface UIImage (ICMImageUtils)

- (UIImage *)icm_grayscale;
- (UIImage *)icm_resizeImageToSize:(CGSize)newSize;
@end
