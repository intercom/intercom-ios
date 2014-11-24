//
//  ITCUserAuthenticationManager.m
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

#import "ITCUserAuthenticationManager.h"
#import "ITCTableViewController.h"
#import "ITCIntercomSettings.h"

@interface ITCUserAuthenticationManager ()
@end

static NSString *kITCUserDefaultsKeyUserAuthenticated   = @"kITCUserDefaultsKeyUserAuthenticated";
static NSString *kITCUserDefaultsKeyAuthenticatedEmail  = @"kITCUserDefaultsKeyAuthenticatedEmail";
static NSString *kITCUserDefaultsKeyAuthenticatedUserId = @"kITCUserDefaultsKeyAuthenticatedUserId";


@implementation ITCUserAuthenticationManager

#pragma mark - Setters

- (void)setUserAuthenticated:(BOOL)userAuthenticated {
    if (!userAuthenticated) {
        self.email = nil;
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:kITCUserDefaultsKeyAuthenticatedEmail];
        self.userId = nil;
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:kITCUserDefaultsKeyAuthenticatedUserId];
    }
    
    _userAuthenticated = userAuthenticated;
    [[NSUserDefaults standardUserDefaults] setObject:@(_userAuthenticated) forKey:kITCUserDefaultsKeyUserAuthenticated];
    [[NSUserDefaults standardUserDefaults] synchronize];

    // let's reload the table view to reflect the change in the UI
    [[NSNotificationCenter defaultCenter] postNotificationName:kITCUpdatingUIRequiredNotification object:self];
}


- (void)setIntercomSessionOpen:(BOOL)intercomSessionOpen {
    _intercomSessionOpen = intercomSessionOpen;
    
    // let's reload the table view to show that we have an Intercom Session (or show that we don't have one)
    [[NSNotificationCenter defaultCenter] postNotificationName:kITCUpdatingUIRequiredNotification object:self];
}


- (void)setEmail:(NSString *)email {
    if (![_email isEqualToString:email]) {
        _email = email;
        [[NSUserDefaults standardUserDefaults] setObject:_email forKey:kITCUserDefaultsKeyAuthenticatedEmail];

        // nil out userId if we have a valid email now
        if (_email.length>0) {
            _userId = nil;
            [[NSUserDefaults standardUserDefaults] removeObjectForKey:kITCUserDefaultsKeyAuthenticatedUserId];
        }
        
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}

- (void)setUserId:(NSString *)userId {
    if (![_userId isEqualToString:userId]) {
        _userId = userId;
        [[NSUserDefaults standardUserDefaults] setObject:_userId forKey:kITCUserDefaultsKeyAuthenticatedUserId];
        
        // nil out email if we have a valid userId now
        if (_userId.length>0) {
            _email = nil;
            [[NSUserDefaults standardUserDefaults] removeObjectForKey:kITCUserDefaultsKeyAuthenticatedEmail];
        }

        [[NSUserDefaults standardUserDefaults] synchronize];
}
}

- (instancetype) init {
    self = [super init];
    if (self) {
        self.email = [[NSUserDefaults standardUserDefaults] objectForKey:kITCUserDefaultsKeyAuthenticatedEmail];
        self.userId = [[NSUserDefaults standardUserDefaults] objectForKey:kITCUserDefaultsKeyAuthenticatedUserId];
        self.userAuthenticated = [[[NSUserDefaults standardUserDefaults] objectForKey:kITCUserDefaultsKeyUserAuthenticated] boolValue]; // we have persisted if the session has been opened before; so we only open it once
    }
    return self;
}


#pragma mark - Singleton

+ (instancetype)sharedAuthenticationManager
{
    static dispatch_once_t onceQueue;
    static ITCUserAuthenticationManager *sessionManager = nil;
    
    dispatch_once(&onceQueue, ^{ sessionManager = [[self alloc] init]; });
    return sessionManager;
}

@end
