//
//  ICMInAppsViewController.h
//  Pods
//
//  Created by James Treanor on 07/12/2015.
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class ICMConversation;
@class ICMHostAppState;

typedef NS_ENUM(NSUInteger, ICMInAppsViewControllerState){
    ICMInAppsViewControllerStateEmpty            = 0,
    ICMInAppsViewControllerStateSnippet          = 1,
    ICMInAppsViewControllerStateMultipleSnippets = 2,
    ICMInAppsViewControllerStateFull             = 3,
};

@protocol ICMInAppsDelegate <NSObject>
- (void)presentConversation:(ICMConversation *)conversation fromFull:(BOOL)fromFull;
- (void)dismissConversation:(ICMConversation *)conversation fromFull:(BOOL)fromFull;
- (void)hideInApp:(UIViewController *)inApp;
- (void)showInbox;
@optional
- (void)conversationShown:(ICMConversation *)conversation asFull:(BOOL)asFull;
- (BOOL)isMessengerPresented;
- (BOOL)shouldShowLauncher;
- (void)launcherTapped;
- (void)didShowFullScreenInApp;
- (void)didHideFullScreenInApp;
- (void)didHideInApps;
@end

@protocol ICMInAppUpdateProtocol <NSObject>
- (void)conversationMarkedAsRead:(NSString *)conversationId;
@end

@protocol ICMInAppsAnimationProtocol <NSObject>
- (void)animateOutWithCompletion:(void (^ __nullable)(void))completion;
@end

@protocol ICMFullScreenInAppProtocol <NSObject>
- (ICMConversation *)conversation;
@end

@interface ICMInAppsViewController : UIViewController <ICMInAppUpdateProtocol>

- (instancetype)initWithConversations:(NSArray<ICMConversation *> *)conversations delegate:(id <ICMInAppsDelegate>)delegate hostAppState:(ICMHostAppState *)state;
- (BOOL)shouldHandleTouchOnView:(UIView *)view;
- (BOOL)isShowingLauncherOrInApp;
- (void)tearDownInApps;
- (void)tearDown;
- (void)updateLauncherVisibility;
- (void)setConversations:(NSArray<ICMConversation *> *)conversations completion:(void (^ __nullable)(void))completion;
- (void)hideLauncherWithAnimation;
- (void)bottomPaddingUpdated;
- (ICMInAppsViewControllerState)state;

@property (nonatomic, strong) NSArray<ICMConversation *> *conversations;
@property (nonatomic, strong) ICMHostAppState *hostAppState;

@end

NS_ASSUME_NONNULL_END
