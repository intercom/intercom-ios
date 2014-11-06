//
//  ITCSDKManager.m
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

#import "ITCSDKManager.h"
#import "ITCSessionManager.h"
#import "ITCResultView.h"
#import "UITableView+ITCUpdateSessionHeaderView.h"
#import "ITCUtils.h"
#import "Intercom.h"

@interface ITCSDKManager ()
@property (nonatomic, weak) UITableView *tableView;
@end

@implementation ITCSDKManager

#pragma mark - Handle Intercom calls

- (void)handleBeginSessionEmail {
    // Begin an iOS session for an app user. You can identify a user
    //   a) with email by calling beginSessionForUserWithEmail:completion:, or
    //   b) with userId by calling beginSessionForUserWithUserId:completion: (see below)
    
    // You only need to begin a session once - usually when your app user authenticates. You will not need to implement it
    // anywhere else as Intercom listens for changes in `UIApplication` state and calculates sessions based on those actions.
    // So if your app already had an active Intercom session before, the SDK opens a new session automatically
    // once your app becomes active (based on persisted session information) - you don't have to do anything.
    
    // to-do: 'deactivate' the cell while the network call is in progress to prevent tapping multiple times
    
    __weak __typeof(self)weakSelf = self;   // not really required in this sample app because you cannot navigate away from this view controller
    [Intercom beginSessionForUserWithEmail:[ITCSessionManager sharedSessionManager].email
                                completion:^(NSError *error) {
                                    __strong __typeof(weakSelf)strongSelf = weakSelf;
                                    
                                    [ITCResultView showError:error description:@"beginnig session with email"];
                                    
                                    // Important: check the error object - only if we have no error, then we have an active session and we can allow other Intercom calls (such as updating a user)
                                    if (!error) {
                                        // in this example app, we have a singleton that manages app session state (and persists that)
                                        // in your app, you should have something similar that manages user sessions (i.e. is user authenticated or not?)
                                        [[ITCSessionManager sharedSessionManager] setSessionActive:YES];
                                    } else {
                                        [[ITCSessionManager sharedSessionManager] setSessionActive:NO];
                                    }
                                    
                                    // depending on session state, we show different content in the table view: first update data source
                                    strongSelf.tableView.dataSource = [[ITCSessionManager sharedSessionManager] dataSourceForSession];
                                    // then reload the table view - will show the possible actions
                                    [strongSelf.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationAutomatic];
                                    // and update the headerView so the user sees if we have a session
                                    [strongSelf.tableView updateSessionHeaderView];
                                }];
}

- (void)handleBeginSessionUserId {
    // Begin a session for an app user. This one identifies a user by userId, calling beginSessionForUserWithUserId:completion:
    
    __weak __typeof(self)weakSelf = self;
    [Intercom beginSessionForUserWithUserId:[ITCSessionManager sharedSessionManager].userId
                                 completion:^(NSError *error) {
                                     __strong __typeof(weakSelf)strongSelf = weakSelf;
                                     
                                     [ITCResultView showError:error description:@"beginnig session with userId"];
                                     
                                     if (!error) {
                                         [[ITCSessionManager sharedSessionManager] setSessionActive:YES];
                                     } else {
                                         [[ITCSessionManager sharedSessionManager] setSessionActive:NO];
                                     }
                                     strongSelf.tableView.dataSource = [[ITCSessionManager sharedSessionManager] dataSourceForSession];
                                     [strongSelf.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationAutomatic];
                                     [strongSelf.tableView updateSessionHeaderView];
                                 }];
}

- (void)handleUpdateUser {
    // Update a user - note that not all attributes you see in Intercom can be updated
    // See a list of allowed attributes for updates in the API docs http://doc.intercom.io/api/#create-or-update-user
    [Intercom updateUserWithAttributes:@{
                                         @"name": @"John Doe",
                                         // Users not found via email or user_id will be created, and those that are found will be updated. See details in the API docs
                                         // @"email": @"john.doe@email.com",
                                         // @"user_id": @"123456",
                                         @"remote_created_at": @1412863835,
                                         @"unsubscribed_from_emails": @NO
                                         }
                            completion:^(NSError *error) {
                                [ITCResultView showError:error description:@"updating user"];
                            }];
}

- (void)handleUpdateCompany {
    // Users may be created or updated with an embedded company object http://doc.intercom.io/api/#companies-and-users
    
    [Intercom updateUserWithAttributes:@{
                                         @"companies": @[
                                                 @{
                                                     @"company_id" : @"366",
                                                     @"name" : @"Serenity",
                                                     @"monthly_spend" : @500
                                                     }
                                                 ]
                                         }
                            completion:^(NSError *error) {
                                [ITCResultView showError:error description:@"updating company"];
                            }];
}

- (void)handleUpdateCustomAttributes {
    // The custom_attributes object allows you to send any information
    // See details and restrictions here http://doc.intercom.io/api/#create-or-update-user
    
    [Intercom updateUserWithAttributes:@{
                                         @"custom_attributes": @{
                                                 @"paid_subscriber" : @YES,
                                                 @"monthly_spend": @155.5,
                                                 @"team_mates": @9
                                                 }
                                         }
                            completion:^(NSError *error) {
                                [ITCResultView showError:error description:@"updating custom attributes"];
                            }];
}

- (void)handleSubmitEvent {
    // See details here http://doc.intercom.io/api/#submitting-events
    [Intercom logEventWithName:@"invited-friend"
                    completion:^(NSError *error) {
                        [ITCResultView showError:error description:@"submitting event"];
                    }];
}

- (void)handleSubmitEventWithMetaData {
    // See details here http://doc.intercom.io/api/#submitting-events
    [Intercom logEventWithName:@"ordered_item"
              optionalMetaData:@{
                                 @"event_name" : @"ordered-item",
                                 @"created_at": @1389913941,
                                 @"metadata": @{
                                         @"order_date": @1392036272,
                                         @"stripe_invoice": @"inv_3434343434",
                                         @"order_number": @{
                                                 @"value": @"3434-3434",
                                                 @"url": @"https://example.org/orders/3434-3434"
                                                 },
                                         @"price": @{
                                                 @"currency": @"usd",
                                                 @"amount": @2999
                                                 }
                                         }
                                 }
                    completion:^(NSError *error) {
                        [ITCResultView showError:error description:@"submitting event with meta data"];
                    }];
}

- (void)handlePresentMessageComposer {
    [Intercom presentMessageViewAsConversationList:NO];
}

- (void)handlePresentConversationList {
    [Intercom presentMessageViewAsConversationList:YES];
}

- (void)handleEndSession {
    // End a session for a user and delete access tokens from the SDK instance. Typically used when the user logs out of your app.
    // Note: Only implement endSession when logging a user out of your application. You will not need to implement it
    // anywhere else as Intercom listens for changes in `UIApplication` state and calculates sessions based on those actions.
    
    [Intercom endSession];
    [[ITCSessionManager sharedSessionManager] setSessionActive:NO];  // this will be persisted so it can be retrieved at next app start
    self.tableView.dataSource = [[ITCSessionManager sharedSessionManager] dataSourceForSession];
    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationAutomatic];
    [self.tableView updateSessionHeaderView];
    [ITCResultView showError:nil description:@"Ending session"];
}

#pragma mark - Designated Initializer

- (instancetype)initWithTableView:(UITableView *)tableView {
    self = [super init];
    if (self) {
        self.tableView = tableView;
    }
    return self;
}

@end
