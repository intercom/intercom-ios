#import <UIKit/UIKit.h>
#import "ICMRootViewController.h"

@interface ICMWindow : UIWindow

- (void)tearDown;

@property (nonatomic, assign) BOOL fullscreen;
@property (nonatomic, strong) ICMRootViewController *rootViewController;

@end
