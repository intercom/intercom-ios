
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ICMLoadingViewController : UIViewController

- (instancetype)initWithImage:(UIImage *)loadingImage accessibilityText:(NSString *)accessibilityText;
- (void)hideLoadingSpinner;

@end
