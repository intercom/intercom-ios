#import <UIKit/UIKit.h>
#import "ICMSafeNetworkModel.h"

static NSString *const kICMIntercomConfigChangedNotification = @"kICMIntercomConfigChangedNotification";
static NSString *const kICMMessengerBackgroundImageLoadedNotification = @"kICMMessengerBackgroundImageLoadedNotification";
static NSString *const kICMMessengerLogoImageLoadedNotification = @"kICMMessengerLogoImageLoadedNotification";

@protocol ICMConfigProtocol
@property (readonly) BOOL inboundMessages;
@property (readonly) BOOL accessToTeammateEnabled;
@end

@interface ICMConfig : ICMSafeNetworkModel <ICMConfigProtocol,NSCoding>

@property (nonatomic, copy) NSString *primaryColorString;
@property (nonatomic, copy) NSString *secondaryColorString;
@property (nonatomic, copy) NSString *appName;
@property (nonatomic, copy) NSString *teamIntro;
@property (nonatomic, copy) NSString *messengerBackgroundImageUrlString;
@property (nonatomic, copy) NSString *messengerLogoUrlString;
@property (nonatomic, copy) NSString *teamGreeting;
@property (nonatomic, copy) NSString *launcherAlignment;
@property (nonatomic, copy) NSString *temporaryExpectationsMessage;
@property (nonatomic, assign) NSUInteger homescreenCardCount;
@property (nonatomic, assign) NSInteger launcherBottomPadding;

@property (nonatomic, assign) BOOL inboundMessages;
@property (nonatomic, assign) BOOL attachmentsEnabled;
@property (nonatomic, assign) BOOL gifsEnabled;
@property (nonatomic, assign) BOOL showIntercomLink;
@property (nonatomic, assign) BOOL audioEnabled;
@property (nonatomic, assign) BOOL metricsEnabled;
@property (nonatomic, assign) BOOL backgroundRequestsEnabled;
@property (nonatomic, assign) BOOL shouldDisplayDarkPrimaryColor;
@property (nonatomic, assign) BOOL shouldDisplayDarkSecondaryColor;
@property (nonatomic, assign) BOOL shouldDisplayDarkHelpCenterColor;
@property (nonatomic, assign) BOOL identityVerificationEnabled;
@property (nonatomic, assign) BOOL accessToTeammateEnabled;

@property (nonatomic, assign) NSTimeInterval userUpdateDupCacheMaxAge;
@property (nonatomic, assign) NSTimeInterval newSessionThreshold;
@property (nonatomic, assign) NSTimeInterval batchUserUpdatePeriod;
@property (nonatomic, assign) NSTimeInterval softResetTimeout;
@property (nonatomic, assign) NSTimeInterval pingDelay;

@property (nonatomic, assign) NSTimeInterval rateLimitPeriod;
@property (nonatomic, assign) NSUInteger rateLimit;

@property (nonatomic, copy) NSString *helpCenterUrlString;
@property (nonatomic, copy) NSArray<NSString *> *helpCenterUrlStrings;
@property (nonatomic, copy) NSString *helpCenterBaseColorString;

@property (nonatomic, strong) NSLocale *intercomLocale;
@property (nonatomic, strong) NSLocale *helpCenterLocale;
@property (nonatomic, strong) NSSet<NSString *> *features;

+ (instancetype)instanceFromDictionary:(NSDictionary *)aDictionary;

+ (void)updateSharedInstanceFromDictionary:(NSDictionary *)aDictionary;

+ (instancetype)sharedConfig;
+ (void)deleteSharedConfig;

- (BOOL)isEqualToConfig:(ICMConfig *)other;
- (void)saveIfNeeded;
- (void)save;
- (UIImage *)messengerBackgroundImage;
- (UIImage *)messengerLogoImage;
- (UIColor *)primaryColor;
- (UIColor *)secondaryColor;
- (UIColor *)helpCenterBaseColor;
- (BOOL)hasFeature:(NSString *)feature;
- (BOOL)receivedFromServer;
- (BOOL)useDefaultLauncherAlignment;

@end
