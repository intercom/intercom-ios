//
//  ICMTeamPresence.h
//
//
//  Created by Adam McCarthy on 19/01/2016.
//  Copyright (c) 2016 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ICMSafeNetworkModel.h"

@class ICMParticipant;

static NSString *const kICMTeamPresenceUpdated = @"ICMTeamPresenceUpdated";

@interface ICMTeamPresence : ICMSafeNetworkModel

@property (nonatomic, copy) NSArray<ICMParticipant *> *activeAdmins;
@property (nonatomic, strong) NSDate *lastActive;
@property (nonatomic, copy) NSString *officeHours;
@property (nonatomic, copy) NSString *responseDelayFull;
@property (nonatomic, copy) NSString *responseDelayDescription;
@property (nonatomic, copy) NSString *responseDelayTimePeriod;

+ (void)updateSharedInstanceWithDictionary:(NSDictionary *)aDictionary;

- (void)setAttributesFromDictionary:(NSDictionary *)aDictionary;

+ (instancetype)sharedInstance;

@end
