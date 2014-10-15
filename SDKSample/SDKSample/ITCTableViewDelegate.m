//
//  ITCTableViewDelegate.m
//  SDKSample
//
//  Created by Roland Gröpmair on 09/09/2014.
//  Copyright (c) 2014 Intercom. All rights reserved.
//

#import "ITCTableViewDelegate.h"
#import "ITCTableViewDataSource.h"
#import "ITCUtils.h"
#import "ITCResultView.h"
#import "Intercom.h"

@interface ITCTableViewDelegate ()
@property (nonatomic, strong) ITCResultView *resultView;
@end

@implementation ITCTableViewDelegate

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ITCCellType type = indexPath.row;
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    [cell setSelected:NO animated:YES];
    
    if (type == ITCCellTypeBeginSession) {
        
        [self handleBeginSessionWithTableView:tableView];
        
    } else if (type == ITCCellTypeUpdateUser) {
        
        [self handleUpdateUser];
        
    } else if (type == ITCCellTypeUpdateCompany) {
        
        [self handleUpdateCompany];
        
    } else if (type == ITCCellTypeUpdateCustomAttributes) {
        
        [self handleUpdateCustomAttributes];
        
    } else if (type == ITCCellTypeSubmitEvent) {
        
        [self handleSubmitEvent];
        
    } else if (type == ITCCellTypeSubmitEventWithMetaData) {
        
        [self handleSubmitEventWithMetaData];
        
    } else if (type == ITCCellTypePresentMessageComposer) {
        
        [self handlePresentMessageComposer];
        
    } else if (type == ITCCellTypePresentConversationList) {
        
        [self handlePresentConversationList];
        
    } else if (type == ITCCellTypeEndSession) {
        
        [self handleEndSessionWithTableView:tableView];    // reloading will hide all cells except the 'Begin Session' one
    }
}

#pragma mark - handle Intercom calls

- (void)handleBeginSessionWithTableView:(UITableView *)tableView {
    // Begin a session for an app user. You can identify a user
    //   a) with email by calling beginSessionForUserWithEmail:completion:, or
    //   b) with userId by calling beginSessionForUserWithUserId:completion:
    
    // You only need to begin a session once - usually when your app user authenticates
    // if your app already had an active Intercom session before, the SDK automatically opens a new session once your app becomes active (based on persisted session information)
    
    // to-do: 'deactivate' the cell while the network call is in progress to prevent tapping multiple times
    
    __weak __typeof(self)weakSelf = self;   // not really required in this sample app because you cannot navigate away from this view controller
    [Intercom beginSessionForUserWithEmail:self.dataSource.email
                                completion:^(NSError *error) {
                                    __strong __typeof(weakSelf)strongSelf = weakSelf;
                                    
                                    // check the error object - only if we have no error, then we have an active session and we can allow other Intercom calls (such as updating a user)
                                    [self handleError:error description:@"beginnig session"];
                                    if (!error) {   // additional error handling for begin session
                                        [strongSelf.dataSource setSessionActive:YES];
                                    } else {
                                        [strongSelf.dataSource setSessionActive:NO];
                                    }
                                    [tableView reloadData];  // reloading will show the other possible cells / actions
                                }];
}

- (void)handleUpdateUser {
    // Update a user - note that not all attributes you see in Intercom can be updated
    // See a list of allowed attributes for updates in the API docs http://doc.intercom.io/api/#create-or-update-user
    [Intercom updateUserWithAttributes:@{
                                         @"name": @"John Doe",
                                         // @"email": @"john.doe@email.com", // Users not found via email or user_id will be created, and those that are found will be updated. See details in the API docs
                                         @"user_id": @"123456",  // updating the user id is fine because we identified the user by email (beginSessionForUserWithEmail)
                                         @"remote_created_at": @1412863835,
                                         @"unsubscribed_from_emails": @NO
                                         }
                            completion:^(NSError *error) {
                                [self handleError:error description:@"updating user"];
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
                                [self handleError:error description:@"updating company"];
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
                                [self handleError:error description:@"updating custom attributes"];
                            }];
}

- (void)handleSubmitEvent {
    [Intercom logEventWithName:@"invited-friend"
                    completion:^(NSError *error) {
                        [self handleError:error description:@"submitting event"];
                    }];
}

- (void)handleSubmitEventWithMetaData {
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
                        [self handleError:error description:@"submitting event with meta data"];
                    }];
}

- (void)handlePresentMessageComposer {
    [Intercom presentMessageViewAsConversationList:NO];
}

- (void)handlePresentConversationList {
    [Intercom presentMessageViewAsConversationList:YES];
}

- (void)handleEndSessionWithTableView:(UITableView *)tableView {
    // end a session for a user and deletes access tokens from the SDK instance. Typically used while logging a user out.
    // Note: Only implement endSession when logging a user out of your application.  You will not need to implement it
    // anywhere else as Intercom listens for changes in `UIApplication` state and calculates sessions based on those actions.

    [Intercom endSession];
    [self.dataSource setSessionActive:NO];
    [tableView reloadData];
}

#pragma mark - error handling

- (void)handleError:(NSError *)error description:(NSString *)description {
    if (error) {
        NSLog(@"%@ failed with error=%@", description, error.localizedDescription);
        [ITCResultView presentError:error description:description];
    } else {
        NSLog(@"%@ OK", description);
        [ITCResultView presentSuccessWithDescription:description];
    }
}

#pragma mark - Designated Initializer

- (id)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

@end
