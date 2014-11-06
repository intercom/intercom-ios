//
//  ITCUserIdAlertViewDelegate.m
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

#import "ITCUserIdAlertViewDelegate.h"
#import "NSString+ITCValidation.h"
#import "ITCSessionManager.h"
#import "ITCResultView.h"

@interface ITCUserIdAlertViewDelegate ()
@property (nonatomic, weak) id<ITCIntercomSDKCallsProtocol> delegate;
@end

@implementation ITCUserIdAlertViewDelegate

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    NSString *userId = [alertView textFieldAtIndex:0].text;
    if ([userId isValidUserId]) {
        [[ITCSessionManager sharedSessionManager] setUserId:userId];
        [self.delegate handleBeginSessionUserId];
    } else {
        [ITCResultView showErrorString:@"Please try again" description:@"Invalid userId"];
    }
}

#pragma mark - Designated Initializer

- (instancetype)initWithDelegate:(id<ITCIntercomSDKCallsProtocol>)delegate {
    self = [super init];
    if (self) {
        NSParameterAssert(delegate);
        self.delegate = delegate;
    }
    return self;
}

@end
