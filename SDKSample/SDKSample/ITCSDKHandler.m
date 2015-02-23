//
//  ITCSDKHandler.m
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

#import "ITCSDKHandler.h"
#import "ITCUserAuthenticationManager.h"
#import "ITCResultView.h"
#import "UITableView+ITCUpdateSessionHeaderView.h"
#import "Intercom.h"
#import "ITCTableViewController.h"
#import "ITCUtils.h"

@interface ITCSDKHandler ()
@end

@implementation ITCSDKHandler

#pragma mark - Handle Intercom calls

- (void)handleBeginSessionEmail {
    // Begin an iOS session for an app user. You can identify a user
    //   a) by email: call beginSessionForUserWithEmail:completion:, or
    //   b) by userId: call beginSessionForUserWithUserId:completion: (see below)
    
    // You only need to begin a session once - usually when your app user authenticates. You will not need to implement it
    // anywhere else as Intercom listens for changes in `UIApplication` state and calculates sessions based on those actions.
    // So if your app already had an active Intercom session before, the SDK opens a new session automatically
    // once your app becomes active (based on persisted session information) - you don't have to do anything.
    
    __weak __typeof(self)weakSelf = self;
    [Intercom beginSessionForUserWithEmail:[ITCUserAuthenticationManager sharedAuthenticationManager].email
                                completion:^(NSError *error) {
                                    __strong __typeof(weakSelf)strongSelf = weakSelf;
                                    
                                    // the IntercomSessionListener will track changes of the IntercomSession and trigger an update of the UI as necessary - see implementation of this protocol in ITCTableViewController
                                    
                                    if (error) {
                                        [strongSelf handleError:error description:@"logged in with email"];
                                    } else {
                                        [strongSelf handleSuccessWithDescription:@"logged in with email"];
                                    }
                                }];
}


- (void)handleBeginSessionUserId {
    // Begin a session for an app user. This one identifies a user by userId, calling beginSessionForUserWithUserId:completion:
    
    __weak __typeof(self)weakSelf = self;
    [Intercom beginSessionForUserWithUserId:[ITCUserAuthenticationManager sharedAuthenticationManager].userId
                                 completion:^(NSError *error) {
                                     __strong __typeof(weakSelf)strongSelf = weakSelf;
                                     
                                     // the IntercomSessionListener will track changes of the IntercomSession and trigger an update of the UI as necessary - see implementation of this protocol in ITCTableViewController
                                     
                                     if (error) {
                                         [strongSelf handleError:error description:@"logged in with userId"];
                                     } else {
                                         [strongSelf handleSuccessWithDescription:@"logged in with userId"];
                                     }
                                 }];
}


- (void)handleUpdateUser {
    // Update a user - note that not all attributes you see in Intercom can be updated
    // See a list of allowed attributes for updates in the API docs http://doc.intercom.io/api/#create-or-update-user
    [Intercom updateUserWithAttributes:@{
                                         @"name": @"John Doe",
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
    // the IntercomSessionListener will track changes and update the UI accordingly, see intercomSessionStatusDidChange:(BOOL)isSessionOpen
    
    [ITCResultView showError:nil description:@"User logged out"];
}


#pragma mark - Handle Error / Success

- (void)handleError:(NSError *)error description:(NSString *)description {
    [ITCResultView showError:error description:description];
}

- (void)handleSuccessWithDescription:(NSString *)description {
    [ITCResultView showError:nil description:description];
}

@end
