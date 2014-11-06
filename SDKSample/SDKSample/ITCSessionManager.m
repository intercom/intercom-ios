//
//  ITCSessionManager.m
//  SDKSample
//
//  Copyright 2014 Intercom
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

#import "ITCSessionManager.h"
#import "ITCIntercomSettings.h"
#import "ITCTableViewDataSourceWithNoSession.h"
#import "ITCTableViewDataSourceWithSessionActive.h"

@interface ITCSessionManager ()
@property (nonatomic, strong) id<UITableViewDataSource> dataSourceForSession;
@end

static NSString *kITCUserDefaultsKeySessionActive   = @"kITCUserDefaultsKeySessionActive";
static NSString *kITCUserDefaultsKeySessionEmail    = @"kITCUserDefaultsKeySessionEmail";
static NSString *kITCUserDefaultsKeySessionUserId   = @"kITCUserDefaultsKeySessionUserId";


@implementation ITCSessionManager

#pragma mark - Setters

- (void)setSessionActive:(BOOL)sessionActive {
    if (!sessionActive) {
        self.email = nil;
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:kITCUserDefaultsKeySessionEmail];
        self.userId = nil;
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:kITCUserDefaultsKeySessionUserId];
    }
    
    if (_sessionActive != sessionActive || !self.dataSourceForSession) {
        self.dataSourceForSession = sessionActive ? [[ITCTableViewDataSourceWithSessionActive alloc] init] : [[ITCTableViewDataSourceWithNoSession alloc] init];
    }

    if (_sessionActive != sessionActive) {
        _sessionActive = sessionActive;
        [[NSUserDefaults standardUserDefaults] setObject:@(_sessionActive) forKey:kITCUserDefaultsKeySessionActive];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}

- (void)setEmail:(NSString *)email {
    if (![_email isEqualToString:email]) {
        _email = email;
        [[NSUserDefaults standardUserDefaults] setObject:_email forKey:kITCUserDefaultsKeySessionEmail];
        _userId = nil;
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:kITCUserDefaultsKeySessionUserId];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}

- (void)setUserId:(NSString *)userId {
    if (![_userId isEqualToString:userId]) {
        _userId = userId;
        [[NSUserDefaults standardUserDefaults] setObject:_userId forKey:kITCUserDefaultsKeySessionUserId];
        _email = nil;
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:kITCUserDefaultsKeySessionEmail];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}

- (instancetype) init {
    self = [super init];
    if (self) {
        self.email = [[NSUserDefaults standardUserDefaults] objectForKey:kITCUserDefaultsKeySessionEmail] ?: kIntercomSampleUserEmail;
        self.userId = [[NSUserDefaults standardUserDefaults] objectForKey:kITCUserDefaultsKeySessionUserId] ?: kIntercomSampleUserId;
        self.sessionActive = [[[NSUserDefaults standardUserDefaults] objectForKey:kITCUserDefaultsKeySessionActive] boolValue]; // we have persisted if the session has been opened before; so we only open it once
    }
    return self;
}
#pragma mark - Singleton

+ (instancetype)sharedSessionManager
{
    static dispatch_once_t onceQueue;
    static ITCSessionManager *sessionManager = nil;
    
    dispatch_once(&onceQueue, ^{ sessionManager = [[self alloc] init]; });
    return sessionManager;
}

@end
