//
//  ICMMetric.h
//  Pods
//
//  Created by James Treanor on 07/08/2015.
//
//

#import <Foundation/Foundation.h>
#import "ICMMetricEvent.h"
@class ICMOpsMetricEvent;

@interface ICMMetric : NSObject <NSCoding>

+ (instancetype)sharedInstance;

- (void)addEvent:(ICMMetricEvent *)event;
- (void)addOpsEvent:(ICMOpsMetricEvent *)opsEvent;
- (NSSet<ICMMetricEvent *> *)events;
- (NSSet<ICMOpsMetricEvent *> *)opsEvents;
- (void)clearAllEvents;
- (void)clearEvents:(NSSet<ICMMetricEvent *> *)events opsEvents:(NSSet<ICMOpsMetricEvent *> *)opsEvents;

@end
