#import <Foundation/Foundation.h>

@class ICMConversationPart;

typedef NS_ENUM(NSUInteger, ICMTimestampCalculatorRecentTimeMessage) {
    ICMTimestampCalculatorRecentTimeMessageJustNow,
    ICMTimestampCalculatorRecentTimeMessageDelivered
};

typedef NS_ENUM(NSUInteger, ICMTimestampCalculatorTimeAgoFormat) {
    ICMTimestampCalculatorTimeAgoFormatShort,
    ICMTimestampCalculatorTimeAgoFormatLong
};

@interface ICMTimestampCalculator : NSObject

+ (instancetype)sharedInstance;

- (NSString *)timestampTextForDate:(NSDate *)date format:(enum ICMTimestampCalculatorTimeAgoFormat)format recentTimeMessage:(enum ICMTimestampCalculatorRecentTimeMessage)recentTimeMessage;

- (NSString *)textForLastActiveDate:(NSDate *)date;

- (NSString *)lastActiveMinutesAgo:(NSDate *)date;
    
- (NSTimeInterval)secondsUntilTimestampExpiresForDate:(NSDate *)date;

- (BOOL)part:(ICMConversationPart *)firstPart isFromDifferentDayAsPart:(ICMConversationPart *)secondPart;

- (NSString *)appendSeenStateToTimestampText:(NSString *)timestampText forPart:(ICMConversationPart *)part;

- (NSString *)dayTextForPart:(ICMConversationPart *)part;

- (NSString *)absoluteTimeTextForPart:(ICMConversationPart *)part;

- (NSString *)timestampTextForUpdatedDate:(NSDate *)date;

- (NSString *)timestampTextForDate:(NSDate *)date timeZone:(NSTimeZone *)timeZone;

@end
