//
//  ICMMetric.h
//  Pods
//
//  Created by James Treanor on 07/08/2015.
//
//

#import <Foundation/Foundation.h>
#import <Intercom/ICMMetricEvent.h>
@class ICMOpsMetricEvent;

@protocol ICMMetricProtocol
- (void)addEvent:(ICMMetricEvent *)event NS_SWIFT_NAME(addEvent(_:));
@end

@interface ICMMetric : NSObject <ICMMetricProtocol, NSSecureCoding>

+ (instancetype)sharedInstance;

- (void)addEvent:(ICMMetricEvent *)event NS_SWIFT_NAME(addEvent(_:)); 
- (void)addOpsEvent:(ICMOpsMetricEvent *)opsEvent;
- (NSSet<ICMMetricEvent *> *)events;
- (NSSet<ICMOpsMetricEvent *> *)opsEvents;
- (void)clearAllEvents;
- (void)clearEvents:(NSSet<ICMMetricEvent *> *)events opsEvents:(NSSet<ICMOpsMetricEvent *> *)opsEvents;

@end
