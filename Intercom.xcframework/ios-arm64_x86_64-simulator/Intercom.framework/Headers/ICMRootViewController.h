#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class ICMBaseViewController;
#import <Intercom/ICMInAppsViewController.h>
#import <Intercom/ICMWindowProvider.h>
#import <Intercom/ICMNavigationController.h>

NS_ASSUME_NONNULL_BEGIN

@class ICMHostAppState;
@class ICMCarousel;
@class ICMMessengerSheetViewController;
@protocol SurveyInfo;

@protocol ICMRootViewControllerDelegate <NSObject>
- (void)hideIntercomWindow;
- (void)setWindowIsFullScreen:(BOOL)fullscreen;
- (BOOL)shouldShowInApps;
- (BOOL)shouldShowLauncher;
@end

static NSString *const kICMRootViewControllerDidDismissPresentedController = @"IntercomRootViewControllerDidDismissPresentedController";

@interface ICMRootViewController : UIViewController <ICMCloseIntercomModalDelegate, ICMInAppsDelegate, ICMWindowProvider>

@property(nonatomic, weak, nullable) id<ICMRootViewControllerDelegate> delegate;
@property (nonatomic) BOOL contentModalPresented;

// This gives a snapshot of the state of the host app when Intercom was presented
// Useful for rotation, status bar styles etc.
@property (nonatomic, strong) ICMHostAppState *hostAppState;

- (instancetype)initWithWindowScene:(UIWindowScene *)windowScene;
- (void)tearDown;
- (void)presentCarousel:(ICMCarousel *)carousel;
- (void)presentSurvey:(id <SurveyInfo>)survey;
- (void)presentMessenger;
- (void)presentMessageComposerWithInitialMessage:(NSString *)message;
- (void)presentHomescreen;
- (void)presentConversation:(ICMConversation *)conversation;
- (void)dismissAllIntercomViews;
- (void)presentSheet:(ICMMessengerSheetViewController *)sheetVC;

#pragma mark - Help Center Presentation

- (void)presentHelpCenter;
- (void)presentHelpCenterFromSearchBrowse; 
- (void)presentHelpCenterCollections:(NSArray<NSString *> *)collectionIds;
- (void)presentHelpCenterCollection:(NSString *)collectionId;
- (void)presentArticle:(NSString *)articleId;
- (BOOL)isHelpCenterPresented;

- (void)updateUnreadConversations:(NSArray *)conversations completion:(void (^ __nullable)(void))completion;

- (void)tearDownInApps;
- (void)updateLauncherVisibility;

- (BOOL)isShowingMessenger;

- (BOOL)shouldHandleTouchOnView:(UIView *)view;

- (void)updateHostAppState;

- (void)addLauncherOpenedMetricForObject:(NSString *)metricObject isCustomLauncher:(BOOL)isCustomLauncher;

- (void) bottomPaddingUpdated;

@end

NS_ASSUME_NONNULL_END
