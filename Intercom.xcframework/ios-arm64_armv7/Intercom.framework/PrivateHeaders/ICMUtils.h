//
//  ICMUtils.h
//  IntercomSDK
//
//  Created by Gavin Rooney on 24/04/2014.
//  Copyright (c) 2014 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class ICMConversationPart;

#ifdef DEBUG
#   define InterLog(fmt, ...) NSLog((@"[Intercom] " fmt), ##__VA_ARGS__);
#   define InterLogDebug(fmt, ...) ([ICMUtils debugLoggingEnabled] ? NSLog((@"[Intercom] " fmt), ##__VA_ARGS__) : YES);
#   define InterLogPrivate(fmt, ...) NSLog((@"[Intercom] %s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#   define InterLog(fmt, ...) NSLog((@"[Intercom] " fmt), ##__VA_ARGS__);
#   define InterLogDebug(fmt, ...) ([ICMUtils debugLoggingEnabled] ? NSLog((@"[Intercom] " fmt), ##__VA_ARGS__) : YES);
#   define InterLogPrivate(...)
#endif

#define run_or_dispatch_main(block) if ([NSThread isMainThread]) { block(); } else { dispatch_async(dispatch_get_main_queue(), block); }

#define WEAK_TYPE(x) __weak __typeof(x)
#define STRONG_TYPE(x) __strong __typeof(x)

UIKIT_EXTERN NSString *const IntercomSDKErrorDomain;

//------------------------------------------------------------------------------------------------------------------------------
// result: X-INTERCOM-AGENT: intercom-ios-sdk/x.x.x
#define ICMSDKHeaderValue @"intercom-ios-sdk"
#define ICMSDKDefaultHeader @"X-INTERCOM-AGENT"
#define ICMSDKWrapperHeader @"X-INTERCOM-AGENT-WRAPPER"
#define ICMSDKCordovaHeaderValue @"intercom-sdk-cordova"
#define ICMSDKReactNativeHeaderValue @"intercom-sdk-react-native"

static const NSInteger kICMConversationAvatarWidth                  = 28;

static NSString *const kIntercomSDKVersionIdentifier                = @"intercom-sdk-version";
static NSString *const kIntercomSDKComposerPersistedString          = @"intercom-sdk-composer-persisted-string";
static NSString *const kIntercomSDKComposerPersistedNewKey          = @"NewConversation";   // when we want to persist the string in the message composer but  don't have a conversationId (i.e. user composes new message)

static NSString *const kIntercomSDKInboxUpdated = @"intercom-sdk-inbox-updated";
static NSString *const kICMIntercomDeepLinkNotification = @"kICMIntercomDeepLinkNotification";
static NSString *const kICMIntercomDidTypeInComposer = @"kICMIntercomDidTypeInComposer";
static NSString *const kICMIntercomDidChangeComposerInput = @"kICMIntercomDidChangeComposerInput";

typedef NS_ENUM(NSUInteger, ICMFontWeight){
    ICMFontWeightRegular = 0,
    ICMFontWeightBold    = 1,
    ICMFontWeightMedium  = 2,
    ICMFontWeightLight   = 3,
    ICMFontWeightThin    = 4,
    ICMFontWeightSemibold = 5
};

typedef NS_ENUM(NSInteger, ICMUserIdentityType) {
    ICMUserIdentityEmail,
    ICMUserIdentityUserId,
    ICMUserIdentityIntercomId
};

@interface ICMUtils : NSObject

+ (NSString *)intercomAgent;

+ (NSString *)intercomVersion;

+ (NSString *)appVersion;

+ (NSString *)applicationName;

+ (NSString *)bundleIdentifier;

+ (NSString *)minimumOSVersion;

+ (BOOL)debugLoggingEnabled;

+ (void)setDebugLoggingEnabled:(BOOL)loggingEnabled;

+ (void)checkIntegration;

+ (BOOL)photoUsageDescriptionPresent;

+ (BOOL)autoIntegratePushNotifications;

+ (NSBundle *)intercomBundle;
+ (NSBundle *)translationsBundle;

+ (NSString *)intercomDocumentsDirectory;

+ (NSString *)intercomCachesDirectory;

+ (UIFont *)fontOfSize:(CGFloat)fontSize weight:(ICMFontWeight)weight;

+ (NSArray *)jsonArrayFromLocalFile:(NSString *)path error:(NSError * __autoreleasing *)error;

+ (BOOL)sceneManifestPresent;

+ (BOOL)shouldShowPhotoUsagePListError;
+ (NSString *)extractArticleIdFromSheetParams:(NSDictionary *)params;
@end
