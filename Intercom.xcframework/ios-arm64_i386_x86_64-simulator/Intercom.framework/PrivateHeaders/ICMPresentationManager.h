//
// Created by Ignacio Delgado on 17/04/2014.
// Copyright (c) 2014 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class ICMConversation;
@class ICMCarousel;
@class ICMMessengerSheetViewController;

@interface ICMPresentationManager : NSObject

@property (nonatomic, assign) CGFloat inAppBottomPadding;
@property (nonatomic, assign) BOOL launcherVisible;
@property (nonatomic, assign) BOOL inAppMessagesVisible;
@property (nonatomic, assign) BOOL manualInAppBottomPaddingSet;

+ (instancetype) sharedInstance;
+ (void)observeSceneWillEnterForeground;

- (void)setUnreadConversations:(NSArray <ICMConversation *> *)conversations completion:(void (^ __nullable)(void))completion;
- (void)presentCarousel:(ICMCarousel *)carousel;
- (void)presentMessenger;
- (void)presentMessageComposerWithInitialMessage:(nullable NSString *)message;
- (void)presentHomescreen;
- (void)presentSheet:(ICMMessengerSheetViewController *)sheetVC;

#pragma mark - Help Center Presentation
- (void)presentHelpCenter;
- (void)presentHelpCenterCollections:(NSArray<NSString *> *)collectionIds;
- (void)presentHelpCenterCollection:(NSString *)collectionId;
- (void)presentArticle:(NSString *)articleId;

- (void)showLauncherOrInAppsIfNeeded;
- (void)hideIntercomUI;
- (void)userChanged;

- (void)presentConversation:(ICMConversation *)conversation;

- (void)setNeedsHostAppStatusBarAppearanceUpdate;
- (BOOL)isMessengerPresented;
- (void)dismissAllIntercomViews;
- (void)sceneWillEnterForeground:(NSNotification *)notification;
- (BOOL)isContentCurrentlyPresented;

@end

NS_ASSUME_NONNULL_END
