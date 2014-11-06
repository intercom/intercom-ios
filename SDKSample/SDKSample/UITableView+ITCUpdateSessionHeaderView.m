//
//  UITableView+ITCUpdateSessionHeaderView.m
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

#import "UITableView+ITCUpdateSessionHeaderView.h"
#import "ITCSessionManager.h"

@implementation UITableView (ITCUpdateSessionHeaderView)

- (void)updateSessionHeaderView {
    UILabel *label = (UILabel *)[self.tableHeaderView viewWithTag:200];
    NSAssert([label isKindOfClass:[UILabel class]], @"expected label");
    if ([ITCSessionManager sharedSessionManager].isSessionActive) {
        label.text = [ITCSessionManager sharedSessionManager].email.length>0 ? [NSString stringWithFormat:@"Session Active for email %@", [ITCSessionManager sharedSessionManager].email] : [NSString stringWithFormat:@"Session Active for userId %@", [ITCSessionManager sharedSessionManager].userId];
    } else {
        label.text = @"";
    }
}


@end
