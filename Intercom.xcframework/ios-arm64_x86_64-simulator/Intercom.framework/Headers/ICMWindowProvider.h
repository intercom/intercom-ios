#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol ICMWindowProvider <NSObject>

- (UIWindow *)hostAppWindow;

- (UIWindow *)intercomWindow;

@end
