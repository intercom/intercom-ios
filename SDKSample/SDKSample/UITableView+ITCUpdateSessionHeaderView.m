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
#import "ITCUserAuthenticationManager.h"


@implementation UITableView (ITCUpdateSessionHeaderView)

- (void)updateSessionHeaderView {
    UILabel *label = (UILabel *)[self.tableHeaderView viewWithTag:200];
    NSAssert([label isKindOfClass:[UILabel class]], @"expected label");
    if ([ITCUserAuthenticationManager sharedAuthenticationManager].isUserAuthenticated) {
        label.text = [ITCUserAuthenticationManager sharedAuthenticationManager].email.length>0 ? [NSString stringWithFormat:@"User logged in with email %@", [ITCUserAuthenticationManager sharedAuthenticationManager].email] : [NSString stringWithFormat:@"User logged in with userId %@", [ITCUserAuthenticationManager sharedAuthenticationManager].userId];
    } else {
        label.text = @"";
    }
}

@end
