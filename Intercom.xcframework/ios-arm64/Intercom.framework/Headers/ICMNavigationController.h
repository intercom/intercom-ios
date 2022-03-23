#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    Messenger,
    HelpCenter,
    ContentModal,
    Sheet
} IntercomPresentationContext;

@class ICMHostAppState;
@class ICMNavigationBarCloseButton;

@protocol ICMCloseIntercomModalDelegate <NSObject>
- (void)closeIntercomModal;
@end

@interface ICMNavigationController : UINavigationController

- (instancetype)initWithHostAppState:(ICMHostAppState *)hostAppState
          closeIntercomModalDelegate:(id<ICMCloseIntercomModalDelegate>)closeIntercomModalDelegate
                    presentationContext:(IntercomPresentationContext)presentationContext;

- (void)setWallpaperHeight:(CGFloat)height;
- (void)displayCloseButton;
- (void)removeCloseButton;
- (void)addBackButton;
- (void)closeIntercomModal;

@property (nonatomic, strong) ICMNavigationBarCloseButton *closeButton;
@property (nonatomic, assign) IntercomPresentationContext presentationContext;

@end
